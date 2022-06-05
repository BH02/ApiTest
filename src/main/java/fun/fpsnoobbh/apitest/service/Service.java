package fun.fpsnoobbh.apitest.service;

import fun.fpsnoobbh.apitest.entity.Article;
import fun.fpsnoobbh.apitest.entity.Multiple;
import fun.fpsnoobbh.apitest.entity.PicList;
import fun.fpsnoobbh.apitest.entity.User;
import fun.fpsnoobbh.apitest.mapper.Mapper;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

@org.springframework.stereotype.Service
public class Service {

    @Autowired
    private Mapper mapper;

//    根据id判断是新增还是修改
    public int saveUser(User user){
        if (user.getId()==null){
            return mapper.insertUser(user);
        }else {
            return mapper.updateUser(user);
        }
    }
    public int savePic(PicList picList){
//        return mapper.insertPic(picList);
        if (picList.getId()==null){
            return mapper.insertPic(picList);
        }else {
            return mapper.updatePic(picList);
        }
    }
    public int saveArt(Article article){
        if (article.getId()==null){
            return mapper.insertArt(article);
        }else {
            return mapper.updateArt(article);
        }
    }
//    public int multiUser(List<Integer> ids){
//        return mapper.multiUser(ids);
//    }
}
