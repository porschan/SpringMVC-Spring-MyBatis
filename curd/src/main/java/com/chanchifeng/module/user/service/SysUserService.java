package com.chanchifeng.module.user.service;

import com.chanchifeng.module.user.pojo.SysUser;
import com.chanchifeng.module.user.vo.PageVo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SysUserService {
    SysUser getById(Long id);

    /* START CURD */
    List<SysUser> queryAll();
    SysUser selectByPrimaryKey(Long sysUserId);
    int deleteByPrimaryKey(Long sysUserId);
    int updateByPrimaryKeySelective(SysUser sysUser);
    int insertSelective(SysUser record);
    /* END CURD */

    /* START分页 + 模糊搜索 */

    PageVo<SysUser> selectAll(@Param("sysUser") SysUser sysUser, @Param("startIndex") int startIndex, @Param("pageSize") int pageSize);

//    int count(@Param("sysUser") SysUser sysUser);

    /* END 分页 + 模糊搜索 */
}
