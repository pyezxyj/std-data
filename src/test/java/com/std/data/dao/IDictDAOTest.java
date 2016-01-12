/**
 * @Title IDictDAOTest.java 
 * @Package com.ibis.account.dao 
 * @Description 
 * @author miyb  
 * @date 2015-2-25 下午4:41:52 
 * @version V1.0   
 */
package com.std.data.dao;

import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.unitils.spring.annotation.SpringBeanByType;

import com.std.data.base.ADAOTest;
import com.std.data.domain.Dict;

/** 
 * @author: miyb 
 * @since: 2015-2-25 下午4:41:52 
 * @history:
 */
public class IDictDAOTest extends ADAOTest {
    @SpringBeanByType
    private IDictDAO dictDAO;

    @Test
    public void insert() {
        Dict data = new Dict();
        data.setCreateDatetime(new Date());
        data.setCreator("koala");
        data.setKey("配置文件");
        data.setpId(0L);
        data.setRemark("配置文件的落地");
        data.setValue("config");
        int lineNum = dictDAO.insert(data);
        logger.info("insert : {}", lineNum);
    }

    @Test
    public void select() {
        Dict data = new Dict();
        data.setId(1L);
        data = dictDAO.select(data);
        logger.info("select : {}", data);
    }

    @Test
    public void selectTotalCount() {
        Dict data = new Dict();
        data.setId(1L);
        long id = dictDAO.selectTotalCount(data);
        logger.info("selectTotalCount : {}", id);
    }

    @Test
    public void selectList() {
        Dict data = new Dict();
        data.setId(1L);
        List<Dict> dataList = dictDAO.selectList(data);
        logger.info("selectList : {}", dataList);
    }

    @Test
    public void selectPage() {
        Dict data = new Dict();
        data.setId(1L);
        List<Dict> dataList = dictDAO.selectList(data, 0, 1);
        logger.info("selectPage : {}", dataList);
    }

}
