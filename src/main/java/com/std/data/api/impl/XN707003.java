package com.std.data.api.impl;

import com.std.data.ao.IDictAO;
import com.std.data.api.AProcessor;
import com.std.data.common.StringValidater;
import com.std.data.exception.BizException;
import com.std.data.exception.ParaException;
import com.std.data.proxy.JsonUtil;
import com.std.data.req.XN707003Req;
import com.std.data.res.XN707003Res;
import com.std.data.spring.SpringContextHolder;

/**
 * 数据字典-删除
 * @author: myb858 
 * @since: 2015年10月29日 下午4:53:02 
 * @history:
 */
public class XN707003 extends AProcessor {
    private IDictAO dictAO = SpringContextHolder.getBean(IDictAO.class);

    private XN707003Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        dictAO.dropDict(StringValidater.toLong(req.getId()));
        return new XN707003Res(true);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN707003Req.class);
        StringValidater.validateBlank(req.getId());
    }

}
