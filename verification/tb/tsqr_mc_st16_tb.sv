//*********************************************************************************************// 
//----------------   TSQR Testbench (Scala golden model)-------------------------------------//// 
//---------------- Author: Xiaokun Yang  ----------------------------------------------------//// 
//---------------- Lawrence Berkeley Lab ----------------------------------------------------//// 
//---------------- Date: 6/13/2023  ---------------------------------------------------------//// 
//----- Version 1: TSQR MC Testbench---------------------------------------------------------//// 
//----- Date: 6/13/2023 ---------------------------------------------------------------------//// 
//-------------------------------------------------------------------------------------------//// 
//*********************************************************************************************// 
//----- This testbench support verification to the multi-core TSQR designs                     //
//----- with streaming width of 16                                                             // 
//*********************************************************************************************// 
//`define DEBUG
//`define ERROR_THRESHOLD 5  //5% error tolerace
`define ERROR_THRESHOLD 20  //5% error tolerace

//--------------------------------------------------------- 
//--- test cases  
//--------------------------------------------------------- 
`ifdef ST16_RANDOM_TEST_16X8 
  `define TILE_NO 2 
  `define TILE_NO_2 

`elsif ST16_RANDOM_TEST_24X8 
  `define TILE_NO 3 
  `define TILE_NO_2 
  `define TILE_NO_3 
`elsif ST16_RANDOM_TEST_32X8 
  `define TILE_NO 4 
  `define TILE_NO_2 
  `define TILE_NO_3 
  `define TILE_NO_4 

`elsif ST16_RANDOM_TEST_40X8 
  `define TILE_NO 5 
  `define TILE_NO_2 
  `define TILE_NO_3 
  `define TILE_NO_4 
  `define TILE_NO_5 
`elsif ST16_RANDOM_TEST_48X8
  `define TILE_NO 6 
  `define TILE_NO_2 
  `define TILE_NO_3 
  `define TILE_NO_4 
  `define TILE_NO_5 
  `define TILE_NO_6 
`elsif ST16_RANDOM_TEST_56X8
  `define TILE_NO 7
  `define TILE_NO_2 
  `define TILE_NO_3 
  `define TILE_NO_4 
  `define TILE_NO_5 
  `define TILE_NO_6 
  `define TILE_NO_7 
`elsif ST16_RANDOM_TEST_64X8
  `define TILE_NO 8 
  `define TILE_NO_2 
  `define TILE_NO_3 
  `define TILE_NO_4 
  `define TILE_NO_5 
  `define TILE_NO_6  
  `define TILE_NO_7 
  `define TILE_NO_8 
`elsif ST16_RANDOM_TEST_72X8
  `define TILE_NO 9
  `define TILE_NO_2 
  `define TILE_NO_3 
  `define TILE_NO_4 
  `define TILE_NO_5 
  `define TILE_NO_6  
  `define TILE_NO_7 
  `define TILE_NO_8 
  `define TILE_NO_9 
`elsif ST16_RANDOM_TEST_80X8
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
`elsif ST16_RANDOM_TEST_88X8
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
`elsif ST16_RANDOM_TEST_96X8
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
`elsif ST16_RANDOM_TEST_104X8
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
`elsif ST16_RANDOM_TEST_112X8
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
`elsif ST16_RANDOM_TEST_120X8
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
`elsif ST16_RANDOM_TEST_128X8
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
`elsif ST16_RANDOM_TEST_192X8
  `define TILE_NO 24 
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
  `define TILE_NO_17 
  `define TILE_NO_18 
  `define TILE_NO_19 
  `define TILE_NO_20 
  `define TILE_NO_21 
  `define TILE_NO_22 
  `define TILE_NO_23 
  `define TILE_NO_24 
`elsif ST16_RANDOM_TEST_256X8
  `define TILE_NO 32 
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
  `define TILE_NO_17 
  `define TILE_NO_18 
  `define TILE_NO_19 
  `define TILE_NO_20 
  `define TILE_NO_21 
  `define TILE_NO_22 
  `define TILE_NO_23 
  `define TILE_NO_24 
  `define TILE_NO_25 
  `define TILE_NO_26  
  `define TILE_NO_27 
  `define TILE_NO_28 
  `define TILE_NO_29 
  `define TILE_NO_30 
  `define TILE_NO_31 
  `define TILE_NO_32 
//`elsif ST16_RANDOM_TEST_256X8
//  `define TILE_NO_32 
//  `define TILE_NO 32 
`elsif ST16_RANDOM_TEST_512X8 //64 tiles
  `define TILE_NO 64 
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
  `define TILE_NO_17 
  `define TILE_NO_18 
  `define TILE_NO_19 
  `define TILE_NO_20 
  `define TILE_NO_21 
  `define TILE_NO_22 
  `define TILE_NO_23 
  `define TILE_NO_24 
  `define TILE_NO_25 
  `define TILE_NO_26  
  `define TILE_NO_27 
  `define TILE_NO_28 
  `define TILE_NO_29 
  `define TILE_NO_30 
  `define TILE_NO_31 
  `define TILE_NO_32 
  `define TILE_NO_40 
  `define TILE_NO_48 
  `define TILE_NO_56 
  `define TILE_NO_64 
`elsif ST16_RANDOM_TEST_1024X8 //128 tiles
  `define TILE_NO 128 
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
  `define TILE_NO_17 
  `define TILE_NO_18 
  `define TILE_NO_19 
  `define TILE_NO_20 
  `define TILE_NO_21 
  `define TILE_NO_22 
  `define TILE_NO_23 
  `define TILE_NO_24 
  `define TILE_NO_25 
  `define TILE_NO_26  
  `define TILE_NO_27 
  `define TILE_NO_28 
  `define TILE_NO_29 
  `define TILE_NO_30 
  `define TILE_NO_31 
  `define TILE_NO_32 
  `define TILE_NO_40 
  `define TILE_NO_48 
  `define TILE_NO_56 
  `define TILE_NO_64 
  `define TILE_NO_72 
  `define TILE_NO_80 
  `define TILE_NO_88 
  `define TILE_NO_96 
  `define TILE_NO_104 
  `define TILE_NO_112 
  `define TILE_NO_120 
  `define TILE_NO_128 
`elsif ST16_RANDOM_TEST_1536X8 //192 tiles
  `define TILE_NO 192 
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
  `define TILE_NO_17 
  `define TILE_NO_18 
  `define TILE_NO_19 
  `define TILE_NO_20 
  `define TILE_NO_21 
  `define TILE_NO_22 
  `define TILE_NO_23 
  `define TILE_NO_24 
  `define TILE_NO_25 
  `define TILE_NO_26  
  `define TILE_NO_27 
  `define TILE_NO_28 
  `define TILE_NO_29 
  `define TILE_NO_30 
  `define TILE_NO_31 
  `define TILE_NO_32 
  `define TILE_NO_40 
  `define TILE_NO_48 
  `define TILE_NO_56 
  `define TILE_NO_64 
  `define TILE_NO_72 
  `define TILE_NO_80 
  `define TILE_NO_88 
  `define TILE_NO_96 
  `define TILE_NO_104 
  `define TILE_NO_112 
  `define TILE_NO_120 
  `define TILE_NO_128 
  `define TILE_NO_136 
  `define TILE_NO_144 
  `define TILE_NO_152 
  `define TILE_NO_160 
  `define TILE_NO_168 
  `define TILE_NO_176 
  `define TILE_NO_184 
  `define TILE_NO_192 
`elsif ST16_RANDOM_TEST_2048X8 //256 tiles
  `define TILE_NO 256 
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
  `define TILE_NO_17 
  `define TILE_NO_18 
  `define TILE_NO_19 
  `define TILE_NO_20 
  `define TILE_NO_21 
  `define TILE_NO_22 
  `define TILE_NO_23 
  `define TILE_NO_24 
  `define TILE_NO_25 
  `define TILE_NO_26  
  `define TILE_NO_27 
  `define TILE_NO_28 
  `define TILE_NO_29 
  `define TILE_NO_30 
  `define TILE_NO_31 
  `define TILE_NO_32 
  `define TILE_NO_40 
  `define TILE_NO_48 
  `define TILE_NO_56 
  `define TILE_NO_64 
  `define TILE_NO_72 
  `define TILE_NO_80 
  `define TILE_NO_88 
  `define TILE_NO_96 
  `define TILE_NO_104 
  `define TILE_NO_112 
  `define TILE_NO_120 
  `define TILE_NO_128 
  `define TILE_NO_136 
  `define TILE_NO_144 
  `define TILE_NO_152 
  `define TILE_NO_160 
  `define TILE_NO_168 
  `define TILE_NO_176 
  `define TILE_NO_184 
  `define TILE_NO_192 
  `define TILE_NO_200 
  `define TILE_NO_208 
  `define TILE_NO_216 
  `define TILE_NO_224
  `define TILE_NO_232
  `define TILE_NO_240
  `define TILE_NO_248
  `define TILE_NO_256
