package com.hanwen.controller;

import com.hanwen.dao.BlogDao;
import com.hanwen.domain.Blog;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.persistence.Query;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/Blog")
public class BlogController {
    @Autowired
    private BlogDao blogDao;

    @RequestMapping("/NewBlog")
    public ModelAndView toNewBlogPage() throws Exception{
        return new ModelAndView("createBlog");
    }

    @RequestMapping("/GetBlogType")
    public List<String> getBlogTypes(){
        return blogDao.getAllType();
    }

//    @RequestMapping("/AddBlog")
//    public ModelAndView addBlog(@RequestParam String title,@RequestParam String text){
//        Blog blog=new Blog();
//        blog.setTitle(title);
//        blog.setText(text);
//        blog.s
//    }
}
