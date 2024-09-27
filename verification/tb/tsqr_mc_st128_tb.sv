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
//----- with streaming width of 128                                                             // 
//*********************************************************************************************// 

//--------------------------------------------------------- 
//--- test cases  
//--------------------------------------------------------- 
`ifdef ST128_RANDOM_TEST_128X64 
  `define TILE_NO 2 
  `define TILE_NO_2 
`elsif ST128_RANDOM_TEST_192X64 
  `define TILE_NO 3 
  `define TILE_NO_2 
  `define TILE_NO_3 
`elsif ST128_RANDOM_TEST_256X64 
  `define TILE_NO 4 
  `define TILE_NO_2 
  `define TILE_NO_3 
  `define TILE_NO_4 
`elsif ST64_RANDOM_TEST_180X23 
  `define TILE_NO 5 
  `define TILE_NO_2 
  `define TILE_NO_3 
  `define TILE_NO_4 
  `define TILE_NO_5 
`elsif ST128_RANDOM_TEST_384X64
  `define TILE_NO 6 
  `define TILE_NO_2 
  `define TILE_NO_3 
  `define TILE_NO_4 
  `define TILE_NO_5 
  `define TILE_NO_6 
`elsif ST128_RANDOM_TEST_448X64
  `define TILE_NO 7
  `define TILE_NO_2 
  `define TILE_NO_3 
  `define TILE_NO_4 
  `define TILE_NO_5 
  `define TILE_NO_6 
  `define TILE_NO_7 
`elsif ST128_RANDOM_TEST_512X64
  `define TILE_NO 8 
  `define TILE_NO_2 
  `define TILE_NO_3 
  `define TILE_NO_4 
  `define TILE_NO_5 
  `define TILE_NO_6  
  `define TILE_NO_7 
  `define TILE_NO_8 
`elsif ST128_RANDOM_TEST_576X64
  `define TILE_NO 9
  `define TILE_NO_2 
  `define TILE_NO_3 
  `define TILE_NO_4 
  `define TILE_NO_5 
  `define TILE_NO_6  
  `define TILE_NO_7 
  `define TILE_NO_8 
  `define TILE_NO_9 