//`elsif ST16_RANDOM_TEST_2048X8 //256 tiles
//  `define TILE_NO_256 
//  `define TILE_NO 256 
`endif

//`include "../dut/multi_core/define.v"
module tsqr_mc_st16_tb();
//---------------------------------------------------------
//--- wire and reg declaration 
//---------------------------------------------------------
reg                         clk        ;
reg                         rst        ;
reg                         tsqr_en    ;
reg  [`CNT_WIDTH - 1:0]       tile_no    ;

`ifdef SINGLE_CORE_INT
wire                        mem0_fi_c_0 ;
wire                        mem1_fi_c_0 ;
`endif //SINGLE_CORE_INT
`ifdef DUAL_CORE_INT
wire                        mem0_fi_c_1 ;
wire                        mem1_fi_c_1 ;
`endif //DUAL_CORE_INT
`ifdef QUAD_CORE_INT
wire                        mem0_fi_c_2 ;
wire                        mem1_fi_c_2 ;
wire                        mem0_fi_c_3 ;
wire                        mem1_fi_c_3 ;
`endif //QUAD_CORE_INT 
`ifdef EIGHT_CORE_INT
wire                        mem0_fi_c_4 ;
wire                        mem1_fi_c_4 ;
wire                        mem0_fi_c_5 ;
wire                        mem1_fi_c_5 ;
wire                        mem0_fi_c_6 ;
wire                        mem1_fi_c_6 ;
wire                        mem0_fi_c_7 ;
wire                        mem1_fi_c_7 ;
`endif //EIGHT_CORE_INT 
`ifdef SIXTEEN_CORE_INT
wire                        mem0_fi_c_8 ;
wire                        mem1_fi_c_8 ;
wire                        mem0_fi_c_9 ;
wire                        mem1_fi_c_9 ;
wire                        mem0_fi_c_10 ;
wire                        mem1_fi_c_10 ;
wire                        mem0_fi_c_11 ;
wire                        mem1_fi_c_11 ;
wire                        mem0_fi_c_12 ;
wire                        mem1_fi_c_12 ;
wire                        mem0_fi_c_13 ;
wire                        mem1_fi_c_13 ;
wire                        mem0_fi_c_14 ;
wire                        mem1_fi_c_14 ;
wire                        mem0_fi_c_15 ;
wire                        mem1_fi_c_15 ;
`endif //SIXTEEN_CORE_INT 
`ifdef THIRTYTWO_CORE_INT
wire                        mem0_fi_c_16  ;
wire                        mem1_fi_c_16  ;
wire                        mem0_fi_c_17  ;
wire                        mem1_fi_c_17  ;
wire                        mem0_fi_c_18 ;
wire                        mem1_fi_c_18 ;
wire                        mem0_fi_c_19 ;
wire                        mem1_fi_c_19 ;
wire                        mem0_fi_c_20 ;
wire                        mem1_fi_c_20 ;
wire                        mem0_fi_c_21 ;
wire                        mem1_fi_c_21 ;
wire                        mem0_fi_c_22 ;
wire                        mem1_fi_c_22 ;
wire                        mem0_fi_c_23 ;
wire                        mem1_fi_c_23 ;
wire                        mem0_fi_c_24  ;
wire                        mem1_fi_c_24  ;
wire                        mem0_fi_c_25  ;
wire                        mem1_fi_c_25  ;
wire                        mem0_fi_c_26 ;
wire                        mem1_fi_c_26 ;
wire                        mem0_fi_c_27 ;
wire                        mem1_fi_c_27 ;
wire                        mem0_fi_c_28 ;
wire                        mem1_fi_c_28 ;
wire                        mem0_fi_c_29 ;
wire                        mem1_fi_c_29 ;
wire                        mem0_fi_c_30 ;
wire                        mem1_fi_c_30 ;
wire                        mem0_fi_c_31 ;
wire                        mem1_fi_c_31 ;
`endif //THIRTYTWO_CORE_INT 
`ifdef SIXTYFOUR_CORE_INT
wire                        mem0_fi_c_32  ;
wire                        mem1_fi_c_32  ;
wire                        mem0_fi_c_33  ;
wire                        mem1_fi_c_33  ;
wire                        mem0_fi_c_34 ;
wire                        mem1_fi_c_34 ;
wire                        mem0_fi_c_35 ;
wire                        mem1_fi_c_35 ;
wire                        mem0_fi_c_36 ;
wire                        mem1_fi_c_36 ;
wire                        mem0_fi_c_37 ;
wire                        mem1_fi_c_37 ;
wire                        mem0_fi_c_38 ;
wire                        mem1_fi_c_38 ;
wire                        mem0_fi_c_39 ;
wire                        mem1_fi_c_39 ;
wire                        mem0_fi_c_40  ;
wire                        mem1_fi_c_40  ;
wire                        mem0_fi_c_41  ;
wire                        mem1_fi_c_41  ;
wire                        mem0_fi_c_42 ;
wire                        mem1_fi_c_42 ;
wire                        mem0_fi_c_43 ;
wire                        mem1_fi_c_43 ;
wire                        mem0_fi_c_44 ;
wire                        mem1_fi_c_44 ;
wire                        mem0_fi_c_45 ;
wire                        mem1_fi_c_45 ;
wire                        mem0_fi_c_46 ;
wire                        mem1_fi_c_46 ;
wire                        mem0_fi_c_47 ;
wire                        mem1_fi_c_47 ;
wire                        mem0_fi_c_48  ;
wire                        mem1_fi_c_48  ;
wire                        mem0_fi_c_49  ;
wire                        mem1_fi_c_49  ;
wire                        mem0_fi_c_50 ;
wire                        mem1_fi_c_50 ;
wire                        mem0_fi_c_51 ;
wire                        mem1_fi_c_51 ;
wire                        mem0_fi_c_52 ;
wire                        mem1_fi_c_52 ;
wire                        mem0_fi_c_53 ;
wire                        mem1_fi_c_53 ;
wire                        mem0_fi_c_54 ;
wire                        mem1_fi_c_54 ;
wire                        mem0_fi_c_55 ;
wire                        mem1_fi_c_55 ;
wire                        mem0_fi_c_56  ;
wire                        mem1_fi_c_56  ;
wire                        mem0_fi_c_57  ;
wire                        mem1_fi_c_57  ;
wire                        mem0_fi_c_58 ;
wire                        mem1_fi_c_58 ;
wire                        mem0_fi_c_59 ;
wire                        mem1_fi_c_59 ;
wire                        mem0_fi_c_60 ;
wire                        mem1_fi_c_60 ;
wire                        mem0_fi_c_61 ;
wire                        mem1_fi_c_61 ;
wire                        mem0_fi_c_62 ;
wire                        mem1_fi_c_62 ;
wire                        mem0_fi_c_63 ;
wire                        mem1_fi_c_63 ;
`endif //SIXTYFOUR_CORE_INT 
`ifdef ONETWENTYEIGHT_CORE_INT
wire                        mem0_fi_c_64  ;
wire                        mem1_fi_c_64  ;
wire                        mem0_fi_c_65  ;
wire                        mem1_fi_c_65  ;
wire                        mem0_fi_c_66 ;
wire                        mem1_fi_c_66 ;
wire                        mem0_fi_c_67 ;
wire                        mem1_fi_c_67 ;
wire                        mem0_fi_c_68 ;
wire                        mem1_fi_c_68 ;
wire                        mem0_fi_c_69 ;
wire                        mem1_fi_c_69 ;
wire                        mem0_fi_c_70 ;
wire                        mem1_fi_c_70 ;
wire                        mem0_fi_c_71 ;
wire                        mem1_fi_c_71 ;
wire                        mem0_fi_c_72  ;
wire                        mem1_fi_c_72  ;
wire                        mem0_fi_c_73  ;
wire                        mem1_fi_c_73  ;
wire                        mem0_fi_c_74 ;
wire                        mem1_fi_c_74 ;
wire                        mem0_fi_c_75 ;
wire                        mem1_fi_c_75 ;
wire                        mem0_fi_c_76 ;
wire                        mem1_fi_c_76 ;
wire                        mem0_fi_c_77 ;
wire                        mem1_fi_c_77 ;
wire                        mem0_fi_c_78 ;
wire                        mem1_fi_c_78 ;
wire                        mem0_fi_c_79 ;
wire                        mem1_fi_c_79 ;
wire                        mem0_fi_c_80  ;
wire                        mem1_fi_c_80  ;
wire                        mem0_fi_c_81  ;
wire                        mem1_fi_c_81  ;
wire                        mem0_fi_c_82 ;
wire                        mem1_fi_c_82 ;
wire                        mem0_fi_c_83 ;
wire                        mem1_fi_c_83 ;
wire                        mem0_fi_c_84 ;
wire                        mem1_fi_c_84 ;
wire                        mem0_fi_c_85 ;
wire                        mem1_fi_c_85 ;
wire                        mem0_fi_c_86 ;
wire                        mem1_fi_c_86 ;
wire                        mem0_fi_c_87 ;
wire                        mem1_fi_c_87 ;
wire                        mem0_fi_c_88  ;
wire                        mem1_fi_c_88  ;
wire                        mem0_fi_c_89  ;
wire                        mem1_fi_c_89  ;
wire                        mem0_fi_c_90 ;
wire                        mem1_fi_c_90 ;
wire                        mem0_fi_c_91 ;
wire                        mem1_fi_c_91 ;
wire                        mem0_fi_c_92 ;
wire                        mem1_fi_c_92 ;
wire                        mem0_fi_c_93 ;
wire                        mem1_fi_c_93 ;
wire                        mem0_fi_c_94 ;
wire                        mem1_fi_c_94 ;
wire                        mem0_fi_c_95 ;
wire                        mem1_fi_c_95 ;
wire                        mem0_fi_c_96  ;
wire                        mem1_fi_c_96  ;
wire                        mem0_fi_c_97  ;
wire                        mem1_fi_c_97  ;
wire                        mem0_fi_c_98 ;
wire                        mem1_fi_c_98 ;
wire                        mem0_fi_c_99 ;
wire                        mem1_fi_c_99 ;
wire                        mem0_fi_c_100 ;
wire                        mem1_fi_c_100 ;
wire                        mem0_fi_c_101 ;
wire                        mem1_fi_c_101 ;
wire                        mem0_fi_c_102 ;
wire                        mem1_fi_c_102 ;
wire                        mem0_fi_c_103 ;
wire                        mem1_fi_c_103 ;
wire                        mem0_fi_c_104  ;
wire                        mem1_fi_c_104  ;
wire                        mem0_fi_c_105  ;
wire                        mem1_fi_c_105  ;
wire                        mem0_fi_c_106 ;
wire                        mem1_fi_c_106 ;
wire                        mem0_fi_c_107 ;
wire                        mem1_fi_c_107 ;
wire                        mem0_fi_c_108 ;
wire                        mem1_fi_c_108 ;
wire                        mem0_fi_c_109 ;
wire                        mem1_fi_c_109 ;
wire                        mem0_fi_c_110 ;
wire                        mem1_fi_c_110 ;
wire                        mem0_fi_c_111 ;
wire                        mem1_fi_c_111 ;
wire                        mem0_fi_c_112  ;
wire                        mem1_fi_c_112  ;
wire                        mem0_fi_c_113  ;
wire                        mem1_fi_c_113  ;
wire                        mem0_fi_c_114 ;
wire                        mem1_fi_c_114 ;
wire                        mem0_fi_c_115 ;
wire                        mem1_fi_c_115 ;
wire                        mem0_fi_c_116 ;
wire                        mem1_fi_c_116 ;
wire                        mem0_fi_c_117 ;
wire                        mem1_fi_c_117 ;
wire                        mem0_fi_c_118 ;
wire                        mem1_fi_c_118 ;
wire                        mem0_fi_c_119 ;
wire                        mem1_fi_c_119 ;
wire                        mem0_fi_c_120  ;
wire                        mem1_fi_c_120  ;
wire                        mem0_fi_c_121  ;
wire                        mem1_fi_c_121  ;
wire                        mem0_fi_c_122 ;
wire                        mem1_fi_c_122 ;
wire                        mem0_fi_c_123 ;
wire                        mem1_fi_c_123 ;
wire                        mem0_fi_c_124 ;
wire                        mem1_fi_c_124 ;
wire                        mem0_fi_c_125 ;
wire                        mem1_fi_c_125 ;
wire                        mem0_fi_c_126 ;
wire                        mem1_fi_c_126 ;
wire                        mem0_fi_c_127 ;
wire                        mem1_fi_c_127 ;
`endif //ONETWENTYEIGHT_CORE_INT 
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
reg [`MATRIX_WIDTH*64-1:0]  tri_ram[0:`MATRIX_WIDTH-1]   ; //For the matlab tsqr function, only the upper triangle (8*8) is stored. 
reg [`TILE_NO*`MATRIX_WIDTH*64-1:0] dmx_ram[0:`MATRIX_WIDTH-1] ;
//reg [(`TILE_NO-6)*`MATRIX_WIDTH*64-1:0] dmx_ram[0:`MATRIX_WIDTH-1] ;//for 4 tiles repeating 2 tiles
//reg [2*`MATRIX_WIDTH*64-1:0] dmx_ram[0:`MATRIX_WIDTH-1] ;//for 4 tiles repeating 2 tiles


