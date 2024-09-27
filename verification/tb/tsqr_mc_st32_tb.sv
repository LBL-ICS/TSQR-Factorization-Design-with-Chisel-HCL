//*********************************************************************************************// 
//----------------   TSQR Testbench (Scala golden model)-------------------------------------//// 
//---------------- Author: Xiaokun Yang  ----------------------------------------------------//// 
//---------------- Lawrence Berkeley Lab ----------------------------------------------------//// 
//---------------- Date: 6/13/2023  ---------------------------------------------------------//// 
//----- Version 1: TSQR MC Testbench---------------------------------------------------------//// 
//----- Date: 6/21/2023 ---------------------------------------------------------------------//// 
//-------------------------------------------------------------------------------------------//// 
//*********************************************************************************************// 
//----- This testbench support verification to the multi-core TSQR designs                     //
//----- with streaming width of 32                                                             // 
//*********************************************************************************************// 

//--------------------------------------------------------- 
//--- test cases  
//--------------------------------------------------------- 
`ifdef ST32_RANDOM_TEST_32X16 
  `define TILE_NO 2 
  `define TILE_NO_2 
`elsif ST32_RANDOM_TEST_48X16 
  `define TILE_NO 3 
  `define TILE_NO_2 
  `define TILE_NO_3 
`elsif ST32_RANDOM_TEST_64X16 
  `define TILE_NO 4 
  `define TILE_NO_2 
  `define TILE_NO_3 
  `define TILE_NO_4 
`elsif ST32_RANDOM_TEST_80X16 
  `define TILE_NO 5 
  `define TILE_NO_2 
  `define TILE_NO_3 
  `define TILE_NO_4 
  `define TILE_NO_5 
`elsif ST32_RANDOM_TEST_96X16
  `define TILE_NO 6 
  `define TILE_NO_2 
  `define TILE_NO_3 
  `define TILE_NO_4 
  `define TILE_NO_5 
  `define TILE_NO_6 
`elsif ST32_RANDOM_TEST_112X16
  `define TILE_NO 7
  `define TILE_NO_2 
  `define TILE_NO_3 
  `define TILE_NO_4 
  `define TILE_NO_5 
  `define TILE_NO_6 
  `define TILE_NO_7 
`elsif ST32_RANDOM_TEST_128X16
  `define TILE_NO 8 
  `define TILE_NO_2 
  `define TILE_NO_3 
  `define TILE_NO_4 
  `define TILE_NO_5 
  `define TILE_NO_6  
  `define TILE_NO_7 
  `define TILE_NO_8 
`elsif ST32_RANDOM_TEST_144X16
  `define TILE_NO 9
  `define TILE_NO_2 
  `define TILE_NO_3 
  `define TILE_NO_4 
  `define TILE_NO_5 
  `define TILE_NO_6  
  `define TILE_NO_7 
  `define TILE_NO_8 
  `define TILE_NO_9 
`elsif ST32_RANDOM_TEST_160X16
  `define TILE_NO 10
  `define TILE_NO_2 
  `define TILE_NO_3 
  `define TILE_NO_4 
  `define TILE_NO_5 
  `define TILE_NO_6  
  `define TILE_NO_7 
  `define TILE_NO_8 
  `define TILE_NO_9 
  `define TILE_NO_10 
`elsif ST32_RANDOM_TEST_176X16
  `define TILE_NO 11
  `define TILE_NO_2 
  `define TILE_NO_3 
  `define TILE_NO_4 
  `define TILE_NO_5 
  `define TILE_NO_6  
  `define TILE_NO_7 
  `define TILE_NO_8 
  `define TILE_NO_9 
  `define TILE_NO_10 
  `define TILE_NO_11 
`elsif ST32_RANDOM_TEST_192X16
  `define TILE_NO 12
  `define TILE_NO_2 
  `define TILE_NO_3 
  `define TILE_NO_4 
  `define TILE_NO_5 
  `define TILE_NO_6  
  `define TILE_NO_7 
  `define TILE_NO_8 
  `define TILE_NO_9 
  `define TILE_NO_10 
  `define TILE_NO_11 
  `define TILE_NO_12 
