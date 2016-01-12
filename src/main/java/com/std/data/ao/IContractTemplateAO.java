package com.std.data.ao;

import java.util.List;

import com.std.data.base.Paginable;
import com.std.data.domain.ContractTemplate;
import com.std.data.spring.ServiceModule;

@ServiceModule
public interface IContractTemplateAO {

    String DEFAULT_ORDER_COLUMN = "id";

    List<ContractTemplate> queryContractTemplateList(ContractTemplate condition);

    Paginable<ContractTemplate> queryContractTemplatePage(int start, int limit,
            ContractTemplate condition);

    Long addContractTemplate(String title, String content, String type,
            String status, String creator, String remark);

    void dropContractTemplate(Long id);

    void editContractTemplate(Long id, String title, String content,
            String type, String status, String updater, String remark);

}