initial begin
$display("=== The maxix factoriation Starts! (%d ns) ====", $time);
`ifdef SINGLE_CORE
  `ifdef ST16_RANDOM_TEST_16X8
     $display("Initilize The Memory in ST16_RANDOM_TEST_16X8 (%d ns) in Single-core Design",$time);
    // $readmemh("/home/taylorb8409/Desktop/TSQR_Chisel_BRAM_IP/golden/single_core/sc_st16_random_test_16x8_mat/dmx_ieee754.txt" , dmx_ram);
    $readmemh("/home/taylorb8409/Desktop/TSQR_Chisel_BRAM_IP_Complex/golden/single_core/sc_st16_random_test_16x8_mat/16x8_complex.txt" , dmx_ram);
     $readmemh("/home/taylorb8409/Desktop/TSQR_Chisel_BRAM_IP_Complex/golden/single_core/sc_st16_random_test_16x8_mat/tri_ieee754.txt" , tri_ram);
     //$readmemh("../golden/single_core/sc_st16_random_test_16x8/dmx_ieee754.txt" , dmx_ram);
     //$readmemh("../golden/single_core/sc_st16_random_test_16x8/tri_ieee754.txt" , tri_ram);
  `elsif ST16_RANDOM_TEST_24X8
     $display("Initilize The Memory in ST16_RANDOM_TEST_24X8 (%d ns) in Single-core Design",$time);
     $readmemh("../golden/single_core/sc_st16_random_test_24x8/dmx_ieee754.txt" , dmx_ram);
     $readmemh("../golden/single_core/sc_st16_random_test_24x8/tri_ieee754.txt" , tri_ram);
  `elsif ST16_RANDOM_TEST_32X8
     $display("Initilize The Memory in ST16_RANDOM_TEST_32X8 (%d ns) in Single-core Design",$time);
     $readmemh("/home/taylorb8409/Desktop/TSQR_Chisel_BRAM_IP_Complex/golden/single_core/sc_st16_random_test_16x8_mat/16x8_complex.txt" , dmx_ram);
     $readmemh("/home/taylorb8409/Desktop/TSQR_Chisel_BRAM_IP_Complex/golden/single_core/sc_st16_random_test_16x8_mat/tri_ieee754.txt" , tri_ram);
     
     //$readmemh("/home/taylorb8409/Desktop/TSQR_Chisel_BRAM_IP/golden/single_core/sc_st16_random_test_32x8/dmx_ieee754.txt" , dmx_ram);
     //$readmemh("/home/taylorb8409/Desktop/TSQR_Chisel_BRAM_IP/golden/single_core/sc_st16_random_test_32x8/tri_ieee754.txt" , tri_ram);
     
       `elsif ST16_RANDOM_TEST_64X8
     $display("Initilize The Memory in ST16_RANDOM_TEST_32X8 (%d ns) in Single-core Design",$time);
     $readmemh("/home/taylorb8409/Desktop/TSQR_Chisel_BRAM_IP_Complex/golden/single_core/sc_st16_random_test_16x8_mat/16x8_complex.txt" , dmx_ram);
     $readmemh("/home/taylorb8409/Desktop/TSQR_Chisel_BRAM_IP_Complex/golden/single_core/sc_st16_random_test_16x8_mat/tri_ieee754.txt" , tri_ram);
  `endif
