package com.model;

public class UserFunction {
	private Integer functionId;//角色功能编号
	private Integer menuId;//菜单id
	private Integer person_type_id;//人员类别编号
	public Integer getFunctionId() {
		return functionId;
	}
	public void setFunctionId(Integer functionId) {
		this.functionId = functionId;
	}
	public Integer getMenuId() {
		return menuId;
	}
	public void setMenuId(Integer menuId) {
		this.menuId = menuId;
	}
	public Integer getPerson_type_id() {
		return person_type_id;
	}
	public void setPerson_type_id(Integer person_type_id) {
		this.person_type_id = person_type_id;
	}
	@Override
	public String toString() {
		return "UserFunction [functionId=" + functionId + ", menuId=" + menuId + ", person_type_id=" + person_type_id
				+ "]";
	}
}
