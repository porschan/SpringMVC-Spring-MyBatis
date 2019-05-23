package com.chanchifeng.module.user;

import com.chanchifeng.module.user.pojo.SysUser;
import com.chanchifeng.module.user.service.SysUserService;
import com.chanchifeng.module.user.vo.PageVo;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

    /*
    *
    *
    *     @Override
    public List<SysUser> selectLikePage(Map<String, Integer> map1, Map<String, String> map) {
        return sysUserMapper.selectLikePage(map1,map);
    }

    @Override
    public int selectLikeSum(Map<String, String> map) {
        return sysUserMapper.selectLikeSum(map);
    }
    *
    * */

    @Test
    public void selectAllTest(){
        SysUser sysUser = new SysUser();
        sysUser.setSysUserLoginName("");
        PageVo<SysUser> sysUserPageVo = sysUserService.selectAll(sysUser, 1, 10);
        System.out.println(sysUserPageVo.getItems().size());
    }

    @Test
    public void selectLikeSumTest(){
    }

}