`elsif DUAL_CORE
  `ifdef ST16_RANDOM_TEST_32X8
     $display("Initilize The Memory in ST16_RANDOM_TEST_32X8 (%d ns) in Dual-core Design",$time);
    // $readmemh("../golden/dual_core/dc_st16_random_test_32x8/dmx_ieee754.txt" , dmx_ram);
        $readmemh("/home/taylorb8409/Desktop/TSQR_Chisel_BRAM_IP_Complex/golden/single_core/sc_st16_random_test_16x8_mat/16x8_complex.txt" , dmx_ram);

     $readmemh("../golden/dual_core/dc_st16_random_test_32x8/tri_ieee754.txt" , tri_ram);
  `elsif ST16_RANDOM_TEST_48X8
     $display("Initilize The Memory in ST16_RANDOM_TEST_48X8 (%d ns) in Dual-core Design",$time);
     $readmemh("../golden/dual_core/dc_st16_random_test_48x8/dmx_ieee754.txt" , dmx_ram);
     $readmemh("../golden/dual_core/dc_st16_random_test_48x8/tri_ieee754.txt" , tri_ram);
  `elsif ST16_RANDOM_TEST_64X8
     $display("Initilize The Memory in ST16_RANDOM_TEST_64X8 (%d ns) in Dual-core Design",$time);
     $readmemh("../golden/dual_core/dc_st16_random_test_64x8/dmx_ieee754.txt" , dmx_ram);
     $readmemh("../golden/dual_core/dc_st16_random_test_64x8/tri_ieee754.txt" , tri_ram);
  `endif
`elsif QUAD_CORE
  `ifdef ST16_RANDOM_TEST_64X8
     $display("Initilize The Memory in ST16_RANDOM_TEST_64X8 (%d ns) in Quad-core Design",$time);
    // $readmemh("../golden/quad_core/qc_st16_random_test_64x8/dmx_ieee754.txt" , dmx_ram);
    // $readmemh("../golden/quad_core/qc_st16_random_test_64x8/tri_ieee754.txt" , tri_ram);
         $readmemh("/home/taylorb8409/Desktop/TSQR_Chisel_BRAM_IP_Complex/golden/single_core/sc_st16_random_test_16x8_mat/16x8_complex.txt" , dmx_ram);
     $readmemh("/home/taylorb8409/Desktop/TSQR_Chisel_BRAM_IP_Complex/golden/single_core/sc_st16_random_test_16x8_mat/tri_ieee754.txt" , tri_ram);
  `elsif ST16_RANDOM_TEST_96X8
     $display("Initilize The Memory in ST16_RANDOM_TEST_96X8 (%d ns) in Quad-core Design",$time);
     $readmemh("../golden/quad_core/qc_st16_random_test_96x8/dmx_ieee754.txt" , dmx_ram);
     $readmemh("../golden/quad_core/qc_st16_random_test_96x8/tri_ieee754.txt" , tri_ram);
  `elsif ST16_RANDOM_TEST_128X8
     $display("Initilize The Memory in ST16_RANDOM_TEST_128X8 (%d ns) in Quad-core Design",$time);
     $readmemh("../golden/quad_core/qc_st16_random_test_128x8/dmx_ieee754.txt" , dmx_ram);
     $readmemh("../golden/quad_core/qc_st16_random_test_128x8/tri_ieee754.txt" , tri_ram);
  `endif
`elsif EIGHT_CORE
  `ifdef ST16_RANDOM_TEST_128X8
     $display("Initilize The Memory in ST16_RANDOM_TEST_128X8 (%d ns) in EIGHT-core Design",$time);
     $readmemh("../golden/eight_core/ec_st16_random_test_128x8/dmx_ieee754.txt" , dmx_ram);
     $readmemh("../golden/eight_core/ec_st16_random_test_128x8/tri_ieee754.txt" , tri_ram);
  `elsif ST16_RANDOM_TEST_192X8
     $display("Initilize The Memory in ST16_RANDOM_TEST_192X8 (%d ns) in EIGHT-core Design",$time);
     $readmemh("../golden/eight_core/ec_st16_random_test_192x8/dmx_ieee754.txt" , dmx_ram);
     $readmemh("../golden/eight_core/ec_st16_random_test_192x8/tri_ieee754.txt" , tri_ram);
  `elsif ST16_RANDOM_TEST_256X8
     $display("Initilize The Memory in ST16_RANDOM_TEST_256X8 (%d ns) in EIGHT-core Design",$time);
     $readmemh("../golden/eight_core/ec_st16_random_test_256x8/dmx_ieee754.txt" , dmx_ram);
     $readmemh("../golden/eight_core/ec_st16_random_test_256x8/tri_ieee754.txt" , tri_ram);
  `elsif ST16_RANDOM_TEST_512X8
     $display("Initilize The Memory in ST16_RANDOM_TEST_512X8 (%d ns) in EIGHT-core Design",$time);
     $readmemh("../golden/eight_core/ec_st16_random_test_512x8/dmx_ieee754.txt" , dmx_ram);
     $readmemh("../golden/eight_core/ec_st16_random_test_512x8/tri_ieee754.txt" , tri_ram);
  `elsif ST16_RANDOM_TEST_1024X8
     $display("Initilize The Memory in ST16_RANDOM_TEST_1024X8 (%d ns) in EIGHT-core Design",$time);
     $readmemh("../golden/eight_core/ec_st16_random_test_1024x8/dmx_ieee754.txt" , dmx_ram);
     $readmemh("../golden/eight_core/ec_st16_random_test_1024x8/tri_ieee754.txt" , tri_ram);
  `elsif ST16_RANDOM_TEST_1536X8
     $display("Initilize The Memory in ST16_RANDOM_TEST_1536X8 (%d ns) in EIGHT-core Design",$time);
     $readmemh("../golden/eight_core/ec_st16_random_test_1536x8/dmx_ieee754.txt" , dmx_ram);
     $readmemh("../golden/eight_core/ec_st16_random_test_1536x8/tri_ieee754.txt" , tri_ram);
 `elsif ST16_RANDOM_TEST_2048X8
    $display("Initilize The Memory in ST16_RANDOM_TEST_2048X8 (%d ns) in EIGHT-core Design",$time);
    $readmemh("../golden/eight_core/ec_st16_random_test_2048x8/dmx_ieee754.txt" , dmx_ram);
    $readmemh("../golden/eight_core/ec_st16_random_test_2048x8/tri_ieee754.txt" , tri_ram);
  `endif
`elsif SIXTEEN_CORE
  `ifdef ST16_RANDOM_TEST_256X8
     $display("Initilize The Memory in ST16_RANDOM_TEST_256X8 (%d ns) in SIXTEEN-core Design",$time);
     $readmemh("../golden/core_16/c16_st16_random_test_256x8/dmx_ieee754.txt" , dmx_ram);
     $readmemh("../golden/core_16/c16_st16_random_test_256x8/tri_ieee754.txt" , tri_ram);
  `elsif ST16_RANDOM_TEST_512X8
     $display("Initilize The Memory in ST16_RANDOM_TEST_512X8 (%d ns) in sixteen-core Design",$time);
     $readmemh("../golden/core_16/c16_st16_random_test_512x8/dmx_ieee754.txt" , dmx_ram);
     $readmemh("../golden/core_16/c16_st16_random_test_512x8/tri_ieee754.txt" , tri_ram);
  `endif
`elsif SIXTYFOUR_CORE
  `ifdef ST16_RANDOM_TEST_1024X8
     $display("Initilize The Memory in ST16_RANDOM_TEST_1024X8 (%d ns) in 64-core Design",$time);
     $readmemh("../golden/core_64/c64_st16_random_test_1024x8/dmx_ieee754.txt" , dmx_ram);
     $readmemh("../golden/core_64/c64_st16_random_test_1024x8/tri_ieee754.txt" , tri_ram);
  `endif
