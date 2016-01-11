package com.std.data.bo.impl;

import java.util.Date;
import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.std.data.base.PaginableBOImpl;
import com.std.data.bo.IDictBO;
import com.std.data.dao.IDictDAO;
import com.std.data.domain.Dict;
import com.std.data.enums.EDictKey;
import com.std.data.exception.BizException;

/**
 * 数据字典
 * @author: xieyj 
 * @since: 2015年9月10日 上午8:48:00 
 * @history:
 */
@Component
public class DictBOImpl extends PaginableBOImpl<Dict> implements IDictBO {
    @Autowired
    private IDictDAO dictDAO;

    @Override
    public boolean isDictExist(Long id) {
        Dict dict = new Dict();
        dict.setId(id);
        if (dictDAO.selectTotalCount(dict) == 1) {
            return true;
        }
        return false;
    }

    /** 
     * @see com.xnjr.cpzc.system.IDictBO#saveDict(com.xnjr.cpzc.domain.Dict)
     */
    @Override
    public int saveDict(Dict data) {
        int count = 0;
        if (data != null) {
            data.setCreateDatetime(new Date());
            count = dictDAO.insert(data);
        }
        return count;
    }

    /** 
     * @see com.xnjr.cpzc.system.IDictBO#removeDict(java.lang.Long)
     */
    @Override
    public int removeDict(Long id) {
        int count = 0;
        if (id > 0) {
            Dict data = new Dict();
            data.setId(id);
            count = dictDAO.delete(data);
        }
        return count;
    }

    /** 
     * @see com.xnjr.cpzc.system.IDictBO#refreshDict(com.xnjr.cpzc.domain.Dict)
     */
    @Override
    public int refreshDict(Dict data) {
        int count = 0;
        if (data != null) {
            data.setUpdateDatetime(new Date());
            count = dictDAO.update(data);
        }
        return count;
    }

    /** 
     * @see com.xnjr.cpzc.system.IDictBO#getDict(java.lang.Long)
     */
    @Override
    public Dict getDict(Long id) {
        Dict dictDO = null;
        if (id > 0) {
            Dict condition = new Dict();
            condition.setId(id);
            dictDO = dictDAO.select(condition);
        }
        if (dictDO == null) {
            throw new BizException("XN000000", "数据字典不存在");
        }
        return dictDO;
    }

    /** 
     * @see com.xnjr.cpzc.system.IDictBO#queryDictList(com.xnjr.cpzc.domain.Dict)
     */
    @Override
    public List<Dict> queryDictList(Dict condition) {
        return dictDAO.selectList(condition);
    }

    @Override
    public List<Dict> queryDictListByPid(Long pId) {
        List<Dict> list = null;
        if (pId > 0) {
            Dict condition = new Dict();
            condition.setpId(pId);
            list = dictDAO.selectList(condition);
        }
        return list;
    }

    @Override
    public List<Dict> queryDictListByKey(String key) {
        List<Dict> list = null;
        if (StringUtils.isNotBlank(key)) {
            Dict condition = new Dict();
            condition.setKey(key);
            list = dictDAO.selectList(condition);
        }
        return list;
    }

    @Override
    public String getSystemConfig(EDictKey key) {
        List<Dict> list = queryDictListByKey(key.getCode());
        if (!CollectionUtils.isNotEmpty(list)) {
            throw new BizException("XN000000", "系统参数" + key.getCode() + "未配置");
        }
        Dict ele = list.get(0);
        return ele.getValue();
    }

    @Override
    public void addValue(Long id, String addStr) {
        Dict dict = this.getDict(id);
        dict.setValue(dict.getValue() + addStr);
        dict.setUpdater("test");
        dict.setUpdateDatetime(new Date());
        dict.setRemark("Spring事务测试");
        dictDAO.update(dict);
    }

    @Override
    public void refreshValue(Long id, String value) {
        Dict dict = new Dict();
        dict.setId(id);
        dict.setValue(value);
        dict.setUpdater("test");
        dict.setUpdateDatetime(new Date());
        dict.setRemark("Spring事务测试");
        dictDAO.updateValue(dict);

    }
}
