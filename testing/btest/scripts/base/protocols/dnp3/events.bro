#
# @TEST-EXEC: bro -r $TRACES/dnp3.trace %INPUT >output
# @TEST-EXEC: btest-diff output
# @TEST-EXEC: cat output | awk '{print $1}' | sort | uniq | wc -l >covered
# @TEST-EXEC: cat ${DIST}/src/event.bif  | grep "^event dnp3_" | wc -l >total
# @TEST-EXEC: echo `cat covered` of `cat total` events triggered by trace >coverage
# @TEST-EXEC: btest-diff coverage
#
event dnp3_application_request_header(c: connection, is_orig: bool, app_control: count, fc: count)
{
	print "dnp3_application_request_header", is_orig, app_control, fc;
}

event dnp3_application_response_header(c: connection, is_orig: bool, app_control: count, fc: count, iin: count)
{
	print "dnp3_application_response_header", is_orig, app_control, fc, iin;
}

event dnp3_object_header(c: connection, is_orig: bool, obj_type: count, qua_field: count, number: count, rf_low: count, rf_high: count)
{
	print "dnp3_object_header", is_orig, obj_type, qua_field, number, rf_low, rf_high;
}

event dnp3_object_prefix(c: connection, is_orig: bool, prefix_value: count)
{
	print "dnp3_object_prefix", is_orig, prefix_value;
}

event dnp3_header_block(c: connection, is_orig: bool, start: count, len: count, ctrl: count, dest_addr: count, src_addr: count)
{
	print "dnp3_header_block", is_orig, start, len, ctrl, dest_addr, src_addr;
}

event dnp3_response_data_object(c: connection, is_orig: bool, data_value: count)
{
	print "dnp3_response_data_object", is_orig, data_value;
}

event dnp3_crob(c: connection, is_orig: bool, control_code: count, count8: count, on_time: count, off_time: count, status_code: count)
{
	print "dnp3_crob", is_orig, control_code, count8, on_time, off_time, status_code;
}

event dnp3_pcb(c: connection, is_orig: bool, control_code: count, count8: count, on_time: count, off_time: count, status_code: count)
{
	print "dnp3_pcb", is_orig, control_code, count8, on_time, off_time, status_code;
}

event dnp3_counter32_wFlag(c: connection, is_orig: bool, flag: count, count_value: count)
{
	print "dnp3_counter32_wFlag", is_orig, flag, count_value;
}

event dnp3_counter16_wFlag(c: connection, is_orig: bool, flag: count, count_value: count)
{
	print "dnp3_counter16_wFlag", is_orig, flag, count_value;
}

event dnp3_counter32_woFlag(c: connection, is_orig: bool, count_value: count)
{
	print "dnp3_counter32_woFlag", is_orig, count_value;
}

event dnp3_counter16_woFlag(c: connection, is_orig: bool, count_value: count)
{
	print "dnp3_counter16_woFlag", is_orig, count_value;
}

event dnp3_frozen_counter32_wFlag(c: connection, is_orig: bool, flag:count, count_value: count)
{
	print "dnp3_frozen_counter32_wFlag", is_orig, flag;
}

event dnp3_frozen_counter16_wFlag(c: connection, is_orig: bool, flag:count, count_value: count)
{
	print "dnp3_frozen_counter16_wFlag", is_orig, flag;
}

event dnp3_frozen_counter32_wFlagTime(c: connection, is_orig: bool, flag:count, count_value: count, time48: string)
{
	print "dnp3_frozen_counter32_wFlagTime", is_orig, flag;
}

event dnp3_frozen_counter16_wFlagTime(c: connection, is_orig: bool, flag:count, count_value: count, time48: string)
{
	print "dnp3_frozen_counter16_wFlagTime", is_orig, flag;
}

event dnp3_frozen_counter32_woFlag(c: connection, is_orig: bool, count_value: count)
{
	print "dnp3_frozen_counter32_woFlag", is_orig, count_value;
}

event dnp3_frozen_counter16_woFlag(c: connection, is_orig: bool, count_value: count)
{
	print "dnp3_frozen_counter16_woFlag", is_orig, count_value;
}

event dnp3_analog_input32_wFlag(c: connection, is_orig: bool, flag: count, value: count)
{
	print "dnp3_analog_input32_wFlag", is_orig, flag, value;
}

event dnp3_analog_input16_wFlag(c: connection, is_orig: bool, flag: count, value: count)
{
	print "dnp3_analog_input16_wFlag", is_orig, flag, value;
}

event dnp3_analog_input32_woFlag(c: connection, is_orig: bool, value: count)
{
	print "dnp3_analog_input32_woFlag", is_orig, value;
}

event dnp3_analog_input16_woFlag(c: connection, is_orig: bool, value: count)
{
	print "dnp3_analog_input16_woFlag", is_orig, value;
}

event dnp3_analog_inputSP_wFlag(c: connection, is_orig: bool, flag: count, value: count)
{
	print "dnp3_analog_inputSP_wFlag", is_orig, flag, value;
}

event dnp3_analog_inputDP_wFlag(c: connection, is_orig: bool, flag: count, value_low: count, value_high: count)
{
	print "dnp3_analog_inputDP_wFlag", is_orig, flag, value_low, value_high;
}

event dnp3_frozen_analog_input32_wFlag(c: connection, is_orig: bool, flag: count, frozen_value: count)
{
	print "dnp3_frozen_analog_input32_wFlag", is_orig, flag, frozen_value;
}

event dnp3_frozen_analog_input16_wFlag(c: connection, is_orig: bool, flag: count, frozen_value: count)
{
	print "dnp3_frozen_analog_input16_wFlag", is_orig, flag, frozen_value;
}

