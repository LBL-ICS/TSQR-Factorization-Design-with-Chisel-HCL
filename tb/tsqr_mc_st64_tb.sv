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
`ifdef ST64_RANDOM_TEST_64X32 
  `define TILE_NO 2 
  `define TILE_NO_2 
`elsif ST64_RANDOM_TEST_96X32 
  `define TILE_NO 3 
  `define TILE_NO_2 
  `define TILE_NO_3 
`elsif ST64_RANDOM_TEST_128X32 
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
`elsif ST64_RANDOM_TEST_192X32
  `define TILE_NO 6 
  `define TILE_NO_2 
  `define TILE_NO_3 
  `define TILE_NO_4 
  `define TILE_NO_5 
  `define TILE_NO_6 
`elsif ST64_RANDOM_TEST_224X32
  `define TILE_NO 7
  `define TILE_NO_2 
  `define TILE_NO_3 
  `define TILE_NO_4 
  `define TILE_NO_5 
  `define TILE_NO_6 
  `define TILE_NO_7 
`elsif ST64_RANDOM_TEST_256X32
  `define TILE_NO 8 
  `define TILE_NO_2 
  `define TILE_NO_3 
  `define TILE_NO_4 
  `define TILE_NO_5 
  `define TILE_NO_6  
  `define TILE_NO_7 
  `define TILE_NO_8 
`elsif ST64_RANDOM_TEST_288X32
  `define TILE_NO 9
  `define TILE_NO_2 
  `define TILE_NO_3 
  `define TILE_NO_4 
  `define TILE_NO_5 
  `define TILE_NO_6  
  `define TILE_NO_7 
  `define TILE_NO_8 
  `define TILE_NO_9 
`elsif ST64_RANDOM_TEST_320X32
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
`elsif ST64_RANDOM_TEST_352X32
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
`elsif ST64_RANDOM_TEST_384X32
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
`elsif ST64_RANDOM_TEST_416X32
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
`elsif ST64_RANDOM_TEST_448X32
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
`elsif ST64_RANDOM_TEST_480X32
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
`elsif ST64_RANDOM_TEST_512X32
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
module tsqr_mc_st64_tb();
//---------------------------------------------------------
//--- wire and reg declaration 
//---------------------------------------------------------
reg                         clk        ;
reg                         rst        ;
reg                         tsqr_en    ;
reg  [`CNT_WIDTH-1:0]       tile_no    ;

`ifdef SINGLE_CORE_INT
wire                        mem0_fi_c_0;
wire                        mem1_fi_c_0;
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
reg  [`RAM_WIDTH/8-1:0]     dma_mem_wea  ;
reg  [`RAM_ADDR_WIDTH-1:0]  dma_mem_addra;
reg  [`RAM_WIDTH-1:0]       dma_mem_dina ;
reg  [`MEM_NO-1:0]          dma_mem_enb  ;
reg  [`RAM_ADDR_WIDTH-1:0]  dma_mem_addrb;
wire [`RAM_WIDTH-1:0]       dma_mem_doutb;

//---------------------------------------------------------
//--- golden model and input file 
//---------------------------------------------------------
reg [`MATRIX_WIDTH*32-1:0]  tri_ram[0:`MATRIX_WIDTH-1]   ; //For the matlab tsqr function, only the upper triangle (8*8) is stored. 
reg [`TILE_NO*`MATRIX_WIDTH*32-1:0] dmx_ram[0:`MATRIX_WIDTH-1] ;

