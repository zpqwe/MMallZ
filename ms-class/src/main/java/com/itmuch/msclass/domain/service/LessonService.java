package com.itmuch.msclass.domain.service;

import com.itmuch.msclass.domain.dto.UserDTO;
import com.itmuch.msclass.domain.entity.Lesson;
import com.itmuch.msclass.domain.entity.LessonUser;
import com.itmuch.msclass.domain.repository.LessonRepository;
import com.itmuch.msclass.domain.repository.LessonUserRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.client.ServiceInstance;
import org.springframework.cloud.client.discovery.DiscoveryClient;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.math.BigDecimal;
import java.net.URI;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ThreadLocalRandom;
import java.util.stream.Collectors;

/**
 * @program: ms-user
 * @description:
 * @author: Long Ao Tian
 * @create: 2020-09-15 21:18
 **/
@Service
public class LessonService {
    private static final Logger LOGGER= LoggerFactory.getLogger(LessonService.class);
    @Autowired
    private RestTemplate restTemplate;
    @Autowired
    private LessonRepository lessonRepository;
    @Autowired
    private LessonUserRepository lessonUserRepository;
    @Autowired
    private DiscoveryClient discoveryClient;
    public Lesson buyById(Integer id){
        // 1. 根据 id 查询 lesson
        Lesson lesson=this.lessonRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("该课程不存在"));

        // 2. 根据lesson.id 查询 user_lesson
        LessonUser lessonUser = this.lessonUserRepository.findByLessonId(id);
        if(lessonUser!=null){
            return lesson;
        }
        // 3. 如果 user_lesson== null && 用户余额 > lesson.price

        //TODO 登录实现后需重构
        Integer userId=1;
        // 获得所有微服务实例
        List<ServiceInstance> instances = this.discoveryClient.getInstances("ms-user");
        // 元数据相关代码
       /* List<ServiceInstance> userInstancesNJ = instances.stream().filter(instance -> {
            Map<String, String> metadata = instance.getMetadata();
            String jifang = metadata.get("JIFANG");
            if ("NJ".equals(jifang)) {
                return true;
            } else {
                return false;
            }
        }).collect(Collectors.toList());*/

        int nextInt = ThreadLocalRandom.current().nextInt(instances.size());
        URI uri = instances.get(nextInt)
                .getUri();
        LOGGER.info("选择的用户微服务地址是={}",uri);
        UserDTO userDTO = restTemplate.getForObject(
                uri+"/users/{id}",
                UserDTO.class,
                userId
        );
        BigDecimal money = userDTO.getMoney().subtract(lesson.getPrice());
        if(money.doubleValue()<0){
            throw new IllegalArgumentException("余额不足");
        }
        //TODO   购买逻辑 .. 1 调用用户微服务扣减金额接口；2向lesson表插入数据
        return  lesson;
    }
}

