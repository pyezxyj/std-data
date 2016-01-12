package com.std.data.api.impl;

import com.std.data.ao.IContractTemplateAO;
import com.std.data.api.AProcessor;
import com.std.data.common.StringValidater;
import com.std.data.exception.BizException;
import com.std.data.exception.ParaException;
import com.std.data.proxy.JsonUtil;
import com.std.data.req.XN707009Req;
import com.std.data.res.XN707009Res;
import com.std.data.spring.SpringContextHolder;

/**
 * 合同模板-修改
 * @author: myb858 
 * @since: 2015年11月14日 下午8:54:49 
 * @history:
 */
public class XN707009 extends AProcessor {
    private IContractTemplateAO contractTemplateAO = SpringContextHolder
        .getBean(IContractTemplateAO.class);

    private XN707009Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        contractTemplateAO.editContractTemplate(
            StringValidater.toLong(req.getId()), req.getTitle(),
            req.getContent(), req.getType(), req.getStatus(), req.getUpdater(),
            req.getRemark());
        return new XN707009Res(true);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN707009Req.class);
        StringValidater.validateBlank(req.getId(), req.getTitle(),
            req.getContent(), req.getType(), req.getStatus(), req.getUpdater());
    }
}