initial begin
$display("=== The maxix factoriation Starts! (%d ns) ====", $time);
`ifdef SINGLE_CORE
  `ifdef ST64_RANDOM_TEST_64X32
     $display("Initilize The Memory in ST64_RANDOM_TEST_64X32 (%d ns) in Single-core Design",$time);
     $readmemh("../golden/single_core/sc_st64_random_test_64x32/dmx_ieee754.txt" , dmx_ram);
     $readmemh("../golden/single_core/sc_st64_random_test_64x32/tri_ieee754.txt" , tri_ram);
  `elsif ST64_RANDOM_TEST_96X32
     $display("Initilize The Memory in ST64_RANDOM_TEST_96X32 (%d ns) in Single-core Design",$time);
     $readmemh("../golden/single_core/sc_st64_random_test_96x32/dmx_ieee754.txt" , dmx_ram);
     $readmemh("../golden/single_core/sc_st64_random_test_96x32/tri_ieee754.txt" , tri_ram);
  `elsif ST64_RANDOM_TEST_128X32
     $display("Initilize The Memory in ST64_RANDOM_TEST_128X32 (%d ns) in Single-core Design",$time);
     $readmemh("../golden/single_core/sc_st64_random_test_128x32/dmx_ieee754.txt" , dmx_ram);
     $readmemh("../golden/single_core/sc_st64_random_test_128x32/tri_ieee754.txt" , tri_ram);
  `endif
`elsif DUAL_CORE
  `ifdef ST64_RANDOM_TEST_128X32
     $display("Initilize The Memory in ST64_RANDOM_TEST_128X32 (%d ns) in Dual-core Design",$time);
     $readmemh("../golden/dual_core/dc_st64_random_test_128x32/dmx_ieee754.txt" , dmx_ram);
     $readmemh("../golden/dual_core/dc_st64_random_test_128x32/tri_ieee754.txt" , tri_ram);
  `elsif ST64_RANDOM_TEST_192X32
     $display("Initilize The Memory in ST64_RANDOM_TEST_192X32 (%d ns) in Dual-core Design",$time);
     $readmemh("../golden/dual_core/dc_st64_random_test_192x32/dmx_ieee754.txt" , dmx_ram);
     $readmemh("../golden/dual_core/dc_st64_random_test_192x32/tri_ieee754.txt" , tri_ram);
  `elsif ST64_RANDOM_TEST_256X32
     $display("Initilize The Memory in ST64_RANDOM_TEST_256X32 (%d ns) in Dual-core Design",$time);
     $readmemh("../golden/dual_core/dc_st64_random_test_256x32/dmx_ieee754.txt" , dmx_ram);
     $readmemh("../golden/dual_core/dc_st64_random_test_256x32/tri_ieee754.txt" , tri_ram);
  `endif
`elsif QUAD_CORE
  `ifdef ST64_RANDOM_TEST_256X32
     $display("Initilize The Memory in ST64_RANDOM_TEST_256X32 (%d ns) in Quad-core Design",$time);
     $readmemh("../golden/quad_core/qc_st64_random_test_256x32/dmx_ieee754.txt" , dmx_ram);
     $readmemh("../golden/quad_core/qc_st64_random_test_256x32/tri_ieee754.txt" , tri_ram);
  `elsif ST64_RANDOM_TEST_384X32
     $display("Initilize The Memory in ST64_RANDOM_TEST_384X32 (%d ns) in Quad-core Design",$time);
     $readmemh("../golden/quad_core/qc_st64_random_test_384x32/dmx_ieee754.txt" , dmx_ram);
     $readmemh("../golden/quad_core/qc_st64_random_test_384x32/tri_ieee754.txt" , tri_ram);
  `elsif ST64_RANDOM_TEST_512X32
     $display("Initilize The Memory in ST64_RANDOM_TEST_512X32 (%d ns) in Quad-core Design",$time);
     $readmemh("../golden/quad_core/qc_st64_random_test_512x32/dmx_ieee754.txt" , dmx_ram);
     //`ifdef DUMP_WAVEFORM
       $readmemh("../golden/quad_core/qc_st64_random_test_512x32/tri_ieee754.txt" , tri_ram);
      // $dumpfile("../golden/quad_core/qc_st64_random_test_512x32/qc_st64_16t.vcd");
     //$dumpvars(0,tsqr_mc_st64_tb.u_tsqr_mc);
   //  `endif
  `endif
`endif
end

