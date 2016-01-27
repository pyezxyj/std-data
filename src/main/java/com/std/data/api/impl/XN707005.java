package com.std.data.api.impl;

import com.std.data.ao.IContractTemplateAO;
import com.std.data.api.AProcessor;
import com.std.data.domain.ContractTemplate;
import com.std.data.exception.BizException;
import com.std.data.exception.ParaException;
import com.std.data.proxy.JsonUtil;
import com.std.data.req.XN707005Req;
import com.std.data.res.XN707005Res;
import com.std.data.spring.SpringContextHolder;

/**
 * 合同模板-详情查询
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
        XN707005Res res = new XN707005Res();
        ContractTemplate template = contractTemplateAO.getContractTemplate(req
            .getType());
        if (template != null) {
            res.setContent(template.getContent());
            res.setStatus(template.getStatus());
            res.setTitle(template.getTitle());
            res.setType(template.getType());
        }
        return res;
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN707005Req.class);
    }

}
