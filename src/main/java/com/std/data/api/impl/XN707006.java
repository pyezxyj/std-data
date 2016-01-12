package com.std.data.api.impl;

import org.apache.commons.lang3.StringUtils;

import com.std.data.ao.IContractTemplateAO;
import com.std.data.api.AProcessor;
import com.std.data.common.StringValidater;
import com.std.data.domain.ContractTemplate;
import com.std.data.exception.BizException;
import com.std.data.exception.ParaException;
import com.std.data.proxy.JsonUtil;
import com.std.data.req.XN707006Req;
import com.std.data.spring.SpringContextHolder;

/**
 * 合同模板-分页查询
 * @author: myb858 
 * @since: 2015年11月14日 下午8:54:14 
 * @history:
 */
public class XN707006 extends AProcessor {
    private IContractTemplateAO contractTemplateAO = SpringContextHolder
        .getBean(IContractTemplateAO.class);

    private XN707006Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        ContractTemplate condition = new ContractTemplate();
        condition.setId(StringValidater.toLong(req.getId()));
        condition.setTitle(req.getTitle());
        condition.setType(req.getType());
        condition.setStatus(req.getStatus());
        condition.setCreator(req.getCreator());
        condition.setUpdater(req.getUpdater());

        String column = req.getOrderColumn();
        if (StringUtils.isBlank(column)) {
            column = IContractTemplateAO.DEFAULT_ORDER_COLUMN;
        }
        condition.setOrder(column, req.getOrderDir());
        int start = Integer.valueOf(req.getStart());
        int limit = Integer.valueOf(req.getLimit());
        return contractTemplateAO.queryContractTemplatePage(start, limit,
            condition);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN707006Req.class);
        StringValidater.validateNumber(req.getStart(), req.getLimit());

    }
}
