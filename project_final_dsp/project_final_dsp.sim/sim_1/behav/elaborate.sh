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
ExecStep $xv_path/bin/xelab -wto f110c2af8ebe4059826750a5c095730b -m64 --debug typical --relax -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot test_dsp_behav xil_defaultlib.test_dsp xil_defaultlib.glbl -log elaborate.log
