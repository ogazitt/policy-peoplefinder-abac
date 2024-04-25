package peoplefinder.directory

is_manager_of(user_id, employee_id) {
	ds.check({
		"object_type": "user",
		"object_id": employee_id,
		"relation": "in_management_chain",
		"subject_type": "user",
		"subject_id": user_id
	})
}
