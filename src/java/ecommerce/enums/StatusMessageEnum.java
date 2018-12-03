/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommerce.enums;

/**
 *
 * @author PhuNDSE63159
 */
public enum StatusMessageEnum {
    Asked(0),
    Answered(1),
    Showed(2),
    Banned(3);
    private final int value;

    private StatusMessageEnum(int value) {
        this.value = value;
    }

    public int getValue() {
        return value;
    }

}
