package com.example.form;

import java.math.BigDecimal;

import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.example.domain.Sal;

public class SalForm extends Sal{

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
		if (overtimeSal.equals(""))
			overtimeSal = null;
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
		if (comm.equals(""))
			comm = null;
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
		if (aidSal.equals(""))
			aidSal = null;
		super.setAidSal(aidSal);
	}

	@NotNull
	@Digits(integer=2, fraction=0)
	@Override
	public int getSaldate() {
		// TODO Auto-generated method stub
		return super.getSaldate();
	}

	@Override
	public void setSaldate(int saldate) {
		// TODO Auto-generated method stub
		super.setSaldate(saldate);
	}
	
	@Digits(integer=10, fraction=0)
	@Override
	public BigDecimal getMembersrl() {
		// TODO Auto-generated method stub
		return super.getMembersrl();
	}

	@Override
	public void setMembersrl(BigDecimal membersrl) {
		if (membersrl.equals(""))
			membersrl = null;
		super.setMembersrl(membersrl);
	}

	
	
	
}
