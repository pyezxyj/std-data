package com.std.data.dao;

import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.unitils.spring.annotation.SpringBeanByType;

import com.std.data.base.ADAOTest;
import com.std.data.domain.ContractTemplate;

public class IContractTemplateDAOTest extends ADAOTest {
    @SpringBeanByType
    private IContractTemplateDAO contractTemplateDAO;

    @Test
    public void insert() {
        ContractTemplate data = new ContractTemplate();
        data.setTitle("title");
        data.setContent("content");
        data.setType("1");
        data.setStatus("1");
        data.setCreator("koala");
        data.setCreateDatetime(new Date());
        data.setRemark("remark");

        int lineNum = contractTemplateDAO.insert(data);
        logger.info("insert : {}", lineNum);
    }

    @Test
    public void select() {
        ContractTemplate data = new ContractTemplate();
        data.setId(1L);
        data = contractTemplateDAO.select(data);
        logger.info("select : {}", data);
    }

    @Test
    public void selectTotalCount() {
        ContractTemplate data = new ContractTemplate();
        data.setId(1L);
        long id = contractTemplateDAO.selectTotalCount(data);
        logger.info("selectTotalCount : {}", id);
    }

    @Test
    public void selectList() {
        ContractTemplate data = new ContractTemplate();
        data.setId(1L);
        List<ContractTemplate> dataList = contractTemplateDAO.selectList(data);
        logger.info("selectList : {}", dataList);
    }

    @Test
    public void selectPage() {
        ContractTemplate data = new ContractTemplate();
        data.setId(1L);
        List<ContractTemplate> dataList = contractTemplateDAO.selectList(data,
            0, 1);
        logger.info("selectPage : {}", dataList);
    }

    @Test
    public void update() {
        ContractTemplate data = new ContractTemplate();
        data.setId(1L);
        data.setTitle("title1");
        data.setContent("content1");
        data.setType("1");
        data.setStatus("1");
        data.setUpdateDatetime(new Date());
        data.setUpdater("koala1");
        data.setRemark("remark1");
        int count = contractTemplateDAO.update(data);
        logger.info("update : {}", count);
    }
}
