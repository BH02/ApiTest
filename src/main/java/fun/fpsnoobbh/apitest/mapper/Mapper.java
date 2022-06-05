package fun.fpsnoobbh.apitest.mapper;

import fun.fpsnoobbh.apitest.entity.Article;
import fun.fpsnoobbh.apitest.entity.PicList;
import fun.fpsnoobbh.apitest.entity.User;
import org.apache.ibatis.annotations.*;

import java.util.List;

@org.apache.ibatis.annotations.Mapper
public interface Mapper {

//  查询所有数据
    @Select("select * from user")
    List<User> findAllUser();
    @Select("select * from picList")
    List<PicList> findAllPic();
    @Select("select * from article")
    List<Article> findAllArt();
//    id查找
    @Select("select * from user where id=#{id}")
    List<User> searchUserById(@Param("id") Integer id);
    @Select("select * from piclist where id=#{id}")
    List<PicList> searchPicById(@Param("id") Integer id);
    @Select("select * from article where id=#{id}")
    List<Article> searchArtById(@Param("id") Integer id);

//  新增
    @Insert("insert into user(account,password,nickname,permission) values(#{account},#{password},#{nickname},#{permission});")
    int insertUser(User user);
    @Insert("insert into user(account,password,nickname,permission) values(#{account},#{password},#{nickname},#{permission});")
    int insertArt(Article article);

//  更新
    int updateUser(User user);
    int updateArt(Article article);

//  删除
    @Delete("delete from user where id=#{id}")
    Integer delUserById(@Param("id") Integer id);
    @Delete("delete from piclist where id=#{id}")
    Integer delPicById(@Param("id") Integer id);
    @Delete("delete from article where id=#{id}")
    Integer delArtById(@Param("id") Integer id);

//  分页
    @Select("select * from user limit #{pageNum},#{pageSize}")
    List<User> selectUserPage(@Param("pageNum") Integer pageNum,@Param("pageSize")Integer pageSize);
    @Select("select * from piclist limit #{pageNum},#{pageSize}")
    List<PicList> selectPicPage(@Param("pageNum") Integer pageNum,@Param("pageSize")Integer pageSize);
    @Select("select * from article limit #{pageNum},#{pageSize}")
    List<Article> selectArtPage(@Param("pageNum") Integer pageNum,@Param("pageSize")Integer pageSize);
}