`elsif ONETWENTYEIGHT_CORE
  `ifdef ST16_RANDOM_TEST_2048X8
     $display("Initilize The Memory in ST16_RANDOM_TEST_2048X8 (%d ns) in ONETWENTYEIGHT-core Design",$time);
     $readmemh("../golden/core_128/c128_st16_random_test_2048x8/dmx_ieee754.txt" , dmx_ram);
     $readmemh("../golden/core_128/c128_st16_random_test_2048x8/tri_ieee754.txt" , tri_ram);
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
`ifdef EIGHT_CORE_INT
	           .mem0_fi_c_4   (mem0_fi_c_4   ),
                   .mem1_fi_c_4   (mem1_fi_c_4   ),
	           .mem0_fi_c_5   (mem0_fi_c_5   ),
                   .mem1_fi_c_5   (mem1_fi_c_5   ),
	           .mem0_fi_c_6   (mem0_fi_c_6   ),
                   .mem1_fi_c_6   (mem1_fi_c_6   ),
	           .mem0_fi_c_7   (mem0_fi_c_7   ),
                   .mem1_fi_c_7   (mem1_fi_c_7   ),
`endif //EIGHT_CORE_INT
`ifdef SIXTEEN_CORE_INT
	           .mem0_fi_c_8    (mem0_fi_c_8   ),
                   .mem1_fi_c_8    (mem1_fi_c_8   ),
	           .mem0_fi_c_9    (mem0_fi_c_9   ),
                   .mem1_fi_c_9    (mem1_fi_c_9   ),
	           .mem0_fi_c_10   (mem0_fi_c_10   ),
                   .mem1_fi_c_10   (mem1_fi_c_10   ),
	           .mem0_fi_c_11   (mem0_fi_c_11   ),
                   .mem1_fi_c_11   (mem1_fi_c_11   ),
	           .mem0_fi_c_12   (mem0_fi_c_12   ),
                   .mem1_fi_c_12   (mem1_fi_c_12   ),
	           .mem0_fi_c_13   (mem0_fi_c_13   ),
                   .mem1_fi_c_13   (mem1_fi_c_13   ),
	           .mem0_fi_c_14   (mem0_fi_c_14   ),
                   .mem1_fi_c_14   (mem1_fi_c_14   ),
	           .mem0_fi_c_15   (mem0_fi_c_15   ),
                   .mem1_fi_c_15   (mem1_fi_c_15   ),
`endif //SIXTEEN_CORE_INT
`ifdef THIRTYTWO_CORE_INT
	           .mem0_fi_c_16   (mem0_fi_c_16   ),
                   .mem1_fi_c_16   (mem1_fi_c_16   ),
	           .mem0_fi_c_17   (mem0_fi_c_17   ),
                   .mem1_fi_c_17   (mem1_fi_c_17   ),
	           .mem0_fi_c_18   (mem0_fi_c_18   ),
                   .mem1_fi_c_18   (mem1_fi_c_18   ),
	           .mem0_fi_c_19   (mem0_fi_c_19   ),
                   .mem1_fi_c_19   (mem1_fi_c_19   ),
	           .mem0_fi_c_20   (mem0_fi_c_20   ),
                   .mem1_fi_c_20   (mem1_fi_c_20   ),
	           .mem0_fi_c_21   (mem0_fi_c_21   ),
                   .mem1_fi_c_21   (mem1_fi_c_21   ),
	           .mem0_fi_c_22   (mem0_fi_c_22   ),
                   .mem1_fi_c_22   (mem1_fi_c_22   ),
	           .mem0_fi_c_23   (mem0_fi_c_23   ),
                   .mem1_fi_c_23   (mem1_fi_c_23   ),
	           .mem0_fi_c_24   (mem0_fi_c_24   ),
                   .mem1_fi_c_24   (mem1_fi_c_24   ),
	           .mem0_fi_c_25   (mem0_fi_c_25   ),
                   .mem1_fi_c_25   (mem1_fi_c_25   ),
	           .mem0_fi_c_26   (mem0_fi_c_26   ),
                   .mem1_fi_c_26   (mem1_fi_c_26   ),
	           .mem0_fi_c_27   (mem0_fi_c_27   ),
                   .mem1_fi_c_27   (mem1_fi_c_27   ),
	           .mem0_fi_c_28   (mem0_fi_c_28   ),
                   .mem1_fi_c_28   (mem1_fi_c_28   ),
	           .mem0_fi_c_29   (mem0_fi_c_29   ),
                   .mem1_fi_c_29   (mem1_fi_c_29   ),
	           .mem0_fi_c_30   (mem0_fi_c_30   ),
                   .mem1_fi_c_30   (mem1_fi_c_30   ),
	           .mem0_fi_c_31   (mem0_fi_c_31   ),
                   .mem1_fi_c_31   (mem1_fi_c_31   ),
`endif //THIRTYTWO_CORE_INT
`ifdef SIXTYFOUR_CORE_INT
	           .mem0_fi_c_32   (mem0_fi_c_32   ),
                   .mem1_fi_c_32   (mem1_fi_c_32   ),
	           .mem0_fi_c_33   (mem0_fi_c_33   ),
                   .mem1_fi_c_33   (mem1_fi_c_33   ),
	           .mem0_fi_c_34   (mem0_fi_c_34   ),
                   .mem1_fi_c_34   (mem1_fi_c_34   ),
	           .mem0_fi_c_35   (mem0_fi_c_35   ),
                   .mem1_fi_c_35   (mem1_fi_c_35   ),
	           .mem0_fi_c_36   (mem0_fi_c_36   ),
                   .mem1_fi_c_36   (mem1_fi_c_36   ),
	           .mem0_fi_c_37   (mem0_fi_c_37   ),
                   .mem1_fi_c_37   (mem1_fi_c_37   ),
	           .mem0_fi_c_38   (mem0_fi_c_38   ),
                   .mem1_fi_c_38   (mem1_fi_c_38   ),
	           .mem0_fi_c_39   (mem0_fi_c_39   ),
                   .mem1_fi_c_39   (mem1_fi_c_39   ),
	           .mem0_fi_c_40   (mem0_fi_c_40   ),
                   .mem1_fi_c_40   (mem1_fi_c_40   ),
	           .mem0_fi_c_41   (mem0_fi_c_41   ),
                   .mem1_fi_c_41   (mem1_fi_c_41   ),
	           .mem0_fi_c_42   (mem0_fi_c_42   ),
                   .mem1_fi_c_42   (mem1_fi_c_42   ),
	           .mem0_fi_c_43   (mem0_fi_c_43   ),
                   .mem1_fi_c_43   (mem1_fi_c_43   ),
	           .mem0_fi_c_44   (mem0_fi_c_44   ),
                   .mem1_fi_c_44   (mem1_fi_c_44   ),
	           .mem0_fi_c_45   (mem0_fi_c_45   ),
                   .mem1_fi_c_45   (mem1_fi_c_45   ),
	           .mem0_fi_c_46   (mem0_fi_c_46   ),
                   .mem1_fi_c_46   (mem1_fi_c_46   ),
	           .mem0_fi_c_47   (mem0_fi_c_47   ),
                   .mem1_fi_c_47   (mem1_fi_c_47   ),
	           .mem0_fi_c_48   (mem0_fi_c_48   ),
                   .mem1_fi_c_48   (mem1_fi_c_48   ),
	           .mem0_fi_c_49   (mem0_fi_c_49   ),
                   .mem1_fi_c_49   (mem1_fi_c_49   ),
	           .mem0_fi_c_50   (mem0_fi_c_50   ),
                   .mem1_fi_c_50   (mem1_fi_c_50   ),
	           .mem0_fi_c_51   (mem0_fi_c_51   ),
                   .mem1_fi_c_51   (mem1_fi_c_51   ),
	           .mem0_fi_c_52   (mem0_fi_c_52   ),
                   .mem1_fi_c_52   (mem1_fi_c_52   ),
	           .mem0_fi_c_53   (mem0_fi_c_53   ),
                   .mem1_fi_c_53   (mem1_fi_c_53   ),
	           .mem0_fi_c_54   (mem0_fi_c_54   ),
                   .mem1_fi_c_54   (mem1_fi_c_54   ),
	           .mem0_fi_c_55   (mem0_fi_c_55   ),
                   .mem1_fi_c_55   (mem1_fi_c_55   ),
	           .mem0_fi_c_56   (mem0_fi_c_56   ),
                   .mem1_fi_c_56   (mem1_fi_c_56   ),
	           .mem0_fi_c_57   (mem0_fi_c_57   ),
                   .mem1_fi_c_57   (mem1_fi_c_57   ),
	           .mem0_fi_c_58   (mem0_fi_c_58   ),
                   .mem1_fi_c_58   (mem1_fi_c_58   ),
	           .mem0_fi_c_59   (mem0_fi_c_59   ),
                   .mem1_fi_c_59   (mem1_fi_c_59   ),
	           .mem0_fi_c_60   (mem0_fi_c_60   ),
                   .mem1_fi_c_60   (mem1_fi_c_60   ),
	           .mem0_fi_c_61   (mem0_fi_c_61   ),
                   .mem1_fi_c_61   (mem1_fi_c_61   ),
	           .mem0_fi_c_62   (mem0_fi_c_62   ),
                   .mem1_fi_c_62   (mem1_fi_c_62   ),
	           .mem0_fi_c_63   (mem0_fi_c_63   ),
                   .mem1_fi_c_63   (mem1_fi_c_63   ),
`endif //SIXTYFOUR_CORE_INT
`ifdef ONETWENTYEIGHT_CORE_INT
	           .mem0_fi_c_64    (mem0_fi_c_64   ),
                   .mem1_fi_c_64    (mem1_fi_c_64   ),
	           .mem0_fi_c_65    (mem0_fi_c_65   ),
                   .mem1_fi_c_65    (mem1_fi_c_65   ),
	           .mem0_fi_c_66    (mem0_fi_c_66   ),
                   .mem1_fi_c_66    (mem1_fi_c_66   ),
	           .mem0_fi_c_67    (mem0_fi_c_67   ),
                   .mem1_fi_c_67    (mem1_fi_c_67   ),
	           .mem0_fi_c_68    (mem0_fi_c_68   ),
                   .mem1_fi_c_68    (mem1_fi_c_68   ),
	           .mem0_fi_c_69    (mem0_fi_c_69   ),
                   .mem1_fi_c_69    (mem1_fi_c_69   ),
	           .mem0_fi_c_70    (mem0_fi_c_70   ),
                   .mem1_fi_c_70    (mem1_fi_c_70   ),
	           .mem0_fi_c_71    (mem0_fi_c_71   ),
                   .mem1_fi_c_71    (mem1_fi_c_71   ),
	           .mem0_fi_c_72    (mem0_fi_c_72   ),
                   .mem1_fi_c_72    (mem1_fi_c_72   ),
	           .mem0_fi_c_73    (mem0_fi_c_73   ),
                   .mem1_fi_c_73    (mem1_fi_c_73   ),
	           .mem0_fi_c_74    (mem0_fi_c_74   ),
                   .mem1_fi_c_74    (mem1_fi_c_74   ),
	           .mem0_fi_c_75    (mem0_fi_c_75   ),
                   .mem1_fi_c_75    (mem1_fi_c_75   ),
	           .mem0_fi_c_76    (mem0_fi_c_76   ),
                   .mem1_fi_c_76    (mem1_fi_c_76   ),
	           .mem0_fi_c_77    (mem0_fi_c_77   ),
                   .mem1_fi_c_77    (mem1_fi_c_77   ),
	           .mem0_fi_c_78    (mem0_fi_c_78   ),
                   .mem1_fi_c_78    (mem1_fi_c_78   ),
	           .mem0_fi_c_79    (mem0_fi_c_79   ),
                   .mem1_fi_c_79    (mem1_fi_c_79   ),
	           .mem0_fi_c_80    (mem0_fi_c_80   ),
                   .mem1_fi_c_80    (mem1_fi_c_80   ),
	           .mem0_fi_c_81    (mem0_fi_c_81   ),
                   .mem1_fi_c_81    (mem1_fi_c_81   ),
	           .mem0_fi_c_82    (mem0_fi_c_82   ),
                   .mem1_fi_c_82    (mem1_fi_c_82   ),
	           .mem0_fi_c_83    (mem0_fi_c_83   ),
                   .mem1_fi_c_83    (mem1_fi_c_83   ),
	           .mem0_fi_c_84    (mem0_fi_c_84   ),
                   .mem1_fi_c_84    (mem1_fi_c_84   ),
	           .mem0_fi_c_85    (mem0_fi_c_85   ),
                   .mem1_fi_c_85    (mem1_fi_c_85   ),
	           .mem0_fi_c_86    (mem0_fi_c_86   ),
                   .mem1_fi_c_86    (mem1_fi_c_86   ),
	           .mem0_fi_c_87    (mem0_fi_c_87   ),
                   .mem1_fi_c_87    (mem1_fi_c_87   ),
	           .mem0_fi_c_88    (mem0_fi_c_88   ),
                   .mem1_fi_c_88    (mem1_fi_c_88   ),
	           .mem0_fi_c_89    (mem0_fi_c_89   ),
                   .mem1_fi_c_89    (mem1_fi_c_89   ),
	           .mem0_fi_c_90    (mem0_fi_c_90   ),
                   .mem1_fi_c_90    (mem1_fi_c_90   ),
	           .mem0_fi_c_91    (mem0_fi_c_91   ),
                   .mem1_fi_c_91    (mem1_fi_c_91   ),
	           .mem0_fi_c_92    (mem0_fi_c_92   ),
                   .mem1_fi_c_92    (mem1_fi_c_92   ),
	           .mem0_fi_c_93    (mem0_fi_c_93   ),
                   .mem1_fi_c_93    (mem1_fi_c_93   ),
	           .mem0_fi_c_94    (mem0_fi_c_94   ),
                   .mem1_fi_c_94    (mem1_fi_c_94   ),
	           .mem0_fi_c_95    (mem0_fi_c_95   ),
                   .mem1_fi_c_95    (mem1_fi_c_95   ),
	           .mem0_fi_c_96    (mem0_fi_c_96   ),
                   .mem1_fi_c_96    (mem1_fi_c_96   ),
	           .mem0_fi_c_97    (mem0_fi_c_97   ),
                   .mem1_fi_c_97    (mem1_fi_c_97   ),
	           .mem0_fi_c_98    (mem0_fi_c_98   ),
                   .mem1_fi_c_98    (mem1_fi_c_98   ),
	           .mem0_fi_c_99    (mem0_fi_c_99   ),
                   .mem1_fi_c_99    (mem1_fi_c_99   ),
	           .mem0_fi_c_100   (mem0_fi_c_100   ),
                   .mem1_fi_c_100   (mem1_fi_c_100   ),
	           .mem0_fi_c_101   (mem0_fi_c_101   ),
                   .mem1_fi_c_101   (mem1_fi_c_101   ),
	           .mem0_fi_c_102   (mem0_fi_c_102   ),
                   .mem1_fi_c_102   (mem1_fi_c_102   ),
	           .mem0_fi_c_103   (mem0_fi_c_103   ),
                   .mem1_fi_c_103   (mem1_fi_c_103   ),
	           .mem0_fi_c_104   (mem0_fi_c_104   ),
                   .mem1_fi_c_104   (mem1_fi_c_104   ),
	           .mem0_fi_c_105   (mem0_fi_c_105   ),
                   .mem1_fi_c_105   (mem1_fi_c_105   ),
	           .mem0_fi_c_106   (mem0_fi_c_106   ),
                   .mem1_fi_c_106   (mem1_fi_c_106   ),
	           .mem0_fi_c_107   (mem0_fi_c_107   ),
                   .mem1_fi_c_107   (mem1_fi_c_107   ),
	           .mem0_fi_c_108   (mem0_fi_c_108   ),
                   .mem1_fi_c_108   (mem1_fi_c_108   ),
	           .mem0_fi_c_109   (mem0_fi_c_109   ),
                   .mem1_fi_c_109   (mem1_fi_c_109   ),
	           .mem0_fi_c_110   (mem0_fi_c_110   ),
                   .mem1_fi_c_110   (mem1_fi_c_110   ),
	           .mem0_fi_c_111   (mem0_fi_c_111   ),
                   .mem1_fi_c_111   (mem1_fi_c_111   ),
	           .mem0_fi_c_112   (mem0_fi_c_112   ),
                   .mem1_fi_c_112   (mem1_fi_c_112   ),
	           .mem0_fi_c_113   (mem0_fi_c_113   ),
                   .mem1_fi_c_113   (mem1_fi_c_113   ),
	           .mem0_fi_c_114   (mem0_fi_c_114   ),
                   .mem1_fi_c_114   (mem1_fi_c_114   ),
	           .mem0_fi_c_115   (mem0_fi_c_115   ),
                   .mem1_fi_c_115   (mem1_fi_c_115   ),
	           .mem0_fi_c_116   (mem0_fi_c_116   ),
                   .mem1_fi_c_116   (mem1_fi_c_116   ),
	           .mem0_fi_c_117   (mem0_fi_c_117   ),
                   .mem1_fi_c_117   (mem1_fi_c_117   ),
	           .mem0_fi_c_118   (mem0_fi_c_118   ),
                   .mem1_fi_c_118   (mem1_fi_c_118   ),
	           .mem0_fi_c_119   (mem0_fi_c_119   ),
                   .mem1_fi_c_119   (mem1_fi_c_119   ),
	           .mem0_fi_c_120   (mem0_fi_c_120   ),
                   .mem1_fi_c_120   (mem1_fi_c_120   ),
	           .mem0_fi_c_121   (mem0_fi_c_121   ),
                   .mem1_fi_c_121   (mem1_fi_c_121   ),
	           .mem0_fi_c_122   (mem0_fi_c_122   ),
                   .mem1_fi_c_122   (mem1_fi_c_122   ),
	           .mem0_fi_c_123   (mem0_fi_c_123   ),
                   .mem1_fi_c_123   (mem1_fi_c_123   ),
	           .mem0_fi_c_124   (mem0_fi_c_124   ),
                   .mem1_fi_c_124   (mem1_fi_c_124   ),
	           .mem0_fi_c_125   (mem0_fi_c_125   ),
                   .mem1_fi_c_125   (mem1_fi_c_125   ),
	           .mem0_fi_c_126   (mem0_fi_c_126   ),
                   .mem1_fi_c_126   (mem1_fi_c_126   ),
	           .mem0_fi_c_127   (mem0_fi_c_127   ),
                   .mem1_fi_c_127   (mem1_fi_c_127   ),
`endif //ONETWENTYEIGHT_CORE_INT
                   .tsqr_fi      (tsqr_fi      ));

