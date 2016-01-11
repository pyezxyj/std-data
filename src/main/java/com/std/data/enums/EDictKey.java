package com.std.data.enums;

public enum EDictKey {

    OIRate1("overdueInterestRate1", "C端30天内的逾期利率"), OIRate2(
            "overdueInterestRate2", "C端30天后的逾期利率"), F0Rate1("feeOnOverdue1",
            "30天内平台罚款率"), F0Rate2("feeOnOverdue2", "30天后平台罚款率");

    EDictKey(String code, String value) {
        this.code = code;
        this.value = value;
    }

    private String code;

    private String value;

    public String getCode() {
        return code;
    }

    public String getValue() {
        return value;
    }
}
