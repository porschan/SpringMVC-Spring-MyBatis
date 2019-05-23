package com.chanchifeng.module.user.controller;

import com.chanchifeng.module.user.pojo.SysUser;
import com.chanchifeng.module.user.service.SysUserService;
import com.chanchifeng.module.user.vo.PageVo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

@Controller
@RequestMapping("/curdController")
public class CurdController {

    private static final Logger logger = LoggerFactory.getLogger(CurdController.class);

    @Resource
    private SysUserService sysUserService;

    @RequestMapping("/queryAll")
    public String showUser(Model model){

        logger.info("queryAll!!");

        model.addAttribute("users",sysUserService.queryAll());

        return "curd/index";
    }

    @RequestMapping("/delete/{userId}")
    public String delete(Model model,@PathVariable("userId") Long userId){

        //删除

        int i = sysUserService.deleteByPrimaryKey(userId);

        logger.info("iiii:" + i);
        return "redirect:/curdController/queryAll";
    }

    @RequestMapping("/queryById/{userId}")
    public String queryById(Model model,@PathVariable("userId") Long userId){

        logger.info("queryById!!");

        model.addAttribute("user",sysUserService.selectByPrimaryKey(userId));

        return "curd/update";
    }

    @RequestMapping(value = "/update")
    public String update(SysUser sysUser) {
//        employeeDao.save(employee);

        System.out.println(sysUser.getSysUserId() + "!!");

        sysUserService.updateByPrimaryKeySelective(sysUser);

        return "redirect:/curdController/queryAll";
    }

    @RequestMapping(value = "/add")
    public String add(SysUser sysUser) {
//        employeeDao.save(employee);

        System.out.println(sysUser.getSysUserId() + "!!");

        sysUserService.insertSelective(sysUser);

        return "redirect:/curdController/queryAll";
    }

    /* START 模糊查询 & 分页 */

    @RequestMapping(value="/curd_findAllJSON")
    @ResponseBody
    public PageVo<SysUser> findAllJson(SysUser sysUser){
        System.out.println("thisss??!");
        PageVo<SysUser> sysUserPageVo = sysUserService.selectAll(sysUser, 1, 10);
        return sysUserPageVo;
    }

    /* END 模糊查询 & 分页 */

}
