package peoplefinder.POST.api.users.__id

default allowed = false

default visible = true

default enabled = false

import data.peoplefinder.directory

allowed {
	props = input.user.properties
	props.department == "Operations"
}

allowed {
	directory.is_manager_of(input.user.key, input.resource.id)
}

enabled {
	allowed
}
