package com.chanchifeng.module.user;

import com.chanchifeng.module.user.pojo.SysUser;
import com.chanchifeng.module.user.service.SysUserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath*:spring/applicationContext*.xml"})
public class SSMTest {


    @Resource
    private SysUserService sysUserService;

    @Test
    public void test1() {
        SysUser sysUser = sysUserService.getById(1L);
        System.out.println("--------------------------------" + sysUser.getSysUserLoginName());
    }


    @Test
    public void queryAll(){
        List<SysUser> sysUsers = sysUserService.queryAll();
        System.out.println(sysUsers.size());
    }

    @Test
    public void sysUserIdTest(){
        SysUser sysUser = sysUserService.selectByPrimaryKey(1L);
        System.out.println(sysUser);
    }
}
