for $c in doc("University.xml")/university/course,
$i in doc("University.xml")/university/instructor,
$t in doc("University.xml")/university/teaches
where $c/course_id= $t/course_id and $t/IID = $i/IID
return <course_instructor> { $c } </course_instructor>