//---------------------------------------------------------------------
//------- BFM
//---------------------------------------------------------------------
wire [31:0] re_1 = dma_mem_doutb[511-0*32:512-1*32];
wire [31:0] im_1 = dma_mem_doutb[511-1*32:512-2*32];

wire [31:0] re_2 = dma_mem_doutb[511-2*32:512-3*32];
wire [31:0] im_2 = dma_mem_doutb[511-3*32:512-4*32];

wire [31:0] re_3 = dma_mem_doutb[511-4*32:512-5*32];
wire [31:0] im_3 = dma_mem_doutb[511-5*32:512-6*32];

wire [31:0] re_4 = dma_mem_doutb[511-6*32:512-7*32];
wire [31:0] im_4 = dma_mem_doutb[511-7*32:512-8*32];

wire [31:0] re_5 = dma_mem_doutb[511-8*32:512-9*32];
wire [31:0] im_5 = dma_mem_doutb[511-9*32:512-10*32];

wire [31:0] re_6 = dma_mem_doutb[511-10*32:512-11*32];
wire [31:0] im_6 = dma_mem_doutb[511-11*32:512-12*32];

wire [31:0] re_7 = dma_mem_doutb[511-12*32:512-13*32];
wire [31:0] im_7 = dma_mem_doutb[511-13*32:512-14*32];

