# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  set clkdiv [ipgui::add_param $IPINST -name "clkdiv" -parent ${Page_0}]
  set_property tooltip {Divides the input the input clock frequency by 2N} ${clkdiv}


}

proc update_PARAM_VALUE.clkdiv { PARAM_VALUE.clkdiv } {
	# Procedure called to update clkdiv when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.clkdiv { PARAM_VALUE.clkdiv } {
	# Procedure called to validate clkdiv
	return true
}


proc update_MODELPARAM_VALUE.clkdiv { MODELPARAM_VALUE.clkdiv PARAM_VALUE.clkdiv } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.clkdiv}] ${MODELPARAM_VALUE.clkdiv}
}