`elsif ST128_RANDOM_TEST_640X64
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
`elsif ST128_RANDOM_TEST_704X64
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
`elsif ST128_RANDOM_TEST_768X64
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
`elsif ST128_RANDOM_TEST_832X64
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
`elsif ST128_RANDOM_TEST_896X64
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
`elsif ST128_RANDOM_TEST_960X64
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
`elsif ST128_RANDOM_TEST_1024X64
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
module tsqr_mc_st128_tb();
//---------------------------------------------------------
//--- wire and reg declaration 
//---------------------------------------------------------
reg                         clk        ;
reg                         rst        ;
reg                         tsqr_en    ;
reg  [`CNT_WIDTH-1:0]       tile_no  ;

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
reg [`TILE_NO*`MATRIX_WIDTH*64-1:0] dmx_ram[0:`MATRIX_WIDTH-1] ;

initial begin
$display("=== The maxix factoriation Starts! (%d ns) ====", $time);
`ifdef SINGLE_CORE
  `ifdef ST128_RANDOM_TEST_128X64
     $display("Initilize The Memory in ST128_RANDOM_TEST_128X64 (%d ns) in Single-core Design",$time);
    // $readmemh("../golden/single_core/sc_st128_random_test_128x64/dmx_ieee754.txt" , dmx_ram);
     $readmemh("/home/taylorb8409/Desktop/TSQR_Chisel_BRAM_IP_Complex/golden/single_core/sc_st128_random_test_128x64/128x64_cplx.txt" , dmx_ram);
     $readmemh("../golden/single_core/sc_st128_random_test_128x64/tri_ieee754.txt" , tri_ram);
     
     
     
     
  `elsif ST128_RANDOM_TEST_192X64
     $display("Initilize The Memory in ST128_RANDOM_TEST_192X64 (%d ns) in Single-core Design",$time);
     $readmemh("../golden/single_core/sc_st128_random_test_192x64/dmx_ieee754.txt" , dmx_ram);
     $readmemh("../golden/single_core/sc_st128_random_test_192x64/tri_ieee754.txt" , tri_ram);
  `elsif ST128_RANDOM_TEST_256X64
     $display("Initilize The Memory in ST128_RANDOM_TEST_256X64 (%d ns) in Single-core Design",$time);
     $readmemh("../golden/single_core/sc_st128_random_test_256x64/dmx_ieee754.txt" , dmx_ram);
     $readmemh("../golden/single_core/sc_st128_random_test_256x64/tri_ieee754.txt" , tri_ram);
  `endif
`elsif DUAL_CORE
  `ifdef ST128_RANDOM_TEST_256X64
     $display("Initilize The Memory in ST128_RANDOM_TEST_256X64 (%d ns) in Dual-core Design",$time);
     $readmemh("../golden/dual_core/dc_st128_random_test_256x64/dmx_ieee754.txt" , dmx_ram);
     $readmemh("../golden/dual_core/dc_st128_random_test_256x64/tri_ieee754.txt" , tri_ram);
     $dumpfile("../golden/dual_core/dc_st128_random_test_256x64/dc_st128_4t.vcd");
     $dumpvars(0,tsqr_mc_st128_tb.u_tsqr_mc);
  `elsif ST128_RANDOM_TEST_384X64
     $display("Initilize The Memory in ST128_RANDOM_TEST_384X64 (%d ns) in Dual-core Design",$time);
     $readmemh("../golden/dual_core/dc_st128_random_test_384x64/dmx_ieee754.txt" , dmx_ram);
     $readmemh("../golden/dual_core/dc_st128_random_test_384x64/tri_ieee754.txt" , tri_ram);
  `elsif ST128_RANDOM_TEST_512X64
     $display("Initilize The Memory in ST128_RANDOM_TEST_512X64 (%d ns) in Dual-core Design",$time);
     $readmemh("../golden/dual_core/dc_st128_random_test_512x64/dmx_ieee754.txt" , dmx_ram);
     $readmemh("../golden/dual_core/dc_st128_random_test_512x64/tri_ieee754.txt" , tri_ram);
  `endif
`elsif QUAD_CORE
  `ifdef ST128_RANDOM_TEST_512X64
     $display("Initilize The Memory in ST128_RANDOM_TEST_512X64 (%d ns) in Quad-core Design",$time);
     $readmemh("../golden/quad_core/qc_st128_random_test_512x64/dmx_ieee754.txt" , dmx_ram);
     $readmemh("../golden/quad_core/qc_st128_random_test_512x64/tri_ieee754.txt" , tri_ram);
  `elsif ST128_RANDOM_TEST_768X64
     $display("Initilize The Memory in ST128_RANDOM_TEST_768X64 (%d ns) in Quad-core Design",$time);
     $readmemh("../golden/quad_core/qc_st128_random_test_768x64/dmx_ieee754.txt" , dmx_ram);
     $readmemh("../golden/quad_core/qc_st128_random_test_768x64/tri_ieee754.txt" , tri_ram);
  `elsif ST128_RANDOM_TEST_1024X64
     $display("Initilize The Memory in ST128_RANDOM_TEST_1024X64 (%d ns) in Quad-core Design",$time);
     $readmemh("../golden/quad_core/qc_st128_random_test_1024x64/dmx_ieee754.txt" , dmx_ram);
     $readmemh("../golden/quad_core/qc_st128_random_test_1024x64/tri_ieee754.txt" , tri_ram);
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

//---------------------------------------------------------------------
//------- BFM
//---------------------------------------------------------------------
wire [31:0] re_1 =  dma_mem_doutb[4095-0*32:   4096-1*32];
wire [31:0] im_1 =  dma_mem_doutb[4095-1*32:   4096-2*32];
wire [31:0] re_2 =  dma_mem_doutb[4095-2*32:   4096-3*32];
wire [31:0] im_2 =  dma_mem_doutb[4095-3*32:   4096-4*32];
wire [31:0] re_3 =  dma_mem_doutb[4095-4*32:   4096-5*32];
wire [31:0] im_3 =  dma_mem_doutb[4095-5*32:   4096-6*32];
wire [31:0] re_4 =  dma_mem_doutb[4095-6*32:   4096-7*32];
wire [31:0] im_4 =  dma_mem_doutb[4095-7*32:   4096-8*32];
wire [31:0] re_5 =  dma_mem_doutb[4095-8*32:   4096-9*32];
wire [31:0] im_5 =  dma_mem_doutb[4095-9*32:   4096-10*32];
wire [31:0] re_6 =  dma_mem_doutb[4095-10*32:  4096-11*32];
wire [31:0] im_6 =  dma_mem_doutb[4095-11*32:  4096-12*32];
wire [31:0] re_7 =  dma_mem_doutb[4095-12*32:  4096-13*32];
wire [31:0] im_7 =  dma_mem_doutb[4095-13*32:  4096-14*32];
wire [31:0] re_8 =  dma_mem_doutb[4095-14*32:  4096-15*32];
wire [31:0] im_8 =  dma_mem_doutb[4095-15*32:  4096-16*32];
wire [31:0] re_9 =  dma_mem_doutb[4095-16*32:  4096-17*32];
wire [31:0] im_9 =  dma_mem_doutb[4095-17*32:  4096-18*32];
wire [31:0] re_10 = dma_mem_doutb[4095-18*32:  4096-19*32];
wire [31:0] im_10 = dma_mem_doutb[4095-19*32:  4096-20*32];
wire [31:0] re_11 = dma_mem_doutb[4095-20*32:  4096-21*32];
wire [31:0] im_11 = dma_mem_doutb[4095-21*32:  4096-22*32];
wire [31:0] re_12 = dma_mem_doutb[4095-22*32:  4096-23*32];
wire [31:0] im_12 = dma_mem_doutb[4095-23*32:  4096-24*32];
wire [31:0] re_13 = dma_mem_doutb[4095-24*32:  4096-25*32];
wire [31:0] im_13 = dma_mem_doutb[4095-25*32:  4096-26*32];
wire [31:0] re_14 = dma_mem_doutb[4095-26*32:  4096-27*32];
wire [31:0] im_14 = dma_mem_doutb[4095-27*32:  4096-28*32];
wire [31:0] re_15 = dma_mem_doutb[4095-28*32:  4096-29*32];
wire [31:0] im_15 = dma_mem_doutb[4095-29*32:  4096-30*32];
wire [31:0] re_16 = dma_mem_doutb[4095-30*32:  4096-31*32];
wire [31:0] im_16 = dma_mem_doutb[4095-31*32:  4096-32*32];
wire [31:0] re_17 = dma_mem_doutb[4095-32 *32: 4096-33 *32];
wire [31:0] im_17 = dma_mem_doutb[4095-33 *32: 4096-34 *32];
wire [31:0] re_18 = dma_mem_doutb[4095-34 *32: 4096-35 *32];
wire [31:0] im_18 = dma_mem_doutb[4095-35 *32: 4096-36 *32];
wire [31:0] re_19 = dma_mem_doutb[4095-36 *32: 4096-37 *32];
wire [31:0] im_19 = dma_mem_doutb[4095-37 *32: 4096-38 *32];
wire [31:0] re_20 = dma_mem_doutb[4095-38 *32: 4096-39 *32];
wire [31:0] im_20 = dma_mem_doutb[4095-39 *32: 4096-40 *32];
wire [31:0] re_21 = dma_mem_doutb[4095-40 *32: 4096-41 *32];
wire [31:0] im_21 = dma_mem_doutb[4095-41 *32: 4096-42*32];
wire [31:0] re_22 = dma_mem_doutb[4095-42*32:  4096-43*32];
wire [31:0] im_22 = dma_mem_doutb[4095-43*32:  4096-44*32];
wire [31:0] re_23 = dma_mem_doutb[4095-44*32:  4096-45*32];
wire [31:0] im_23 = dma_mem_doutb[4095-45*32:  4096-46*32];
wire [31:0] re_24 = dma_mem_doutb[4095-46*32:  4096-47*32];
wire [31:0] im_24 = dma_mem_doutb[4095-47*32:  4096-48*32];
wire [31:0] re_25 = dma_mem_doutb[4095-48*32:  4096-49*32];
wire [31:0] im_25 = dma_mem_doutb[4095-49*32:  4096-50*32];
wire [31:0] re_26 = dma_mem_doutb[4095-50*32:  4096-51*32];
wire [31:0] im_26 = dma_mem_doutb[4095-51*32:  4096-52*32];
wire [31:0] re_27 = dma_mem_doutb[4095-52*32:  4096-53*32];
wire [31:0] im_27 = dma_mem_doutb[4095-53*32:  4096-54*32];
wire [31:0] re_28 = dma_mem_doutb[4095-54*32:  4096-55*32];
wire [31:0] im_28 = dma_mem_doutb[4095-55*32:  4096-56*32];
wire [31:0] re_29 = dma_mem_doutb[4095-56*32:  4096-57*32];
wire [31:0] im_29 = dma_mem_doutb[4095-57*32:  4096-58*32];
wire [31:0] re_30 = dma_mem_doutb[4095-58*32:  4096-59*32];
wire [31:0] im_30 = dma_mem_doutb[4095-59*32:  4096-60*32];
wire [31:0] re_31 = dma_mem_doutb[4095-60*32:  4096-61*32];
wire [31:0] im_31 = dma_mem_doutb[4095-61*32:  4096-62*32];
wire [31:0] re_32 = dma_mem_doutb[4095-62*32:  4096-63*32];
wire [31:0] im_32 = dma_mem_doutb[4095-63*32:  4096-64*32];
wire [31:0] re_33 =  dma_mem_doutb[4095-64*32:   4096-65*32];
wire [31:0] im_33 =  dma_mem_doutb[4095-65*32:   4096-66*32];
wire [31:0] re_34 =  dma_mem_doutb[4095-66*32:   4096-67*32];
wire [31:0] im_34 =  dma_mem_doutb[4095-67*32:   4096-68*32];
wire [31:0] re_35 =  dma_mem_doutb[4095-68*32:   4096-69*32];
wire [31:0] im_35 =  dma_mem_doutb[4095-69*32:   4096-70*32];
wire [31:0] re_36 =  dma_mem_doutb[4095-70*32:   4096-71*32];
wire [31:0] im_36 =  dma_mem_doutb[4095-71*32:   4096-72*32];
wire [31:0] re_37 =  dma_mem_doutb[4095-72*32:   4096-73*32];
wire [31:0] im_37 =  dma_mem_doutb[4095-73*32:   4096-74*32];
wire [31:0] re_38 =  dma_mem_doutb[4095-74*32:  4096-75*32];
wire [31:0] im_38 =  dma_mem_doutb[4095-75*32:  4096-76*32];
wire [31:0] re_39 =  dma_mem_doutb[4095-76*32:  4096-77*32];
wire [31:0] im_39 =  dma_mem_doutb[4095-77*32:  4096-78*32];
wire [31:0] re_40 =  dma_mem_doutb[4095-78*32:  4096-79*32];
wire [31:0] im_40 =  dma_mem_doutb[4095-79*32:  4096-80*32];
wire [31:0] re_41 =  dma_mem_doutb[4095-80*32:  4096-81*32];
wire [31:0] im_41 =  dma_mem_doutb[4095-81*32:  4096-82*32];
wire [31:0] re_42 = dma_mem_doutb[4095-82*32:  4096-83*32];
wire [31:0] im_42 = dma_mem_doutb[4095-83*32:  4096-84*32];
wire [31:0] re_43 = dma_mem_doutb[4095-84*32:  4096-85*32];
wire [31:0] im_43 = dma_mem_doutb[4095-85*32:  4096-86*32];
wire [31:0] re_44 = dma_mem_doutb[4095-86*32:  4096-87*32];
wire [31:0] im_44 = dma_mem_doutb[4095-87*32:  4096-88*32];
wire [31:0] re_45 = dma_mem_doutb[4095-88*32:  4096-89*32];
wire [31:0] im_45 = dma_mem_doutb[4095-89*32:  4096-90*32];
wire [31:0] re_46 = dma_mem_doutb[4095-90*32:  4096-91*32];
wire [31:0] im_46 = dma_mem_doutb[4095-91*32:  4096-92*32];
wire [31:0] re_47 = dma_mem_doutb[4095-92*32:  4096-93*32];
wire [31:0] im_47 = dma_mem_doutb[4095-93*32:  4096-94*32];
wire [31:0] re_48 = dma_mem_doutb[4095-94*32:  4096-95*32];
wire [31:0] im_48 = dma_mem_doutb[4095-95*32:  4096-96*32];
wire [31:0] re_49 = dma_mem_doutb[4095-96 *32: 4096-97 *32];
wire [31:0] im_49 = dma_mem_doutb[4095-97 *32: 4096-98 *32];
wire [31:0] re_50 = dma_mem_doutb[4095-98 *32: 4096-99 *32];
wire [31:0] im_50 = dma_mem_doutb[4095-99 *32: 4096-100 *32];
wire [31:0] re_51 = dma_mem_doutb[4095-100 *32: 4096-101 *32];
wire [31:0] im_51 = dma_mem_doutb[4095-101 *32: 4096-102 *32];
wire [31:0] re_52 = dma_mem_doutb[4095-102 *32: 4096-103 *32];
wire [31:0] im_52 = dma_mem_doutb[4095-103 *32: 4096-104 *32];
wire [31:0] re_53 = dma_mem_doutb[4095-104 *32: 4096-105 *32];
wire [31:0] im_53 = dma_mem_doutb[4095-105 *32: 4096-106*32];
wire [31:0] re_54 = dma_mem_doutb[4095-106*32:  4096-107*32];
wire [31:0] im_54 = dma_mem_doutb[4095-107*32:  4096-108*32];
wire [31:0] re_55 = dma_mem_doutb[4095-108*32:  4096-109*32];
wire [31:0] im_55 = dma_mem_doutb[4095-109*32:  4096-110*32];
wire [31:0] re_56 = dma_mem_doutb[4095-110*32:  4096-111*32];
wire [31:0] im_56 = dma_mem_doutb[4095-111*32:  4096-112*32];
wire [31:0] re_57 = dma_mem_doutb[4095-112*32:  4096-113*32];
wire [31:0] im_57 = dma_mem_doutb[4095-113*32:  4096-114*32];
wire [31:0] re_58 = dma_mem_doutb[4095-114*32:  4096-115*32];
wire [31:0] im_58 = dma_mem_doutb[4095-115*32:  4096-116*32];
wire [31:0] re_59 = dma_mem_doutb[4095-116*32:  4096-117*32];
wire [31:0] im_59 = dma_mem_doutb[4095-117*32:  4096-118*32];
wire [31:0] re_60 = dma_mem_doutb[4095-118*32:  4096-119*32];
wire [31:0] im_60 = dma_mem_doutb[4095-119*32:  4096-120*32];
wire [31:0] re_61 = dma_mem_doutb[4095-120*32:  4096-121*32];
wire [31:0] im_61 = dma_mem_doutb[4095-121*32:  4096-122*32];
wire [31:0] re_62 = dma_mem_doutb[4095-122*32:  4096-123*32];
wire [31:0] im_62 = dma_mem_doutb[4095-123*32:  4096-124*32];
wire [31:0] re_63 = dma_mem_doutb[4095-124*32:  4096-125*32];
wire [31:0] im_63 = dma_mem_doutb[4095-125*32:  4096-126*32];
wire [31:0] re_64 = dma_mem_doutb[4095-126*32:  4096-127*32];
wire [31:0] im_64 = dma_mem_doutb[4095-127*32:  4096-128*32];

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
   dma_mem_wea   = 512'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;
`elsif ST_WIDTH_64
   dma_mem_wea   = `WEA32            ;
`elsif ST_WIDTH_32
   dma_mem_wea   = `WEA16            ;
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
     #10*/
   
   
    wait(tsqr_fi);
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
integer col_index;

//`include "tb_func.sv"

reg [`MATRIX_WIDTH*32-1:0] golden_column;
reg [`MATRIX_WIDTH*32-1:0] dut_column;
real error_percent;

//`include "error_percent_declare.sv"

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
`ifdef ST128_RANDOM_TEST_128X64
  `ifdef SINGLE_CORE
      tri_report=$fopen("../golden/single_core/sc_st128_random_test_128x64/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/single_core/sc_st128_random_test_128x64/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Single-core Simulation\n"                    );
      $fwrite(tri_report, "Test case: ST128_RANDOM_TEST_128X64\n"        );
      $fwrite(tri_report, "==========================================\n");
      $display("start writing data into log report!"        );
  `endif
`elsif ST128_RANDOM_TEST_192X64
  `ifdef SINGLE_CORE
      tri_report=$fopen("../golden/single_core/sc_st128_random_test_192x64/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/single_core/sc_st128_random_test_192x64/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Single-core Simulation\n"                    );
      $fwrite(tri_report, "Test case: ST128_RANDOM_TEST_192X64\n"        );
      $fwrite(tri_report, "==========================================\n");
  `endif
`elsif ST128_RANDOM_TEST_256X64
  `ifdef SINGLE_CORE
      tri_report=$fopen("../golden/single_core/sc_st128_random_test_256x64/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/single_core/sc_st128_random_test_256x64/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Single-core Simulation\n"                    );
      $fwrite(tri_report, "Test case: ST128_RANDOM_TEST_256X64\n"        );
      $fwrite(tri_report, "==========================================\n");
  `elsif DUAL_CORE
      tri_report=$fopen("../golden/dual_core/dc_st128_random_test_256x64/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/dual_core/dc_st128_random_test_256x64/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Dual-core Simulation\n"                      ); 
      $fwrite(tri_report, "Test case: ST128_RANDOM_TEST_256X64\n"        );
      $fwrite(tri_report, "==========================================\n");
  `endif 
`elsif ST128_RANDOM_TEST_384X64
  `ifdef DUAL_CORE
      tri_report=$fopen("../golden/dual_core/dc_st128_random_test_384x64/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/dual_core/dc_st128_random_test_384x64/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Dual-core Simulation\n"                      );
      $fwrite(tri_report, "Test case: ST128_RANDOM_TEST_384X64\n"        );
      $fwrite(tri_report, "==========================================\n");
  `endif
`elsif ST128_RANDOM_TEST_512X64
  `ifdef DUAL_CORE
      tri_report=$fopen("../golden/dual_core/dc_st128_random_test_512x64/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/dual_core/dc_st128_random_test_512x64/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Dual-core Simulation\n"                      );
      $fwrite(tri_report, "Test case: ST128_RANDOM_TEST_512X64\n"       );
      $fwrite(tri_report, "==========================================\n");
  `elsif QUAD_CORE
      tri_report=$fopen("../golden/quad_core/qc_st128_random_test_512x64/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/quad_core/qc_st128_random_test_512x64/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Quad-core Simulation\n"                      );
      $fwrite(tri_report, "Test case: ST128_RANDOM_TEST_512X64\n"       );
      $fwrite(tri_report, "==========================================\n");
  `endif
`elsif ST128_RANDOM_TEST_768X64
  `ifdef QUAD_CORE
      tri_report=$fopen("../golden/quad_core/qc_st128_random_test_768x64/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/quad_core/qc_st128_random_test_768x64/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Quad-core Simulation\n"                      );
      $fwrite(tri_report, "Test case: ST128_RANDOM_TEST_768X64\n"       );
      $fwrite(tri_report, "==========================================\n");
  `endif
`elsif ST128_RANDOM_TEST_1024X64
  `ifdef QUAD_CORE
      tri_report=$fopen("../golden/quad_core/qc_st128_random_test_1024x64/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/quad_core/qc_st128_random_test_1024x64/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Quad-core Simulation\n"                      );
      $fwrite(tri_report, "Test case: ST128_RANDOM_TEST_1024X64\n"       );
      $fwrite(tri_report, "==========================================\n");
  `endif
`endif

      // ********************************
      // ---------- write report --------
      // ********************************
 /*     for(col_index=0; col_index<`MATRIX_WIDTH;) begin
        golden_column=tri_ram[col_index];
        dut_column   =u_tsqr_mc.hh_core.simple_dual_2.ram[col_index];
        //`include "error_percent_abs_cal_tri.sv"
        //`include "comp_abs_tri.sv"
        //`include "error_percent_cal_tri.sv"
        //`include "comp_tri.sv"
        `include "comp_tri_ieee754.sv"
        col_index=col_index+1;
      end*/

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

endmodule
