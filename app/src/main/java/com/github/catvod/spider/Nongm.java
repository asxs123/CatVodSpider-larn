package com.github.catvod.spider;

import android.text.TextUtils;

import com.github.catvod.bean.Class;
import com.github.catvod.bean.Result;
import com.github.catvod.bean.Vod;
import com.github.catvod.crawler.Spider;
import com.github.catvod.net.OkHttp;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class Nongm extends Spider {

    private static final String siteUrl = "https://www.wwgz.cn";

    private HashMap<String, String> getHeaders() {
        HashMap<String, String> headers = new HashMap<>();
        headers.put("User-Agent", "Mozilla/5.0 (Linux; Android 13; SM-A037U) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Mobile Safari/537.36  uacq");
        return headers;
    }

    public String homeContent(boolean filter) {
        List<Vod> list = new ArrayList<>();
        List<Class> classes = new ArrayList<>();
        Document doc = Jsoup.parse(OkHttp.string(siteUrl, getHeaders()));
        for (Element element : doc.select("#topnav > ul:nth-child(1) li")) {
            String id = element.select("a").attr("href").split("-")[3];
            String name = element.select("a").text();
            classes.add(new Class(id, name));
        }
        for (Element element : doc.select("section.mod:nth-child(3) > div:nth-child(2) ul.resize_list")) {
            String img = element.select("a div.pic img").attr("data-src");
            String name = element.select("a").attr("title");
            String remark = element.select("a > div > span > span").text();
            String id = element.select("a").attr("href").replaceAll("\\D+", "");
            list.add(new Vod(id, name, img, remark));
        }
        return Result.string(classes, list);
    }

    public String categoryContent(String tid, String pg, boolean filter, HashMap<String, String> extend) {
        List<Vod> list = new ArrayList<>();
        String target = siteUrl + String.format("/vod-list-id-%s-pg-%s-order--by-time-class-0-year-0-letter--area--lang-.html", tid, pg);
        Document doc = Jsoup.parse(OkHttp.string(target, getHeaders()));
        for (Element element : doc.select(".resize_list > li")) {
            String img = element.select("div > img").attr("src");
            String name = element.select("a[title]").attr("title");
            String remark = element.select("span.sBottom").text();
            String id = element.select("a").attr("href").replaceAll("\\D+", "");
            list.add(new Vod(id, name, img, remark));
        }
        return Result.string(list);
    }

    public String detailContent(List<String> ids) {
        Document doc = Jsoup.parse(OkHttp.string(siteUrl.concat("/vod-detail-id-").concat(ids.get(0)), getHeaders()));
        String name = doc.select(".title > a:nth-child(1)").attr("title");
        String remarks = doc.select("div.desc_item:nth-child(2) > font:nth-child(2)").text();
        String img = doc.select(".page-hd > a:nth-child(1) > img:nth-child(1)").attr("src");
        String actor = doc.select("div.desc_item:nth-child(3) > a").text();
        String content = doc.select(".detail-con > p:nth-child(3)").text();
        String director = doc.select("div.desc_item:nth-child(4) > a").text();

        Vod vod = new Vod();
        vod.setVodId(ids.get(0));
        vod.setVodPic(img);
        vod.setVodName(name);
        vod.setVodActor(actor);
        vod.setVodRemarks(remarks);
        vod.setVodContent(content);
        vod.setVodDirector(director);
        vod.setVodPlayFrom("在线播放");

        Elements sourceList = doc.select("div.numList > ul > li");
        List<String> vodItems = new ArrayList<>();
        for (int i = sourceList.size() - 1; i >= 0; i--) {
            Element element = sourceList.get(i);
            vodItems.add(element.select("a").text() + "$" + element.select("a").attr("href"));
        }
        vod.setVodPlayUrl(TextUtils.join("#", vodItems));

        return Result.string(vod);
    }

    public String searchContent(String key, boolean quick) {
        List<Vod> list = new ArrayList<>();
        String target = siteUrl.concat("/index.php?m=vod-search&wd=").concat(key);
        Document doc = Jsoup.parse(OkHttp.string(target, getHeaders()));
        for (Element element : doc.select("#data_list > li")) {
            String img = element.select("div:nth-child(1) > a:nth-child(1) > img:nth-child(1)").attr("data-src");
            String name = element.select("div:nth-child(2) > span:nth-child(1)").text();
            String remark = element.select("div:nth-child(2) > span:nth-child(3)").text();
            String id = element.select("div:nth-child(1) > a:nth-child(1)").attr("href").replaceAll("\\D+", "");
            list.add(new Vod(id, name, img, remark));
        }
        return Result.string(list);
    }

    public String playerContent(String flag, String id, List<String> vipFlags) {
        return Result.get().url(siteUrl + id).parse().header(getHeaders()).string();
    }
}
