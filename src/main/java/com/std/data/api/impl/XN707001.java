package com.std.data.api.impl;

import org.apache.commons.lang3.StringUtils;

import com.std.data.ao.IDictAO;
import com.std.data.api.AProcessor;
import com.std.data.common.StringValidater;
import com.std.data.domain.Dict;
import com.std.data.exception.BizException;
import com.std.data.exception.ParaException;
import com.std.data.proxy.JsonUtil;
import com.std.data.req.XN707001Req;
import com.std.data.spring.SpringContextHolder;

/**
 * 数据字典-分页查询
 * @author: myb858 
 * @since: 2015年10月29日 下午4:52:01 
 * @history:
 */
public class XN707001 extends AProcessor {
    private IDictAO dictAO = SpringContextHolder.getBean(IDictAO.class);

    private XN707001Req req = null;

    @Override
    public Object doBusiness() throws BizException {
        Dict condition = new Dict();
        condition.setId(StringValidater.toLong(req.getId()));
        condition.setpId(StringValidater.toLong(req.getpId()));
        condition.setKey(req.getKey());

        String column = req.getOrderColumn();
        if (StringUtils.isBlank(column)) {
            column = IDictAO.DEFAULT_ORDER_COLUMN;
        }
        condition.setOrder(column, req.getOrderDir());
        int start = Integer.valueOf(req.getStart());
        int limit = Integer.valueOf(req.getLimit());
        return dictAO.queryDictPage(start, limit, condition);
    }

    @Override
    public void doCheck(String inputparams) throws ParaException {
        req = JsonUtil.json2Bean(inputparams, XN707001Req.class);
        StringValidater.validateNumber(req.getStart(), req.getLimit());
    }

}