`elsif ST32_RANDOM_TEST_208X16
  `define TILE_NO 13
  `define TILE_NO_2 
  `define TILE_NO_3 
  `define TILE_NO_4 
  `define TILE_NO_5 
  `define TILE_NO_6  
  `define TILE_NO_7 
  `define TILE_NO_8 
  `define TILE_NO_9 
  `define TILE_NO_10 
  `define TILE_NO_11 
  `define TILE_NO_12 
  `define TILE_NO_13 
`elsif ST32_RANDOM_TEST_224X16
  `define TILE_NO 14
  `define TILE_NO_2 
  `define TILE_NO_3 
  `define TILE_NO_4 
  `define TILE_NO_5 
  `define TILE_NO_6  
  `define TILE_NO_7 
  `define TILE_NO_8 
  `define TILE_NO_9 
  `define TILE_NO_10 
  `define TILE_NO_11 
  `define TILE_NO_12 
  `define TILE_NO_13 
  `define TILE_NO_14 
`elsif ST32_RANDOM_TEST_240X16
  `define TILE_NO 15
  `define TILE_NO_2 
  `define TILE_NO_3 
  `define TILE_NO_4 
  `define TILE_NO_5 
  `define TILE_NO_6  
  `define TILE_NO_7 
  `define TILE_NO_8 
  `define TILE_NO_9 
  `define TILE_NO_10 
  `define TILE_NO_11 
  `define TILE_NO_12 
  `define TILE_NO_13 
  `define TILE_NO_14 
  `define TILE_NO_15 
`elsif ST32_RANDOM_TEST_256X16
  `define TILE_NO 16 
  `define TILE_NO_2 
  `define TILE_NO_3 
  `define TILE_NO_4 
  `define TILE_NO_5 
  `define TILE_NO_6  
  `define TILE_NO_7 
  `define TILE_NO_8 
  `define TILE_NO_9 
  `define TILE_NO_10 
  `define TILE_NO_11 
  `define TILE_NO_12 
  `define TILE_NO_13 
  `define TILE_NO_14 
  `define TILE_NO_15 
  `define TILE_NO_16 
`endif

`define ERROR_THRESHOLD 10  //10% error tolerace

//`include "../dut/multi_core/define.v"
module tsqr_mc_st32_tb();
//---------------------------------------------------------
//--- wire and reg declaration 
//---------------------------------------------------------
reg                         clk        ;
reg                         rst        ;
reg                         tsqr_en    ;
reg  [`CNT_WIDTH-1:0]       tile_no    ;

`ifdef SINGLE_CORE_INT
wire                        mem0_fi_c_0 ;
wire                        mem1_fi_c_0 ;
`endif //SINGLE_CORE_INT
`ifdef DUAL_CORE_INT
wire                        mem0_fi_c_1;
wire                        mem1_fi_c_1;
`endif //DUAL_CORE_INT
`ifdef QUAD_CORE_INT
wire                        mem0_fi_c_2;
wire                        mem1_fi_c_2;
wire                        mem0_fi_c_3;
wire                        mem1_fi_c_3;
`endif //QUAD_CORE_INT 
wire                        tsqr_fi    ; 
reg  [`MEM_NO-1:0]          dma_mem_ena  ;
reg  [`RAM_WIDTH/4-1:0]     dma_mem_wea  ;
reg  [`RAM_ADDR_WIDTH-1:0]  dma_mem_addra;
reg  [`RAM_WIDTH*2-1:0]       dma_mem_dina ;
reg  [`MEM_NO-1:0]          dma_mem_enb  ;
reg  [`RAM_ADDR_WIDTH-1:0]  dma_mem_addrb;
wire [`RAM_WIDTH*2-1:0]       dma_mem_doutb;

