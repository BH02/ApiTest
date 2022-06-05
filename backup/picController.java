package fun.fpsnoobbh.apitest.controller;

import fun.fpsnoobbh.apitest.entity.PicList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/pic")
public class picController {
    @Autowired
    private PicMapper picMapper;
    @Autowired
    private PicService picService;
    

    //    新增或修改 取决于有无id
    @PostMapping("/add")
    public Integer save(@RequestBody PicList picList){
        return picService.save(picList);
    }

    //    删除
    @DeleteMapping("/del/{id}")
    public  Integer del(@PathVariable Integer id){
        return picMapper.delById(id);
    }
    //    分页查询
    @GetMapping("/page")
    public List<PicList> findPage(@RequestParam Integer pageNum,@RequestParam Integer pageSize){
        pageNum=(pageNum-1)*pageSize;
        return picMapper.selectPage(pageNum,pageSize);
    }
}
