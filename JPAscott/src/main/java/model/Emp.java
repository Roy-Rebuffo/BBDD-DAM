package model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the emp database table.
 * 
 */
@Entity
@NamedQuery(name="Emp.findAll", query="SELECT e FROM Emp e")
@NamedQuery(
	    name = "Emp.updateOne",
	    query = "UPDATE Emp e SET e.sal = 5000 WHERE e.empno = 7369"
	)
@NamedQuery(
	    name = "Emp.updateWho",
	    query = "UPDATE Emp e SET e.sal = :nuevoSal WHERE e.empno = :num"
	)
@NamedQuery(
			name = "Emp.deleteOne",
			query = "DELETE Emp e where e.empno = 7369"
		)
public class Emp implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int empno;

	private Float comm;

	private String ename;

	@Temporal(TemporalType.DATE)
	private Date hiredate;

	private String job;

	private Integer mgr;

	private float sal;

	//bi-directional many-to-one association to Dept
	@ManyToOne
	@JoinColumn(name="DEPTNO")
	private Dept dept;

	public Emp() {
	}

	public int getEmpno() {
		return this.empno;
	}

	public void setEmpno(int empno) {
		this.empno = empno;
	}

	public Float getComm() {
		return this.comm;
	}

	public void setComm(Float comm) {
		this.comm = comm;
	}

	public String getEname() {
		return this.ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public Date getHiredate() {
		return this.hiredate;
	}

	public void setHiredate(Date hiredate) {
		this.hiredate = hiredate;
	}

	public String getJob() {
		return this.job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public Integer getMgr() {
		return this.mgr;
	}

	public void setMgr(Integer mgr) {
		this.mgr = mgr;
	}

	public float getSal() {
		return this.sal;
	}

	public void setSal(float sal) {
		this.sal = sal;
	}

	public Dept getDept() {
		return this.dept;
	}

	public void setDept(Dept dept) {
		this.dept = dept;
	}

	@Override
	public String toString() {
	    return String.format(
	        "\n+---------+-------------------------+\n" +
	        "| Campo   | Valor                   |\n" +
	        "+---------+-------------------------+\n" +
	        "| empno   | %-23s |\n" +
	        "| ename   | %-23s |\n" +
	        "| job     | %-23s |\n" +
	        "| sal     | %-23s |\n" +
	        "| comm    | %-23s |\n" +
	        "| mgr     | %-23s |\n" +
	        "| hiredate| %-23s |\n" +
	        "+---------+-------------------------+",
	        empno, ename, job, sal, comm, mgr, hiredate
	    );
	}
}