/**
 * @Title IContractTemplateBO.java 
 * @Package com.xnjr.pop.bo 
 * @Description 
 * @author haiqingzheng  
 * @date 2015年11月14日 下午6:55:14 
 * @version V1.0   
 */
package com.std.data.bo;

import java.util.List;

import com.std.data.base.IPaginableBO;
import com.std.data.domain.ContractTemplate;

/** 
 * @author: haiqingzheng 
 * @since: 2015年11月14日 下午6:55:14 
 * @history:
 */
public interface IContractTemplateBO extends IPaginableBO<ContractTemplate> {

    public boolean isContractTemplateExist(Long id);

    public int saveContractTemplate(ContractTemplate data);

    public int removeContractTemplate(Long id);

    public int refreshContractTemplate(ContractTemplate data);

    public ContractTemplate getContractTemplateByTitle(String title);

    public ContractTemplate getContractTemplate(Long id);

    public List<ContractTemplate> queryContractTemplateList(
            ContractTemplate condition);

}