wire [31:0] re_8 = dma_mem_doutb[511-14*32:512-15*32];
wire [31:0] im_8 = dma_mem_doutb[511-15*32:512-16*32];




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
   dma_mem_wea   = `WEA16            ;
`elsif ST_WIDTH_16
   dma_mem_wea   = 64'hffffffffffffffff            ;
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
      dma_mem_ena = 6'b100;
      dma_mem_dina = dmx_ram[i][`MATRIX_WIDTH*(`TILE_NO-0-0)*64-1:`MATRIX_WIDTH*(`TILE_NO-0-1)*64];
      #10
      
      dma_mem_ena = 6'b010;
     dma_mem_dina=dmx_ram[i][`MATRIX_WIDTH*(`TILE_NO-0-1)*64-1:`MATRIX_WIDTH*(`TILE_NO-0-2)*64];
      #10;
      dma_mem_addra = i;
   /*   dma_mem_ena = 6'b100000;
      dma_mem_dina = dmx_ram[i][`MATRIX_WIDTH*(`TILE_NO-6-0)*64-1:`MATRIX_WIDTH*(`TILE_NO-6-1)*64];
      #10
      
      dma_mem_ena = 6'b010000;
     dma_mem_dina=dmx_ram[i][`MATRIX_WIDTH*(`TILE_NO-6-1)*64-1:`MATRIX_WIDTH*(`TILE_NO-6-2)*64];
      #10;*/
      i=i+1;
    end
    dma_mem_ena = 6'b000;
   tsqr_en = 1'b1;
   
   for(i=0; i<`MATRIX_WIDTH;) begin
      dma_mem_addra = i;
      dma_mem_ena = 3'b001;
      dma_mem_dina = dmx_ram[i][`MATRIX_WIDTH*(`TILE_NO-0-0)*64-1:`MATRIX_WIDTH*(`TILE_NO-0-1)*64];
      #10;
      i=i+1;
    end
    
     dma_mem_ena = 3'b000;
    #10
    
    wait(mem0_fi_c_0);
    
     #1
     
     
      #30
      dma_mem_enb = 6'b100;
   for(i=0; i<`MATRIX_WIDTH;) begin
      dma_mem_addrb = i;
     
      #30
  
      i=i+1;
    end
  
    dma_mem_enb = 6'b000;
      
     #10
    for(i=0; i<`MATRIX_WIDTH;) begin
      dma_mem_addra = i;
      dma_mem_ena = 3'b010;
      dma_mem_dina=dmx_ram[i][`MATRIX_WIDTH*(`TILE_NO-0-1)*64-1:`MATRIX_WIDTH*(`TILE_NO-0-2)*64];
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
    for(i=0; i<`MATRIX_WIDTH;) begin
      dma_mem_addra = i;
      dma_mem_ena = 3'b001;
      dma_mem_dina=dmx_ram[i][`MATRIX_WIDTH*(`TILE_NO-0-0)*64-1:`MATRIX_WIDTH*(`TILE_NO-0-1)*64];
      #10;
      i=i+1;
    end

    dma_mem_ena = 3'b000;
    
    
    
    
    
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
      dma_mem_dina=dmx_ram[i][`MATRIX_WIDTH*(`TILE_NO-0-1)*64-1:`MATRIX_WIDTH*(`TILE_NO-0-2)*64];
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
    for(i=0; i<`MATRIX_WIDTH;) begin
      dma_mem_addra = i;
      dma_mem_ena = 3'b001;
      dma_mem_dina=dmx_ram[i][`MATRIX_WIDTH*(`TILE_NO-0-0)*64-1:`MATRIX_WIDTH*(`TILE_NO-0-1)*64];
      #10;
      i=i+1;
    end

    dma_mem_ena = 3'b000;
    
    
    
    
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
    
    for(i=0; i<`MATRIX_WIDTH;) begin
      dma_mem_addra = i;
      dma_mem_ena = 3'b010;
      dma_mem_dina=dmx_ram[i][`MATRIX_WIDTH*(`TILE_NO-0-1)*64-1:`MATRIX_WIDTH*(`TILE_NO-0-2)*64];
      #10;
      i=i+1;
    end
    
  dma_mem_ena = 3'b000;
