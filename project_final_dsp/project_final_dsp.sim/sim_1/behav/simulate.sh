#!/bin/sh -f
xv_path="/home/saurabh/Vivado/2014.3.1"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xsim test_dsp_behav -key {Behavioral:sim_1:Functional:test_dsp} -tclbatch test_dsp.tcl -log simulate.log
