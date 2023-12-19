for $i in doc("University.xml")/university/instructor
order by $i/name
return <instructor> { $i/* } </instructor>