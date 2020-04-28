
create_clock -period "20.000 ns"  -name sys_clk     [get_ports {sys_clk}]
create_clock -period "32.000 ns"  -name sys_dma_clk [get_ports {sys_dma_clk}]


derive_pll_clocks
derive_clock_uncertainty

