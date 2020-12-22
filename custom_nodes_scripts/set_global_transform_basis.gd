tool
extends VisualScriptCustomNode

# The name of the custom node as it appears in the search.
func _get_caption():
	return "Set Global Transform Basis"

# The text displayed after the input port / sequence arrow.
func _get_text():
	return ""

# The number of input ports.
func _get_input_value_port_count():
	return 2
	
# The types of the inputs per index starting from 0.
func _get_input_value_port_type(idx):
	if idx == 0:
		return TYPE_BASIS
	elif idx == 1:
		return TYPE_OBJECT

# The number of output ports.
func _get_output_value_port_count():
	return 0

# Adding the input flow/sequence port.
func _has_input_sequence_port():
	return true

# The number of output sequence ports to use
# (has to be at least one if you have an input sequence port).
func _get_output_sequence_port_count():
	return 1

func _step(inputs, _outputs, _start_mode, _working_mem):
	# start_mode can be checked to see if it is the first time _step is called.
	# This is useful if you only want to do an operation once.

	# working_memory is persistent between _step calls.

	# The inputs array contains the value of the input ports.
	inputs[1].global_transform.basis = inputs[0]

	# The outputs array is used to set the data of the output ports.

	# Return the error string if an error occurred, else the id of the next sequence port.
	return 0 # This custom node doesn't have neither error string nor the id of the next sequence port. Therefore we return 0.
