onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /part2_tb/CLOCK_50
add wave -noupdate /part2_tb/reset
add wave -noupdate /part2_tb/read_ready
add wave -noupdate /part2_tb/write_ready
add wave -noupdate /part2_tb/dut/address
add wave -noupdate -radix hexadecimal -childformat {{{/part2_tb/writedata_right[23]} -radix hexadecimal} {{/part2_tb/writedata_right[22]} -radix hexadecimal} {{/part2_tb/writedata_right[21]} -radix hexadecimal} {{/part2_tb/writedata_right[20]} -radix hexadecimal} {{/part2_tb/writedata_right[19]} -radix hexadecimal} {{/part2_tb/writedata_right[18]} -radix hexadecimal} {{/part2_tb/writedata_right[17]} -radix hexadecimal} {{/part2_tb/writedata_right[16]} -radix hexadecimal} {{/part2_tb/writedata_right[15]} -radix hexadecimal} {{/part2_tb/writedata_right[14]} -radix hexadecimal} {{/part2_tb/writedata_right[13]} -radix hexadecimal} {{/part2_tb/writedata_right[12]} -radix hexadecimal} {{/part2_tb/writedata_right[11]} -radix hexadecimal} {{/part2_tb/writedata_right[10]} -radix hexadecimal} {{/part2_tb/writedata_right[9]} -radix hexadecimal} {{/part2_tb/writedata_right[8]} -radix hexadecimal} {{/part2_tb/writedata_right[7]} -radix hexadecimal} {{/part2_tb/writedata_right[6]} -radix hexadecimal} {{/part2_tb/writedata_right[5]} -radix hexadecimal} {{/part2_tb/writedata_right[4]} -radix hexadecimal} {{/part2_tb/writedata_right[3]} -radix hexadecimal} {{/part2_tb/writedata_right[2]} -radix hexadecimal} {{/part2_tb/writedata_right[1]} -radix hexadecimal} {{/part2_tb/writedata_right[0]} -radix hexadecimal}} -subitemconfig {{/part2_tb/writedata_right[23]} {-height 15 -radix hexadecimal} {/part2_tb/writedata_right[22]} {-height 15 -radix hexadecimal} {/part2_tb/writedata_right[21]} {-height 15 -radix hexadecimal} {/part2_tb/writedata_right[20]} {-height 15 -radix hexadecimal} {/part2_tb/writedata_right[19]} {-height 15 -radix hexadecimal} {/part2_tb/writedata_right[18]} {-height 15 -radix hexadecimal} {/part2_tb/writedata_right[17]} {-height 15 -radix hexadecimal} {/part2_tb/writedata_right[16]} {-height 15 -radix hexadecimal} {/part2_tb/writedata_right[15]} {-height 15 -radix hexadecimal} {/part2_tb/writedata_right[14]} {-height 15 -radix hexadecimal} {/part2_tb/writedata_right[13]} {-height 15 -radix hexadecimal} {/part2_tb/writedata_right[12]} {-height 15 -radix hexadecimal} {/part2_tb/writedata_right[11]} {-height 15 -radix hexadecimal} {/part2_tb/writedata_right[10]} {-height 15 -radix hexadecimal} {/part2_tb/writedata_right[9]} {-height 15 -radix hexadecimal} {/part2_tb/writedata_right[8]} {-height 15 -radix hexadecimal} {/part2_tb/writedata_right[7]} {-height 15 -radix hexadecimal} {/part2_tb/writedata_right[6]} {-height 15 -radix hexadecimal} {/part2_tb/writedata_right[5]} {-height 15 -radix hexadecimal} {/part2_tb/writedata_right[4]} {-height 15 -radix hexadecimal} {/part2_tb/writedata_right[3]} {-height 15 -radix hexadecimal} {/part2_tb/writedata_right[2]} {-height 15 -radix hexadecimal} {/part2_tb/writedata_right[1]} {-height 15 -radix hexadecimal} {/part2_tb/writedata_right[0]} {-height 15 -radix hexadecimal}} /part2_tb/writedata_right
add wave -noupdate -radix hexadecimal /part2_tb/writedata_left
add wave -noupdate -radix binary /part2_tb/write
add wave -noupdate -radix binary /part2_tb/read
add wave -noupdate -radix hexadecimal -childformat {{{/part2_tb/dut/ROM[23]} -radix hexadecimal} {{/part2_tb/dut/ROM[22]} -radix hexadecimal} {{/part2_tb/dut/ROM[21]} -radix hexadecimal} {{/part2_tb/dut/ROM[20]} -radix hexadecimal} {{/part2_tb/dut/ROM[19]} -radix hexadecimal} {{/part2_tb/dut/ROM[18]} -radix hexadecimal} {{/part2_tb/dut/ROM[17]} -radix hexadecimal} {{/part2_tb/dut/ROM[16]} -radix hexadecimal} {{/part2_tb/dut/ROM[15]} -radix hexadecimal} {{/part2_tb/dut/ROM[14]} -radix hexadecimal} {{/part2_tb/dut/ROM[13]} -radix hexadecimal} {{/part2_tb/dut/ROM[12]} -radix hexadecimal} {{/part2_tb/dut/ROM[11]} -radix hexadecimal} {{/part2_tb/dut/ROM[10]} -radix hexadecimal} {{/part2_tb/dut/ROM[9]} -radix hexadecimal} {{/part2_tb/dut/ROM[8]} -radix hexadecimal} {{/part2_tb/dut/ROM[7]} -radix hexadecimal} {{/part2_tb/dut/ROM[6]} -radix hexadecimal} {{/part2_tb/dut/ROM[5]} -radix hexadecimal} {{/part2_tb/dut/ROM[4]} -radix hexadecimal} {{/part2_tb/dut/ROM[3]} -radix hexadecimal} {{/part2_tb/dut/ROM[2]} -radix hexadecimal} {{/part2_tb/dut/ROM[1]} -radix hexadecimal} {{/part2_tb/dut/ROM[0]} -radix hexadecimal}} -subitemconfig {{/part2_tb/dut/ROM[23]} {-height 15 -radix hexadecimal} {/part2_tb/dut/ROM[22]} {-height 15 -radix hexadecimal} {/part2_tb/dut/ROM[21]} {-height 15 -radix hexadecimal} {/part2_tb/dut/ROM[20]} {-height 15 -radix hexadecimal} {/part2_tb/dut/ROM[19]} {-height 15 -radix hexadecimal} {/part2_tb/dut/ROM[18]} {-height 15 -radix hexadecimal} {/part2_tb/dut/ROM[17]} {-height 15 -radix hexadecimal} {/part2_tb/dut/ROM[16]} {-height 15 -radix hexadecimal} {/part2_tb/dut/ROM[15]} {-height 15 -radix hexadecimal} {/part2_tb/dut/ROM[14]} {-height 15 -radix hexadecimal} {/part2_tb/dut/ROM[13]} {-height 15 -radix hexadecimal} {/part2_tb/dut/ROM[12]} {-height 15 -radix hexadecimal} {/part2_tb/dut/ROM[11]} {-height 15 -radix hexadecimal} {/part2_tb/dut/ROM[10]} {-height 15 -radix hexadecimal} {/part2_tb/dut/ROM[9]} {-height 15 -radix hexadecimal} {/part2_tb/dut/ROM[8]} {-height 15 -radix hexadecimal} {/part2_tb/dut/ROM[7]} {-height 15 -radix hexadecimal} {/part2_tb/dut/ROM[6]} {-height 15 -radix hexadecimal} {/part2_tb/dut/ROM[5]} {-height 15 -radix hexadecimal} {/part2_tb/dut/ROM[4]} {-height 15 -radix hexadecimal} {/part2_tb/dut/ROM[3]} {-height 15 -radix hexadecimal} {/part2_tb/dut/ROM[2]} {-height 15 -radix hexadecimal} {/part2_tb/dut/ROM[1]} {-height 15 -radix hexadecimal} {/part2_tb/dut/ROM[0]} {-height 15 -radix hexadecimal}} /part2_tb/dut/ROM
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {112 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 51
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 50
configure wave -gridperiod 100
configure wave -griddelta 2
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {178 ps}
