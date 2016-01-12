package com.std.data.api.impl;

import com.std.data.ao.IContractTemplateAO;
import com.std.data.api.AProcessor;
import com.std.data.common.StringValidater;
import com.std.data.exception.BizException;
import com.std.data.exception.ParaException;
import com.std.data.proxy.JsonUtil;
import com.std.data.req.XN707008Req;
import com.std.data.res.XN707008Res;
import com.std.data.spring.SpringContextHolder;

/**
 * 合同模板-删除
 * @author: myb858 
 * @since: 2015年11月14日 下午8:54:38 
 * @history:
 */
public class XN707008 extends AProcessor {
    private IContractTemplateAO contractTemplateAO = SpringContextHolder
        .getBean(IContractTemplateAO.class);

    private XN707008Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        contractTemplateAO.dropContractTemplate(StringValidater.toLong(req
            .getId()));
        return new XN707008Res(true);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN707008Req.class);
        StringValidater.validateBlank(req.getId());

    }
}
