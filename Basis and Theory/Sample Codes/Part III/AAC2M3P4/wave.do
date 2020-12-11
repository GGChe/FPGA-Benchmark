onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /AAC2M3P4_tb/delay
add wave -noupdate /AAC2M3P4_tb/a_tb
add wave -noupdate /AAC2M3P4_tb/b_tb
add wave -noupdate /AAC2M3P4_tb/c_tb
add wave -noupdate /AAC2M3P4_tb/y_tb
add wave -noupdate /AAC2M3P4_tb/i
add wave -noupdate /AAC2M3P4_tb/j
add wave -noupdate /AAC2M3P4_tb/k
add wave -noupdate /AAC2M3P4_tb/ErrorCount
add wave -noupdate /AAC2M3P4_tb/score
add wave -noupdate /AAC2M3P4_tb/FirstError
add wave -noupdate /AAC2M3P4_tb/ValidCheck
add wave -noupdate /AAC2M3P4_tb/testresults
add wave -noupdate /AAC2M3P4_tb/vector
add wave -noupdate /AAC2M3P4_tb/address
add wave -noupdate /AAC2M3P4_tb/data
add wave -noupdate /AAC2M3P4_tb/rom
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {89050 ps} {90050 ps}
