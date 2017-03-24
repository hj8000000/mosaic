package com.example.form;

import java.math.BigDecimal;

import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.example.domain.Sal;

public class SalForm extends Sal{
	
	public void setSal(Sal sal) {
		super.setSalno(sal.getSalno());
		super.setBasicSal(sal.getBasicSal());
		super.setOvertimeSal(sal.getOvertimeSal());
		super.setComm(sal.getComm());
		super.setAidSal(sal.getAidSal());
		super.setSaldate(sal.getSaldate());
		super.setMembersrl(sal.getMembersrl());
	}

	@NotNull
	@Digits(integer=5, fraction=2)
	@Override
	public BigDecimal getBasicSal() {
		// TODO Auto-generated method stub
		return super.getBasicSal();
	}

	@Override
	public void setBasicSal(BigDecimal basicSal) {
		// TODO Auto-generated method stub
		super.setBasicSal(basicSal);
	}

	@Digits(integer=5, fraction=2)
	@Override
	public BigDecimal getOvertimeSal() {
		// TODO Auto-generated method stub
		return super.getOvertimeSal();
	}

	@Override
	public void setOvertimeSal(BigDecimal overtimeSal) {
		super.setOvertimeSal(overtimeSal);
	}

	@Digits(integer=5, fraction=2)
	@Override
	public BigDecimal getComm() {
		// TODO Auto-generated method stub
		return super.getComm();
	}

	@Override
	public void setComm(BigDecimal comm) {
		super.setComm(comm);
	}

	@Digits(integer=5, fraction=2)
	@Override
	public BigDecimal getAidSal() {
		// TODO Auto-generated method stub
		return super.getAidSal();
	}

	@Override
	public void setAidSal(BigDecimal aidSal) {
		super.setAidSal(aidSal);
	}

	@NotNull
	@Digits(integer=2, fraction=0)
	@Override
	public Integer getSaldate() {
		// TODO Auto-generated method stub
		return super.getSaldate();
	}

	@Override
	public void setSaldate(Integer saldate) {
		// TODO Auto-generated method stub
		super.setSaldate(saldate);
	}
	
	@NotNull
	@Digits(integer=10, fraction=0)
	@Override
	public BigDecimal getMembersrl() {
		// TODO Auto-generated method stub
		return super.getMembersrl();
	}

	@Override
	public void setMembersrl(BigDecimal membersrl) {
		super.setMembersrl(membersrl);
	}

	
	
	
}
