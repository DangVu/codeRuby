#HashesWithinHashes
people = {
 'Dang' => {
	'name' => 'Vu Hai Dang',
	'age' => 20,
	'gender' => 'Male',
	'favorite book' => ['Davici Code', 'Eragon']
},
 'Dung' => {
	'name' => 'Do Duc Dung',
	'age' => 21,
	'gender' => 'Male',
	'favorite book' => ['No more tomorrow', 'The hunger game']
}
}
puts people['Dang']
puts people['Dang']['favorite book'].join(", ")
