/**
 * @Title ISupportBO.java 
 * @Package com.xnjr.cpzc.support 
 * @Description 
 * @author xieyj  
 * @date 2015年8月20日 下午5:39:36 
 * @version V1.0   
 */
package com.std.data.bo;

import java.util.List;

import com.std.data.base.IPaginableBO;
import com.std.data.domain.Dict;
import com.std.data.enums.EDictKey;

/** 
 * @author: xieyj 
 * @since: 2015年8月20日 下午5:39:36 
 * @history:
 */
public interface IDictBO extends IPaginableBO<Dict> {
    public boolean isDictExist(Long id);

    public int saveDict(Dict data);

    public int removeDict(Long id);

    public int refreshDict(Dict data);

    public Dict getDict(Long id);

    public List<Dict> queryDictListByPid(Long pId);

    public List<Dict> queryDictListByKey(String key);

    public List<Dict> queryDictList(Dict condition);

    /**
     * 获取系统配置参数
     * @param key
     * @return 
     * @create: 2015年11月25日 上午11:29:02 myb858
     * @history:
     */
    public String getSystemConfig(EDictKey key);

    /**
     * value尾部加字符串
     * @param id
     * @param addStr
     * @create: 2015年11月29日 下午1:38:38 myb858
     * @history:
     */
    public void addValue(Long id, String addStr);

    public void refreshValue(Long id, String value);
}
