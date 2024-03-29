package fun.fpsnoobbh.apitest.controller;

import fun.fpsnoobbh.apitest.entity.Article;
import fun.fpsnoobbh.apitest.entity.Multiple;
import fun.fpsnoobbh.apitest.entity.PicList;
import fun.fpsnoobbh.apitest.entity.User;
import fun.fpsnoobbh.apitest.mapper.Mapper;
import fun.fpsnoobbh.apitest.service.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@RestController
@RequestMapping
public class Controller {

    @Autowired
    private Mapper mapper;
    @Autowired
    private Service service;

    //    查询所有
    @GetMapping("/user/all")
    public List<User> UserAll(){
        List<User> all= mapper.findAllUser();
        return all;
    }

    //    id查找
    @GetMapping("/user/search/{id}")
    public  List<User> searchUserById(@PathVariable Integer id){
        return mapper.searchUserById(id);
    }
    @PostMapping("/user/Multiple")
    public  List<User> searchMultipleUserById(@RequestBody Multiple multiple){
        return mapper.searchMultipleUserById(multiple);
    }
    @GetMapping("/user/searchAcc/{account}")
    public  List<User> searchUserByAccount(@PathVariable String account){
        return mapper.searchUserByAccount(account);
    }
//    @PostMapping("/testS")
//    public int multiUser(@RequestBody List<Integer> ids){
//        System.out.println("ids=>"+ids);
//        return  service.multiUser(ids);
//    }

    //    新增或修改 取决于有无id
    @PostMapping("/user/add")
    public Integer saveUser(@RequestBody User user){
        return service.saveUser(user);
    }

    //    删除
    @DeleteMapping("/user/del/{id}")
    public  Integer delUser(@PathVariable Integer id){
        return mapper.delUserById(id);
    }

    //    分页查询
    @GetMapping("/user/page")
    public List<User> findUserPage(@RequestParam Integer pageNum,@RequestParam Integer pageSize){
        pageNum=(pageNum-1)*pageSize;
        return mapper.selectUserPage(pageNum,pageSize);
    }

    //    图片部分
    //    查找所有图片
    @GetMapping("/pic/all")
    public List<PicList> PicAll(){
        List<PicList> all= mapper.findAllPic();
        return all;
    }

    //    新增或修改 取决于有无id
    @PostMapping("/pic/add")
    public Integer savePic(@RequestBody PicList picList){
        return service.savePic(picList);
    }

    //    id查找
    @GetMapping("/pic/search/{id}")
    public  List<PicList> searchPicById(@PathVariable Integer id){
        return mapper.searchPicById(id);
    }

    //    删除
    @DeleteMapping("/pic/del/{id}")
    public  Integer delPic(@PathVariable Integer id){
        return mapper.delPicById(id);
    }

    //    分页查询
    @GetMapping("/pic/page")
    public List<PicList> findUPicPage(@RequestParam Integer pageNum,@RequestParam Integer pageSize){
        pageNum=(pageNum-1)*pageSize;
        return mapper.selectPicPage(pageNum,pageSize);
    }

    //    文章部分
    //    查询所有
    @GetMapping("/art/all")
    public List<Article> ArtAll(){
        List<Article> all= mapper.findAllArt();
        return all;
    }

    //    最新文章
    @GetMapping("/art/news")
    public List<Integer> newArt(){

        List<Article> all= mapper.findAllArt();
        List<Integer> list = new ArrayList<>();

        for (Article article : all) {
            list.add(article.getId());
        }
    //     降序排列
        Collections.sort(list);
        Collections.reverse(list);
    //     长度为5
        List<Integer> shortList = new ArrayList<>();
        for (int i=0;i<=4;i++){
            shortList.add(list.get(i));
        }

        return shortList;
    }

    //    id查找
    @GetMapping("/art/search/{id}")
    public  List<Article> searchArtById(@PathVariable Integer id){
        return mapper.searchArtById(id);
    }

    //    新增或修改 取决于有无id
    @PostMapping("/art/add")
    public Integer saveArt(@RequestBody Article article){
        return service.saveArt(article);
    }

    //    删除
    @DeleteMapping("/art/del/{id}")
    public  Integer delArt(@PathVariable Integer id){
        return mapper.delArtById(id);
    }
    //    分页查询
    @GetMapping("/art/page")
    public List<Article> findUArtPage(@RequestParam Integer pageNum,@RequestParam Integer pageSize){
        pageNum=(pageNum-1)*pageSize;
        return mapper.selectArtPage(pageNum,pageSize);
    }

}
