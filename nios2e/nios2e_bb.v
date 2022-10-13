
module nios2e (
	clk_clk,
	decode0_external_connection_export,
	period0_external_connection_export,
	reset_reset_n,
	uart_0_external_connection_rxd,
	uart_0_external_connection_txd);	

	input		clk_clk;
	output	[27:0]	decode0_external_connection_export;
	output	[27:0]	period0_external_connection_export;
	input		reset_reset_n;
	input		uart_0_external_connection_rxd;
	output		uart_0_external_connection_txd;
endmodule
