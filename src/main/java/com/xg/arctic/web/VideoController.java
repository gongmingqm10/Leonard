package com.xg.arctic.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by minggong on 7/24/14.
 */
@Controller
@RequestMapping("video")
public class VideoController {

    @RequestMapping(value = {"/{videoId}"}, method = RequestMethod.GET)
    public String get(Model model) {
        return "video";
    }
}
