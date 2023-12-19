for $d in doc("University.xml")/university/department
return
 <department-total-salary>
   <dept_name> { $d/dept_name } </dept_name>
   <total_salary> { fn:sum(
     for $i in doc("University.xml")/university/instructor[dept_name = $d/dept_name]
       return $i/salary
     ) }
   </total_salary>
 </department-total-salary> 