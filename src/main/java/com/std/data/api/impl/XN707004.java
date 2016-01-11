package com.std.data.api.impl;

import com.std.data.ao.IDictAO;
import com.std.data.api.AProcessor;
import com.std.data.common.StringValidater;
import com.std.data.exception.BizException;
import com.std.data.exception.ParaException;
import com.std.data.proxy.JsonUtil;
import com.std.data.req.XN707004Req;
import com.std.data.res.XN707004Res;
import com.std.data.spring.SpringContextHolder;

/**
 * 数据字典-修改
 * @author: myb858 
 * @since: 2015年10月29日 下午4:53:22 
 * @history:
 */
public class XN707004 extends AProcessor {
    private IDictAO dictAO = SpringContextHolder.getBean(IDictAO.class);

    private XN707004Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        dictAO.editDict(StringValidater.toLong(req.getId()),
            StringValidater.toLong(req.getpId()), req.getKey(), req.getValue(),
            req.getUpdater(), req.getRemark());
        return new XN707004Res(true);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN707004Req.class);
        StringValidater.validateBlank(req.getId(), req.getpId(), req.getKey(),
            req.getValue(), req.getUpdater());

    }

}
