# clk => 100000000Hz
create_clock -period 10.0 -name clk_0 -waveform {0.000 5.000} [get_ports clk]
set_property PACKAGE_PIN N14 [get_ports {clk}]
set_property IOSTANDARD LVCMOS33 [get_ports {clk}]
set_property PACKAGE_PIN P6 [get_ports {rst_n}]
set_property IOSTANDARD LVCMOS33 [get_ports {rst_n}]
set_property PACKAGE_PIN K13 [get_ports {led[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]
set_property PACKAGE_PIN K12 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]
set_property PACKAGE_PIN L14 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]
set_property PACKAGE_PIN L13 [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]
set_property PACKAGE_PIN M16 [get_ports {led[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[4]}]
set_property PACKAGE_PIN M14 [get_ports {led[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[5]}]
set_property PACKAGE_PIN M12 [get_ports {led[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[6]}]
set_property PACKAGE_PIN N16 [get_ports {led[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[7]}]
set_property PACKAGE_PIN P15 [get_ports {usb_rx}]
set_property IOSTANDARD LVCMOS33 [get_ports {usb_rx}]
set_property PACKAGE_PIN P16 [get_ports {usb_tx}]
set_property IOSTANDARD LVCMOS33 [get_ports {usb_tx}]
set_property PACKAGE_PIN P11 [get_ports {playerled}]
set_property IOSTANDARD LVCMOS33 [get_ports {playerled}]
set_property PACKAGE_PIN P10 [get_ports {left_button}]
set_property IOSTANDARD LVCMOS33 [get_ports {left_button}]
set_property PACKAGE_PIN T13 [get_ports {right_button}]
set_property IOSTANDARD LVCMOS33 [get_ports {right_button}]
set_property PACKAGE_PIN R13 [get_ports {reset_button}]
set_property IOSTANDARD LVCMOS33 [get_ports {reset_button}]
set_property PACKAGE_PIN T12 [get_ports {start_button}]
set_property IOSTANDARD LVCMOS33 [get_ports {start_button}]
set_property PACKAGE_PIN T10 [get_ports {map_led0}]
set_property IOSTANDARD LVCMOS33 [get_ports {map_led0}]
set_property PACKAGE_PIN T9 [get_ports {map_led1}]
set_property IOSTANDARD LVCMOS33 [get_ports {map_led1}]
set_property PACKAGE_PIN T8 [get_ports {map_led2}]
set_property IOSTANDARD LVCMOS33 [get_ports {map_led2}]
set_property PACKAGE_PIN T7 [get_ports {map_led3}]
set_property IOSTANDARD LVCMOS33 [get_ports {map_led3}]
set_property PACKAGE_PIN T5 [get_ports {map_led4}]
set_property IOSTANDARD LVCMOS33 [get_ports {map_led4}]
set_property PACKAGE_PIN R5 [get_ports {map_led5}]
set_property IOSTANDARD LVCMOS33 [get_ports {map_led5}]
set_property PACKAGE_PIN R7 [get_ports {playerled}]
set_property IOSTANDARD LVCMOS33 [get_ports {playerled}]
set_property PACKAGE_PIN R12 [get_ports {score_seg[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {score_seg[0]}]
set_property PACKAGE_PIN N11 [get_ports {score_seg[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {score_seg[1]}]
set_property PACKAGE_PIN N12 [get_ports {score_seg[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {score_seg[2]}]
set_property PACKAGE_PIN N13 [get_ports {score_seg[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {score_seg[3]}]
set_property PACKAGE_PIN P13 [get_ports {score_seg[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {score_seg[4]}]
set_property PACKAGE_PIN R11 [get_ports {score_seg[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {score_seg[5]}]
set_property PACKAGE_PIN R10 [get_ports {score_seg[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {score_seg[6]}]
set_property PACKAGE_PIN M1 [get_ports {score_seg[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {score_seg[7]}]
set_property PACKAGE_PIN M2 [get_ports {score_sel[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {score_sel[0]}]
set_property PACKAGE_PIN N2 [get_ports {score_sel[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {score_sel[1]}]
