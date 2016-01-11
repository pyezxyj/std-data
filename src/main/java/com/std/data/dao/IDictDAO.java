package com.std.data.dao;

import com.std.data.dao.base.IBaseDAO;
import com.std.data.domain.Dict;

/**
 * 数据字典DAO
 * @author: xieyj 
 * @since: 2015年9月12日 上午10:08:26 
 * @history:
 */
public interface IDictDAO extends IBaseDAO<Dict> {
    String NAMESPACE = IDictDAO.class.getName().concat(".");

    public int update(Dict data);

    public int updateValue(Dict dict);
}
