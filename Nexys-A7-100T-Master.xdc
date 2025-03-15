set_property PACKAGE_PIN E3 [get_ports clk];
set_property IOSTANDARD LVCMOS33 [get_ports clk];
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk];

set_property PACKAGE_PIN J5 [get_ports btn_inc];
set_property IOSTANDARD LVCMOS33 [get_ports btn_inc];

set_property PACKAGE_PIN G6 [get_ports btn_rst];
set_property IOSTANDARD LVCMOS33 [get_ports btn_rst];

# Seven-Segment Display Anodes
set_property PACKAGE_PIN J17 [get_ports { an[0] }];
set_property PACKAGE_PIN J18 [get_ports { an[1] }];
set_property PACKAGE_PIN T9  [get_ports { an[2] }];
set_property PACKAGE_PIN J14 [get_ports { an[3] }];
set_property IOSTANDARD LVCMOS33 [get_ports an];

# Seven-Segment Display Segments (A-G)
set_property PACKAGE_PIN T10 [get_ports { seg[0] }];
set_property PACKAGE_PIN R10 [get_ports { seg[1] }];
set_property PACKAGE_PIN K16 [get_ports { seg[2] }];
set_property PACKAGE_PIN K13 [get_ports { seg[3] }];
set_property PACKAGE_PIN P15 [get_ports { seg[4] }];
set_property PACKAGE_PIN T11 [get_ports { seg[5] }];
set_property PACKAGE_PIN L18 [get_ports { seg[6] }];
set_property IOSTANDARD LVCMOS33 [get_ports seg];
