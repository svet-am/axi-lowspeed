
`timescale 1 ps / 1 ps

	module axilpc_tb #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 4
	)
	();
	
	//LPC signals
	reg LPC_REFCLK;
	reg LPC_CLK;
	
	//AXI signals
	reg s00_axi_aclk;
	reg s00_axi_aresetn;
	reg s00_axi_awaddr;
	reg s00_axi_awprot;
	reg s00_axi_awvalid;
	reg s00_axi_awready;
	reg s00_axi_wdata;
	reg s00_axi_wstrb;
	reg s00_axi_wvalid;
	reg s00_axi_wready;
	reg s00_axi_bresp;
	reg s00_axi_bvalid;
	reg s00_axi_bready;
	reg s00_axi_araddr;
	reg s00_axi_arprot;
	reg s00_axi_arvalid;
	reg s00_axi_arready;
	reg s00_axi_rdata;
	reg s00_axi_rresp;
	reg s00_axi_rvalid;
	reg s00_axi_rready;
	
	axilpc # ( 
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
	) axilpc_dut (
		.LPC_REFCLK(LPC_REFCLK),
		.LPC_CLK(LPC_CLK),
		.S_AXI_ACLK(s00_axi_aclk),
		.S_AXI_ARESETN(s00_axi_aresetn),
		.S_AXI_AWADDR(s00_axi_awaddr),
		.S_AXI_AWPROT(s00_axi_awprot),
		.S_AXI_AWVALID(s00_axi_awvalid),
		.S_AXI_AWREADY(s00_axi_awready),
		.S_AXI_WDATA(s00_axi_wdata),
		.S_AXI_WSTRB(s00_axi_wstrb),
		.S_AXI_WVALID(s00_axi_wvalid),
		.S_AXI_WREADY(s00_axi_wready),
		.S_AXI_BRESP(s00_axi_bresp),
		.S_AXI_BVALID(s00_axi_bvalid),
		.S_AXI_BREADY(s00_axi_bready),
		.S_AXI_ARADDR(s00_axi_araddr),
		.S_AXI_ARPROT(s00_axi_arprot),
		.S_AXI_ARVALID(s00_axi_arvalid),
		.S_AXI_ARREADY(s00_axi_arready),
		.S_AXI_RDATA(s00_axi_rdata),
		.S_AXI_RRESP(s00_axi_rresp),
		.S_AXI_RVALID(s00_axi_rvalid),
		.S_AXI_RREADY(s00_axi_rready)
	);
	
	//Log waveforms
	initial begin
      $dumpfile("axilpc_dump.vcd");
      $dumpvars();
	end
   
	//LPC testbench reference clock
	initial begin
		$display("Starting Simulation...");
		LPC_REFCLK = 1'b0;
		forever #1 LPC_REFCLK = ~LPC_REFCLK;
		$display("Ending Simulation...");
	end
		
	// Add user logic here

	// User logic ends

	endmodule
