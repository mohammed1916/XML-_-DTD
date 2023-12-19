for $d in doc("University.xml")/university/department
order by $d/dept-name
return <department>
{ $d/* }
{ for $c in doc("University.xml")/university/course[dept_name = $d/dept_name]
order by $c/course_id
return <course>{ $c/*}</course>
}
</department>