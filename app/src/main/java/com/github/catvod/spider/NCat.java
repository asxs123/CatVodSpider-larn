package com.github.catvod.spider;

import com.github.catvod.bean.Class;
import com.github.catvod.bean.Result;
import com.github.catvod.bean.Vod;
import com.github.catvod.crawler.Spider;
import com.github.catvod.net.OkHttp;
// import com.github.catvod.utils.AESEncryption;
import com.github.catvod.utils.Crypto;
import com.github.catvod.utils.Util;
// import org.apache.commons.lang3.StringUtils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class NCat extends Spider {

    private static final String siteUrl = "https://www.ncat3.app";
    // private static final String picUrl = "https://vres.wbadl.cn";
    private static final String picUrl = "https://vres.uujjyp.cn/";
    private static final String cateUrl = siteUrl + "/show/";
    private static final String detailUrl = siteUrl + "/detail/";
    private static final String searchUrl = siteUrl + "/search?k=";
    private static final String playUrl = siteUrl + "/play/";

    private static HashMap<String, String> cookies = new HashMap<>();

    private HashMap<String, String> getHeaders() {
        HashMap<String, String> headers = new HashMap<>();
        headers.put("User-Agent", Util.CHROME);
        if (!cookies.isEmpty()) {
            StringBuilder sb = new StringBuilder();
            for (String key : cookies.keySet()) {
                sb.append(key).append("=").append(cookies.get(key)).append("; ");
            }
            headers.put("Cookie", sb.toString());
        }
        return headers;
    }

    // =============== 核心：自动过 cdndefend ===============
    private String fetchUrl(String url) throws Exception {
        // HashMap<String, String> headers = getHeaders();
        // String html = okhttp3.OkHttpUtils.get(url, headers);
        String html = OkHttp.string(url, getHeaders());

        // 检测是否是 cdndefend 验证页面
        if (html.contains("cdndefend") && html.contains("verifying your browser")) {
            String cookie = resolveCdndefend(html);
            if (cookie != null && !cookie.isEmpty()) {
                String[] kv = cookie.split("=", 2);
                if (kv.length == 2) {
                    cookies.put(kv[0], kv[1]);
                }
            }
            // 重新请求
            html = okhttp3.OkHttpUtils.get(url, getHeaders());
            html = OkHttp.string(url, getHeaders());
        }
        return html;
    }

    // 解析 cdndefend 页面，自动拿到验证 cookie
    private String resolveCdndefend(String html) {
        try {
            Pattern pattern = Pattern.compile("cdndefend_js_cookie=([0-9a-zA-Z]+)");
            Matcher matcher = pattern.matcher(html);
            if (matcher.find()) {
                return "cdndefend_js_cookie=" + matcher.group(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    // ======================================================

    @Override
    public String homeContent(boolean filter) throws Exception {
        List<Vod> list = new ArrayList<>();
        List<Class> classes = new ArrayList<>();
        String[] typeIdList = {"1", "2", "3", "4"};
        String[] typeNameList = {"电影", "连续剧", "动漫", "综艺"};
        for (int i = 0; i < typeNameList.length; i++) {
            classes.add(new Class(typeIdList[i], typeNameList[i]));
        }

        // 替换成自动过验证的请求
        // Document doc = Jsoup.parse(OkHttp.string(siteUrl, getHeaders()));
        Document doc = Jsoup.parse(fetchUrl(siteUrl));

        for (Element element : doc.select("div.module-item")) {
            try {
                String pic = element.select("img").last().attr("data-original");
                String url = element.select("a").attr("href");
                String name = element.select(".v-item-title").text().replace("可可影视-kekys.com", "").trim();
                if (!pic.startsWith("http")) {
                    pic = picUrl + pic;
                }
                String id = url.split("/")[2];
                list.add(new Vod(id, name, pic));
            } catch (Exception e) {

            }
        }
        return Result.string(classes, list);
    }

    @Override
    public String categoryContent(String tid, String pg, boolean filter, HashMap<String, String> extend) throws Exception {
        List<Vod> list = new ArrayList<>();
        String target = cateUrl + tid + "-----3-" + pg + ".html";
        Document doc = Jsoup.parse(fetchUrl(target));
        // Document doc = Jsoup.parse(OkHttp.string(target, getHeaders()));
        for (Element element : doc.select("div.module-item")) {
            try {
                String pic = element.select("img").last().attr("data-original");
                String url = element.select("a").attr("href");
                String name = element.select(".v-item-title").text().replace("可可影视-kekys.com", "").trim();
                if (!pic.startsWith("http")) {
                    pic = picUrl + pic;
                }
                String id = url.split("/")[2];
                list.add(new Vod(id, name, pic));
            } catch (Exception e) {

            }
        }
        Integer total = (Integer.parseInt(pg) + 1) * 20;
        return Result.get().page(Integer.parseInt(pg), Integer.parseInt(pg) + 1, 20, total).vod(list).string();
    }

    @Override
    public String detailContent(List<String> ids) throws Exception {
        Document doc = Jsoup.parse(fetchUrl(detailUrl.concat(ids.get(0))));
        // Document doc = Jsoup.parse(OkHttp.string(detailUrl.concat(ids.get(0)), getHeaders()));
        String name = doc.select("div.detail-title strong").text().replace("𝕜𝕜𝕪𝕤𝟘𝟙.𝕔𝕠𝕞", "").trim();
        String pic = doc.select(".detail-pic img").last().attr("data-original");
        String year = doc.select("a.detail-tags-item").get(0).text();
        String desc = doc.select("div.detail-desc p").text();

        // 播放源
        Elements tabs = doc.select("a.source-item");
        Elements list = doc.select("div.episode-list");
        String PlayFrom = "";
        String PlayUrl = "";
        for (int i = 0; i < tabs.size(); i++) {
            String tabName = tabs.get(i).select("span").last().text();
            if (Arrays.asList("超清", "4K(高峰不卡)").contains(tabName)) continue;
            if (!"".equals(PlayFrom)) {
                PlayFrom = PlayFrom + "$$$" + tabName;
            } else {
                PlayFrom = PlayFrom + tabName;
            }
            Elements li = list.get(i).select("a");
            String liUrl = "";
            for (int i1 = 0; i1 < li.size(); i1++) {
                if (!"".equals(liUrl)) {
                    liUrl = liUrl + "#" + li.get(i1).text() + "$" + li.get(i1).attr("href").replace("/play/", "");
                } else {
                    liUrl = liUrl + li.get(i1).text() + "$" + li.get(i1).attr("href").replace("/play/", "");
                }
            }
            if (!"".equals(PlayUrl)) {
                PlayUrl = PlayUrl + "$$$" + liUrl;
            } else {
                PlayUrl = PlayUrl + liUrl;
            }
        }

        Vod vod = new Vod();
        vod.setVodId(ids.get(0));
        vod.setVodPic(picUrl + pic);
        vod.setVodYear(year);
        vod.setVodName(name);
        vod.setVodContent(desc);
        vod.setVodPlayFrom(PlayFrom);
        vod.setVodPlayUrl(PlayUrl);
        return Result.string(vod);
    }

    @Override
    public String searchContent(String key, boolean quick) throws Exception {
        String searchToken = "";
        Document searchdoc = Jsoup.parse(fetchUrl(siteUrl));
        // Document searchdoc = Jsoup.parse(OkHttp.string(siteUrl, getHeaders()));
        searchToken = searchdoc.select("div.search-tag a").first().attr("href");
        // 提取t参数值
        if (searchToken.contains("t=")) {
            searchToken = searchToken.substring(searchToken.indexOf("t=") + 2);
            System.out.println("提取到的t参数值：" + searchToken);
        } else {
            System.out.println("href中不包含t参数");
        }

        List<Vod> list = new ArrayList<>();
        Document doc = Jsoup.parse(fetchUrl(searchUrl.concat(URLEncoder.encode(key)).concat("&t=").concat(searchToken)));
        // Document doc = Jsoup.parse(OkHttp.string(searchUrl.concat(URLEncoder.encode(key)).concat("&t=").concat(searchToken), getHeaders()));
        for (Element element : doc.select("a.search-result-item")) {
            try {
                String pic = element.select("img").first().attr("data-original");
                String url = element.attr("href");
                // String name =  element.select(".v-item-title").text().replace("可可影视-kekys.com", "").trim();
                String name = element.select("img").first().attr("alt");
                if (!pic.startsWith("http")) {
                    pic = picUrl + pic;
                }
                String id = url.split("/")[2];
                list.add(new Vod(id, name, pic));
            } catch (Exception e) {

            }
        }
        return Result.string(list);
    }

    @Override
    public String playerContent(String flag, String id, List<String> vipFlags) throws Exception {
        Document doc = Jsoup.parse(fetchUrl(playUrl.concat(id)));
        // Document doc = Jsoup.parse(OkHttp.string(playUrl.concat(id), getHeaders()));
        String regex = "window.whatTMDwhatTMDPPPP = '(.*?)'";
        String playSource = "playSource=\\{(.*?)\\}";
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(doc.html());
        String url = "";
        if (matcher.find()) {
            url = matcher.group(1);
            Pattern playSourcePattern = Pattern.compile(playSource);
            Matcher playSourceMatcher = playSourcePattern.matcher(doc.html());
            //playSourceMatcher.find();
            // String srcUrl = Util.findByRegex("https?://[^\\s/$.?#].+\\.m3u8", doc.html(), 0);
            String srcUrl = "";
            // 创建 Pattern 对象
            Pattern r = Pattern.compile("https?://[^\\s/$.?#].+\\.m3u8");

            // 现在创建 matcher 对象
            Matcher m = r.matcher(doc.html());
            if (m.find()) {
                srcUrl = m.group(0);
            } else {
                srcUrl = "";
            }
            // if (StringUtils.isNoneBlank(srcUrl)) {
            //     return Result.get().url(srcUrl).header(getHeaders()).string();

            // }
            if (srcUrl != null && !srcUrl.trim().isEmpty()) {
                return Result.get().url(srcUrl).header(getHeaders()).string();
            }
            String js = playSourceMatcher.group(1);

            String regex1 = "KKYS\\['safePlay'\\]\\(\\)\\['url'\\]\\(\"([^\"]+)\"\\)";
            Pattern pattern1 = Pattern.compile(regex1);
            // String jsSource = Util.unicodeToString(js);
            String jsSource = "";
            // if (StringUtils.isBlank(js)) {
            //     jsSource = js;
            // }
            if (js == null || js.isEmpty() || js.trim().isEmpty()) {
                jsSource = js;
            }
            Matcher matcher1 = pattern1.matcher(jsSource);
            String iv = "VNF9aVQF!G*0ux@2hAigUeH3";
            if (matcher1.find()) {
                iv = matcher1.group(1);
            }
            url = decryptUrl(url, iv);
        }
        return Result.get().url(url).header(getHeaders()).string();
    }

    public String decryptUrl(String encryptedData, String iv) {
        try {
            String encryptedKey = "VNF9aVQF!G*0ux@2hAigUeH3";

            return Crypto.CBC(encryptedData, encryptedKey, iv);
        } catch (Exception e) {
            e.printStackTrace();
            return "123456";
        }
    }


}