package com.xg.arctic.web;

import com.xg.arctic.model.News;
import com.xg.arctic.service.impl.NewsServiceImpl;
import com.xg.arctic.util.MyBatisUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * User: gongming
 * Date: 7/28/14
 * Time: 4:10 PM
 * Email:gongmingqm10@foxmail.com
 */

@Controller
@RequestMapping("news")
public class NewsController {

    private NewsServiceImpl newsService;

    public NewsController() {
        this.newsService = new NewsServiceImpl(MyBatisUtil.getSqlSessionFactory());
    }

    @RequestMapping(value = "", method = RequestMethod.GET)
    public ModelAndView loadNewsPage(ModelMap map) {
        List<News> newsList = newsService.findAllNews();
        for(int i=0;i< newsList.size();i++){
            newsList.get(i).setDate(newsList.get(i).getDate().substring(0,10));
        }
        map.put("newsList", newsList);
        return new ModelAndView("news/newsList", map);
    }

    @RequestMapping(value = "/newsDisplay/{newsId}", method = RequestMethod.GET)
    public ModelAndView displayNews(@PathVariable("newsId") String newsId, ModelMap map,HttpServletRequest request) {
        long id=Integer.parseInt(newsId);
        News news = newsService.findNewsById(id);
        news.setDate(news.getDate().substring(0,10));
        map.put("news", news);
        return new ModelAndView("news/newsDisplay", map);
    }
    @RequestMapping("/create")
    public ModelAndView createNews(ModelMap map,HttpServletRequest request) {
        String title=request.getParameter("title");
        String content=request.getParameter("content");
        String id=request.getParameter("id");
        if(id.equals("-1")) {
            News news = new News();
            news.setTitle(title);
            news.setContent(content);
            newsService.createNews(title, content);
        }
        else{
            newsService.updateNewById(Integer.parseInt(id), title, content);
        }

        return new ModelAndView("redirect:/admin/news", map);
    }

    @RequestMapping("/delete")
    public ModelAndView deleteNews(ModelMap map,HttpServletRequest request) {
        long id=Integer.parseInt(request.getParameter("id"));
        newsService.deleteNewsById(id);
        return new ModelAndView("redirect:/admin/news", map);
    }



}
