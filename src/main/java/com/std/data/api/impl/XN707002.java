package com.std.data.api.impl;

import com.std.data.ao.IDictAO;
import com.std.data.api.AProcessor;
import com.std.data.common.StringValidater;
import com.std.data.exception.BizException;
import com.std.data.exception.ParaException;
import com.std.data.proxy.JsonUtil;
import com.std.data.req.XN707002Req;
import com.std.data.res.XN707002Res;
import com.std.data.spring.SpringContextHolder;

/**
 * 数据字典-增加
 * @author: myb858 
 * @since: 2015年10月29日 下午4:52:29 
 * @history:
 */
public class XN707002 extends AProcessor {
    private IDictAO dictAO = SpringContextHolder.getBean(IDictAO.class);

    private XN707002Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        dictAO.addDict(StringValidater.toLong(req.getpId()), req.getKey(),
            req.getValue(), req.getCreator(), req.getRemark());
        return new XN707002Res();
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN707002Req.class);
        StringValidater.validateBlank(req.getpId(), req.getKey(),
            req.getValue(), req.getCreator());

    }

}
