package fun.fpsnoobbh.apitest.service;

import fun.fpsnoobbh.apitest.entity.PicList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PicService {

    @Autowired
    private PicMapper picMapper;

    //    根据id判断是新增还是修改
    public int save(PicList piclist){
        if (piclist.getId()==null){
            return picMapper.insert(piclist);
        }else {
            return picMapper.update(piclist);
        }
    }
}
