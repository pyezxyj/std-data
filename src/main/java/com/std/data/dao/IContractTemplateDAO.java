package com.std.data.dao;

import com.std.data.dao.base.IBaseDAO;
import com.std.data.domain.ContractTemplate;

public interface IContractTemplateDAO extends IBaseDAO<ContractTemplate> {
    String NAMESPACE = IContractTemplateDAO.class.getName().concat(".");

    public int update(ContractTemplate data);
}