//---------------------------------------------------------
//--- Initialize and Load Memory -------------------------- 
//--- Single-core Test Cases ------------------------------ 
//---------------------------------------------------------
`include "load_mem.sv"

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
   tsqr_en = 1'b1;
   wait(tsqr_fi);
   @(posedge clk); 
   tsqr_en = 1'b0;
end


//---------------------------------------------------------------------
//------- Monitor -----------------------------------------------------
//---------------------------------------------------------------------
integer col_index;

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
`ifdef ST64_RANDOM_TEST_64X32
  `ifdef SINGLE_CORE
      tri_report=$fopen("../golden/single_core/sc_st64_random_test_64x32/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/single_core/sc_st64_random_test_64x32/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Single-core Simulation\n"                    );
      $fwrite(tri_report, "Test case: ST64_RANDOM_TEST_64X32\n"        );
      $fwrite(tri_report, "==========================================\n");
      $display("start writing data into log report!"        );
  `endif
`elsif ST64_RANDOM_TEST_96X32
  `ifdef SINGLE_CORE
      tri_report=$fopen("../golden/single_core/sc_st64_random_test_96x32/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/single_core/sc_st64_random_test_96x32/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Single-core Simulation\n"                    );
      $fwrite(tri_report, "Test case: ST64_RANDOM_TEST_96X32\n"        );
      $fwrite(tri_report, "==========================================\n");
  `endif
`elsif ST64_RANDOM_TEST_128X32
  `ifdef SINGLE_CORE
      tri_report=$fopen("../golden/single_core/sc_st64_random_test_128x32/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/single_core/sc_st64_random_test_128x32/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Single-core Simulation\n"                    );
      $fwrite(tri_report, "Test case: ST64_RANDOM_TEST_128X32\n"        );
      $fwrite(tri_report, "==========================================\n");
  `elsif DUAL_CORE
      tri_report=$fopen("../golden/dual_core/dc_st64_random_test_128x32/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/dual_core/dc_st64_random_test_128x32/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Dual-core Simulation\n"                      ); 
      $fwrite(tri_report, "Test case: ST64_RANDOM_TEST_128X32\n"        );
      $fwrite(tri_report, "==========================================\n");
  `endif 
`elsif ST64_RANDOM_TEST_192X32
  `ifdef DUAL_CORE
      tri_report=$fopen("../golden/dual_core/dc_st64_random_test_192x32/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/dual_core/dc_st64_random_test_192x32/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Dual-core Simulation\n"                      );
      $fwrite(tri_report, "Test case: ST64_RANDOM_TEST_192X32\n"        );
      $fwrite(tri_report, "==========================================\n");
  `endif
`elsif ST64_RANDOM_TEST_256X32
  `ifdef DUAL_CORE
      tri_report=$fopen("../golden/dual_core/dc_st64_random_test_256x32/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/dual_core/dc_st64_random_test_256x32/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Dual-core Simulation\n"                      );
      $fwrite(tri_report, "Test case: ST64_RANDOM_TEST_256X32\n"       );
      $fwrite(tri_report, "==========================================\n");
  `elsif QUAD_CORE
      tri_report=$fopen("../golden/quad_core/qc_st64_random_test_256x32/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/quad_core/qc_st64_random_test_256x32/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Quad-core Simulation\n"                      );
      $fwrite(tri_report, "Test case: ST64_RANDOM_TEST_256X32\n"       );
      $fwrite(tri_report, "==========================================\n");
  `endif
`elsif ST64_RANDOM_TEST_384X32
  `ifdef QUAD_CORE
      tri_report=$fopen("../golden/quad_core/qc_st64_random_test_384x32/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/quad_core/qc_st64_random_test_384x32/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Quad-core Simulation\n"                      );
      $fwrite(tri_report, "Test case: ST64_RANDOM_TEST_384X32\n"       );
      $fwrite(tri_report, "==========================================\n");
  `endif
`elsif ST64_RANDOM_TEST_512X32
  `ifdef QUAD_CORE
      tri_report=$fopen("../golden/quad_core/qc_st64_random_test_512x32/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/quad_core/qc_st64_random_test_512x32/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Quad-core Simulation\n"                      );
      $fwrite(tri_report, "Test case: ST64_RANDOM_TEST_512X32\n"       );
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

endmodule