event dnp3_frozen_analog_input32_wTime(c: connection, is_orig: bool, flag: count, frozen_value: count, time48: string)
{
	print "dnp3_frozen_analog_input32_wTime", is_orig, flag, frozen_value, time48;
}

event dnp3_frozen_analog_input16_wTime(c: connection, is_orig: bool, flag: count, frozen_value: count, time48: string)
{
	print "dnp3_frozen_analog_input16_wTime", is_orig, flag, frozen_value, time48;
}

event dnp3_frozen_analog_input32_woFlag(c: connection, is_orig: bool, frozen_value: count)
{
	print "dnp3_frozen_analog_input32_woFlag", is_orig, frozen_value;
}

event dnp3_frozen_analog_input16_woFlag(c: connection, is_orig: bool, frozen_value: count)
{
	print "dnp3_frozen_analog_input16_woFlag", is_orig, frozen_value;
}

event dnp3_frozen_analog_inputSP_wFlag(c: connection, is_orig: bool, flag: count, frozen_value: count)
{
	print "dnp3_frozen_analog_inputSP_wFlag", is_orig, flag, frozen_value;
}

event dnp3_frozen_analog_inputDP_wFlag(c: connection, is_orig: bool, flag: count, frozen_value_low: count, frozen_value_high: count)
{
	print "dnp3_frozen_analog_inputDP_wFlag", is_orig, flag, frozen_value_low, frozen_value_high;
}

event dnp3_analog_input32_woTime(c: connection, is_orig: bool, flag: count, value: count)
{
	print "dnp3_analog_input32_woTime", is_orig, flag, value;
}

event dnp3_analog_input16_woTime(c: connection, is_orig: bool, flag: count, value: count)
{
	print "dnp3_analog_input16_woTime", is_orig, flag, value;
}

event dnp3_analog_input32_wTime(c: connection, is_orig: bool, flag: count, value: count, time48: string)
{
	print "dnp3_analog_input32_wTime", is_orig, flag, value, time48;
}

event dnp3_analog_input16_wTime(c: connection, is_orig: bool, flag: count, value: count, time48: string)
{
	print "dnp3_analog_input16_wTime", is_orig, flag, value, time48;
}

event dnp3_analog_inputSP_woTime(c: connection, is_orig: bool, flag: count, value: count)
{
	print "dnp3_analog_inputSP_woTime", is_orig, flag, value;
}

event dnp3_analog_inputDP_woTime(c: connection, is_orig: bool, flag: count, value_low: count, value_high: count)
{
	print "dnp3_analog_inputDP_woTime", is_orig, flag, value_low, value_high;
}

event dnp3_analog_inputSP_wTime(c: connection, is_orig: bool, flag: count, value: count, time48: string)
{
	print "dnp3_analog_inputSP_wTime", is_orig, flag, value, time48;
}

event dnp3_analog_inputDP_wTime(c: connection, is_orig: bool, flag: count, value_low: count, value_high: count, time48: string)
{
	print "dnp3_analog_inputDP_wTime", is_orig, flag, value_low, value_high, time48;
}

event dnp3_frozen_analog_inputevent32_woTime(c: connection, is_orig: bool, flag: count, frozen_value: count)
{
	print "dnp3_frozen_analog_inputevent32_woTime", is_orig, flag, frozen_value;
}

event dnp3_frozen_analog_inputevent16_woTime(c: connection, is_orig: bool, flag: count, frozen_value: count)
{
	print "dnp3_frozen_analog_inputevent16_woTime", is_orig, flag, frozen_value;
}

event dnp3_frozen_analog_inputevent32_wTime(c: connection, is_orig: bool, flag: count, frozen_value: count, time48: string)
{
	print "dnp3_frozen_analog_inputevent32_wTime", is_orig, flag, frozen_value, time48;
}

event dnp3_frozen_analog_inputevent16_wTime(c: connection, is_orig: bool, flag: count, frozen_value: count, time48: string)
{
	print "dnp3_frozen_analog_inputevent16_wTime", is_orig, flag, frozen_value, time48;
}

event dnp3_frozen_analog_inputeventSP_woTime(c: connection, is_orig: bool, flag: count, frozen_value: count)
{
	print "dnp3_frozen_analog_inputeventSP_woTime", is_orig, flag, frozen_value;
}

event dnp3_frozen_analog_inputeventDP_woTime(c: connection, is_orig: bool, flag: count, frozen_value_low: count, frozen_value_high: count)
{
	print "dnp3_frozen_analog_inputeventDP_woTime", is_orig, flag, frozen_value_low, frozen_value_high;
}

event dnp3_frozen_analog_inputeventSP_wTime(c: connection, is_orig: bool, flag: count, frozen_value: count, time48: string)
{
	print "dnp3_frozen_analog_inputeventSP_wTime", is_orig, flag, frozen_value, time48;
}

event dnp3_frozen_analog_inputeventDP_wTime(c: connection, is_orig: bool, flag: count, frozen_value_low: count, frozen_value_high: count, time48: string)
{
	print "dnp3_frozen_analog_inputeventDP_wTime", is_orig, flag, frozen_value_low, frozen_value_high, time48;
}

event dnp3_data_block(c: connection, is_orig: bool, data: string, crc: count)
{
	print "dnp3_data_block", is_orig, data, crc;
}

event dnp3_pdu_test(c: connection, is_orig: bool, rest: string)
{
	print "dnp3_pdu_test", is_orig, rest;
}

event dnp3_debug_byte(c: connection, is_orig: bool, debug: string)
{
	print "dnp3_debug_byte", is_orig, debug;
}
