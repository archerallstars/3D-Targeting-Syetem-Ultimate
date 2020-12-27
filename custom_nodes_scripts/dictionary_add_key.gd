tool
extends VisualScriptCustomNode

func _get_caption():
	return "Dictionary Add Key"

func _get_text():
	return ""

func _get_input_value_port_count():
	return 3

func _get_input_value_port_type(idx):
	if idx == 0:
		return TYPE_DICTIONARY
	elif idx == 1:
		return TYPE_NIL
	elif idx == 2:
		return TYPE_NIL

func _get_input_value_port_name(idx):
	if idx == 0:
		return "dict"
	elif idx == 1:
		return "key"
	elif idx == 2:
		return "value"

func _has_input_sequence_port():
	return true

func _get_output_sequence_port_count():
	return 1

func _step(inputs, _outputs, _start_mode, _working_mem):
	inputs[0][inputs[1]] = inputs[2]
	return 0
