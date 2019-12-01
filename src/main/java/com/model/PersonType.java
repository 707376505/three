package com.model;

public class PersonType {
	private Integer personTypeId;//人员类别编号
	private String personTypeName;// 人员类别名称
	public Integer getPersonTypeId() {
		return personTypeId;
	}
	public void setPersonTypeId(Integer personTypeId) {
		this.personTypeId = personTypeId;
	}
	public String getPersonTypeName() {
		return personTypeName;
	}
	public void setPersonTypeName(String personTypeName) {
		this.personTypeName = personTypeName;
	}
	@Override
	public String toString() {
		return "personType [personTypeId=" + personTypeId + ", personTypeName=" + personTypeName + "]";
	}

}
