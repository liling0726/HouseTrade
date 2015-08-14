package org.tarena.entity;
/**
 * 房屋图片实体类
 * @author sd
 *
 */
public class HouseImage {
	private int id;//主键
	private String name;//图片名称
	private int houseId;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getHouseId() {
		return houseId;
	}
	public void setHouseId(int houseId) {
		this.houseId = houseId;
	}
}