//---------------------------------------------------------
//--- golden model and input file 
//---------------------------------------------------------
reg [`MATRIX_WIDTH*32-1:0]  tri_ram[0:`MATRIX_WIDTH-1]   ; //For the matlab tsqr function, only the upper triangle (8*8) is stored. 
reg [(`TILE_NO-0)*`MATRIX_WIDTH*64-1:0] dmx_ram[0:`MATRIX_WIDTH-1] ;

initial begin
$display("=== The maxix factoriation Starts! (%d ns) ====", $time);
`ifdef SINGLE_CORE
  `ifdef ST32_RANDOM_TEST_32X16
     $display("Initilize The Memory in ST32_RANDOM_TEST_32X16 (%d ns) in Single-core Design",$time);
     $readmemh("/home/taylorb8409/Desktop/TSQR_Chisel_BRAM_IP_Complex/golden/single_core/sc_st32_random_test_32x16/32x8_complex.txt" , dmx_ram);

     //$readmemh("../golden/single_core/sc_st32_random_test_32x16/dmx_ieee754.txt" , dmx_ram);
     //$readmemh("../golden/single_core/sc_st32_random_test_32x16/tri_ieee754.txt" , tri_ram);
  `elsif ST32_RANDOM_TEST_48X16
     $display("Initilize The Memory in ST32_RANDOM_TEST_48X16 (%d ns) in Single-core Design",$time);
     $readmemh("../golden/single_core/sc_st32_random_test_48x16/dmx_ieee754.txt" , dmx_ram);
     $readmemh("../golden/single_core/sc_st32_random_test_48x16/tri_ieee754.txt" , tri_ram);
  `elsif ST32_RANDOM_TEST_64X16
     $display("Initilize The Memory in ST32_RANDOM_TEST_64X16 (%d ns) in Single-core Design",$time);
    // $readmemh("../golden/single_core/sc_st32_random_test_64x16/dmx_ieee754.txt" , dmx_ram);
     $readmemh("/home/taylorb8409/Desktop/TSQR_Chisel_BRAM_IP_Complex/golden/single_core/sc_st32_random_test_32x16/32x8_complex.txt" , dmx_ram);
     $readmemh("../golden/single_core/sc_st32_random_test_64x16/tri_ieee754.txt" , tri_ram);
  `endif
`elsif DUAL_CORE
  `ifdef ST32_RANDOM_TEST_64X16
     $display("Initilize The Memory in ST32_RANDOM_TEST_64X16 (%d ns) in Dual-core Design",$time);
     $readmemh("../golden/dual_core/dc_st32_random_test_64x16/dmx_ieee754.txt" , dmx_ram);
     $readmemh("../golden/dual_core/dc_st32_random_test_64x16/tri_ieee754.txt" , tri_ram);
  `elsif ST32_RANDOM_TEST_96X16
     $display("Initilize The Memory in ST32_RANDOM_TEST_96X16 (%d ns) in Dual-core Design",$time);
     $readmemh("../golden/dual_core/dc_st32_random_test_96x16/dmx_ieee754.txt" , dmx_ram);
     $readmemh("../golden/dual_core/dc_st32_random_test_96x16/tri_ieee754.txt" , tri_ram);
  `elsif ST32_RANDOM_TEST_128X16
     $display("Initilize The Memory in ST32_RANDOM_TEST_128X16 (%d ns) in Dual-core Design",$time);
     $readmemh("../golden/dual_core/dc_st32_random_test_128x16/dmx_ieee754.txt" , dmx_ram);
     $readmemh("../golden/dual_core/dc_st32_random_test_128x16/tri_ieee754.txt" , tri_ram);
  `endif
`elsif QUAD_CORE
  `ifdef ST32_RANDOM_TEST_128X16
     $display("Initilize The Memory in ST32_RANDOM_TEST_128X16 (%d ns) in Quad-core Design",$time);
     $readmemh("../golden/quad_core/qc_st32_random_test_128x16/dmx_ieee754.txt" , dmx_ram);
     $readmemh("../golden/quad_core/qc_st32_random_test_128x16/tri_ieee754.txt" , tri_ram);
  `elsif ST32_RANDOM_TEST_192X16
     $display("Initilize The Memory in ST32_RANDOM_TEST_192X16 (%d ns) in Quad-core Design",$time);
     $readmemh("../golden/quad_core/qc_st32_random_test_192x16/dmx_ieee754.txt" , dmx_ram);
     $readmemh("../golden/quad_core/qc_st32_random_test_192x16/tri_ieee754.txt" , tri_ram);
  `elsif ST32_RANDOM_TEST_256X16
     $display("Initilize The Memory in ST32_RANDOM_TEST_256X16 (%d ns) in Quad-core Design",$time);
     $readmemh("../golden/quad_core/qc_st32_random_test_256x16/dmx_ieee754.txt" , dmx_ram);
     $readmemh("../golden/quad_core/qc_st32_random_test_256x16/tri_ieee754.txt" , tri_ram);
  `endif
`endif
end

//---------------------------------------------------------
//--- Initialize and Load Memory -------------------------- 
//--- Single-core Test Cases ------------------------------ 
//---------------------------------------------------------
//`include "load_mem.sv"

//---------------------------------------------------------
//--- Instantiation 
//---------------------------------------------------------
tsqr_mc u_tsqr_mc (.clk          (clk          ),
                   .rst          (rst          ),
	           .tsqr_en      (tsqr_en      ),
	           .tile_no      (tile_no      ),
                   .dma_mem_ena  (dma_mem_ena  ),
                   .dma_mem_wea  (dma_mem_wea  ),
                   .dma_mem_addra(dma_mem_addra),
                   .dma_mem_dina (dma_mem_dina ),
                   .dma_mem_enb  (dma_mem_enb  ),
                   .dma_mem_addrb(dma_mem_addrb),
                   .dma_mem_doutb(dma_mem_doutb),
`ifdef SINGLE_CORE_INT
	           .mem0_fi_c_0   (mem0_fi_c_0   ),
                   .mem1_fi_c_0   (mem1_fi_c_0   ),
`endif //SINGLE_CORE_INT
`ifdef DUAL_CORE_INT
	           .mem0_fi_c_1   (mem0_fi_c_1   ),
                   .mem1_fi_c_1   (mem1_fi_c_1   ),
`endif //DUAL_CORE_INT
`ifdef QUAD_CORE_INT
	           .mem0_fi_c_2   (mem0_fi_c_2   ),
                   .mem1_fi_c_2   (mem1_fi_c_2   ),
	           .mem0_fi_c_3   (mem0_fi_c_3   ),
                   .mem1_fi_c_3   (mem1_fi_c_3   ),
`endif //QUAD_CORE_INT
                   .tsqr_fi      (tsqr_fi      ));
                   
initial begin
    $dumpfile("tsqr_st32_1c.vcd");
    $dumpvars(0, tsqr_mc_st32_tb);
end

//---------------------------------------------------------------------
//------- BFM
//---------------------------------------------------------------------

wire [31:0] re_1 =  dma_mem_doutb[1023-0*32: 1024-1*32];
wire [31:0] im_1 =  dma_mem_doutb[1023-1*32: 1024-2*32];
wire [31:0] re_2 =  dma_mem_doutb[1023-2*32: 1024-3*32];
wire [31:0] im_2 =  dma_mem_doutb[1023-3*32: 1024-4*32];
wire [31:0] re_3 =  dma_mem_doutb[1023-4*32: 1024-5*32];
wire [31:0] im_3 =  dma_mem_doutb[1023-5*32: 1024-6*32];
wire [31:0] re_4 =  dma_mem_doutb[1023-6*32: 1024-7*32];
wire [31:0] im_4 =  dma_mem_doutb[1023-7*32: 1024-8*32];
wire [31:0] re_5 =  dma_mem_doutb[1023-8*32: 1024-9*32];
wire [31:0] im_5 =  dma_mem_doutb[1023-9*32: 1024-10*32];
wire [31:0] re_6 =  dma_mem_doutb[1023-10*32:1024-11*32];
wire [31:0] im_6 =  dma_mem_doutb[1023-11*32:1024-12*32];
wire [31:0] re_7 =  dma_mem_doutb[1023-12*32:1024-13*32];
wire [31:0] im_7 =  dma_mem_doutb[1023-13*32:1024-14*32];
wire [31:0] re_8 =  dma_mem_doutb[1023-14*32:1024-15*32];
wire [31:0] im_8 =  dma_mem_doutb[1023-15*32:1024-16*32];
wire [31:0] re_9 =  dma_mem_doutb[1023-16*32:1024-17*32];
wire [31:0] im_9 =  dma_mem_doutb[1023-17*32:1024-18*32];
wire [31:0] re_10 = dma_mem_doutb[1023-18*32:1024-19*32];
wire [31:0] im_10 = dma_mem_doutb[1023-19*32:1024-20*32];
wire [31:0] re_11 = dma_mem_doutb[1023-20*32:1024-21*32];
wire [31:0] im_11 = dma_mem_doutb[1023-21*32:1024-22*32];
wire [31:0] re_12 = dma_mem_doutb[1023-22*32:1024-23*32];
wire [31:0] im_12 = dma_mem_doutb[1023-23*32:1024-24*32];
wire [31:0] re_13 = dma_mem_doutb[1023-24*32:1024-25*32];
wire [31:0] im_13 = dma_mem_doutb[1023-25*32:1024-26*32];
wire [31:0] re_14 = dma_mem_doutb[1023-26*32:1024-27*32];
wire [31:0] im_14 = dma_mem_doutb[1023-27*32:1024-28*32];
wire [31:0] re_15 = dma_mem_doutb[1023-28*32:1024-29*32];
wire [31:0] im_15 = dma_mem_doutb[1023-29*32:1024-30*32];
wire [31:0] re_16 = dma_mem_doutb[1023-30*32:1024-31*32];
wire [31:0] im_16 = dma_mem_doutb[1023-31*32:1024-32*32];

   integer i;
always #5 clk = ~clk;
initial begin
   rst     = 1'b1;
   clk     = 1'b0;
   tsqr_en = 1'b0;
   tile_no = `TILE_NO;
   dma_mem_ena   = `MEM_NO'h0        ;
`ifdef ST_WIDTH_256
   dma_mem_wea   = `WEA128           ;
`elsif ST_WIDTH_128
   dma_mem_wea   = `WEA64            ;
`elsif ST_WIDTH_64
   dma_mem_wea   = `WEA32            ;
`elsif ST_WIDTH_32
   dma_mem_wea   = 128'hffffffffffffffffffffffffffffffff           ;
`elsif ST_WIDTH_16
   dma_mem_wea   = `WEA8             ;
`endif
 dma_mem_addra = `RAM_ADDR_WIDTH'h0 ;
   dma_mem_dina  = `RAM_WIDTH'h0      ;
   dma_mem_enb   = 1'b0               ;
   dma_mem_addrb = `RAM_ADDR_WIDTH'h0 ;
   #100;
   rst     = 1'b0;
   #16; 

    for(i=0; i<`MATRIX_WIDTH;) begin
      dma_mem_addra = i;
      dma_mem_ena = 3'b100;
      dma_mem_dina = dmx_ram[i][`MATRIX_WIDTH*(`TILE_NO-0-0)*64-1:`MATRIX_WIDTH*(`TILE_NO-0-1)*64];
      #10
      
      dma_mem_ena = 3'b010;
     dma_mem_dina=dmx_ram[i][`MATRIX_WIDTH*(`TILE_NO-0-1)*64-1:`MATRIX_WIDTH*(`TILE_NO-0-2)*64];
      #10;
      i=i+1;
    end
    dma_mem_ena = 3'b000;
   tsqr_en = 1'b1;
   #10
 /*  
   for(i=0; i<`MATRIX_WIDTH;) begin
      dma_mem_addra = i;
      dma_mem_ena = 3'b001;
      dma_mem_dina = dmx_ram[i][`MATRIX_WIDTH*(`TILE_NO-2-0)*64-1:`MATRIX_WIDTH*(`TILE_NO-2-1)*64];
      #10;
      i=i+1;
    end
    
     dma_mem_ena = 3'b000;
    #10
    
    wait(mem0_fi_c_0);
    
     #1
     
     
      #30
      dma_mem_enb = 3'b100;
   for(i=0; i<`MATRIX_WIDTH;) begin
      dma_mem_addrb = i;
     
      #30
  
      i=i+1;
    end
    
    dma_mem_enb = 3'b000;
     #10
    for(i=0; i<`MATRIX_WIDTH;) begin
      dma_mem_addra = i;
      dma_mem_ena = 3'b010;
      dma_mem_dina=dmx_ram[i][`MATRIX_WIDTH*(`TILE_NO-2-1)*64-1:`MATRIX_WIDTH*(`TILE_NO-2-2)*64];
      #10;
      i=i+1;
    end

    dma_mem_ena = 3'b000;
    wait(mem1_fi_c_0);
    
     #1
     
     
      #30
      dma_mem_enb = 3'b100;
   for(i=0; i<`MATRIX_WIDTH;) begin
      dma_mem_addrb = i;
     
      #30
  
      i=i+1;
    end
    
    dma_mem_enb = 3'b000;
     #10
   */
   
    wait(tsqr_fi);
       #1;
   tsqr_en = 1'b0;
   dma_mem_enb = 3'b100;
     
      #30
   for(i=0; i<`MATRIX_WIDTH;) begin
      dma_mem_addrb = i;
     
      #30
  
      i=i+1;
    end
    dma_mem_enb = 3'b000;
   wait(tsqr_fi);
     
  
   #1;
   tsqr_en = 1'b0;
   #20;
end


//---------------------------------------------------------------------
//------- Monitor -----------------------------------------------------
//---------------------------------------------------------------------
/*integer col_index;

`include "tb_func.sv"

reg [`MATRIX_WIDTH*32-1:0] golden_column;
reg [`MATRIX_WIDTH*32-1:0] dut_column;
real error_percent;

`include "error_percent_declare.sv"

reg wr_fi;
always @(posedge clk) begin
  if(rst) begin
    wr_fi<=1'b0;
  end else begin
    wr_fi<=tsqr_fi;
  end
end

integer ref_report;
integer tri_report; 
integer tri_report_ieee754; 
integer mx_report; 

// -------------------------------------------
// --Monitor: Simulation Log -----------------
// -------------------------------------------

initial begin
  col_index    = 0;
  wait(~rst);
  forever begin
    @(negedge clk);

    if(wr_fi) begin 
      $display("=== The %d maxix factoriation is completed! (%d ns) ====", u_tsqr_mc.fsms_0_mx_cnt, $time);
      // ********************************
      // ---------- open report ---------
      // ********************************
`ifdef ST32_RANDOM_TEST_32X16
  `ifdef SINGLE_CORE
      tri_report=$fopen("../golden/single_core/sc_st32_random_test_32x16/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/single_core/sc_st32_random_test_32x16/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Single-core Simulation\n"                    );
      $fwrite(tri_report, "Test case: ST32_RANDOM_TEST_32X16\n"        );
      $fwrite(tri_report, "==========================================\n");
      $display("start writing data into log report!"        );
  `endif
`elsif ST32_RANDOM_TEST_48X16
  `ifdef SINGLE_CORE
      tri_report=$fopen("../golden/single_core/sc_st32_random_test_48x16/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/single_core/sc_st32_random_test_48x16/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Single-core Simulation\n"                    );
      $fwrite(tri_report, "Test case: ST32_RANDOM_TEST_48X16\n"        );
      $fwrite(tri_report, "==========================================\n");
  `endif
`elsif ST32_RANDOM_TEST_64X16
  `ifdef SINGLE_CORE
      tri_report=$fopen("../golden/single_core/sc_st32_random_test_64x16/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/single_core/sc_st32_random_test_64x16/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Single-core Simulation\n"                    );
      $fwrite(tri_report, "Test case: ST32_RANDOM_TEST_64X16\n"        );
      $fwrite(tri_report, "==========================================\n");
  `elsif DUAL_CORE
      tri_report=$fopen("../golden/dual_core/dc_st32_random_test_64x16/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/dual_core/dc_st32_random_test_64x16/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Dual-core Simulation\n"                      ); 
      $fwrite(tri_report, "Test case: ST32_RANDOM_TEST_64X16\n"        );
      $fwrite(tri_report, "==========================================\n");
  `endif 
`elsif ST32_RANDOM_TEST_96X16
  `ifdef DUAL_CORE
      tri_report=$fopen("../golden/dual_core/dc_st32_random_test_96x16/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/dual_core/dc_st32_random_test_96x16/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Dual-core Simulation\n"                      );
      $fwrite(tri_report, "Test case: ST32_RANDOM_TEST_96X16\n"        );
      $fwrite(tri_report, "==========================================\n");
  `endif
`elsif ST32_RANDOM_TEST_128X16
  `ifdef DUAL_CORE
      tri_report=$fopen("../golden/dual_core/dc_st32_random_test_128x16/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/dual_core/dc_st32_random_test_128x16/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Dual-core Simulation\n"                      );
      $fwrite(tri_report, "Test case: ST32_RANDOM_TEST_128X16\n"       );
      $fwrite(tri_report, "==========================================\n");
  `elsif QUAD_CORE
      tri_report=$fopen("../golden/quad_core/qc_st32_random_test_128x16/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/quad_core/qc_st32_random_test_128x16/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Quad-core Simulation\n"                      );
      $fwrite(tri_report, "Test case: ST32_RANDOM_TEST_128X16\n"       );
      $fwrite(tri_report, "==========================================\n");
  `endif
`elsif ST32_RANDOM_TEST_192X16
  `ifdef QUAD_CORE
      tri_report=$fopen("../golden/quad_core/qc_st32_random_test_192x16/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/quad_core/qc_st32_random_test_192x16/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Quad-core Simulation\n"                      );
      $fwrite(tri_report, "Test case: ST32_RANDOM_TEST_192X16\n"       );
      $fwrite(tri_report, "==========================================\n");
  `endif
`elsif ST32_RANDOM_TEST_256X16
  `ifdef QUAD_CORE
      tri_report=$fopen("../golden/quad_core/qc_st32_random_test_256x16/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/quad_core/qc_st32_random_test_256x16/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Quad-core Simulation\n"                      );
      $fwrite(tri_report, "Test case: ST32_RANDOM_TEST_256X16\n"       );
      $fwrite(tri_report, "==========================================\n");
  `endif
`endif

      // ********************************
      // ---------- write report --------
      // ********************************
      for(col_index=0; col_index<`MATRIX_WIDTH;) begin
        golden_column=tri_ram[col_index];
        dut_column   =u_tsqr_mc.hh_core.simple_dual_2.ram[col_index];
        `include "error_percent_abs_cal_tri.sv"
        `include "comp_abs_tri.sv"
        //`include "error_percent_cal_tri.sv"
        //`include "comp_tri.sv"
        `include "comp_tri_ieee754.sv"
        col_index=col_index+1;
      end

      // ********************************
      // ---------- close report --------
      // ********************************
      $fclose(tri_report);
      $fclose(tri_report_ieee754);
      $display("=== The maxix factoriation result is compared! Please check the report! ===");
      #1000;
      $stop; 
    end // if(write_fi)
  end //for loop
end //initial begin-end
*/
endmodule
