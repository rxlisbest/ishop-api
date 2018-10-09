package com.ishop.api.dao;

import com.ishop.api.bean.GoodsBean;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import java.util.List;

@Mapper
@Repository
public interface GoodsMapper {
    List<GoodsBean> select();
}
