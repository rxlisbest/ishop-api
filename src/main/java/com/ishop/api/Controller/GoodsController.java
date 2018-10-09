package com.ishop.api.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.alibaba.fastjson.JSON;
import com.ishop.api.bean.GoodsBean;
import com.ishop.api.dao.GoodsMapper;

import java.util.List;

@RestController
public class GoodsController {
    @Autowired
    private GoodsMapper goodsMapper;

    @RequestMapping("/")
    public String index() {
        List<GoodsBean> goods = goodsMapper.select();
        String goods2 = JSON.toJSONString(goods);
        return goods2;
    }
}
