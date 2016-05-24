library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SoC_Test is 
	port(
		OSC_50_B8A									  : in 	 std_logic;												-- clock
		
		memory_mem_a                    		  : out   std_logic_vector(14 downto 0);              -- mem_a
		memory_mem_ba                   		  : out   std_logic_vector(2 downto 0);               -- mem_ba
		memory_mem_ck                   		  : out   std_logic;                                  -- mem_ck
		memory_mem_ck_n                 		  : out   std_logic;                                  -- mem_ck_n
		memory_mem_cke                  		  : out   std_logic;                                  -- mem_cke
		memory_mem_cs_n                		  : out   std_logic;                                  -- mem_cs_n
		memory_mem_ras_n                		  : out   std_logic;                                  -- mem_ras_n
		memory_mem_cas_n                		  : out   std_logic;                                  -- mem_cas_n
		memory_mem_we_n                 		  : out   std_logic;                                  -- mem_we_n
		memory_mem_reset_n              		  : out   std_logic;                                  -- mem_reset_n
		memory_mem_dq                   		  : inout std_logic_vector(31 downto 0);					-- mem_dq
		memory_mem_dqs                 		  : inout std_logic_vector(3 downto 0);               -- mem_dqs
		memory_mem_dqs_n               		  : inout std_logic_vector(3 downto 0);               -- mem_dqs_n
		memory_mem_odt                  		  : out   std_logic;                                  -- mem_odt
		memory_mem_dm                   		  : out   std_logic_vector(3 downto 0);               -- mem_dm
		memory_oct_rzqin                		  : in    std_logic;                                  -- oct_rzqin
		
		hps_0_hps_io_hps_io_emac1_inst_TX_CLK : out   std_logic;                                  -- hps_io_emac1_inst_TX_CLK
		hps_0_hps_io_hps_io_emac1_inst_TXD0   : out   std_logic;                                  -- hps_io_emac1_inst_TXD0
		hps_0_hps_io_hps_io_emac1_inst_TXD1   : out   std_logic;                                  -- hps_io_emac1_inst_TXD1
		hps_0_hps_io_hps_io_emac1_inst_TXD2   : out   std_logic;                                  -- hps_io_emac1_inst_TXD2
		hps_0_hps_io_hps_io_emac1_inst_TXD3   : out   std_logic;                                  -- hps_io_emac1_inst_TXD3
		hps_0_hps_io_hps_io_emac1_inst_RXD0   : in    std_logic;             							-- hps_io_emac1_inst_RXD0
		hps_0_hps_io_hps_io_emac1_inst_MDIO   : inout std_logic;           								-- hps_io_emac1_inst_MDIO
		hps_0_hps_io_hps_io_emac1_inst_MDC    : out   std_logic;                                  -- hps_io_emac1_inst_MDC
		hps_0_hps_io_hps_io_emac1_inst_RX_CTL : in    std_logic;             							-- hps_io_emac1_inst_RX_CTL
		hps_0_hps_io_hps_io_emac1_inst_TX_CTL : out   std_logic;                                  -- hps_io_emac1_inst_TX_CTL
		hps_0_hps_io_hps_io_emac1_inst_RX_CLK : in    std_logic;             							-- hps_io_emac1_inst_RX_CLK
		hps_0_hps_io_hps_io_emac1_inst_RXD1   : in    std_logic;             							-- hps_io_emac1_inst_RXD1
		hps_0_hps_io_hps_io_emac1_inst_RXD2   : in    std_logic;             							-- hps_io_emac1_inst_RXD2
		hps_0_hps_io_hps_io_emac1_inst_RXD3   : in    std_logic;             							-- hps_io_emac1_inst_RXD3

		hps_0_hps_io_hps_io_sdio_inst_CMD     : inout std_logic;         									-- hps_io_sdio_inst_CMD
		hps_0_hps_io_hps_io_sdio_inst_D0      : inout std_logic;           							   -- hps_io_sdio_inst_D0
		hps_0_hps_io_hps_io_sdio_inst_D1      : inout std_logic;            								-- hps_io_sdio_inst_D1
      hps_0_hps_io_hps_io_sdio_inst_CLK     : out   std_logic;                                  -- hps_io_sdio_inst_CLK
      hps_0_hps_io_hps_io_sdio_inst_D2      : inout std_logic;                             		-- hps_io_sdio_inst_D2
		hps_0_hps_io_hps_io_sdio_inst_D3      : inout std_logic;   											-- hps_io_sdio_inst_D3
            
		hps_0_hps_io_hps_io_usb1_inst_D0      : inout std_logic;                  		            -- hps_io_usb1_inst_D0
		hps_0_hps_io_hps_io_usb1_inst_D1      : inout std_logic;                  		            -- hps_io_usb1_inst_D1
		hps_0_hps_io_hps_io_usb1_inst_D2      : inout std_logic;                  		            -- hps_io_usb1_inst_D2
		hps_0_hps_io_hps_io_usb1_inst_D3      : inout std_logic;                  		            -- hps_io_usb1_inst_D3
		hps_0_hps_io_hps_io_usb1_inst_D4      : inout std_logic;                  		            -- hps_io_usb1_inst_D4
		hps_0_hps_io_hps_io_usb1_inst_D5      : inout std_logic;                  		            -- hps_io_usb1_inst_D5
		hps_0_hps_io_hps_io_usb1_inst_D6      : inout std_logic;                  		            -- hps_io_usb1_inst_D6
		hps_0_hps_io_hps_io_usb1_inst_D7      : inout std_logic;                  		            -- hps_io_usb1_inst_D7
		hps_0_hps_io_hps_io_usb1_inst_CLK     : in    std_logic;                  		            -- hps_io_usb1_inst_CLK
		hps_0_hps_io_hps_io_usb1_inst_STP     : out   std_logic;                                  -- hps_io_usb1_inst_STP
		hps_0_hps_io_hps_io_usb1_inst_DIR     : in    std_logic;                        			   -- hps_io_usb1_inst_DIR
		hps_0_hps_io_hps_io_usb1_inst_NXT     : in    std_logic;                              		-- hps_io_usb1_inst_NXT

		hps_0_hps_io_hps_io_uart0_inst_RX     : in    std_logic;                     					-- hps_io_uart0_inst_RX
      hps_0_hps_io_hps_io_uart0_inst_TX     : out   std_logic;                                  -- hps_io_uart0_inst_TX
	
		LED											  : out std_logic_vector(3 downto 0);						-- leds 
		KEY											  : in std_logic_vector(3 downto 0);						-- push buttons
		SW												  : in std_logic_vector(3 downto 0);							-- sw
		
		--data z AD převodníku kanálu A
		ADA_D											  : in std_logic_vector(13 downto 0);
		
		--ovládání kanálu A AD převodníku
		ADA_SPI_CS									  : out std_logic;
		ADA_OE										  : out std_logic;
		
		--ovládání kanálu B AD převodníku
		ADB_SPI_CS									  : out std_logic;
		ADB_OE										  : out std_logic;
		
		--data do DA převodníku kanál A
		DA												  : out std_logic_vector(13 downto 0);
				
		--hodiny pro převodníkovou kartu
		FPGA_CLK_A_P								  : out std_logic;
		FPGA_CLK_A_N								  : out std_logic
	);
