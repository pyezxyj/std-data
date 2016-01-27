package com.std.data.ao.impl;

import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.std.data.ao.IContractTemplateAO;
import com.std.data.base.Paginable;
import com.std.data.bo.IContractTemplateBO;
import com.std.data.domain.ContractTemplate;
import com.std.data.exception.BizException;

@Service
public class ContractTemplateAOImpl implements IContractTemplateAO {
    @Autowired
    IContractTemplateBO contractTemplateBO;

    @Override
    public List<ContractTemplate> queryContractTemplateList(
            ContractTemplate condition) {
        return contractTemplateBO.queryContractTemplateList(condition);
    }

    @Override
    public Paginable<ContractTemplate> queryContractTemplatePage(int start,
            int limit, ContractTemplate condition) {
        return contractTemplateBO.getPaginable(start, limit, condition);
    }

    @Override
    public ContractTemplate getContractTemplate(String type) {
        ContractTemplate data = null;
        if (StringUtils.isNotBlank(type)) {
            ContractTemplate condition = new ContractTemplate();
            condition.setType(type);
            List<ContractTemplate> list = contractTemplateBO
                .queryContractTemplateList(condition);
            if (CollectionUtils.isNotEmpty(list)) {
                data = list.get(0);
            }
        }
        return data;
    }

    @Override
    public Long addContractTemplate(String title, String content, String type,
            String status, String creator, String remark) {
        ContractTemplate dbData = contractTemplateBO
            .getContractTemplateByTitle(title);
        if (dbData != null) {
            throw new BizException("ZC000001", "合同标题已经存在");
        }
        ContractTemplate data = new ContractTemplate();
        data.setTitle(title);
        data.setContent(content);
        data.setType(type);
        data.setStatus(status);
        data.setCreator(creator);
        data.setRemark(remark);
        contractTemplateBO.saveContractTemplate(data);
        return data.getId();
    }

    @Override
    public void dropContractTemplate(Long id) {
        if (id > 0) {
            if (!contractTemplateBO.isContractTemplateExist(id)) {
                throw new BizException("ZC000001", "序号不存在");
            }
            contractTemplateBO.removeContractTemplate(id);
        }
    }

    @Override
    public void editContractTemplate(Long id, String title, String content,
            String type, String status, String updater, String remark) {
        if (!contractTemplateBO.isContractTemplateExist(id)) {
            throw new BizException("ZC000001", "序号不存在");
        }

        ContractTemplate data = new ContractTemplate();
        data.setId(id);
        data.setTitle(title);
        data.setContent(content);
        data.setType(type);
        data.setStatus(status);
        data.setCreator(updater);
        data.setRemark(remark);
        contractTemplateBO.refreshContractTemplate(data);

    }

}
