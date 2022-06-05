package fun.fpsnoobbh.apitest.mapper;

import fun.fpsnoobbh.apitest.entity.PicList;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface PicMapper {

        //  新增
        @Insert("insert into picList(id,src,content) values(#{id},#{src},#{content});")
        int insert(PicList picList);

        //  更新
        int update(PicList picList);

        //  删除
        @Delete("delete from picList where id=#{id}")
        Integer delById(@Param("id") Integer id);

        //    分页
        @Select("select * from picList limit #{pageNum},#{pageSize}")
        List<PicList> selectPage(@Param("pageNum") Integer pageNum,@Param("pageSize")Integer pageSize);

    }
