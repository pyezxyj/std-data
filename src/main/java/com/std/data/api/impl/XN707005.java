package com.std.data.api.impl;

import com.std.data.ao.IContractTemplateAO;
import com.std.data.api.AProcessor;
import com.std.data.common.StringValidater;
import com.std.data.domain.ContractTemplate;
import com.std.data.exception.BizException;
import com.std.data.exception.ParaException;
import com.std.data.proxy.JsonUtil;
import com.std.data.req.XN707005Req;
import com.std.data.spring.SpringContextHolder;

/**
 * 合同模板-列表查询
 * @author: myb858 
 * @since: 2015年11月14日 下午8:53:54 
 * @history:
 */
public class XN707005 extends AProcessor {
    private IContractTemplateAO contractTemplateAO = SpringContextHolder
        .getBean(IContractTemplateAO.class);

    private XN707005Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        ContractTemplate condition = new ContractTemplate();
        condition.setId(StringValidater.toLong(req.getId()));
        condition.setTitle(req.getTitle());
        condition.setType(req.getType());
        condition.setStatus(req.getStatus());
        condition.setCreator(req.getCreator());
        condition.setUpdater(req.getUpdater());
        return contractTemplateAO.queryContractTemplateList(condition);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN707005Req.class);
    }

}
