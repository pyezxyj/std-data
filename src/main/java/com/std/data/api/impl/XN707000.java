package com.std.data.api.impl;

import com.std.data.ao.IDictAO;
import com.std.data.api.AProcessor;
import com.std.data.common.StringValidater;
import com.std.data.domain.Dict;
import com.std.data.exception.BizException;
import com.std.data.exception.ParaException;
import com.std.data.proxy.JsonUtil;
import com.std.data.req.XN707000Req;
import com.std.data.spring.SpringContextHolder;

/**
 * 数据字典-列表查询
 * @author: myb858 
 * @since: 2015年10月29日 下午4:50:32 
 * @history:
 */
public class XN707000 extends AProcessor {
    private IDictAO dictAO = SpringContextHolder.getBean(IDictAO.class);

    private XN707000Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        Dict condition = new Dict();
        condition.setId(StringValidater.toLong(req.getId()));
        condition.setpId(StringValidater.toLong(req.getpId()));
        condition.setKey(req.getKey());
        return dictAO.queryDictList(condition);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN707000Req.class);
    }

}
