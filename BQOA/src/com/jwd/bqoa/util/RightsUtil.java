package com.jwd.bqoa.util;

import java.math.BigInteger;

public class RightsUtil {
	public static BigInteger sumRights(int[] rights){
		BigInteger num = new BigInteger("0");
		for(int i =0 ; i < rights.length ; i++){
			num.setBit(rights[i]);
		}
		return num;
	}
	
	public static BigInteger sumRights(String[] rights) {
		BigInteger num = new BigInteger("0");
		for (int i = 0; i < rights.length; i++) {
			num = num.setBit(Integer.parseInt(rights[i]));
		}
		return num;
	}
	
	/**
	 * 测试是否具有指定编码的权限
	 * @param sum
	 * @param targetRights
	 * @return
	 */
	public static boolean testRights(BigInteger sum, int targetRights) {
		return sum.testBit(targetRights);
	}

	/**
	 * 测试是否具有指定编码的权限
	 * @param sum
	 * @param targetRights
	 * @return
	 */
	public static boolean testRights(String sum, int targetRights) {
		if (Tools.isEmpty(sum))
			return false;
		return testRights(new BigInteger(sum), targetRights);
	}

	/**
	 * 测试是否具有指定编码的权限
	 * @param sum
	 * @param targetRights
	 * @return
	 */
	public static boolean testRights(String sum, String targetRights) {
		if (Tools.isEmpty(sum))
			return false;
		return testRights(new BigInteger(sum), targetRights);
	}

	/**
	 * 测试是否具有指定编码的权限
	 * @param sum
	 * @param targetRights
	 * @return
	 */
	public static boolean testRights(BigInteger sum, String targetRights) {
		return testRights(sum, Integer.parseInt(targetRights));
	}
	
}
