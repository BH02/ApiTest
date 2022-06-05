package fun.fpsnoobbh.apitest.entity;

import lombok.Data;

import java.lang.reflect.Array;

@Data
public class Article {
    private Integer id;
    private String title;
    private String pic;
    private String content;
    private String router;
}
