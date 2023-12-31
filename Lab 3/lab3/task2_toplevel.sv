module task2_toplevel (CLOCK_50, CLOCK2_50, KEY, SW, FPGA_I2C_SCLK, FPGA_I2C_SDAT, AUD_XCK, 
		        AUD_DACLRCK, AUD_ADCLRCK, AUD_BCLK, AUD_ADCDAT, AUD_DACDAT);

	input CLOCK_50, CLOCK2_50;
	input [0:0] KEY;
	input logic [9:0] SW;
	
	// I2C Audio/Video config interface
	output FPGA_I2C_SCLK;
	inout FPGA_I2C_SDAT;
	// Audio CODEC
	output AUD_XCK;
	input AUD_DACLRCK, AUD_ADCLRCK, AUD_BCLK;
	input AUD_ADCDAT;
	output AUD_DACDAT;
	
	// Local wires.
	wire read_ready, write_ready, read, write;
	wire [23:0] readdata_left, readdata_right;
	wire [23:0] writedata_left, writedata_right;
	wire reset = ~KEY[0];
	logic [15:0]  address;
	logic [23:0]  q;
	logic [23:0] DataOutTopL, DataOutTopR, DataOutTopQ;
	
	// cycle through each sample of our generated tone
	always_ff @(posedge CLOCK_50) begin
		if (address == 47999) address <= 0;
		else if (read && write) address <= address + 1'b1;
		else address <= address;
	end
	
	// initialize ROM memory with generated tone samples
	ROM_1port ROM (.address(address), .clock(CLOCK_50), .q(q));
	
	// initialize 3 filters to apply to generated tone and piano_noisy left and right audio channels
 	part3 FIRfilterTask1L (.CLOCK_50, .reset, .DataInTop(readdata_left), .DataOutTop(DataOutTopL));
	
 	part3 FIRfilterTask1R (.CLOCK_50, .reset, .DataInTop(readdata_right), .DataOutTop(DataOutTopR));

	part3 FIRfilterTask2 (.CLOCK_50, .reset, .DataInTop(q), .DataOutTop(DataOutTopQ));


// 	// SW9 = 0 = piano noise, SW9 = 1 = ROM tone
// 	// SW8 = 0 = unfiltered,  SW8 = 1 = filtered
	always_comb begin // unfiltered piano_noisy
		if(~SW[9] & ~SW[8]) begin
			writedata_left  = readdata_left;
			writedata_right = readdata_right;
			

		end
		
		 else if(SW[9] & ~SW[8]) begin //unfiltered ROM tone
			writedata_left  = q;
			writedata_right = q;
			
		end
		
		else if(~SW[9] & SW[8]) begin // filtered piano_noisy
 			writedata_left  = DataOutTopL;
 			writedata_right = DataOutTopR;

			
		end 
		
		else  begin // SW[9] & SW[8] = filtered ROM tone
 			writedata_left  = DataOutTopQ;
 			writedata_right = DataOutTopQ;

			
		end
	read = read_ready && write_ready;
	write = read_ready && write_ready;
	
	end
	
	

	
/////////////////////////////////////////////////////////////////////////////////
// Audio CODEC interface. 
//
// The interface consists of the following wires:
// read_ready, write_ready - CODEC ready for read/write operation 
// readdata_left, readdata_right - left and right channel data from the CODEC
// read - send data from the CODEC (both channels)
// writedata_left, writedata_right - left and right channel data to the CODEC
// write - send data to the CODEC (both channels)
// AUD_* - should connect to top-level entity I/O of the same name.
//         These signals go directly to the Audio CODEC
// I2C_* - should connect to top-level entity I/O of the same name.
//         These signals go directly to the Audio/Video Config module
/////////////////////////////////////////////////////////////////////////////////
	clock_generator my_clock_gen(
		// inputs
		CLOCK2_50,
		reset,

		// outputs
		AUD_XCK
	);

	audio_and_video_config cfg(
		// Inputs
		CLOCK_50,
		reset,

		// Bidirectionals
		FPGA_I2C_SDAT,
		FPGA_I2C_SCLK
	);

	audio_codec codec(
		// Inputs
		CLOCK_50,
		reset,

		read,	write,
		writedata_left, writedata_right,

		AUD_ADCDAT,

		// Bidirectionals
		AUD_BCLK,
		AUD_ADCLRCK,
		AUD_DACLRCK,

		// Outputs
		read_ready, write_ready,
		readdata_left, readdata_right,
		AUD_DACDAT
	);

endmodule