wait(mem1_fi_c_0);
 
     
      #30
        dma_mem_enb = 3'b100;
   for(i=0; i<`MATRIX_WIDTH;) begin
      dma_mem_addrb = i;
     
      #30
  
      i=i+1;
    end
    dma_mem_enb = 3'b000;
    
    dma_mem_ena = 3'b000;
    


   
   
   wait(tsqr_fi);
   #50;
   dma_mem_enb = 6'b100;
     
      #30
   for(i=0; i<`MATRIX_WIDTH;) begin
      dma_mem_addrb = i;
     
      #30
  
      i=i+1;
    end
    dma_mem_enb = 6'b000000;
   wait(tsqr_fi);
     
  
   #20;
   tsqr_en = 1'b0;
   #50;
   
    dma_mem_enb = 6'b100;
     
   for(i=0; i<`MATRIX_WIDTH;) begin
      dma_mem_addrb = i;
     
      #10
  
      i=i+1;
    end
     #30
    dma_mem_enb = 6'b000;
   
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
integer trl_report; 
integer tri_report; 
integer tri_report_ieee754; 

`ifdef DEBUG
  initial begin
   ref_report=$fopen("../golden/single_core/sc_st16_random_test_16x8_mat/ref_report.log", "w");
   trl_report=$fopen("../golden/single_core/sc_st16_random_test_16x8_mat/trl_report.log", "w");
  end
  `include "d1_d5_comp.sv"
`endif 

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
`ifdef ST16_RANDOM_TEST_16X8
  `ifdef SINGLE_CORE
      tri_report=$fopen("../golden/single_core/sc_st16_random_test_16x8_mat/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/single_core/sc_st16_random_test_16x8_mat/tri_report_ieee754.log", "w");
      //tri_report=$fopen("../golden/single_core/sc_st16_random_test_16x8/tri_report.log", "w");
      //tri_report_ieee754=$fopen("../golden/single_core/sc_st16_random_test_16x8/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Single-core Simulation\n"                    );
      $fwrite(tri_report, "Test case: ST16_RANDOM_TEST_16X8\n"        );
      $fwrite(tri_report, "==========================================\n");
  `endif
`elsif ST16_RANDOM_TEST_24X8
  `ifdef SINGLE_CORE
      tri_report=$fopen("../golden/single_core/sc_st16_random_test_24x8/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/single_core/sc_st16_random_test_24x8/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Single-core Simulation\n"                    );
      $fwrite(tri_report, "Test case: ST16_RANDOM_TEST_24X8\n"        );
      $fwrite(tri_report, "==========================================\n");
  `endif
`elsif ST16_RANDOM_TEST_32X8
  `ifdef SINGLE_CORE
      tri_report=$fopen("../golden/single_core/sc_st16_random_test_32x8/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/single_core/sc_st16_random_test_32x8/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Single-core Simulation\n"                    );
      $fwrite(tri_report, "Test case: ST16_RANDOM_TEST_32X8\n"        );
      $fwrite(tri_report, "==========================================\n");
  `elsif DUAL_CORE
      tri_report=$fopen("../golden/dual_core/dc_st16_random_test_32x8/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/dual_core/dc_st16_random_test_32x8/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Dual-core Simulation\n"                      ); 
      $fwrite(tri_report, "Test case: ST16_RANDOM_TEST_32X8\n"        );
      $fwrite(tri_report, "==========================================\n");
  `endif 
`elsif ST16_RANDOM_TEST_48X8
  `ifdef DUAL_CORE
      tri_report=$fopen("../golden/dual_core/dc_st16_random_test_48x8/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/dual_core/dc_st16_random_test_48x8/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Dual-core Simulation\n"                      );
      $fwrite(tri_report, "Test case: ST16_RANDOM_TEST_48X8\n"        );
      $fwrite(tri_report, "==========================================\n");
  `endif
`elsif ST16_RANDOM_TEST_64X8
  `ifdef DUAL_CORE
      tri_report=$fopen("../golden/dual_core/dc_st16_random_test_64x8/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/dual_core/dc_st16_random_test_64x8/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Dual-core Simulation\n"                      );
      $fwrite(tri_report, "Test case: ST16_RANDOM_TEST_64X8\n"       );
      $fwrite(tri_report, "==========================================\n");
  `elsif QUAD_CORE
      tri_report=$fopen("../golden/quad_core/qc_st16_random_test_64x8/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/quad_core/qc_st16_random_test_64x8/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Quad-core Simulation\n"                      );
      $fwrite(tri_report, "Test case: ST16_RANDOM_TEST_64X8\n"       );
      $fwrite(tri_report, "==========================================\n");
  `endif
`elsif ST16_RANDOM_TEST_96X8
  `ifdef QUAD_CORE
      tri_report=$fopen("../golden/quad_core/qc_st16_random_test_96x8/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/quad_core/qc_st16_random_test_96x8/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Quad-core Simulation\n"                      );
      $fwrite(tri_report, "Test case: ST16_RANDOM_TEST_96X8\n"       );
      $fwrite(tri_report, "==========================================\n");
  `endif
`elsif ST16_RANDOM_TEST_128X8
  `ifdef QUAD_CORE
      tri_report=$fopen("../golden/quad_core/qc_st16_random_test_128x8/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/quad_core/qc_st16_random_test_128x8/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Quad-core Simulation\n"                      );
      $fwrite(tri_report, "Test case: ST16_RANDOM_TEST_128X8\n"       );
      $fwrite(tri_report, "==========================================\n");
  `elsif EIGHT_CORE
      tri_report=$fopen("../golden/eight_core/ec_st16_random_test_128x8/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/eight_core/ec_st16_random_test_128x8/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Quad-core Simulation\n"                      );
      $fwrite(tri_report, "Test case: ST16_RANDOM_TEST_128X8\n"       );
      $fwrite(tri_report, "==========================================\n");
  `endif
`elsif ST16_RANDOM_TEST_192X8
  `ifdef EIGHT_CORE
      tri_report=$fopen("../golden/eight_core/ec_st16_random_test_192x8/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/eight_core/ec_st16_random_test_192x8/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Quad-core Simulation\n"                      );
      $fwrite(tri_report, "Test case: ST16_RANDOM_TEST_192X8\n"       );
      $fwrite(tri_report, "==========================================\n");
  `endif
`elsif ST16_RANDOM_TEST_256X8
  `ifdef EIGHT_CORE
      tri_report=$fopen("../golden/eight_core/ec_st16_random_test_256x8/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/eight_core/ec_st16_random_test_256x8/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Quad-core Simulation\n"                      );
      $fwrite(tri_report, "Test case: ST16_RANDOM_TEST_256X8\n"       );
      $fwrite(tri_report, "==========================================\n");
   `elsif SIXTEEN_CORE
      tri_report=$fopen("../golden/core_16/c16_st16_random_test_256x8/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/core_16/c16_st16_random_test_256x8/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "16-core Simulation\n"                      );
      $fwrite(tri_report, "Test case: ST16_RANDOM_TEST_256X8\n"       );
      $fwrite(tri_report, "==========================================\n");
  `endif
`elsif ST16_RANDOM_TEST_512X8
  `ifdef EIGHT_CORE
      tri_report=$fopen("../golden/eight_core/ec_st16_random_test_512x8/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/eight_core/ec_st16_random_test_512x8/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Quad-core Simulation\n"                      );
      $fwrite(tri_report, "Test case: ST16_RANDOM_TEST_512X8\n"       );
      $fwrite(tri_report, "==========================================\n");
   `elsif SIXTEEN_CORE
      tri_report=$fopen("../golden/core_16/c16_st16_random_test_512x8/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/core_16/c16_st16_random_test_512x8/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "16-core Simulation\n"                      );
      $fwrite(tri_report, "Test case: ST16_RANDOM_TEST_512X8\n"       );
      $fwrite(tri_report, "==========================================\n");
  `endif
`elsif ST16_RANDOM_TEST_1024X8
  `ifdef EIGHT_CORE
      tri_report=$fopen("../golden/eight_core/ec_st16_random_test_1024x8/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/eight_core/ec_st16_random_test_1024x8/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Quad-core Simulation\n"                      );
      $fwrite(tri_report, "Test case: ST16_RANDOM_TEST_1024X8\n"       );
      $fwrite(tri_report, "==========================================\n");
  `elsif SIXTYFOUR_CORE
      tri_report=$fopen("../golden/core_64/c64_st16_random_test_1024x8/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/core_64/c64_st16_random_test_1024x8/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "64-core Simulation\n"                      );
      $fwrite(tri_report, "Test case: ST16_RANDOM_TEST_128X8\n"       );
      $fwrite(tri_report, "==========================================\n");
  `endif
`elsif ST16_RANDOM_TEST_1536X8
  `ifdef EIGHT_CORE
      tri_report=$fopen("../golden/eight_core/ec_st16_random_test_1536x8/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/eight_core/ec_st16_random_test_1536x8/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Quad-core Simulation\n"                      );
      $fwrite(tri_report, "Test case: ST16_RANDOM_TEST_1536X8\n"       );
      $fwrite(tri_report, "==========================================\n");
  `endif
`elsif ST16_RANDOM_TEST_2048X8
  `ifdef EIGHT_CORE
      tri_report=$fopen("../golden/eight_core/ec_st16_random_test_2048x8/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/eight_core/ec_st16_random_test_2048x8/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "Quad-core Simulation\n"                      );
      $fwrite(tri_report, "Test case: ST16_RANDOM_TEST_2048X8\n"       );
      $fwrite(tri_report, "==========================================\n");
  `endif
`elsif ST16_RANDOM_TEST_2048X8
  `ifdef ONETWENTYEIGHT_CORE
      tri_report=$fopen("../golden/core_128/c128_st16_random_test_2048x8/tri_report.log", "w");
      tri_report_ieee754=$fopen("../golden/core_128/c128_st16_random_test_2048x8/tri_report_ieee754.log", "w");
      $fwrite(tri_report, "==========================================\n");
      $fwrite(tri_report, "128-core Simulation\n"                      );
      $fwrite(tri_report, "Test case: ST16_RANDOM_TEST_2048X8\n"       );
      $fwrite(tri_report, "==========================================\n");
  `endif
`endif

      // ********************************
      // ---------- write report --------
      // ********************************
   /*   for(col_index=0; col_index<`MATRIX_WIDTH;) begin
        golden_column=tri_ram[col_index];
        dut_column   =u_tsqr_mc.hh_core.simple_dual_2.ram[col_index];
        `include "error_percent_abs_cal_tri.sv"
        `include "comp_abs_tri.sv"
        `include "comp_tri_ieee754.sv"
        col_index=col_index+1;
      end
      */

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
