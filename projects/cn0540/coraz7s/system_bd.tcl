
source $ad_hdl_dir/projects/common/coraz7s/coraz7s_system_bd.tcl

#system ID
ad_ip_parameter axi_sysid_0 CONFIG.ROM_ADDR_BITS 9
ad_ip_parameter rom_sys_0 CONFIG.PATH_TO_FILE "[pwd]/mem_init_sys.txt"
ad_ip_parameter rom_sys_0 CONFIG.ROM_ADDR_BITS 9
set sys_cstring "sys rom custom string placeholder"
sysid_gen_sys_init_file $sys_cstring

ad_ip_parameter sys_ps7 CONFIG.PCW_EN_CLK2_PORT 1 
ad_ip_parameter sys_ps7 CONFIG.PCW_EN_RST2_PORT 1 
ad_ip_parameter sys_ps7 CONFIG.PCW_FPGA2_PERIPHERAL_FREQMHZ 40.0

source ../common/cn0540_bd.tcl

