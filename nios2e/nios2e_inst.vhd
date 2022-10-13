	component nios2e is
		port (
			clk_clk                            : in  std_logic                     := 'X'; -- clk
			decode0_external_connection_export : out std_logic_vector(27 downto 0);        -- export
			period0_external_connection_export : out std_logic_vector(27 downto 0);        -- export
			reset_reset_n                      : in  std_logic                     := 'X'; -- reset_n
			uart_0_external_connection_rxd     : in  std_logic                     := 'X'; -- rxd
			uart_0_external_connection_txd     : out std_logic                             -- txd
		);
	end component nios2e;

	u0 : component nios2e
		port map (
			clk_clk                            => CONNECTED_TO_clk_clk,                            --                         clk.clk
			decode0_external_connection_export => CONNECTED_TO_decode0_external_connection_export, -- decode0_external_connection.export
			period0_external_connection_export => CONNECTED_TO_period0_external_connection_export, -- period0_external_connection.export
			reset_reset_n                      => CONNECTED_TO_reset_reset_n,                      --                       reset.reset_n
			uart_0_external_connection_rxd     => CONNECTED_TO_uart_0_external_connection_rxd,     --  uart_0_external_connection.rxd
			uart_0_external_connection_txd     => CONNECTED_TO_uart_0_external_connection_txd      --                            .txd
		);

