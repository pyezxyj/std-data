package com.std.data.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.std.data.dao.IContractTemplateDAO;
import com.std.data.dao.base.support.AMybatisTemplate;
import com.std.data.domain.ContractTemplate;

@Repository("contractTemplateDAOImpl")
public class ContractTemplateDAOImpl extends AMybatisTemplate implements
        IContractTemplateDAO {

    @Override
    public int insert(ContractTemplate data) {
        return super.insert("insert_contractTemplate", data);
    }

    @Override
    public int delete(ContractTemplate data) {
        return super.delete("delete_contractTemplate", data);
    }

    @Override
    public ContractTemplate select(ContractTemplate condition) {
        return super.select("select_contractTemplate", condition,
            ContractTemplate.class);
    }

    @Override
    public long selectTotalCount(ContractTemplate condition) {
        return super.selectTotalCount("select_contractTemplate_count",
            condition);
    }

    @Override
    public List<ContractTemplate> selectList(ContractTemplate condition) {
        return super.selectList("select_contractTemplate", condition,
            ContractTemplate.class);
    }

    @Override
    public List<ContractTemplate> selectList(ContractTemplate condition,
            int start, int count) {
        return super.selectList("select_contractTemplate", start, count,
            condition, ContractTemplate.class);
    }

    @Override
    public int update(ContractTemplate data) {
        return super.update("update_contractTemplate", data);
    }

}
