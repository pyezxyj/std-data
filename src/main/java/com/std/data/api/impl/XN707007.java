package com.std.data.api.impl;

import com.std.data.ao.IContractTemplateAO;
import com.std.data.api.AProcessor;
import com.std.data.common.StringValidater;
import com.std.data.exception.BizException;
import com.std.data.exception.ParaException;
import com.std.data.proxy.JsonUtil;
import com.std.data.req.XN707007Req;
import com.std.data.res.XN707007Res;
import com.std.data.spring.SpringContextHolder;

/**
 * 合同模板-增加
 * @author: myb858 
 * @since: 2015年11月14日 下午8:54:28 
 * @history:
 */
public class XN707007 extends AProcessor {
    private IContractTemplateAO contractTemplateAO = SpringContextHolder
        .getBean(IContractTemplateAO.class);

    private XN707007Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        Long id = contractTemplateAO.addContractTemplate(req.getTitle(),
            req.getContent(), req.getType(), req.getStatus(), req.getCreator(),
            req.getRemark());
        return new XN707007Res(id);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN707007Req.class);
        StringValidater.validateBlank(req.getTitle(), req.getContent(),
            req.getType(), req.getStatus(), req.getCreator());
    }
}
