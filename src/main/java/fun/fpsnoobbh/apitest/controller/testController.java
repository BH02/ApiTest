package fun.fpsnoobbh.apitest.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class testController {

    @RequestMapping("/test")
    public String test(){
        setData data=new setData();
        data.setText("测试用data");
        data.setId(99);

        String msg="测试消息";
        String json=getJson(200,data,msg).toString();
        return json;
    }
    public static JSONObject getJson(int code,Object data,String message){
        JSONObject json = new JSONObject();
        json.put("code", code);
        json.put("message", message);
        json.put("data", data);
        return json;
    }

    class setData{
        String text;
        int id;

        public String getText() {
            return text;
        }

        public void setText(String text) {
            this.text = text;
        }

        public int getId() {
            return id;
        }

        public void setId(int id) {
            this.id = id;
        }
    }
}
