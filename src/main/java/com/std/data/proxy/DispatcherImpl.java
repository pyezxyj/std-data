package com.std.data.proxy;

import java.util.List;

import org.apache.commons.lang3.StringUtils;

import com.std.data.api.IProcessor;
import com.std.data.common.ConfigDescribe;
import com.std.data.common.ConfigLoader;
import com.std.data.exception.BizException;
import com.std.data.exception.ParaException;

public class DispatcherImpl implements IDispatcher {

    @Override
    public String doDispatcher(String transcode, String inputParams) {
        String result = null;
        ReturnMessage rm = new ReturnMessage();
        try {
            // 加载配置文件,proxy实例化
            String classname = "com.std.data.api.impl.XNOther";
            ConfigDescribe configDescribe = ConfigLoader.loadConfig();

            if (StringUtils.isNotBlank(transcode) && configDescribe != null) {
                List<String> codeList = configDescribe.getCodeList();
                if (codeList.contains(transcode)) {
                    classname = "com.std.data.api.impl.XN" + transcode;
                }
            }

            classname = "com.std.data.api.impl.XN" + transcode;
            IProcessor processor = (IProcessor) ReflectUtil
                .getInstance(classname);
            // 接口调用
            Object data = processor.doProcessor(inputParams);
            rm.setErrorCode(EErrorCode.SUCCESS.getCode());
            rm.setErrorInfo(EErrorCode.SUCCESS.getValue());
            rm.setData(data);
        } catch (Exception e) {
            if (e instanceof BizException) {
                rm.setErrorCode(EErrorCode.BIZ_ERR.getCode());
                rm.setErrorInfo(((BizException) e).getErrorMessage());
                rm.setData("");
            } else if (e instanceof ParaException) {
                rm.setErrorCode(EErrorCode.PARA_ERR.getCode());
                rm.setErrorInfo(((ParaException) e).getErrorMessage());
                rm.setData("");
            } else if (e instanceof NullPointerException) {
                rm.setErrorCode(EErrorCode.OTHER_ERR.getCode());
                rm.setErrorInfo("NPE");
                rm.setData("");
            } else {
                rm.setErrorCode(EErrorCode.OTHER_ERR.getCode());
                rm.setErrorInfo(e.getMessage());
                rm.setData("");
            }
        } finally {
            result = JsonUtil.Object2Json(rm);
        }
        return result;
    }
}
