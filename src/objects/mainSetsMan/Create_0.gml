if global.deflogged {
	// If we're logged in
	instance_deactivate_layer("SignIn") // We deactivate the layer that shows the sign in form
} else {
	//If we need to sign in
	instance_activate_layer("SignIn") //We activate the sign in form
}