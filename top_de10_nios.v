module top_de10_nios (
	input		RST_N,
	input		FPGA_CLK1_50,
	input	[1:0] 	KEY,
	output	[7:0] 	LED,
	inout	 	UART_RXD,
	output	 	UART_TXD
);

reg	[27:0]	counter0;
wire		w_TXD;
wire		w_RXD;

assign LED[0] = counter0[27];
assign LED[1] = counter0[26];
assign LED[2] = counter0[25];
assign LED[3] = counter0[24];
assign LED[4] = counter0[23];
assign LED[5] = counter0[22];
assign LED[6] = counter0[21];

assign w_RXD 	= UART_RXD;
assign UART_TXD = w_TXD;

always @(negedge KEY[0] or posedge FPGA_CLK1_50)
begin
	if(KEY[0] == 1'b0) begin
		counter0 <= 0;
	end else begin
		counter0 <= counter0 + 1;
	end
end

PwmCtrl u0(
	.RST_N		(KEY[0]),
	.CLK		(FPGA_CLK1_50),
	.LED0		(LED[7]),
	.UART_TXD	(w_TXD),
	.UART_RXD	(w_RXD),
);

endmodule