end entity SoC_Test;


architecture main of SoC_Test is

    component soc_system is
        port (
            clk_clk                         : in    std_logic                     := 'X';             -- clk
            reset_reset_n                   : in    std_logic                     := 'X';             -- reset_n
            memory_mem_a                    : out   std_logic_vector(14 downto 0);                    -- mem_a
            memory_mem_ba                   : out   std_logic_vector(2 downto 0);                     -- mem_ba
            memory_mem_ck                   : out   std_logic;                                        -- mem_ck
            memory_mem_ck_n                 : out   std_logic;                                        -- mem_ck_n
            memory_mem_cke                  : out   std_logic;                                        -- mem_cke
            memory_mem_cs_n                 : out   std_logic;                                        -- mem_cs_n
            memory_mem_ras_n                : out   std_logic;                                        -- mem_ras_n
            memory_mem_cas_n                : out   std_logic;                                        -- mem_cas_n
            memory_mem_we_n                 : out   std_logic;                                        -- mem_we_n
            memory_mem_reset_n              : out   std_logic;                                        -- mem_reset_n
            memory_mem_dq                   : inout std_logic_vector(31 downto 0) := (others => 'X'); -- mem_dq
            memory_mem_dqs                  : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs
            memory_mem_dqs_n                : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs_n
            memory_mem_odt                  : out   std_logic;                                        -- mem_odt
            memory_mem_dm                   : out   std_logic_vector(3 downto 0);                     -- mem_dm
            memory_oct_rzqin                : in    std_logic                     := 'X';             -- oct_rzqin
            hps_io_hps_io_emac1_inst_TX_CLK : out   std_logic;                                        -- hps_io_emac1_inst_TX_CLK
            hps_io_hps_io_emac1_inst_TXD0   : out   std_logic;                                        -- hps_io_emac1_inst_TXD0
            hps_io_hps_io_emac1_inst_TXD1   : out   std_logic;                                        -- hps_io_emac1_inst_TXD1
            hps_io_hps_io_emac1_inst_TXD2   : out   std_logic;                                        -- hps_io_emac1_inst_TXD2
            hps_io_hps_io_emac1_inst_TXD3   : out   std_logic;                                        -- hps_io_emac1_inst_TXD3
            hps_io_hps_io_emac1_inst_RXD0   : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD0
            hps_io_hps_io_emac1_inst_MDIO   : inout std_logic                     := 'X';             -- hps_io_emac1_inst_MDIO
            hps_io_hps_io_emac1_inst_MDC    : out   std_logic;                                        -- hps_io_emac1_inst_MDC
            hps_io_hps_io_emac1_inst_RX_CTL : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RX_CTL
            hps_io_hps_io_emac1_inst_TX_CTL : out   std_logic;                                        -- hps_io_emac1_inst_TX_CTL
            hps_io_hps_io_emac1_inst_RX_CLK : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RX_CLK
            hps_io_hps_io_emac1_inst_RXD1   : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD1
            hps_io_hps_io_emac1_inst_RXD2   : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD2
            hps_io_hps_io_emac1_inst_RXD3   : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD3
            hps_io_hps_io_sdio_inst_CMD     : inout std_logic                     := 'X';             -- hps_io_sdio_inst_CMD
            hps_io_hps_io_sdio_inst_D0      : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D0
            hps_io_hps_io_sdio_inst_D1      : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D1
            hps_io_hps_io_sdio_inst_CLK     : out   std_logic;                                        -- hps_io_sdio_inst_CLK
            hps_io_hps_io_sdio_inst_D2      : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D2
            hps_io_hps_io_sdio_inst_D3      : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D3
            hps_io_hps_io_usb1_inst_D0      : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D0
            hps_io_hps_io_usb1_inst_D1      : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D1
            hps_io_hps_io_usb1_inst_D2      : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D2
            hps_io_hps_io_usb1_inst_D3      : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D3
            hps_io_hps_io_usb1_inst_D4      : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D4
            hps_io_hps_io_usb1_inst_D5      : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D5
            hps_io_hps_io_usb1_inst_D6      : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D6
            hps_io_hps_io_usb1_inst_D7      : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D7
            hps_io_hps_io_usb1_inst_CLK     : in    std_logic                     := 'X';             -- hps_io_usb1_inst_CLK
            hps_io_hps_io_usb1_inst_STP     : out   std_logic;                                        -- hps_io_usb1_inst_STP
            hps_io_hps_io_usb1_inst_DIR     : in    std_logic                     := 'X';             -- hps_io_usb1_inst_DIR
            hps_io_hps_io_usb1_inst_NXT     : in    std_logic                     := 'X';             -- hps_io_usb1_inst_NXT
            hps_io_hps_io_uart0_inst_RX     : in    std_logic                     := 'X';             -- hps_io_uart0_inst_RX
            hps_io_hps_io_uart0_inst_TX     : out   std_logic;                                        -- hps_io_uart0_inst_TX
            led_external_connection_export  : out   std_logic_vector(7 downto 0);                     -- export
            pb_external_connection_export   : in    std_logic_vector(7 downto 0)  := (others => 'X'); -- export
				fir_external_connection_export  : out   std_logic_vector(7 downto 0)                      -- export
        );
    end component soc_system;

	component fir is
		port (
			clk              : in  std_logic                     := 'X';             -- clk
			reset_n          : in  std_logic                     := 'X';             -- reset_n
			ast_sink_data    : in  std_logic_vector(16 downto 0) := (others => 'X'); -- data
			ast_sink_valid   : in  std_logic                     := 'X';             -- valid
			ast_sink_error   : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- error
			ast_source_data  : out std_logic_vector(36 downto 0);                    -- data
			ast_source_valid : out std_logic;                                        -- valid
			ast_source_error : out std_logic_vector(1 downto 0)                      -- error
		);
	end component fir;

	component pll is
		port (
			refclk   : in  std_logic := 'X'; -- clk
			rst      : in  std_logic := 'X'; -- reset
			outclk_0 : out std_logic;        -- clk
			locked   : out std_logic         -- export
		);
	end component pll;
	
	component output_selector is 
		port(
			input_data: in std_logic_vector(36 downto 0);
			output_data: out std_logic_vector(13 downto 0);
			bank_select: in std_logic_vector(2 downto 0)
		);
	end component output_selector;

	 signal user_led_fpga_signal: std_logic_vector(7 downto 0);
	 signal user_pb_fpga_signal: std_logic_vector(7 downto 0);
	 
	 --65MHz hodiny od PLL pro samplování AD/DA a filtr
	 signal clk_65m: std_logic;
	 --signál od pll informuje o jejím stavu
	 signal pll_locked_signal: std_logic;
	 
	 --vstup dat do FIR (pozor, horní 3 bity nastavují banku)
	 signal data_input_to_fir: std_logic_vector(16 downto 0);
	 
	 --výstup dat z FIR
	 signal data_output_from_fir: std_logic_vector(36 downto 0);
	 
	 --kopr
	 signal unused_signal_1: std_logic;
	 signal unused_signal_2: std_logic_vector(1 downto 0);
	 
	 --nastavení banky pro fir
	 signal fir_bank_select: std_logic_vector(2 downto 0);
	 
	 begin
	 
	 --ledky a tlačítka
	 user_pb_fpga_signal(3 downto 0) <= KEY;
	 user_pb_fpga_signal(7 downto 4) <= SW;
	 LED <= user_led_fpga_signal(3 downto 0);
	 
	 --připojení vstupu dat pro fir
	 data_input_to_fir(13 downto 0) <= ADA_D;
	 data_input_to_fir(16 downto 14) <= fir_bank_select(2 downto 0);
	 
	 --nastavení kanálu A AD převodníku
	 ADA_SPI_CS <= '1';
	 ADA_OE <= '0';
	 
	 --nastavení kanálu B AD převodníku (výstup vypnut)
	 ADB_SPI_CS <= '1';
	 ADB_OE <= '1';
	 
	 --hodny pro kartu s převodníky
	 FPGA_CLK_A_P <= clk_65m;
	 FPGA_CLK_A_N <= not(clk_65m);
	 
	 pll0: component pll port map(
		refclk => OSC_50_B8A,
		rst => '0',
		outclk_0 => clk_65m,
		locked => pll_locked_signal);
	 
	fir0: component fir port map(
		clk => clk_65m,
		reset_n => '1',
		ast_sink_data => data_input_to_fir,   --in  std_logic_vector(16 downto 0) data včetně bank select
		ast_sink_valid => '1',
		ast_sink_error => "00",
		ast_source_data => data_output_from_fir,  -- out std_logic_vector(36 downto 0) data výstup do DA převodníku
		ast_source_valid => unused_signal_1, --tohle dát do kopru
		ast_source_error => unused_signal_2); --toto taky
	 
	 sel0: component output_selector port map(
		bank_select => fir_bank_select(2 downto 0),
		input_data => data_output_from_fir,
		output_data => DA);
	 
    u0 : component soc_system
        port map (
            clk_clk                         => OSC_50_B8A,	                          --                     clk.clk
				reset_reset_n                   => '1',					                    --                   reset.reset_n
				memory_mem_a                    => memory_mem_a,                          --                  memory.mem_a
				memory_mem_ba                   => memory_mem_ba,                         --                        .mem_ba
				memory_mem_ck                   => memory_mem_ck,                         --                        .mem_ck
				memory_mem_ck_n                 => memory_mem_ck_n,                       --                        .mem_ck_n
				memory_mem_cke                  => memory_mem_cke,                        --                        .mem_cke
				memory_mem_cs_n                 => memory_mem_cs_n,                       --                        .mem_cs_n
				memory_mem_ras_n                => memory_mem_ras_n,                		  --                        .mem_ras_n
				memory_mem_cas_n                => memory_mem_cas_n,            		     --                        .mem_cas_n
				memory_mem_we_n                 => memory_mem_we_n,              		     --                        .mem_we_n
				memory_mem_reset_n              => memory_mem_reset_n,           			  --                        .mem_reset_n
				memory_mem_dq                   => memory_mem_dq,                 		  --                        .mem_dq
				memory_mem_dqs                  => memory_mem_dqs,                		  --                        .mem_dqs
				memory_mem_dqs_n                => memory_mem_dqs_n,               		  --                        .mem_dqs_n
				memory_mem_odt                  => memory_mem_odt,                  		  --                        .mem_odt
				memory_mem_dm                   => memory_mem_dm,                   		  --                        .mem_dm
				memory_oct_rzqin                => memory_oct_rzqin,                		  --                        .oct_rzqin
				hps_io_hps_io_emac1_inst_TX_CLK => hps_0_hps_io_hps_io_emac1_inst_TX_CLK, --                  hps_io.hps_io_emac1_inst_TX_CLK
				hps_io_hps_io_emac1_inst_TXD0   => hps_0_hps_io_hps_io_emac1_inst_TXD0,   --                        .hps_io_emac1_inst_TXD0
				hps_io_hps_io_emac1_inst_TXD1   => hps_0_hps_io_hps_io_emac1_inst_TXD1,   --                        .hps_io_emac1_inst_TXD1
				hps_io_hps_io_emac1_inst_TXD2   => hps_0_hps_io_hps_io_emac1_inst_TXD2,   --                        .hps_io_emac1_inst_TXD2
				hps_io_hps_io_emac1_inst_TXD3   => hps_0_hps_io_hps_io_emac1_inst_TXD3,   --                        .hps_io_emac1_inst_TXD3
				hps_io_hps_io_emac1_inst_RXD0   => hps_0_hps_io_hps_io_emac1_inst_RXD0,   --                        .hps_io_emac1_inst_RXD0
				hps_io_hps_io_emac1_inst_MDIO   => hps_0_hps_io_hps_io_emac1_inst_MDIO,   --                        .hps_io_emac1_inst_MDIO
				hps_io_hps_io_emac1_inst_MDC    => hps_0_hps_io_hps_io_emac1_inst_MDC,    --                        .hps_io_emac1_inst_MDC
				hps_io_hps_io_emac1_inst_RX_CTL => hps_0_hps_io_hps_io_emac1_inst_RX_CTL, --                        .hps_io_emac1_inst_RX_CTL
				hps_io_hps_io_emac1_inst_TX_CTL => hps_0_hps_io_hps_io_emac1_inst_TX_CTL, --                        .hps_io_emac1_inst_TX_CTL
				hps_io_hps_io_emac1_inst_RX_CLK => hps_0_hps_io_hps_io_emac1_inst_RX_CLK, --                        .hps_io_emac1_inst_RX_CLK
				hps_io_hps_io_emac1_inst_RXD1   => hps_0_hps_io_hps_io_emac1_inst_RXD1,   --                        .hps_io_emac1_inst_RXD1
				hps_io_hps_io_emac1_inst_RXD2   => hps_0_hps_io_hps_io_emac1_inst_RXD2,   --                        .hps_io_emac1_inst_RXD2
				hps_io_hps_io_emac1_inst_RXD3   => hps_0_hps_io_hps_io_emac1_inst_RXD3,   --                        .hps_io_emac1_inst_RXD3
				hps_io_hps_io_sdio_inst_CMD     => hps_0_hps_io_hps_io_sdio_inst_CMD,     --                        .hps_io_sdio_inst_CMD
				hps_io_hps_io_sdio_inst_D0      => hps_0_hps_io_hps_io_sdio_inst_D0,      --                        .hps_io_sdio_inst_D0
				hps_io_hps_io_sdio_inst_D1      => hps_0_hps_io_hps_io_sdio_inst_D1,      --                        .hps_io_sdio_inst_D1
				hps_io_hps_io_sdio_inst_CLK     => hps_0_hps_io_hps_io_sdio_inst_CLK,     --                        .hps_io_sdio_inst_CLK
				hps_io_hps_io_sdio_inst_D2      => hps_0_hps_io_hps_io_sdio_inst_D2,      --                        .hps_io_sdio_inst_D2
				hps_io_hps_io_sdio_inst_D3      => hps_0_hps_io_hps_io_sdio_inst_D3,      --                        .hps_io_sdio_inst_D3
				hps_io_hps_io_usb1_inst_D0      => hps_0_hps_io_hps_io_usb1_inst_D0,      --                        .hps_io_usb1_inst_D0
				hps_io_hps_io_usb1_inst_D1      => hps_0_hps_io_hps_io_usb1_inst_D1,      --                        .hps_io_usb1_inst_D1
				hps_io_hps_io_usb1_inst_D2      => hps_0_hps_io_hps_io_usb1_inst_D2,      --                        .hps_io_usb1_inst_D2
				hps_io_hps_io_usb1_inst_D3      => hps_0_hps_io_hps_io_usb1_inst_D3,      --                        .hps_io_usb1_inst_D3
				hps_io_hps_io_usb1_inst_D4      => hps_0_hps_io_hps_io_usb1_inst_D4,      --                        .hps_io_usb1_inst_D4
				hps_io_hps_io_usb1_inst_D5      => hps_0_hps_io_hps_io_usb1_inst_D5,      --                        .hps_io_usb1_inst_D5
				hps_io_hps_io_usb1_inst_D6      => hps_0_hps_io_hps_io_usb1_inst_D6,      --                        .hps_io_usb1_inst_D6
				hps_io_hps_io_usb1_inst_D7      => hps_0_hps_io_hps_io_usb1_inst_D7,      --                        .hps_io_usb1_inst_D7
				hps_io_hps_io_usb1_inst_CLK     => hps_0_hps_io_hps_io_usb1_inst_CLK,     --                        .hps_io_usb1_inst_CLK
				hps_io_hps_io_usb1_inst_STP     => hps_0_hps_io_hps_io_usb1_inst_STP,     --                        .hps_io_usb1_inst_STP
				hps_io_hps_io_usb1_inst_DIR     => hps_0_hps_io_hps_io_usb1_inst_DIR,     --                        .hps_io_usb1_inst_DIR
				hps_io_hps_io_usb1_inst_NXT     => hps_0_hps_io_hps_io_usb1_inst_NXT,     --                        .hps_io_usb1_inst_NXT
				hps_io_hps_io_uart0_inst_RX     => hps_0_hps_io_hps_io_uart0_inst_RX,     --                        .hps_io_uart0_inst_RX
				hps_io_hps_io_uart0_inst_TX     => hps_0_hps_io_hps_io_uart0_inst_TX,     --                        .hps_io_uart0_inst_TX
            led_external_connection_export  => user_led_fpga_signal,    				  -- led_external_connection.export
            pb_external_connection_export   => user_pb_fpga_signal,  	   				  --  pb_external_connection.export
				fir_external_connection_export(2 downto 0)  => fir_bank_select                        -- export
        );

end architecture;
