module full_subber_12(
  input  [4:0] io_in_a,
  input  [4:0] io_in_b,
  output [4:0] io_out_s,
  output       io_out_c
);
  wire [5:0] _result_T = io_in_a - io_in_b; // @[BinaryDesigns.scala 74:23]
  wire [6:0] _result_T_2 = _result_T - 6'h0; // @[BinaryDesigns.scala 74:34]
  wire [5:0] result = _result_T_2[5:0]; // @[BinaryDesigns.scala 73:22 74:12]
  assign io_out_s = result[4:0]; // @[BinaryDesigns.scala 75:23]
  assign io_out_c = result[5]; // @[BinaryDesigns.scala 76:23]
endmodule
module full_adder_12(
  input  [10:0] io_in_a,
  input  [10:0] io_in_b,
  output [10:0] io_out_s,
  output        io_out_c
);
  wire [11:0] _result_T = io_in_a + io_in_b; // @[BinaryDesigns.scala 59:23]
  wire [12:0] _result_T_1 = {{1'd0}, _result_T}; // @[BinaryDesigns.scala 59:34]
  wire [11:0] result = _result_T_1[11:0]; // @[BinaryDesigns.scala 58:22 59:12]
  assign io_out_s = result[10:0]; // @[BinaryDesigns.scala 60:23]
  assign io_out_c = result[11]; // @[BinaryDesigns.scala 61:23]
endmodule
module FP_adder_13ccs_12(
  input         clock,
  input         reset,
  input         io_in_en,
  input  [15:0] io_in_a,
  input  [15:0] io_in_b,
  output [15:0] io_out_s
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_85;
  reg [31:0] _RAND_86;
  reg [31:0] _RAND_87;
  reg [31:0] _RAND_88;
  reg [31:0] _RAND_89;
  reg [31:0] _RAND_90;
  reg [31:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [31:0] _RAND_93;
  reg [31:0] _RAND_94;
  reg [31:0] _RAND_95;
  reg [31:0] _RAND_96;
  reg [31:0] _RAND_97;
  reg [31:0] _RAND_98;
  reg [31:0] _RAND_99;
  reg [31:0] _RAND_100;
  reg [31:0] _RAND_101;
  reg [31:0] _RAND_102;
  reg [31:0] _RAND_103;
  reg [31:0] _RAND_104;
  reg [31:0] _RAND_105;
  reg [31:0] _RAND_106;
  reg [31:0] _RAND_107;
  reg [31:0] _RAND_108;
  reg [31:0] _RAND_109;
  reg [31:0] _RAND_110;
  reg [31:0] _RAND_111;
  reg [31:0] _RAND_112;
  reg [31:0] _RAND_113;
  reg [31:0] _RAND_114;
  reg [31:0] _RAND_115;
  reg [31:0] _RAND_116;
  reg [31:0] _RAND_117;
  reg [31:0] _RAND_118;
  reg [31:0] _RAND_119;
  reg [31:0] _RAND_120;
  reg [31:0] _RAND_121;
  reg [31:0] _RAND_122;
  reg [31:0] _RAND_123;
  reg [31:0] _RAND_124;
  reg [31:0] _RAND_125;
  reg [31:0] _RAND_126;
  reg [31:0] _RAND_127;
  reg [31:0] _RAND_128;
  reg [31:0] _RAND_129;
  reg [31:0] _RAND_130;
  reg [31:0] _RAND_131;
  reg [31:0] _RAND_132;
  reg [31:0] _RAND_133;
  reg [31:0] _RAND_134;
  reg [31:0] _RAND_135;
`endif // RANDOMIZE_REG_INIT
  wire [4:0] subber_io_in_a; // @[FloatingPointDesigns.scala 1457:24]
  wire [4:0] subber_io_in_b; // @[FloatingPointDesigns.scala 1457:24]
  wire [4:0] subber_io_out_s; // @[FloatingPointDesigns.scala 1457:24]
  wire  subber_io_out_c; // @[FloatingPointDesigns.scala 1457:24]
  wire [10:0] adder_io_in_a; // @[FloatingPointDesigns.scala 1463:23]
  wire [10:0] adder_io_in_b; // @[FloatingPointDesigns.scala 1463:23]
  wire [10:0] adder_io_out_s; // @[FloatingPointDesigns.scala 1463:23]
  wire  adder_io_out_c; // @[FloatingPointDesigns.scala 1463:23]
  wire [4:0] subber2_io_in_a; // @[FloatingPointDesigns.scala 1524:25]
  wire [4:0] subber2_io_in_b; // @[FloatingPointDesigns.scala 1524:25]
  wire [4:0] subber2_io_out_s; // @[FloatingPointDesigns.scala 1524:25]
  wire  subber2_io_out_c; // @[FloatingPointDesigns.scala 1524:25]
  wire  sign_0 = io_in_a[15]; // @[FloatingPointDesigns.scala 1386:23]
  wire  sign_1 = io_in_b[15]; // @[FloatingPointDesigns.scala 1387:23]
  wire [5:0] _T_2 = 6'h20 - 6'h2; // @[FloatingPointDesigns.scala 1390:64]
  wire [5:0] _GEN_167 = {{1'd0}, io_in_a[14:10]}; // @[FloatingPointDesigns.scala 1390:36]
  wire [4:0] _GEN_0 = io_in_a[14:10] < 5'h1 ? 5'h1 : io_in_a[14:10]; // @[FloatingPointDesigns.scala 1392:46 1393:14 1395:14]
  wire [5:0] _GEN_1 = _GEN_167 > _T_2 ? _T_2 : {{1'd0}, _GEN_0}; // @[FloatingPointDesigns.scala 1390:71 1391:14]
  wire [5:0] _GEN_168 = {{1'd0}, io_in_b[14:10]}; // @[FloatingPointDesigns.scala 1397:36]
  wire [4:0] _GEN_2 = io_in_b[14:10] < 5'h1 ? 5'h1 : io_in_b[14:10]; // @[FloatingPointDesigns.scala 1399:45 1400:14 1402:14]
  wire [5:0] _GEN_3 = _GEN_168 > _T_2 ? _T_2 : {{1'd0}, _GEN_2}; // @[FloatingPointDesigns.scala 1397:71 1398:14]
  wire [9:0] frac_0 = io_in_a[9:0]; // @[FloatingPointDesigns.scala 1407:23]
  wire [9:0] frac_1 = io_in_b[9:0]; // @[FloatingPointDesigns.scala 1408:23]
  wire [10:0] whole_frac_0 = {1'h1,frac_0}; // @[FloatingPointDesigns.scala 1412:26]
  wire [10:0] whole_frac_1 = {1'h1,frac_1}; // @[FloatingPointDesigns.scala 1413:26]
  reg  sign_reg_0_0; // @[FloatingPointDesigns.scala 1415:28]
  reg  sign_reg_0_1; // @[FloatingPointDesigns.scala 1415:28]
  reg  sign_reg_1_0; // @[FloatingPointDesigns.scala 1415:28]
  reg  sign_reg_1_1; // @[FloatingPointDesigns.scala 1415:28]
  reg  sign_reg_2_0; // @[FloatingPointDesigns.scala 1415:28]
  reg  sign_reg_2_1; // @[FloatingPointDesigns.scala 1415:28]
  reg  sign_reg_3_0; // @[FloatingPointDesigns.scala 1415:28]
  reg  sign_reg_3_1; // @[FloatingPointDesigns.scala 1415:28]
  reg  sign_reg_4_0; // @[FloatingPointDesigns.scala 1415:28]
  reg  sign_reg_4_1; // @[FloatingPointDesigns.scala 1415:28]
  reg  sign_reg_5_0; // @[FloatingPointDesigns.scala 1415:28]
  reg  sign_reg_5_1; // @[FloatingPointDesigns.scala 1415:28]
  reg  sign_reg_6_0; // @[FloatingPointDesigns.scala 1415:28]
  reg  sign_reg_6_1; // @[FloatingPointDesigns.scala 1415:28]
  reg  sign_reg_7_0; // @[FloatingPointDesigns.scala 1415:28]
  reg  sign_reg_7_1; // @[FloatingPointDesigns.scala 1415:28]
  reg  sign_reg_8_0; // @[FloatingPointDesigns.scala 1415:28]
  reg  sign_reg_8_1; // @[FloatingPointDesigns.scala 1415:28]
  reg  sign_reg_9_0; // @[FloatingPointDesigns.scala 1415:28]
  reg  sign_reg_9_1; // @[FloatingPointDesigns.scala 1415:28]
  reg  sign_reg_10_0; // @[FloatingPointDesigns.scala 1415:28]
  reg  sign_reg_10_1; // @[FloatingPointDesigns.scala 1415:28]
  reg [4:0] exp_reg_0_0; // @[FloatingPointDesigns.scala 1416:28]
  reg [4:0] exp_reg_0_1; // @[FloatingPointDesigns.scala 1416:28]
  reg [4:0] exp_reg_1_0; // @[FloatingPointDesigns.scala 1416:28]
  reg [4:0] exp_reg_1_1; // @[FloatingPointDesigns.scala 1416:28]
  reg [4:0] exp_reg_2_0; // @[FloatingPointDesigns.scala 1416:28]
  reg [4:0] exp_reg_2_1; // @[FloatingPointDesigns.scala 1416:28]
  reg [9:0] frac_reg_0_0; // @[FloatingPointDesigns.scala 1417:28]
  reg [9:0] frac_reg_0_1; // @[FloatingPointDesigns.scala 1417:28]
  reg [9:0] frac_reg_1_0; // @[FloatingPointDesigns.scala 1417:28]
  reg [9:0] frac_reg_1_1; // @[FloatingPointDesigns.scala 1417:28]
  reg [9:0] frac_reg_2_0; // @[FloatingPointDesigns.scala 1417:28]
  reg [9:0] frac_reg_2_1; // @[FloatingPointDesigns.scala 1417:28]
  reg [10:0] wfrac_reg_0_0; // @[FloatingPointDesigns.scala 1418:28]
  reg [10:0] wfrac_reg_0_1; // @[FloatingPointDesigns.scala 1418:28]
  reg [10:0] wfrac_reg_1_0; // @[FloatingPointDesigns.scala 1418:28]
  reg [10:0] wfrac_reg_1_1; // @[FloatingPointDesigns.scala 1418:28]
  reg [10:0] wfrac_reg_2_0; // @[FloatingPointDesigns.scala 1418:28]
  reg [10:0] wfrac_reg_2_1; // @[FloatingPointDesigns.scala 1418:28]
  reg [4:0] subber_out_s_reg_0; // @[FloatingPointDesigns.scala 1420:35]
  reg [4:0] subber_out_s_reg_1; // @[FloatingPointDesigns.scala 1420:35]
  reg  subber_out_c_reg_0; // @[FloatingPointDesigns.scala 1421:35]
  reg  subber_out_c_reg_1; // @[FloatingPointDesigns.scala 1421:35]
  reg [10:0] wire_temp_add_in_reg_0_0; // @[FloatingPointDesigns.scala 1423:39]
  reg [10:0] wire_temp_add_in_reg_0_1; // @[FloatingPointDesigns.scala 1423:39]
  reg [10:0] wire_temp_add_in_reg_1_0; // @[FloatingPointDesigns.scala 1423:39]
  reg [10:0] wire_temp_add_in_reg_1_1; // @[FloatingPointDesigns.scala 1423:39]
  reg  ref_s_reg_0; // @[FloatingPointDesigns.scala 1425:31]
  reg  ref_s_reg_1; // @[FloatingPointDesigns.scala 1425:31]
  reg  ref_s_reg_2; // @[FloatingPointDesigns.scala 1425:31]
  reg  ref_s_reg_3; // @[FloatingPointDesigns.scala 1425:31]
  reg  ref_s_reg_4; // @[FloatingPointDesigns.scala 1425:31]
  reg  ref_s_reg_5; // @[FloatingPointDesigns.scala 1425:31]
  reg  ref_s_reg_6; // @[FloatingPointDesigns.scala 1425:31]
  reg  ref_s_reg_7; // @[FloatingPointDesigns.scala 1425:31]
  reg [9:0] ref_frac_reg_0; // @[FloatingPointDesigns.scala 1426:31]
  reg [9:0] ref_frac_reg_1; // @[FloatingPointDesigns.scala 1426:31]
  reg [9:0] ref_frac_reg_2; // @[FloatingPointDesigns.scala 1426:31]
  reg [9:0] ref_frac_reg_3; // @[FloatingPointDesigns.scala 1426:31]
  reg [9:0] ref_frac_reg_4; // @[FloatingPointDesigns.scala 1426:31]
  reg [9:0] ref_frac_reg_5; // @[FloatingPointDesigns.scala 1426:31]
  reg [9:0] ref_frac_reg_6; // @[FloatingPointDesigns.scala 1426:31]
  reg [9:0] ref_frac_reg_7; // @[FloatingPointDesigns.scala 1426:31]
  reg [4:0] ref_exp_reg_0; // @[FloatingPointDesigns.scala 1427:31]
  reg [4:0] ref_exp_reg_1; // @[FloatingPointDesigns.scala 1427:31]
  reg [4:0] ref_exp_reg_2; // @[FloatingPointDesigns.scala 1427:31]
  reg [4:0] ref_exp_reg_3; // @[FloatingPointDesigns.scala 1427:31]
  reg [4:0] ref_exp_reg_4; // @[FloatingPointDesigns.scala 1427:31]
  reg [4:0] ref_exp_reg_5; // @[FloatingPointDesigns.scala 1427:31]
  reg [4:0] ref_exp_reg_6; // @[FloatingPointDesigns.scala 1427:31]
  reg [4:0] ref_exp_reg_7; // @[FloatingPointDesigns.scala 1427:31]
  reg [4:0] sub_exp_reg_0; // @[FloatingPointDesigns.scala 1428:31]
  reg [4:0] sub_exp_reg_1; // @[FloatingPointDesigns.scala 1428:31]
  reg [4:0] sub_exp_reg_2; // @[FloatingPointDesigns.scala 1428:31]
  reg [4:0] sub_exp_reg_3; // @[FloatingPointDesigns.scala 1428:31]
  reg [4:0] sub_exp_reg_4; // @[FloatingPointDesigns.scala 1428:31]
  reg [4:0] sub_exp_reg_5; // @[FloatingPointDesigns.scala 1428:31]
  reg [4:0] sub_exp_reg_6; // @[FloatingPointDesigns.scala 1428:31]
  reg [4:0] sub_exp_reg_7; // @[FloatingPointDesigns.scala 1428:31]
  reg [10:0] adder_io_out_s_reg_0; // @[FloatingPointDesigns.scala 1430:37]
  reg [10:0] adder_io_out_s_reg_1; // @[FloatingPointDesigns.scala 1430:37]
  reg [10:0] adder_io_out_s_reg_2; // @[FloatingPointDesigns.scala 1430:37]
  reg  adder_io_out_c_reg_0; // @[FloatingPointDesigns.scala 1431:37]
  reg  new_s_reg_0; // @[FloatingPointDesigns.scala 1433:35]
  reg  new_s_reg_1; // @[FloatingPointDesigns.scala 1433:35]
  reg  new_s_reg_2; // @[FloatingPointDesigns.scala 1433:35]
  reg  new_s_reg_3; // @[FloatingPointDesigns.scala 1433:35]
  reg  new_s_reg_4; // @[FloatingPointDesigns.scala 1433:35]
  reg  new_s_reg_5; // @[FloatingPointDesigns.scala 1433:35]
  reg [9:0] new_out_frac_reg_0; // @[FloatingPointDesigns.scala 1434:35]
  reg [4:0] new_out_exp_reg_0; // @[FloatingPointDesigns.scala 1435:35]
  reg  E_reg_0; // @[FloatingPointDesigns.scala 1436:24]
  reg  E_reg_1; // @[FloatingPointDesigns.scala 1436:24]
  reg  E_reg_2; // @[FloatingPointDesigns.scala 1436:24]
  reg  E_reg_3; // @[FloatingPointDesigns.scala 1436:24]
  reg  E_reg_4; // @[FloatingPointDesigns.scala 1436:24]
  reg  D_reg_0; // @[FloatingPointDesigns.scala 1437:24]
  reg  D_reg_1; // @[FloatingPointDesigns.scala 1437:24]
  reg  D_reg_2; // @[FloatingPointDesigns.scala 1437:24]
  reg  D_reg_3; // @[FloatingPointDesigns.scala 1437:24]
  reg  D_reg_4; // @[FloatingPointDesigns.scala 1437:24]
  reg [10:0] adder_result_reg_0; // @[FloatingPointDesigns.scala 1439:35]
  reg [10:0] adder_result_reg_1; // @[FloatingPointDesigns.scala 1439:35]
  reg [10:0] adder_result_reg_2; // @[FloatingPointDesigns.scala 1439:35]
  reg [4:0] leadingOne_reg_0; // @[FloatingPointDesigns.scala 1441:33]
  reg [4:0] leadingOne_reg_1; // @[FloatingPointDesigns.scala 1441:33]
  reg [15:0] io_in_a_reg_0; // @[FloatingPointDesigns.scala 1443:30]
  reg [15:0] io_in_a_reg_1; // @[FloatingPointDesigns.scala 1443:30]
  reg [15:0] io_in_a_reg_2; // @[FloatingPointDesigns.scala 1443:30]
  reg [15:0] io_in_a_reg_3; // @[FloatingPointDesigns.scala 1443:30]
  reg [15:0] io_in_a_reg_4; // @[FloatingPointDesigns.scala 1443:30]
  reg [15:0] io_in_a_reg_5; // @[FloatingPointDesigns.scala 1443:30]
  reg [15:0] io_in_a_reg_6; // @[FloatingPointDesigns.scala 1443:30]
  reg [15:0] io_in_a_reg_7; // @[FloatingPointDesigns.scala 1443:30]
  reg [15:0] io_in_a_reg_8; // @[FloatingPointDesigns.scala 1443:30]
  reg [15:0] io_in_a_reg_9; // @[FloatingPointDesigns.scala 1443:30]
  reg [15:0] io_in_a_reg_10; // @[FloatingPointDesigns.scala 1443:30]
  reg [15:0] io_in_b_reg_0; // @[FloatingPointDesigns.scala 1444:30]
  reg [15:0] io_in_b_reg_1; // @[FloatingPointDesigns.scala 1444:30]
  reg [15:0] io_in_b_reg_2; // @[FloatingPointDesigns.scala 1444:30]
  reg [15:0] io_in_b_reg_3; // @[FloatingPointDesigns.scala 1444:30]
  reg [15:0] io_in_b_reg_4; // @[FloatingPointDesigns.scala 1444:30]
  reg [15:0] io_in_b_reg_5; // @[FloatingPointDesigns.scala 1444:30]
  reg [15:0] io_in_b_reg_6; // @[FloatingPointDesigns.scala 1444:30]
  reg [15:0] io_in_b_reg_7; // @[FloatingPointDesigns.scala 1444:30]
  reg [15:0] io_in_b_reg_8; // @[FloatingPointDesigns.scala 1444:30]
  reg [15:0] io_in_b_reg_9; // @[FloatingPointDesigns.scala 1444:30]
  reg [15:0] io_in_b_reg_10; // @[FloatingPointDesigns.scala 1444:30]
  reg [4:0] subber2_out_s_reg_0; // @[FloatingPointDesigns.scala 1446:36]
  reg  subber2_out_c_reg_0; // @[FloatingPointDesigns.scala 1447:36]
  reg [4:0] cmpl_subber_out_s_reg_0; // @[FloatingPointDesigns.scala 1468:40]
  wire [4:0] _cmpl_subber_out_s_reg_0_T = ~subber_out_s_reg_0; // @[FloatingPointDesigns.scala 1470:41]
  wire [4:0] _cmpl_subber_out_s_reg_0_T_2 = 5'h1 + _cmpl_subber_out_s_reg_0_T; // @[FloatingPointDesigns.scala 1470:39]
  wire [10:0] _wire_temp_add_in_0_T = wfrac_reg_2_0 >> cmpl_subber_out_s_reg_0; // @[FloatingPointDesigns.scala 1478:46]
  wire [10:0] _wire_temp_add_in_1_T = wfrac_reg_2_1 >> subber_out_s_reg_1; // @[FloatingPointDesigns.scala 1486:46]
  reg [10:0] cmpl_wire_temp_add_in_reg_0_0; // @[FloatingPointDesigns.scala 1489:44]
  reg [10:0] cmpl_wire_temp_add_in_reg_0_1; // @[FloatingPointDesigns.scala 1489:44]
  wire [10:0] _cmpl_wire_temp_add_in_reg_0_0_T = ~wire_temp_add_in_reg_0_0; // @[FloatingPointDesigns.scala 1491:48]
  wire [10:0] _cmpl_wire_temp_add_in_reg_0_0_T_2 = 11'h1 + _cmpl_wire_temp_add_in_reg_0_0_T; // @[FloatingPointDesigns.scala 1491:46]
  wire [10:0] _cmpl_wire_temp_add_in_reg_0_1_T = ~wire_temp_add_in_reg_0_1; // @[FloatingPointDesigns.scala 1492:48]
  wire [10:0] _cmpl_wire_temp_add_in_reg_0_1_T_2 = 11'h1 + _cmpl_wire_temp_add_in_reg_0_1_T; // @[FloatingPointDesigns.scala 1492:46]
  wire [1:0] _adder_io_in_a_T = {sign_reg_4_1,sign_reg_4_0}; // @[FloatingPointDesigns.scala 1495:38]
  wire  _new_s_T = ~adder_io_out_c_reg_0; // @[FloatingPointDesigns.scala 1502:15]
  wire  new_s = ~adder_io_out_c_reg_0 & (sign_reg_5_0 | sign_reg_5_1) | sign_reg_5_0 & sign_reg_5_1; // @[FloatingPointDesigns.scala 1502:75]
  wire  _D_T_1 = sign_reg_5_0 ^ sign_reg_5_1; // @[FloatingPointDesigns.scala 1509:53]
  wire  D = _new_s_T | sign_reg_5_0 ^ sign_reg_5_1; // @[FloatingPointDesigns.scala 1509:35]
  wire  E = _new_s_T & ~adder_io_out_s_reg_0[10] | _new_s_T & ~_D_T_1 | adder_io_out_c_reg_0 & adder_io_out_s_reg_0[10]
     & _D_T_1; // @[FloatingPointDesigns.scala 1511:134]
  reg [10:0] cmpl_adder_io_out_s_reg_0; // @[FloatingPointDesigns.scala 1513:42]
  wire [10:0] _cmpl_adder_io_out_s_reg_0_T = ~adder_io_out_s_reg_1; // @[FloatingPointDesigns.scala 1516:43]
  wire [10:0] _cmpl_adder_io_out_s_reg_0_T_2 = 11'h1 + _cmpl_adder_io_out_s_reg_0_T; // @[FloatingPointDesigns.scala 1516:41]
  wire [1:0] _adder_result_T = {sign_reg_7_1,sign_reg_7_0}; // @[FloatingPointDesigns.scala 1520:53]
  wire [1:0] _leadingOne_T_12 = adder_result_reg_0[2] ? 2'h2 : {{1'd0}, adder_result_reg_0[1]}; // @[FloatingPointDesigns.scala 1523:70]
  wire [1:0] _leadingOne_T_13 = adder_result_reg_0[3] ? 2'h3 : _leadingOne_T_12; // @[FloatingPointDesigns.scala 1523:70]
  wire [2:0] _leadingOne_T_14 = adder_result_reg_0[4] ? 3'h4 : {{1'd0}, _leadingOne_T_13}; // @[FloatingPointDesigns.scala 1523:70]
  wire [2:0] _leadingOne_T_15 = adder_result_reg_0[5] ? 3'h5 : _leadingOne_T_14; // @[FloatingPointDesigns.scala 1523:70]
  wire [2:0] _leadingOne_T_16 = adder_result_reg_0[6] ? 3'h6 : _leadingOne_T_15; // @[FloatingPointDesigns.scala 1523:70]
  wire [2:0] _leadingOne_T_17 = adder_result_reg_0[7] ? 3'h7 : _leadingOne_T_16; // @[FloatingPointDesigns.scala 1523:70]
  wire [3:0] _leadingOne_T_18 = adder_result_reg_0[8] ? 4'h8 : {{1'd0}, _leadingOne_T_17}; // @[FloatingPointDesigns.scala 1523:70]
  wire [3:0] _leadingOne_T_19 = adder_result_reg_0[9] ? 4'h9 : _leadingOne_T_18; // @[FloatingPointDesigns.scala 1523:70]
  wire [3:0] _leadingOne_T_20 = adder_result_reg_0[10] ? 4'ha : _leadingOne_T_19; // @[FloatingPointDesigns.scala 1523:70]
  wire [4:0] leadingOne = _leadingOne_T_20 + 4'h1; // @[FloatingPointDesigns.scala 1523:77]
  wire [4:0] exp_0 = _GEN_1[4:0]; // @[FloatingPointDesigns.scala 1388:19]
  wire [4:0] exp_1 = _GEN_3[4:0]; // @[FloatingPointDesigns.scala 1388:19]
  reg [15:0] reg_out_s; // @[FloatingPointDesigns.scala 1597:28]
  wire [5:0] _GEN_169 = {{1'd0}, ref_exp_reg_7}; // @[FloatingPointDesigns.scala 1614:29]
  wire [10:0] _new_out_frac_reg_0_T_2 = 11'h400 - 11'h1; // @[FloatingPointDesigns.scala 1616:60]
  wire [4:0] _new_out_exp_reg_0_T_3 = ref_exp_reg_7 + 5'h1; // @[FloatingPointDesigns.scala 1618:48]
  wire [5:0] _GEN_142 = _GEN_169 == _T_2 ? _T_2 : {{1'd0}, _new_out_exp_reg_0_T_3}; // @[FloatingPointDesigns.scala 1614:66 1615:30 1618:30]
  wire [10:0] _GEN_143 = _GEN_169 == _T_2 ? _new_out_frac_reg_0_T_2 : {{1'd0}, adder_result_reg_2[10:1]}; // @[FloatingPointDesigns.scala 1614:66 1616:31 1619:31]
  wire [4:0] _new_out_frac_reg_0_T_6 = 5'hb - leadingOne_reg_1; // @[FloatingPointDesigns.scala 1632:94]
  wire [40:0] _GEN_5 = {{31'd0}, adder_result_reg_2[9:0]}; // @[FloatingPointDesigns.scala 1632:73]
  wire [40:0] _new_out_frac_reg_0_T_7 = _GEN_5 << _new_out_frac_reg_0_T_6; // @[FloatingPointDesigns.scala 1632:73]
  wire [4:0] _GEN_144 = subber2_out_c_reg_0 ? 5'h1 : subber2_out_s_reg_0; // @[FloatingPointDesigns.scala 1627:46 1628:32 1631:32]
  wire [40:0] _GEN_145 = subber2_out_c_reg_0 ? 41'h0 : _new_out_frac_reg_0_T_7; // @[FloatingPointDesigns.scala 1627:46 1629:33 1632:33]
  wire [4:0] _GEN_146 = leadingOne_reg_1 == 5'h1 & adder_result_reg_2 == 11'h0 & ((sign_reg_10_0 ^ sign_reg_10_1) &
    io_in_a_reg_10[14:0] == io_in_b_reg_10[14:0]) ? 5'h0 : _GEN_144; // @[FloatingPointDesigns.scala 1623:184 1624:30]
  wire [40:0] _GEN_147 = leadingOne_reg_1 == 5'h1 & adder_result_reg_2 == 11'h0 & ((sign_reg_10_0 ^ sign_reg_10_1) &
    io_in_a_reg_10[14:0] == io_in_b_reg_10[14:0]) ? 41'h0 : _GEN_145; // @[FloatingPointDesigns.scala 1623:184 1625:31]
  wire  _GEN_148 = D_reg_4 ? new_s_reg_4 : new_s_reg_5; // @[FloatingPointDesigns.scala 1621:36 1622:22 1433:35]
  wire [4:0] _GEN_149 = D_reg_4 ? _GEN_146 : new_out_exp_reg_0; // @[FloatingPointDesigns.scala 1435:35 1621:36]
  wire [40:0] _GEN_150 = D_reg_4 ? _GEN_147 : {{31'd0}, new_out_frac_reg_0}; // @[FloatingPointDesigns.scala 1434:35 1621:36]
  wire  _GEN_151 = ~D_reg_4 ? new_s_reg_4 : _GEN_148; // @[FloatingPointDesigns.scala 1612:36 1613:22]
  wire [5:0] _GEN_152 = ~D_reg_4 ? _GEN_142 : {{1'd0}, _GEN_149}; // @[FloatingPointDesigns.scala 1612:36]
  wire [40:0] _GEN_153 = ~D_reg_4 ? {{30'd0}, _GEN_143} : _GEN_150; // @[FloatingPointDesigns.scala 1612:36]
  wire  _GEN_154 = E_reg_4 ? new_s_reg_4 : _GEN_151; // @[FloatingPointDesigns.scala 1608:36 1609:22]
  wire [5:0] _GEN_155 = E_reg_4 ? {{1'd0}, ref_exp_reg_7} : _GEN_152; // @[FloatingPointDesigns.scala 1608:36 1610:28]
  wire [40:0] _GEN_156 = E_reg_4 ? {{31'd0}, adder_result_reg_2[9:0]} : _GEN_153; // @[FloatingPointDesigns.scala 1608:36 1611:29]
  wire [40:0] _GEN_158 = sub_exp_reg_7 >= 5'ha ? {{31'd0}, ref_frac_reg_7} : _GEN_156; // @[FloatingPointDesigns.scala 1604:48 1606:29]
  wire [5:0] _GEN_159 = sub_exp_reg_7 >= 5'ha ? {{1'd0}, ref_exp_reg_7} : _GEN_155; // @[FloatingPointDesigns.scala 1604:48 1607:28]
  wire [5:0] _GEN_161 = io_in_a_reg_10[14:0] == 15'h0 & io_in_b_reg_10[14:0] == 15'h0 ? 6'h0 : _GEN_159; // @[FloatingPointDesigns.scala 1600:86 1602:28]
  wire [40:0] _GEN_162 = io_in_a_reg_10[14:0] == 15'h0 & io_in_b_reg_10[14:0] == 15'h0 ? 41'h0 : _GEN_158; // @[FloatingPointDesigns.scala 1600:86 1603:29]
  wire [15:0] _reg_out_s_T_1 = {new_s_reg_5,new_out_exp_reg_0,new_out_frac_reg_0}; // @[FloatingPointDesigns.scala 1636:55]
  wire [5:0] _GEN_164 = io_in_en ? _GEN_161 : {{1'd0}, new_out_exp_reg_0}; // @[FloatingPointDesigns.scala 1599:20 1435:35]
  wire [40:0] _GEN_165 = io_in_en ? _GEN_162 : {{31'd0}, new_out_frac_reg_0}; // @[FloatingPointDesigns.scala 1599:20 1434:35]
  wire [40:0] _GEN_170 = reset ? 41'h0 : _GEN_165; // @[FloatingPointDesigns.scala 1434:{35,35}]
  wire [5:0] _GEN_171 = reset ? 6'h0 : _GEN_164; // @[FloatingPointDesigns.scala 1435:{35,35}]
  full_subber_12 subber ( // @[FloatingPointDesigns.scala 1457:24]
    .io_in_a(subber_io_in_a),
    .io_in_b(subber_io_in_b),
    .io_out_s(subber_io_out_s),
    .io_out_c(subber_io_out_c)
  );
  full_adder_12 adder ( // @[FloatingPointDesigns.scala 1463:23]
    .io_in_a(adder_io_in_a),
    .io_in_b(adder_io_in_b),
    .io_out_s(adder_io_out_s),
    .io_out_c(adder_io_out_c)
  );
  full_subber_12 subber2 ( // @[FloatingPointDesigns.scala 1524:25]
    .io_in_a(subber2_io_in_a),
    .io_in_b(subber2_io_in_b),
    .io_out_s(subber2_io_out_s),
    .io_out_c(subber2_io_out_c)
  );
  assign io_out_s = reg_out_s; // @[FloatingPointDesigns.scala 1598:14]
  assign subber_io_in_a = exp_reg_0_0; // @[FloatingPointDesigns.scala 1458:20]
  assign subber_io_in_b = exp_reg_0_1; // @[FloatingPointDesigns.scala 1459:20]
  assign adder_io_in_a = _adder_io_in_a_T == 2'h1 ? cmpl_wire_temp_add_in_reg_0_0 : wire_temp_add_in_reg_1_0; // @[FloatingPointDesigns.scala 1495:25]
  assign adder_io_in_b = _adder_io_in_a_T == 2'h2 ? cmpl_wire_temp_add_in_reg_0_1 : wire_temp_add_in_reg_1_1; // @[FloatingPointDesigns.scala 1496:25]
  assign subber2_io_in_a = ref_exp_reg_6; // @[FloatingPointDesigns.scala 1525:21]
  assign subber2_io_in_b = 5'hb - leadingOne_reg_0; // @[FloatingPointDesigns.scala 1526:42]
  always @(posedge clock) begin
    if (reset) begin // @[FloatingPointDesigns.scala 1415:28]
      sign_reg_0_0 <= 1'h0; // @[FloatingPointDesigns.scala 1415:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      sign_reg_0_0 <= sign_0; // @[FloatingPointDesigns.scala 1534:19]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1415:28]
      sign_reg_0_1 <= 1'h0; // @[FloatingPointDesigns.scala 1415:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      sign_reg_0_1 <= sign_1; // @[FloatingPointDesigns.scala 1534:19]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1415:28]
      sign_reg_1_0 <= 1'h0; // @[FloatingPointDesigns.scala 1415:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      sign_reg_1_0 <= sign_reg_0_0; // @[FloatingPointDesigns.scala 1567:23]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1415:28]
      sign_reg_1_1 <= 1'h0; // @[FloatingPointDesigns.scala 1415:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      sign_reg_1_1 <= sign_reg_0_1; // @[FloatingPointDesigns.scala 1567:23]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1415:28]
      sign_reg_2_0 <= 1'h0; // @[FloatingPointDesigns.scala 1415:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      sign_reg_2_0 <= sign_reg_1_0; // @[FloatingPointDesigns.scala 1567:23]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1415:28]
      sign_reg_2_1 <= 1'h0; // @[FloatingPointDesigns.scala 1415:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      sign_reg_2_1 <= sign_reg_1_1; // @[FloatingPointDesigns.scala 1567:23]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1415:28]
      sign_reg_3_0 <= 1'h0; // @[FloatingPointDesigns.scala 1415:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      sign_reg_3_0 <= sign_reg_2_0; // @[FloatingPointDesigns.scala 1567:23]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1415:28]
      sign_reg_3_1 <= 1'h0; // @[FloatingPointDesigns.scala 1415:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      sign_reg_3_1 <= sign_reg_2_1; // @[FloatingPointDesigns.scala 1567:23]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1415:28]
      sign_reg_4_0 <= 1'h0; // @[FloatingPointDesigns.scala 1415:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      sign_reg_4_0 <= sign_reg_3_0; // @[FloatingPointDesigns.scala 1567:23]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1415:28]
      sign_reg_4_1 <= 1'h0; // @[FloatingPointDesigns.scala 1415:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      sign_reg_4_1 <= sign_reg_3_1; // @[FloatingPointDesigns.scala 1567:23]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1415:28]
      sign_reg_5_0 <= 1'h0; // @[FloatingPointDesigns.scala 1415:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      sign_reg_5_0 <= sign_reg_4_0; // @[FloatingPointDesigns.scala 1567:23]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1415:28]
      sign_reg_5_1 <= 1'h0; // @[FloatingPointDesigns.scala 1415:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      sign_reg_5_1 <= sign_reg_4_1; // @[FloatingPointDesigns.scala 1567:23]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1415:28]
      sign_reg_6_0 <= 1'h0; // @[FloatingPointDesigns.scala 1415:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      sign_reg_6_0 <= sign_reg_5_0; // @[FloatingPointDesigns.scala 1567:23]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1415:28]
      sign_reg_6_1 <= 1'h0; // @[FloatingPointDesigns.scala 1415:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      sign_reg_6_1 <= sign_reg_5_1; // @[FloatingPointDesigns.scala 1567:23]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1415:28]
      sign_reg_7_0 <= 1'h0; // @[FloatingPointDesigns.scala 1415:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      sign_reg_7_0 <= sign_reg_6_0; // @[FloatingPointDesigns.scala 1567:23]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1415:28]
      sign_reg_7_1 <= 1'h0; // @[FloatingPointDesigns.scala 1415:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      sign_reg_7_1 <= sign_reg_6_1; // @[FloatingPointDesigns.scala 1567:23]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1415:28]
      sign_reg_8_0 <= 1'h0; // @[FloatingPointDesigns.scala 1415:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      sign_reg_8_0 <= sign_reg_7_0; // @[FloatingPointDesigns.scala 1567:23]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1415:28]
      sign_reg_8_1 <= 1'h0; // @[FloatingPointDesigns.scala 1415:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      sign_reg_8_1 <= sign_reg_7_1; // @[FloatingPointDesigns.scala 1567:23]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1415:28]
      sign_reg_9_0 <= 1'h0; // @[FloatingPointDesigns.scala 1415:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      sign_reg_9_0 <= sign_reg_8_0; // @[FloatingPointDesigns.scala 1567:23]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1415:28]
      sign_reg_9_1 <= 1'h0; // @[FloatingPointDesigns.scala 1415:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      sign_reg_9_1 <= sign_reg_8_1; // @[FloatingPointDesigns.scala 1567:23]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1415:28]
      sign_reg_10_0 <= 1'h0; // @[FloatingPointDesigns.scala 1415:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      sign_reg_10_0 <= sign_reg_9_0; // @[FloatingPointDesigns.scala 1567:23]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1415:28]
      sign_reg_10_1 <= 1'h0; // @[FloatingPointDesigns.scala 1415:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      sign_reg_10_1 <= sign_reg_9_1; // @[FloatingPointDesigns.scala 1567:23]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1416:28]
      exp_reg_0_0 <= 5'h0; // @[FloatingPointDesigns.scala 1416:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      exp_reg_0_0 <= exp_0; // @[FloatingPointDesigns.scala 1535:18]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1416:28]
      exp_reg_0_1 <= 5'h0; // @[FloatingPointDesigns.scala 1416:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      exp_reg_0_1 <= exp_1; // @[FloatingPointDesigns.scala 1535:18]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1416:28]
      exp_reg_1_0 <= 5'h0; // @[FloatingPointDesigns.scala 1416:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      exp_reg_1_0 <= exp_reg_0_0; // @[FloatingPointDesigns.scala 1585:22]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1416:28]
      exp_reg_1_1 <= 5'h0; // @[FloatingPointDesigns.scala 1416:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      exp_reg_1_1 <= exp_reg_0_1; // @[FloatingPointDesigns.scala 1585:22]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1416:28]
      exp_reg_2_0 <= 5'h0; // @[FloatingPointDesigns.scala 1416:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      exp_reg_2_0 <= exp_reg_1_0; // @[FloatingPointDesigns.scala 1585:22]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1416:28]
      exp_reg_2_1 <= 5'h0; // @[FloatingPointDesigns.scala 1416:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      exp_reg_2_1 <= exp_reg_1_1; // @[FloatingPointDesigns.scala 1585:22]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1417:28]
      frac_reg_0_0 <= 10'h0; // @[FloatingPointDesigns.scala 1417:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      frac_reg_0_0 <= frac_0; // @[FloatingPointDesigns.scala 1536:19]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1417:28]
      frac_reg_0_1 <= 10'h0; // @[FloatingPointDesigns.scala 1417:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      frac_reg_0_1 <= frac_1; // @[FloatingPointDesigns.scala 1536:19]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1417:28]
      frac_reg_1_0 <= 10'h0; // @[FloatingPointDesigns.scala 1417:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      frac_reg_1_0 <= frac_reg_0_0; // @[FloatingPointDesigns.scala 1586:23]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1417:28]
      frac_reg_1_1 <= 10'h0; // @[FloatingPointDesigns.scala 1417:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      frac_reg_1_1 <= frac_reg_0_1; // @[FloatingPointDesigns.scala 1586:23]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1417:28]
      frac_reg_2_0 <= 10'h0; // @[FloatingPointDesigns.scala 1417:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      frac_reg_2_0 <= frac_reg_1_0; // @[FloatingPointDesigns.scala 1586:23]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1417:28]
      frac_reg_2_1 <= 10'h0; // @[FloatingPointDesigns.scala 1417:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      frac_reg_2_1 <= frac_reg_1_1; // @[FloatingPointDesigns.scala 1586:23]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1418:28]
      wfrac_reg_0_0 <= 11'h0; // @[FloatingPointDesigns.scala 1418:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      wfrac_reg_0_0 <= whole_frac_0; // @[FloatingPointDesigns.scala 1537:20]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1418:28]
      wfrac_reg_0_1 <= 11'h0; // @[FloatingPointDesigns.scala 1418:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      wfrac_reg_0_1 <= whole_frac_1; // @[FloatingPointDesigns.scala 1537:20]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1418:28]
      wfrac_reg_1_0 <= 11'h0; // @[FloatingPointDesigns.scala 1418:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      wfrac_reg_1_0 <= wfrac_reg_0_0; // @[FloatingPointDesigns.scala 1587:24]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1418:28]
      wfrac_reg_1_1 <= 11'h0; // @[FloatingPointDesigns.scala 1418:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      wfrac_reg_1_1 <= wfrac_reg_0_1; // @[FloatingPointDesigns.scala 1587:24]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1418:28]
      wfrac_reg_2_0 <= 11'h0; // @[FloatingPointDesigns.scala 1418:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      wfrac_reg_2_0 <= wfrac_reg_1_0; // @[FloatingPointDesigns.scala 1587:24]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1418:28]
      wfrac_reg_2_1 <= 11'h0; // @[FloatingPointDesigns.scala 1418:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      wfrac_reg_2_1 <= wfrac_reg_1_1; // @[FloatingPointDesigns.scala 1587:24]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1420:35]
      subber_out_s_reg_0 <= 5'h0; // @[FloatingPointDesigns.scala 1420:35]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      subber_out_s_reg_0 <= subber_io_out_s; // @[FloatingPointDesigns.scala 1539:27]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1420:35]
      subber_out_s_reg_1 <= 5'h0; // @[FloatingPointDesigns.scala 1420:35]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      subber_out_s_reg_1 <= subber_out_s_reg_0; // @[FloatingPointDesigns.scala 1590:31]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1421:35]
      subber_out_c_reg_0 <= 1'h0; // @[FloatingPointDesigns.scala 1421:35]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      subber_out_c_reg_0 <= subber_io_out_c; // @[FloatingPointDesigns.scala 1540:27]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1421:35]
      subber_out_c_reg_1 <= 1'h0; // @[FloatingPointDesigns.scala 1421:35]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      subber_out_c_reg_1 <= subber_out_c_reg_0; // @[FloatingPointDesigns.scala 1591:31]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1423:39]
      wire_temp_add_in_reg_0_0 <= 11'h0; // @[FloatingPointDesigns.scala 1423:39]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      if (subber_out_c_reg_1) begin // @[FloatingPointDesigns.scala 1473:39]
        wire_temp_add_in_reg_0_0 <= _wire_temp_add_in_0_T; // @[FloatingPointDesigns.scala 1478:27]
      end else begin
        wire_temp_add_in_reg_0_0 <= wfrac_reg_2_0; // @[FloatingPointDesigns.scala 1485:27]
      end
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1423:39]
      wire_temp_add_in_reg_0_1 <= 11'h0; // @[FloatingPointDesigns.scala 1423:39]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      if (subber_out_c_reg_1) begin // @[FloatingPointDesigns.scala 1473:39]
        wire_temp_add_in_reg_0_1 <= wfrac_reg_2_1; // @[FloatingPointDesigns.scala 1479:27]
      end else begin
        wire_temp_add_in_reg_0_1 <= _wire_temp_add_in_1_T; // @[FloatingPointDesigns.scala 1486:27]
      end
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1423:39]
      wire_temp_add_in_reg_1_0 <= 11'h0; // @[FloatingPointDesigns.scala 1423:39]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      wire_temp_add_in_reg_1_0 <= wire_temp_add_in_reg_0_0; // @[FloatingPointDesigns.scala 1593:35]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1423:39]
      wire_temp_add_in_reg_1_1 <= 11'h0; // @[FloatingPointDesigns.scala 1423:39]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      wire_temp_add_in_reg_1_1 <= wire_temp_add_in_reg_0_1; // @[FloatingPointDesigns.scala 1593:35]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1425:31]
      ref_s_reg_0 <= 1'h0; // @[FloatingPointDesigns.scala 1425:31]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      if (subber_out_c_reg_1) begin // @[FloatingPointDesigns.scala 1473:39]
        ref_s_reg_0 <= sign_reg_2_1; // @[FloatingPointDesigns.scala 1476:13]
      end else begin
        ref_s_reg_0 <= sign_reg_2_0; // @[FloatingPointDesigns.scala 1483:13]
      end
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1425:31]
      ref_s_reg_1 <= 1'h0; // @[FloatingPointDesigns.scala 1425:31]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      ref_s_reg_1 <= ref_s_reg_0; // @[FloatingPointDesigns.scala 1572:24]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1425:31]
      ref_s_reg_2 <= 1'h0; // @[FloatingPointDesigns.scala 1425:31]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      ref_s_reg_2 <= ref_s_reg_1; // @[FloatingPointDesigns.scala 1572:24]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1425:31]
      ref_s_reg_3 <= 1'h0; // @[FloatingPointDesigns.scala 1425:31]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      ref_s_reg_3 <= ref_s_reg_2; // @[FloatingPointDesigns.scala 1572:24]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1425:31]
      ref_s_reg_4 <= 1'h0; // @[FloatingPointDesigns.scala 1425:31]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      ref_s_reg_4 <= ref_s_reg_3; // @[FloatingPointDesigns.scala 1572:24]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1425:31]
      ref_s_reg_5 <= 1'h0; // @[FloatingPointDesigns.scala 1425:31]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      ref_s_reg_5 <= ref_s_reg_4; // @[FloatingPointDesigns.scala 1572:24]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1425:31]
      ref_s_reg_6 <= 1'h0; // @[FloatingPointDesigns.scala 1425:31]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      ref_s_reg_6 <= ref_s_reg_5; // @[FloatingPointDesigns.scala 1572:24]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1425:31]
      ref_s_reg_7 <= 1'h0; // @[FloatingPointDesigns.scala 1425:31]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      ref_s_reg_7 <= ref_s_reg_6; // @[FloatingPointDesigns.scala 1572:24]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1426:31]
      ref_frac_reg_0 <= 10'h0; // @[FloatingPointDesigns.scala 1426:31]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      if (subber_out_c_reg_1) begin // @[FloatingPointDesigns.scala 1473:39]
        ref_frac_reg_0 <= frac_reg_2_1; // @[FloatingPointDesigns.scala 1477:16]
      end else begin
        ref_frac_reg_0 <= frac_reg_2_0; // @[FloatingPointDesigns.scala 1484:16]
      end
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1426:31]
      ref_frac_reg_1 <= 10'h0; // @[FloatingPointDesigns.scala 1426:31]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      ref_frac_reg_1 <= ref_frac_reg_0; // @[FloatingPointDesigns.scala 1573:27]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1426:31]
      ref_frac_reg_2 <= 10'h0; // @[FloatingPointDesigns.scala 1426:31]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      ref_frac_reg_2 <= ref_frac_reg_1; // @[FloatingPointDesigns.scala 1573:27]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1426:31]
      ref_frac_reg_3 <= 10'h0; // @[FloatingPointDesigns.scala 1426:31]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      ref_frac_reg_3 <= ref_frac_reg_2; // @[FloatingPointDesigns.scala 1573:27]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1426:31]
      ref_frac_reg_4 <= 10'h0; // @[FloatingPointDesigns.scala 1426:31]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      ref_frac_reg_4 <= ref_frac_reg_3; // @[FloatingPointDesigns.scala 1573:27]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1426:31]
      ref_frac_reg_5 <= 10'h0; // @[FloatingPointDesigns.scala 1426:31]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      ref_frac_reg_5 <= ref_frac_reg_4; // @[FloatingPointDesigns.scala 1573:27]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1426:31]
      ref_frac_reg_6 <= 10'h0; // @[FloatingPointDesigns.scala 1426:31]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      ref_frac_reg_6 <= ref_frac_reg_5; // @[FloatingPointDesigns.scala 1573:27]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1426:31]
      ref_frac_reg_7 <= 10'h0; // @[FloatingPointDesigns.scala 1426:31]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      ref_frac_reg_7 <= ref_frac_reg_6; // @[FloatingPointDesigns.scala 1573:27]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1427:31]
      ref_exp_reg_0 <= 5'h0; // @[FloatingPointDesigns.scala 1427:31]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      if (subber_out_c_reg_1) begin // @[FloatingPointDesigns.scala 1473:39]
        ref_exp_reg_0 <= exp_reg_2_1; // @[FloatingPointDesigns.scala 1474:15]
      end else begin
        ref_exp_reg_0 <= exp_reg_2_0; // @[FloatingPointDesigns.scala 1481:15]
      end
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1427:31]
      ref_exp_reg_1 <= 5'h0; // @[FloatingPointDesigns.scala 1427:31]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      ref_exp_reg_1 <= ref_exp_reg_0; // @[FloatingPointDesigns.scala 1574:26]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1427:31]
      ref_exp_reg_2 <= 5'h0; // @[FloatingPointDesigns.scala 1427:31]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      ref_exp_reg_2 <= ref_exp_reg_1; // @[FloatingPointDesigns.scala 1574:26]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1427:31]
      ref_exp_reg_3 <= 5'h0; // @[FloatingPointDesigns.scala 1427:31]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      ref_exp_reg_3 <= ref_exp_reg_2; // @[FloatingPointDesigns.scala 1574:26]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1427:31]
      ref_exp_reg_4 <= 5'h0; // @[FloatingPointDesigns.scala 1427:31]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      ref_exp_reg_4 <= ref_exp_reg_3; // @[FloatingPointDesigns.scala 1574:26]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1427:31]
      ref_exp_reg_5 <= 5'h0; // @[FloatingPointDesigns.scala 1427:31]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      ref_exp_reg_5 <= ref_exp_reg_4; // @[FloatingPointDesigns.scala 1574:26]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1427:31]
      ref_exp_reg_6 <= 5'h0; // @[FloatingPointDesigns.scala 1427:31]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      ref_exp_reg_6 <= ref_exp_reg_5; // @[FloatingPointDesigns.scala 1574:26]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1427:31]
      ref_exp_reg_7 <= 5'h0; // @[FloatingPointDesigns.scala 1427:31]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      ref_exp_reg_7 <= ref_exp_reg_6; // @[FloatingPointDesigns.scala 1574:26]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1428:31]
      sub_exp_reg_0 <= 5'h0; // @[FloatingPointDesigns.scala 1428:31]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      if (subber_out_c_reg_1) begin // @[FloatingPointDesigns.scala 1473:39]
        sub_exp_reg_0 <= cmpl_subber_out_s_reg_0; // @[FloatingPointDesigns.scala 1475:15]
      end else begin
        sub_exp_reg_0 <= subber_out_s_reg_1; // @[FloatingPointDesigns.scala 1482:15]
      end
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1428:31]
      sub_exp_reg_1 <= 5'h0; // @[FloatingPointDesigns.scala 1428:31]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      sub_exp_reg_1 <= sub_exp_reg_0; // @[FloatingPointDesigns.scala 1575:26]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1428:31]
      sub_exp_reg_2 <= 5'h0; // @[FloatingPointDesigns.scala 1428:31]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      sub_exp_reg_2 <= sub_exp_reg_1; // @[FloatingPointDesigns.scala 1575:26]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1428:31]
      sub_exp_reg_3 <= 5'h0; // @[FloatingPointDesigns.scala 1428:31]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      sub_exp_reg_3 <= sub_exp_reg_2; // @[FloatingPointDesigns.scala 1575:26]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1428:31]
      sub_exp_reg_4 <= 5'h0; // @[FloatingPointDesigns.scala 1428:31]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      sub_exp_reg_4 <= sub_exp_reg_3; // @[FloatingPointDesigns.scala 1575:26]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1428:31]
      sub_exp_reg_5 <= 5'h0; // @[FloatingPointDesigns.scala 1428:31]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      sub_exp_reg_5 <= sub_exp_reg_4; // @[FloatingPointDesigns.scala 1575:26]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1428:31]
      sub_exp_reg_6 <= 5'h0; // @[FloatingPointDesigns.scala 1428:31]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      sub_exp_reg_6 <= sub_exp_reg_5; // @[FloatingPointDesigns.scala 1575:26]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1428:31]
      sub_exp_reg_7 <= 5'h0; // @[FloatingPointDesigns.scala 1428:31]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      sub_exp_reg_7 <= sub_exp_reg_6; // @[FloatingPointDesigns.scala 1575:26]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1430:37]
      adder_io_out_s_reg_0 <= 11'h0; // @[FloatingPointDesigns.scala 1430:37]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      adder_io_out_s_reg_0 <= adder_io_out_s; // @[FloatingPointDesigns.scala 1555:29]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1430:37]
      adder_io_out_s_reg_1 <= 11'h0; // @[FloatingPointDesigns.scala 1430:37]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      adder_io_out_s_reg_1 <= adder_io_out_s_reg_0; // @[FloatingPointDesigns.scala 1584:33]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1430:37]
      adder_io_out_s_reg_2 <= 11'h0; // @[FloatingPointDesigns.scala 1430:37]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      adder_io_out_s_reg_2 <= adder_io_out_s_reg_1; // @[FloatingPointDesigns.scala 1584:33]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1431:37]
      adder_io_out_c_reg_0 <= 1'h0; // @[FloatingPointDesigns.scala 1431:37]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      adder_io_out_c_reg_0 <= adder_io_out_c; // @[FloatingPointDesigns.scala 1556:29]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1433:35]
      new_s_reg_0 <= 1'h0; // @[FloatingPointDesigns.scala 1433:35]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      new_s_reg_0 <= new_s; // @[FloatingPointDesigns.scala 1549:20]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1433:35]
      new_s_reg_1 <= 1'h0; // @[FloatingPointDesigns.scala 1433:35]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      new_s_reg_1 <= new_s_reg_0; // @[FloatingPointDesigns.scala 1580:24]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1433:35]
      new_s_reg_2 <= 1'h0; // @[FloatingPointDesigns.scala 1433:35]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      new_s_reg_2 <= new_s_reg_1; // @[FloatingPointDesigns.scala 1580:24]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1433:35]
      new_s_reg_3 <= 1'h0; // @[FloatingPointDesigns.scala 1433:35]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      new_s_reg_3 <= new_s_reg_2; // @[FloatingPointDesigns.scala 1580:24]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1433:35]
      new_s_reg_4 <= 1'h0; // @[FloatingPointDesigns.scala 1433:35]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      new_s_reg_4 <= new_s_reg_3; // @[FloatingPointDesigns.scala 1580:24]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1433:35]
      new_s_reg_5 <= 1'h0; // @[FloatingPointDesigns.scala 1433:35]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1599:20]
      if (io_in_a_reg_10[14:0] == 15'h0 & io_in_b_reg_10[14:0] == 15'h0) begin // @[FloatingPointDesigns.scala 1600:86]
        new_s_reg_5 <= 1'h0; // @[FloatingPointDesigns.scala 1601:22]
      end else if (sub_exp_reg_7 >= 5'ha) begin // @[FloatingPointDesigns.scala 1604:48]
        new_s_reg_5 <= ref_s_reg_7; // @[FloatingPointDesigns.scala 1605:22]
      end else begin
        new_s_reg_5 <= _GEN_154;
      end
    end
    new_out_frac_reg_0 <= _GEN_170[9:0]; // @[FloatingPointDesigns.scala 1434:{35,35}]
    new_out_exp_reg_0 <= _GEN_171[4:0]; // @[FloatingPointDesigns.scala 1435:{35,35}]
    if (reset) begin // @[FloatingPointDesigns.scala 1436:24]
      E_reg_0 <= 1'h0; // @[FloatingPointDesigns.scala 1436:24]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      E_reg_0 <= E; // @[FloatingPointDesigns.scala 1552:16]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1436:24]
      E_reg_1 <= 1'h0; // @[FloatingPointDesigns.scala 1436:24]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      E_reg_1 <= E_reg_0; // @[FloatingPointDesigns.scala 1578:20]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1436:24]
      E_reg_2 <= 1'h0; // @[FloatingPointDesigns.scala 1436:24]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      E_reg_2 <= E_reg_1; // @[FloatingPointDesigns.scala 1578:20]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1436:24]
      E_reg_3 <= 1'h0; // @[FloatingPointDesigns.scala 1436:24]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      E_reg_3 <= E_reg_2; // @[FloatingPointDesigns.scala 1578:20]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1436:24]
      E_reg_4 <= 1'h0; // @[FloatingPointDesigns.scala 1436:24]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      E_reg_4 <= E_reg_3; // @[FloatingPointDesigns.scala 1578:20]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1437:24]
      D_reg_0 <= 1'h0; // @[FloatingPointDesigns.scala 1437:24]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      D_reg_0 <= D; // @[FloatingPointDesigns.scala 1553:16]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1437:24]
      D_reg_1 <= 1'h0; // @[FloatingPointDesigns.scala 1437:24]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      D_reg_1 <= D_reg_0; // @[FloatingPointDesigns.scala 1579:20]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1437:24]
      D_reg_2 <= 1'h0; // @[FloatingPointDesigns.scala 1437:24]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      D_reg_2 <= D_reg_1; // @[FloatingPointDesigns.scala 1579:20]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1437:24]
      D_reg_3 <= 1'h0; // @[FloatingPointDesigns.scala 1437:24]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      D_reg_3 <= D_reg_2; // @[FloatingPointDesigns.scala 1579:20]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1437:24]
      D_reg_4 <= 1'h0; // @[FloatingPointDesigns.scala 1437:24]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      D_reg_4 <= D_reg_3; // @[FloatingPointDesigns.scala 1579:20]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1439:35]
      adder_result_reg_0 <= 11'h0; // @[FloatingPointDesigns.scala 1439:35]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      if (new_s_reg_1 & ^_adder_result_T) begin // @[FloatingPointDesigns.scala 1520:24]
        adder_result_reg_0 <= cmpl_adder_io_out_s_reg_0;
      end else begin
        adder_result_reg_0 <= adder_io_out_s_reg_2;
      end
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1439:35]
      adder_result_reg_1 <= 11'h0; // @[FloatingPointDesigns.scala 1439:35]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      adder_result_reg_1 <= adder_result_reg_0; // @[FloatingPointDesigns.scala 1583:31]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1439:35]
      adder_result_reg_2 <= 11'h0; // @[FloatingPointDesigns.scala 1439:35]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      adder_result_reg_2 <= adder_result_reg_1; // @[FloatingPointDesigns.scala 1583:31]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1441:33]
      leadingOne_reg_0 <= 5'h0; // @[FloatingPointDesigns.scala 1441:33]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      leadingOne_reg_0 <= leadingOne; // @[FloatingPointDesigns.scala 1560:25]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1441:33]
      leadingOne_reg_1 <= 5'h0; // @[FloatingPointDesigns.scala 1441:33]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      leadingOne_reg_1 <= leadingOne_reg_0; // @[FloatingPointDesigns.scala 1592:29]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1443:30]
      io_in_a_reg_0 <= 16'h0; // @[FloatingPointDesigns.scala 1443:30]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      io_in_a_reg_0 <= io_in_a; // @[FloatingPointDesigns.scala 1531:22]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1443:30]
      io_in_a_reg_1 <= 16'h0; // @[FloatingPointDesigns.scala 1443:30]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      io_in_a_reg_1 <= io_in_a_reg_0; // @[FloatingPointDesigns.scala 1568:26]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1443:30]
      io_in_a_reg_2 <= 16'h0; // @[FloatingPointDesigns.scala 1443:30]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      io_in_a_reg_2 <= io_in_a_reg_1; // @[FloatingPointDesigns.scala 1568:26]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1443:30]
      io_in_a_reg_3 <= 16'h0; // @[FloatingPointDesigns.scala 1443:30]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      io_in_a_reg_3 <= io_in_a_reg_2; // @[FloatingPointDesigns.scala 1568:26]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1443:30]
      io_in_a_reg_4 <= 16'h0; // @[FloatingPointDesigns.scala 1443:30]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      io_in_a_reg_4 <= io_in_a_reg_3; // @[FloatingPointDesigns.scala 1568:26]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1443:30]
      io_in_a_reg_5 <= 16'h0; // @[FloatingPointDesigns.scala 1443:30]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      io_in_a_reg_5 <= io_in_a_reg_4; // @[FloatingPointDesigns.scala 1568:26]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1443:30]
      io_in_a_reg_6 <= 16'h0; // @[FloatingPointDesigns.scala 1443:30]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      io_in_a_reg_6 <= io_in_a_reg_5; // @[FloatingPointDesigns.scala 1568:26]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1443:30]
      io_in_a_reg_7 <= 16'h0; // @[FloatingPointDesigns.scala 1443:30]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      io_in_a_reg_7 <= io_in_a_reg_6; // @[FloatingPointDesigns.scala 1568:26]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1443:30]
      io_in_a_reg_8 <= 16'h0; // @[FloatingPointDesigns.scala 1443:30]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      io_in_a_reg_8 <= io_in_a_reg_7; // @[FloatingPointDesigns.scala 1568:26]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1443:30]
      io_in_a_reg_9 <= 16'h0; // @[FloatingPointDesigns.scala 1443:30]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      io_in_a_reg_9 <= io_in_a_reg_8; // @[FloatingPointDesigns.scala 1568:26]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1443:30]
      io_in_a_reg_10 <= 16'h0; // @[FloatingPointDesigns.scala 1443:30]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      io_in_a_reg_10 <= io_in_a_reg_9; // @[FloatingPointDesigns.scala 1568:26]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1444:30]
      io_in_b_reg_0 <= 16'h0; // @[FloatingPointDesigns.scala 1444:30]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      io_in_b_reg_0 <= io_in_b; // @[FloatingPointDesigns.scala 1532:22]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1444:30]
      io_in_b_reg_1 <= 16'h0; // @[FloatingPointDesigns.scala 1444:30]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      io_in_b_reg_1 <= io_in_b_reg_0; // @[FloatingPointDesigns.scala 1569:26]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1444:30]
      io_in_b_reg_2 <= 16'h0; // @[FloatingPointDesigns.scala 1444:30]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      io_in_b_reg_2 <= io_in_b_reg_1; // @[FloatingPointDesigns.scala 1569:26]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1444:30]
      io_in_b_reg_3 <= 16'h0; // @[FloatingPointDesigns.scala 1444:30]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      io_in_b_reg_3 <= io_in_b_reg_2; // @[FloatingPointDesigns.scala 1569:26]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1444:30]
      io_in_b_reg_4 <= 16'h0; // @[FloatingPointDesigns.scala 1444:30]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      io_in_b_reg_4 <= io_in_b_reg_3; // @[FloatingPointDesigns.scala 1569:26]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1444:30]
      io_in_b_reg_5 <= 16'h0; // @[FloatingPointDesigns.scala 1444:30]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      io_in_b_reg_5 <= io_in_b_reg_4; // @[FloatingPointDesigns.scala 1569:26]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1444:30]
      io_in_b_reg_6 <= 16'h0; // @[FloatingPointDesigns.scala 1444:30]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      io_in_b_reg_6 <= io_in_b_reg_5; // @[FloatingPointDesigns.scala 1569:26]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1444:30]
      io_in_b_reg_7 <= 16'h0; // @[FloatingPointDesigns.scala 1444:30]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      io_in_b_reg_7 <= io_in_b_reg_6; // @[FloatingPointDesigns.scala 1569:26]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1444:30]
      io_in_b_reg_8 <= 16'h0; // @[FloatingPointDesigns.scala 1444:30]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      io_in_b_reg_8 <= io_in_b_reg_7; // @[FloatingPointDesigns.scala 1569:26]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1444:30]
      io_in_b_reg_9 <= 16'h0; // @[FloatingPointDesigns.scala 1444:30]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      io_in_b_reg_9 <= io_in_b_reg_8; // @[FloatingPointDesigns.scala 1569:26]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1444:30]
      io_in_b_reg_10 <= 16'h0; // @[FloatingPointDesigns.scala 1444:30]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      io_in_b_reg_10 <= io_in_b_reg_9; // @[FloatingPointDesigns.scala 1569:26]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1446:36]
      subber2_out_s_reg_0 <= 5'h0; // @[FloatingPointDesigns.scala 1446:36]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      subber2_out_s_reg_0 <= subber2_io_out_s; // @[FloatingPointDesigns.scala 1562:28]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1447:36]
      subber2_out_c_reg_0 <= 1'h0; // @[FloatingPointDesigns.scala 1447:36]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1530:19]
      subber2_out_c_reg_0 <= subber2_io_out_c; // @[FloatingPointDesigns.scala 1563:28]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1468:40]
      cmpl_subber_out_s_reg_0 <= 5'h0; // @[FloatingPointDesigns.scala 1468:40]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1469:19]
      cmpl_subber_out_s_reg_0 <= _cmpl_subber_out_s_reg_0_T_2; // @[FloatingPointDesigns.scala 1470:32]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1489:44]
      cmpl_wire_temp_add_in_reg_0_0 <= 11'h0; // @[FloatingPointDesigns.scala 1489:44]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1490:19]
      cmpl_wire_temp_add_in_reg_0_0 <= _cmpl_wire_temp_add_in_reg_0_0_T_2; // @[FloatingPointDesigns.scala 1491:39]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1489:44]
      cmpl_wire_temp_add_in_reg_0_1 <= 11'h0; // @[FloatingPointDesigns.scala 1489:44]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1490:19]
      cmpl_wire_temp_add_in_reg_0_1 <= _cmpl_wire_temp_add_in_reg_0_1_T_2; // @[FloatingPointDesigns.scala 1492:39]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1513:42]
      cmpl_adder_io_out_s_reg_0 <= 11'h0; // @[FloatingPointDesigns.scala 1513:42]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1515:19]
      cmpl_adder_io_out_s_reg_0 <= _cmpl_adder_io_out_s_reg_0_T_2; // @[FloatingPointDesigns.scala 1516:34]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1597:28]
      reg_out_s <= 16'h0; // @[FloatingPointDesigns.scala 1597:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1599:20]
      reg_out_s <= _reg_out_s_T_1; // @[FloatingPointDesigns.scala 1636:17]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  sign_reg_0_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  sign_reg_0_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  sign_reg_1_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  sign_reg_1_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  sign_reg_2_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  sign_reg_2_1 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  sign_reg_3_0 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  sign_reg_3_1 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  sign_reg_4_0 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  sign_reg_4_1 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  sign_reg_5_0 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  sign_reg_5_1 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  sign_reg_6_0 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  sign_reg_6_1 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  sign_reg_7_0 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  sign_reg_7_1 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  sign_reg_8_0 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  sign_reg_8_1 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  sign_reg_9_0 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  sign_reg_9_1 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  sign_reg_10_0 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  sign_reg_10_1 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  exp_reg_0_0 = _RAND_22[4:0];
  _RAND_23 = {1{`RANDOM}};
  exp_reg_0_1 = _RAND_23[4:0];
  _RAND_24 = {1{`RANDOM}};
  exp_reg_1_0 = _RAND_24[4:0];
  _RAND_25 = {1{`RANDOM}};
  exp_reg_1_1 = _RAND_25[4:0];
  _RAND_26 = {1{`RANDOM}};
  exp_reg_2_0 = _RAND_26[4:0];
  _RAND_27 = {1{`RANDOM}};
  exp_reg_2_1 = _RAND_27[4:0];
  _RAND_28 = {1{`RANDOM}};
  frac_reg_0_0 = _RAND_28[9:0];
  _RAND_29 = {1{`RANDOM}};
  frac_reg_0_1 = _RAND_29[9:0];
  _RAND_30 = {1{`RANDOM}};
  frac_reg_1_0 = _RAND_30[9:0];
  _RAND_31 = {1{`RANDOM}};
  frac_reg_1_1 = _RAND_31[9:0];
  _RAND_32 = {1{`RANDOM}};
  frac_reg_2_0 = _RAND_32[9:0];
  _RAND_33 = {1{`RANDOM}};
  frac_reg_2_1 = _RAND_33[9:0];
  _RAND_34 = {1{`RANDOM}};
  wfrac_reg_0_0 = _RAND_34[10:0];
  _RAND_35 = {1{`RANDOM}};
  wfrac_reg_0_1 = _RAND_35[10:0];
  _RAND_36 = {1{`RANDOM}};
  wfrac_reg_1_0 = _RAND_36[10:0];
  _RAND_37 = {1{`RANDOM}};
  wfrac_reg_1_1 = _RAND_37[10:0];
  _RAND_38 = {1{`RANDOM}};
  wfrac_reg_2_0 = _RAND_38[10:0];
  _RAND_39 = {1{`RANDOM}};
  wfrac_reg_2_1 = _RAND_39[10:0];
  _RAND_40 = {1{`RANDOM}};
  subber_out_s_reg_0 = _RAND_40[4:0];
  _RAND_41 = {1{`RANDOM}};
  subber_out_s_reg_1 = _RAND_41[4:0];
  _RAND_42 = {1{`RANDOM}};
  subber_out_c_reg_0 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  subber_out_c_reg_1 = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  wire_temp_add_in_reg_0_0 = _RAND_44[10:0];
  _RAND_45 = {1{`RANDOM}};
  wire_temp_add_in_reg_0_1 = _RAND_45[10:0];
  _RAND_46 = {1{`RANDOM}};
  wire_temp_add_in_reg_1_0 = _RAND_46[10:0];
  _RAND_47 = {1{`RANDOM}};
  wire_temp_add_in_reg_1_1 = _RAND_47[10:0];
  _RAND_48 = {1{`RANDOM}};
  ref_s_reg_0 = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  ref_s_reg_1 = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  ref_s_reg_2 = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  ref_s_reg_3 = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  ref_s_reg_4 = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  ref_s_reg_5 = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  ref_s_reg_6 = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  ref_s_reg_7 = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  ref_frac_reg_0 = _RAND_56[9:0];
  _RAND_57 = {1{`RANDOM}};
  ref_frac_reg_1 = _RAND_57[9:0];
  _RAND_58 = {1{`RANDOM}};
  ref_frac_reg_2 = _RAND_58[9:0];
  _RAND_59 = {1{`RANDOM}};
  ref_frac_reg_3 = _RAND_59[9:0];
  _RAND_60 = {1{`RANDOM}};
  ref_frac_reg_4 = _RAND_60[9:0];
  _RAND_61 = {1{`RANDOM}};
  ref_frac_reg_5 = _RAND_61[9:0];
  _RAND_62 = {1{`RANDOM}};
  ref_frac_reg_6 = _RAND_62[9:0];
  _RAND_63 = {1{`RANDOM}};
  ref_frac_reg_7 = _RAND_63[9:0];
  _RAND_64 = {1{`RANDOM}};
  ref_exp_reg_0 = _RAND_64[4:0];
  _RAND_65 = {1{`RANDOM}};
  ref_exp_reg_1 = _RAND_65[4:0];
  _RAND_66 = {1{`RANDOM}};
  ref_exp_reg_2 = _RAND_66[4:0];
  _RAND_67 = {1{`RANDOM}};
  ref_exp_reg_3 = _RAND_67[4:0];
  _RAND_68 = {1{`RANDOM}};
  ref_exp_reg_4 = _RAND_68[4:0];
  _RAND_69 = {1{`RANDOM}};
  ref_exp_reg_5 = _RAND_69[4:0];
  _RAND_70 = {1{`RANDOM}};
  ref_exp_reg_6 = _RAND_70[4:0];
  _RAND_71 = {1{`RANDOM}};
  ref_exp_reg_7 = _RAND_71[4:0];
  _RAND_72 = {1{`RANDOM}};
  sub_exp_reg_0 = _RAND_72[4:0];
  _RAND_73 = {1{`RANDOM}};
  sub_exp_reg_1 = _RAND_73[4:0];
  _RAND_74 = {1{`RANDOM}};
  sub_exp_reg_2 = _RAND_74[4:0];
  _RAND_75 = {1{`RANDOM}};
  sub_exp_reg_3 = _RAND_75[4:0];
  _RAND_76 = {1{`RANDOM}};
  sub_exp_reg_4 = _RAND_76[4:0];
  _RAND_77 = {1{`RANDOM}};
  sub_exp_reg_5 = _RAND_77[4:0];
  _RAND_78 = {1{`RANDOM}};
  sub_exp_reg_6 = _RAND_78[4:0];
  _RAND_79 = {1{`RANDOM}};
  sub_exp_reg_7 = _RAND_79[4:0];
  _RAND_80 = {1{`RANDOM}};
  adder_io_out_s_reg_0 = _RAND_80[10:0];
  _RAND_81 = {1{`RANDOM}};
  adder_io_out_s_reg_1 = _RAND_81[10:0];
  _RAND_82 = {1{`RANDOM}};
  adder_io_out_s_reg_2 = _RAND_82[10:0];
  _RAND_83 = {1{`RANDOM}};
  adder_io_out_c_reg_0 = _RAND_83[0:0];
  _RAND_84 = {1{`RANDOM}};
  new_s_reg_0 = _RAND_84[0:0];
  _RAND_85 = {1{`RANDOM}};
  new_s_reg_1 = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  new_s_reg_2 = _RAND_86[0:0];
  _RAND_87 = {1{`RANDOM}};
  new_s_reg_3 = _RAND_87[0:0];
  _RAND_88 = {1{`RANDOM}};
  new_s_reg_4 = _RAND_88[0:0];
  _RAND_89 = {1{`RANDOM}};
  new_s_reg_5 = _RAND_89[0:0];
  _RAND_90 = {1{`RANDOM}};
  new_out_frac_reg_0 = _RAND_90[9:0];
  _RAND_91 = {1{`RANDOM}};
  new_out_exp_reg_0 = _RAND_91[4:0];
  _RAND_92 = {1{`RANDOM}};
  E_reg_0 = _RAND_92[0:0];
  _RAND_93 = {1{`RANDOM}};
  E_reg_1 = _RAND_93[0:0];
  _RAND_94 = {1{`RANDOM}};
  E_reg_2 = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  E_reg_3 = _RAND_95[0:0];
  _RAND_96 = {1{`RANDOM}};
  E_reg_4 = _RAND_96[0:0];
  _RAND_97 = {1{`RANDOM}};
  D_reg_0 = _RAND_97[0:0];
  _RAND_98 = {1{`RANDOM}};
  D_reg_1 = _RAND_98[0:0];
  _RAND_99 = {1{`RANDOM}};
  D_reg_2 = _RAND_99[0:0];
  _RAND_100 = {1{`RANDOM}};
  D_reg_3 = _RAND_100[0:0];
  _RAND_101 = {1{`RANDOM}};
  D_reg_4 = _RAND_101[0:0];
  _RAND_102 = {1{`RANDOM}};
  adder_result_reg_0 = _RAND_102[10:0];
  _RAND_103 = {1{`RANDOM}};
  adder_result_reg_1 = _RAND_103[10:0];
  _RAND_104 = {1{`RANDOM}};
  adder_result_reg_2 = _RAND_104[10:0];
  _RAND_105 = {1{`RANDOM}};
  leadingOne_reg_0 = _RAND_105[4:0];
  _RAND_106 = {1{`RANDOM}};
  leadingOne_reg_1 = _RAND_106[4:0];
  _RAND_107 = {1{`RANDOM}};
  io_in_a_reg_0 = _RAND_107[15:0];
  _RAND_108 = {1{`RANDOM}};
  io_in_a_reg_1 = _RAND_108[15:0];
  _RAND_109 = {1{`RANDOM}};
  io_in_a_reg_2 = _RAND_109[15:0];
  _RAND_110 = {1{`RANDOM}};
  io_in_a_reg_3 = _RAND_110[15:0];
  _RAND_111 = {1{`RANDOM}};
  io_in_a_reg_4 = _RAND_111[15:0];
  _RAND_112 = {1{`RANDOM}};
  io_in_a_reg_5 = _RAND_112[15:0];
  _RAND_113 = {1{`RANDOM}};
  io_in_a_reg_6 = _RAND_113[15:0];
  _RAND_114 = {1{`RANDOM}};
  io_in_a_reg_7 = _RAND_114[15:0];
  _RAND_115 = {1{`RANDOM}};
  io_in_a_reg_8 = _RAND_115[15:0];
  _RAND_116 = {1{`RANDOM}};
  io_in_a_reg_9 = _RAND_116[15:0];
  _RAND_117 = {1{`RANDOM}};
  io_in_a_reg_10 = _RAND_117[15:0];
  _RAND_118 = {1{`RANDOM}};
  io_in_b_reg_0 = _RAND_118[15:0];
  _RAND_119 = {1{`RANDOM}};
  io_in_b_reg_1 = _RAND_119[15:0];
  _RAND_120 = {1{`RANDOM}};
  io_in_b_reg_2 = _RAND_120[15:0];
  _RAND_121 = {1{`RANDOM}};
  io_in_b_reg_3 = _RAND_121[15:0];
  _RAND_122 = {1{`RANDOM}};
  io_in_b_reg_4 = _RAND_122[15:0];
  _RAND_123 = {1{`RANDOM}};
  io_in_b_reg_5 = _RAND_123[15:0];
  _RAND_124 = {1{`RANDOM}};
  io_in_b_reg_6 = _RAND_124[15:0];
  _RAND_125 = {1{`RANDOM}};
  io_in_b_reg_7 = _RAND_125[15:0];
  _RAND_126 = {1{`RANDOM}};
  io_in_b_reg_8 = _RAND_126[15:0];
  _RAND_127 = {1{`RANDOM}};
  io_in_b_reg_9 = _RAND_127[15:0];
  _RAND_128 = {1{`RANDOM}};
  io_in_b_reg_10 = _RAND_128[15:0];
  _RAND_129 = {1{`RANDOM}};
  subber2_out_s_reg_0 = _RAND_129[4:0];
  _RAND_130 = {1{`RANDOM}};
  subber2_out_c_reg_0 = _RAND_130[0:0];
  _RAND_131 = {1{`RANDOM}};
  cmpl_subber_out_s_reg_0 = _RAND_131[4:0];
  _RAND_132 = {1{`RANDOM}};
  cmpl_wire_temp_add_in_reg_0_0 = _RAND_132[10:0];
  _RAND_133 = {1{`RANDOM}};
  cmpl_wire_temp_add_in_reg_0_1 = _RAND_133[10:0];
  _RAND_134 = {1{`RANDOM}};
  cmpl_adder_io_out_s_reg_0 = _RAND_134[10:0];
  _RAND_135 = {1{`RANDOM}};
  reg_out_s = _RAND_135[15:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module FP_subtractor_13ccs_12(
  input         clock,
  input         reset,
  input         io_in_en,
  input  [15:0] io_in_a,
  input  [15:0] io_in_b,
  output [15:0] io_out_s
);
  wire  FP_adder_clock; // @[FloatingPointDesigns.scala 1652:26]
  wire  FP_adder_reset; // @[FloatingPointDesigns.scala 1652:26]
  wire  FP_adder_io_in_en; // @[FloatingPointDesigns.scala 1652:26]
  wire [15:0] FP_adder_io_in_a; // @[FloatingPointDesigns.scala 1652:26]
  wire [15:0] FP_adder_io_in_b; // @[FloatingPointDesigns.scala 1652:26]
  wire [15:0] FP_adder_io_out_s; // @[FloatingPointDesigns.scala 1652:26]
  wire  _adjusted_in_b_T_1 = ~io_in_b[15]; // @[FloatingPointDesigns.scala 1655:23]
  FP_adder_13ccs_12 FP_adder ( // @[FloatingPointDesigns.scala 1652:26]
    .clock(FP_adder_clock),
    .reset(FP_adder_reset),
    .io_in_en(FP_adder_io_in_en),
    .io_in_a(FP_adder_io_in_a),
    .io_in_b(FP_adder_io_in_b),
    .io_out_s(FP_adder_io_out_s)
  );
  assign io_out_s = FP_adder_io_out_s; // @[FloatingPointDesigns.scala 1659:14]
  assign FP_adder_clock = clock;
  assign FP_adder_reset = reset;
  assign FP_adder_io_in_en = io_in_en; // @[FloatingPointDesigns.scala 1656:23]
  assign FP_adder_io_in_a = io_in_a; // @[FloatingPointDesigns.scala 1657:22]
  assign FP_adder_io_in_b = {_adjusted_in_b_T_1,io_in_b[14:0]}; // @[FloatingPointDesigns.scala 1655:41]
endmodule
module multiplier_12(
  input  [10:0] io_in_a,
  input  [10:0] io_in_b,
  output [21:0] io_out_s
);
  assign io_out_s = io_in_a * io_in_b; // @[BinaryDesigns.scala 87:23]
endmodule
module twoscomplement_12(
  input  [4:0] io_in,
  output [4:0] io_out
);
  wire [4:0] _x_T = ~io_in; // @[BinaryDesigns.scala 27:16]
  assign io_out = 5'h1 + _x_T; // @[BinaryDesigns.scala 27:14]
endmodule
module full_adder_12_2(
  input  [4:0] io_in_a,
  input  [4:0] io_in_b,
  output [4:0] io_out_s,
  output       io_out_c
);
  wire [5:0] _result_T = io_in_a + io_in_b; // @[BinaryDesigns.scala 59:23]
  wire [6:0] _result_T_1 = {{1'd0}, _result_T}; // @[BinaryDesigns.scala 59:34]
  wire [5:0] result = _result_T_1[5:0]; // @[BinaryDesigns.scala 58:22 59:12]
  assign io_out_s = result[4:0]; // @[BinaryDesigns.scala 60:23]
  assign io_out_c = result[5]; // @[BinaryDesigns.scala 61:23]
endmodule
module FP_multiplier_10ccs_12(
  input         clock,
  input         reset,
  input         io_in_en,
  input  [15:0] io_in_a,
  input  [15:0] io_in_b,
  output [15:0] io_out_s
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
`endif // RANDOMIZE_REG_INIT
  wire [10:0] multiplier_io_in_a; // @[FloatingPointDesigns.scala 1726:28]
  wire [10:0] multiplier_io_in_b; // @[FloatingPointDesigns.scala 1726:28]
  wire [21:0] multiplier_io_out_s; // @[FloatingPointDesigns.scala 1726:28]
  wire [4:0] subber_io_in_a; // @[FloatingPointDesigns.scala 1733:24]
  wire [4:0] subber_io_in_b; // @[FloatingPointDesigns.scala 1733:24]
  wire [4:0] subber_io_out_s; // @[FloatingPointDesigns.scala 1733:24]
  wire  subber_io_out_c; // @[FloatingPointDesigns.scala 1733:24]
  wire [4:0] complementN_io_in; // @[FloatingPointDesigns.scala 1742:29]
  wire [4:0] complementN_io_out; // @[FloatingPointDesigns.scala 1742:29]
  wire [4:0] adderN_io_in_a; // @[FloatingPointDesigns.scala 1759:24]
  wire [4:0] adderN_io_in_b; // @[FloatingPointDesigns.scala 1759:24]
  wire [4:0] adderN_io_out_s; // @[FloatingPointDesigns.scala 1759:24]
  wire  adderN_io_out_c; // @[FloatingPointDesigns.scala 1759:24]
  wire  s_0 = io_in_a[15]; // @[FloatingPointDesigns.scala 1692:20]
  wire  s_1 = io_in_b[15]; // @[FloatingPointDesigns.scala 1693:20]
  wire [5:0] _T_2 = 6'h20 - 6'h2; // @[FloatingPointDesigns.scala 1697:64]
  wire [5:0] _GEN_63 = {{1'd0}, io_in_a[14:10]}; // @[FloatingPointDesigns.scala 1697:36]
  wire [4:0] _GEN_0 = io_in_a[14:10] < 5'h1 ? 5'h1 : io_in_a[14:10]; // @[FloatingPointDesigns.scala 1699:45 1700:14 1702:14]
  wire [5:0] _GEN_1 = _GEN_63 > _T_2 ? _T_2 : {{1'd0}, _GEN_0}; // @[FloatingPointDesigns.scala 1697:71 1698:14]
  wire [5:0] _GEN_64 = {{1'd0}, io_in_b[14:10]}; // @[FloatingPointDesigns.scala 1704:36]
  wire [4:0] _GEN_2 = io_in_b[14:10] < 5'h1 ? 5'h1 : io_in_b[14:10]; // @[FloatingPointDesigns.scala 1706:45 1707:14 1709:14]
  wire [5:0] _GEN_3 = _GEN_64 > _T_2 ? _T_2 : {{1'd0}, _GEN_2}; // @[FloatingPointDesigns.scala 1704:71 1705:14]
  wire [9:0] frac_0 = io_in_a[9:0]; // @[FloatingPointDesigns.scala 1714:23]
  wire [9:0] frac_1 = io_in_b[9:0]; // @[FloatingPointDesigns.scala 1715:23]
  wire [10:0] new_frac_0 = {1'h1,frac_0}; // @[FloatingPointDesigns.scala 1719:24]
  wire [10:0] new_frac_1 = {1'h1,frac_1}; // @[FloatingPointDesigns.scala 1720:24]
  reg  s_reg_0_0; // @[FloatingPointDesigns.scala 1722:24]
  reg  s_reg_0_1; // @[FloatingPointDesigns.scala 1722:24]
  reg  s_reg_1_0; // @[FloatingPointDesigns.scala 1722:24]
  reg  s_reg_1_1; // @[FloatingPointDesigns.scala 1722:24]
  reg  s_reg_2_0; // @[FloatingPointDesigns.scala 1722:24]
  reg  s_reg_2_1; // @[FloatingPointDesigns.scala 1722:24]
  reg  s_reg_3_0; // @[FloatingPointDesigns.scala 1722:24]
  reg  s_reg_3_1; // @[FloatingPointDesigns.scala 1722:24]
  reg  s_reg_4_0; // @[FloatingPointDesigns.scala 1722:24]
  reg  s_reg_4_1; // @[FloatingPointDesigns.scala 1722:24]
  reg [4:0] exp_reg_0_0; // @[FloatingPointDesigns.scala 1723:26]
  reg [4:0] exp_reg_0_1; // @[FloatingPointDesigns.scala 1723:26]
  reg [4:0] exp_reg_1_0; // @[FloatingPointDesigns.scala 1723:26]
  reg [4:0] exp_reg_1_1; // @[FloatingPointDesigns.scala 1723:26]
  reg [4:0] exp_reg_2_0; // @[FloatingPointDesigns.scala 1723:26]
  reg [4:0] exp_reg_2_1; // @[FloatingPointDesigns.scala 1723:26]
  reg [4:0] exp_reg_3_0; // @[FloatingPointDesigns.scala 1723:26]
  reg [4:0] exp_reg_3_1; // @[FloatingPointDesigns.scala 1723:26]
  reg [4:0] exp_reg_4_0; // @[FloatingPointDesigns.scala 1723:26]
  reg [4:0] exp_reg_4_1; // @[FloatingPointDesigns.scala 1723:26]
  reg [4:0] exp_reg_5_0; // @[FloatingPointDesigns.scala 1723:26]
  reg [4:0] exp_reg_5_1; // @[FloatingPointDesigns.scala 1723:26]
  reg [4:0] exp_reg_6_0; // @[FloatingPointDesigns.scala 1723:26]
  reg [4:0] exp_reg_6_1; // @[FloatingPointDesigns.scala 1723:26]
  reg [4:0] exp_reg_7_0; // @[FloatingPointDesigns.scala 1723:26]
  reg [4:0] exp_reg_7_1; // @[FloatingPointDesigns.scala 1723:26]
  reg [4:0] exp_reg_8_0; // @[FloatingPointDesigns.scala 1723:26]
  reg [4:0] exp_reg_8_1; // @[FloatingPointDesigns.scala 1723:26]
  reg [10:0] new_frac_reg_0_0; // @[FloatingPointDesigns.scala 1724:31]
  reg [10:0] new_frac_reg_0_1; // @[FloatingPointDesigns.scala 1724:31]
  reg [10:0] new_frac_reg_1_0; // @[FloatingPointDesigns.scala 1724:31]
  reg [10:0] new_frac_reg_1_1; // @[FloatingPointDesigns.scala 1724:31]
  reg [21:0] multipplier_out_s_reg_0; // @[FloatingPointDesigns.scala 1730:40]
  reg [21:0] multipplier_out_s_reg_1; // @[FloatingPointDesigns.scala 1730:40]
  reg [21:0] multipplier_out_s_reg_2; // @[FloatingPointDesigns.scala 1730:40]
  reg [21:0] multipplier_out_s_reg_3; // @[FloatingPointDesigns.scala 1730:40]
  reg [21:0] multipplier_out_s_reg_4; // @[FloatingPointDesigns.scala 1730:40]
  reg [21:0] multipplier_out_s_reg_5; // @[FloatingPointDesigns.scala 1730:40]
  reg [4:0] subber_out_s_reg_0; // @[FloatingPointDesigns.scala 1738:35]
  reg [4:0] complementN_out_reg_0; // @[FloatingPointDesigns.scala 1745:38]
  reg [4:0] complementN_out_reg_1; // @[FloatingPointDesigns.scala 1745:38]
  reg [4:0] complementN_out_reg_2; // @[FloatingPointDesigns.scala 1745:38]
  wire  new_s = s_reg_4_0 ^ s_reg_4_1; // @[FloatingPointDesigns.scala 1748:26]
  reg  new_s_reg_0; // @[FloatingPointDesigns.scala 1750:28]
  reg  new_s_reg_1; // @[FloatingPointDesigns.scala 1750:28]
  reg  new_s_reg_2; // @[FloatingPointDesigns.scala 1750:28]
  reg  new_s_reg_3; // @[FloatingPointDesigns.scala 1750:28]
  wire  is_exp1_neg_wire = exp_reg_5_1 < 5'hf; // @[FloatingPointDesigns.scala 1753:40]
  reg  is_exp1_neg_reg_0; // @[FloatingPointDesigns.scala 1755:34]
  reg  is_exp1_neg_reg_1; // @[FloatingPointDesigns.scala 1755:34]
  wire [4:0] _adderN_io_in_a_T_1 = exp_reg_6_0 + 5'h1; // @[FloatingPointDesigns.scala 1763:39]
  reg [4:0] adderN_out_s_reg_0; // @[FloatingPointDesigns.scala 1770:35]
  reg  adderN_out_c_reg_0; // @[FloatingPointDesigns.scala 1771:35]
  reg [4:0] new_exp_reg_0; // @[FloatingPointDesigns.scala 1773:30]
  reg [9:0] new_mant_reg_0; // @[FloatingPointDesigns.scala 1774:31]
  reg [15:0] reg_out_s; // @[FloatingPointDesigns.scala 1776:28]
  wire  _new_exp_reg_0_T_1 = ~adderN_out_c_reg_0; // @[FloatingPointDesigns.scala 1780:55]
  wire [4:0] _new_exp_reg_0_T_2 = ~adderN_out_c_reg_0 ? 5'h1 : adderN_out_s_reg_0; // @[FloatingPointDesigns.scala 1780:54]
  wire  _new_exp_reg_0_T_5 = adderN_out_c_reg_0 | adderN_out_s_reg_0 > 5'h1e; // @[FloatingPointDesigns.scala 1780:142]
  wire [4:0] _new_exp_reg_0_T_6 = adderN_out_c_reg_0 | adderN_out_s_reg_0 > 5'h1e ? 5'h1e : adderN_out_s_reg_0; // @[FloatingPointDesigns.scala 1780:114]
  wire [4:0] _new_exp_reg_0_T_7 = is_exp1_neg_reg_1 ? _new_exp_reg_0_T_2 : _new_exp_reg_0_T_6; // @[FloatingPointDesigns.scala 1780:30]
  wire [9:0] _new_mant_reg_0_T_3 = _new_exp_reg_0_T_1 ? 10'h0 : multipplier_out_s_reg_5[20:11]; // @[FloatingPointDesigns.scala 1781:55]
  wire [9:0] _new_mant_reg_0_T_8 = _new_exp_reg_0_T_5 ? 10'h3ff : multipplier_out_s_reg_5[20:11]; // @[FloatingPointDesigns.scala 1781:160]
  wire [9:0] _new_mant_reg_0_T_13 = _new_exp_reg_0_T_1 ? 10'h0 : multipplier_out_s_reg_5[19:10]; // @[FloatingPointDesigns.scala 1784:55]
  wire [9:0] _new_mant_reg_0_T_18 = _new_exp_reg_0_T_5 ? 10'h3ff : multipplier_out_s_reg_5[19:10]; // @[FloatingPointDesigns.scala 1784:156]
  wire [15:0] _reg_out_s_T_1 = {new_s_reg_3,new_exp_reg_0,new_mant_reg_0}; // @[FloatingPointDesigns.scala 1822:53]
  wire [4:0] exp_0 = _GEN_1[4:0]; // @[FloatingPointDesigns.scala 1696:19]
  wire [4:0] exp_1 = _GEN_3[4:0]; // @[FloatingPointDesigns.scala 1696:19]
  multiplier_12 multiplier ( // @[FloatingPointDesigns.scala 1726:28]
    .io_in_a(multiplier_io_in_a),
    .io_in_b(multiplier_io_in_b),
    .io_out_s(multiplier_io_out_s)
  );
  full_subber_12 subber ( // @[FloatingPointDesigns.scala 1733:24]
    .io_in_a(subber_io_in_a),
    .io_in_b(subber_io_in_b),
    .io_out_s(subber_io_out_s),
    .io_out_c(subber_io_out_c)
  );
  twoscomplement_12 complementN ( // @[FloatingPointDesigns.scala 1742:29]
    .io_in(complementN_io_in),
    .io_out(complementN_io_out)
  );
  full_adder_12_2 adderN ( // @[FloatingPointDesigns.scala 1759:24]
    .io_in_a(adderN_io_in_a),
    .io_in_b(adderN_io_in_b),
    .io_out_s(adderN_io_out_s),
    .io_out_c(adderN_io_out_c)
  );
  assign io_out_s = reg_out_s; // @[FloatingPointDesigns.scala 1825:14]
  assign multiplier_io_in_a = new_frac_reg_1_0; // @[FloatingPointDesigns.scala 1727:24]
  assign multiplier_io_in_b = new_frac_reg_1_1; // @[FloatingPointDesigns.scala 1728:24]
  assign subber_io_in_a = 5'hf; // @[FloatingPointDesigns.scala 1734:20]
  assign subber_io_in_b = exp_reg_2_1; // @[FloatingPointDesigns.scala 1735:20]
  assign complementN_io_in = subber_out_s_reg_0; // @[FloatingPointDesigns.scala 1743:23]
  assign adderN_io_in_a = multipplier_out_s_reg_4[21] ? _adderN_io_in_a_T_1 : exp_reg_6_0; // @[FloatingPointDesigns.scala 1762:70 1763:22 1766:22]
  assign adderN_io_in_b = complementN_out_reg_2; // @[FloatingPointDesigns.scala 1762:70 1764:22 1767:22]
  always @(posedge clock) begin
    if (reset) begin // @[FloatingPointDesigns.scala 1722:24]
      s_reg_0_0 <= 1'h0; // @[FloatingPointDesigns.scala 1722:24]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      s_reg_0_0 <= s_0; // @[FloatingPointDesigns.scala 1787:16]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1722:24]
      s_reg_0_1 <= 1'h0; // @[FloatingPointDesigns.scala 1722:24]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      s_reg_0_1 <= s_1; // @[FloatingPointDesigns.scala 1787:16]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1722:24]
      s_reg_1_0 <= 1'h0; // @[FloatingPointDesigns.scala 1722:24]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      s_reg_1_0 <= s_reg_0_0; // @[FloatingPointDesigns.scala 1804:22]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1722:24]
      s_reg_1_1 <= 1'h0; // @[FloatingPointDesigns.scala 1722:24]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      s_reg_1_1 <= s_reg_0_1; // @[FloatingPointDesigns.scala 1804:22]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1722:24]
      s_reg_2_0 <= 1'h0; // @[FloatingPointDesigns.scala 1722:24]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      s_reg_2_0 <= s_reg_1_0; // @[FloatingPointDesigns.scala 1804:22]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1722:24]
      s_reg_2_1 <= 1'h0; // @[FloatingPointDesigns.scala 1722:24]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      s_reg_2_1 <= s_reg_1_1; // @[FloatingPointDesigns.scala 1804:22]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1722:24]
      s_reg_3_0 <= 1'h0; // @[FloatingPointDesigns.scala 1722:24]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      s_reg_3_0 <= s_reg_2_0; // @[FloatingPointDesigns.scala 1804:22]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1722:24]
      s_reg_3_1 <= 1'h0; // @[FloatingPointDesigns.scala 1722:24]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      s_reg_3_1 <= s_reg_2_1; // @[FloatingPointDesigns.scala 1804:22]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1722:24]
      s_reg_4_0 <= 1'h0; // @[FloatingPointDesigns.scala 1722:24]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      s_reg_4_0 <= s_reg_3_0; // @[FloatingPointDesigns.scala 1804:22]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1722:24]
      s_reg_4_1 <= 1'h0; // @[FloatingPointDesigns.scala 1722:24]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      s_reg_4_1 <= s_reg_3_1; // @[FloatingPointDesigns.scala 1804:22]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1723:26]
      exp_reg_0_0 <= 5'h0; // @[FloatingPointDesigns.scala 1723:26]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      exp_reg_0_0 <= exp_0; // @[FloatingPointDesigns.scala 1788:18]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1723:26]
      exp_reg_0_1 <= 5'h0; // @[FloatingPointDesigns.scala 1723:26]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      exp_reg_0_1 <= exp_1; // @[FloatingPointDesigns.scala 1788:18]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1723:26]
      exp_reg_1_0 <= 5'h0; // @[FloatingPointDesigns.scala 1723:26]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      exp_reg_1_0 <= exp_reg_0_0; // @[FloatingPointDesigns.scala 1800:20]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1723:26]
      exp_reg_1_1 <= 5'h0; // @[FloatingPointDesigns.scala 1723:26]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      exp_reg_1_1 <= exp_reg_0_1; // @[FloatingPointDesigns.scala 1800:20]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1723:26]
      exp_reg_2_0 <= 5'h0; // @[FloatingPointDesigns.scala 1723:26]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      exp_reg_2_0 <= exp_reg_1_0; // @[FloatingPointDesigns.scala 1800:20]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1723:26]
      exp_reg_2_1 <= 5'h0; // @[FloatingPointDesigns.scala 1723:26]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      exp_reg_2_1 <= exp_reg_1_1; // @[FloatingPointDesigns.scala 1800:20]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1723:26]
      exp_reg_3_0 <= 5'h0; // @[FloatingPointDesigns.scala 1723:26]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      exp_reg_3_0 <= exp_reg_2_0; // @[FloatingPointDesigns.scala 1800:20]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1723:26]
      exp_reg_3_1 <= 5'h0; // @[FloatingPointDesigns.scala 1723:26]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      exp_reg_3_1 <= exp_reg_2_1; // @[FloatingPointDesigns.scala 1800:20]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1723:26]
      exp_reg_4_0 <= 5'h0; // @[FloatingPointDesigns.scala 1723:26]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      exp_reg_4_0 <= exp_reg_3_0; // @[FloatingPointDesigns.scala 1800:20]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1723:26]
      exp_reg_4_1 <= 5'h0; // @[FloatingPointDesigns.scala 1723:26]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      exp_reg_4_1 <= exp_reg_3_1; // @[FloatingPointDesigns.scala 1800:20]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1723:26]
      exp_reg_5_0 <= 5'h0; // @[FloatingPointDesigns.scala 1723:26]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      exp_reg_5_0 <= exp_reg_4_0; // @[FloatingPointDesigns.scala 1800:20]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1723:26]
      exp_reg_5_1 <= 5'h0; // @[FloatingPointDesigns.scala 1723:26]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      exp_reg_5_1 <= exp_reg_4_1; // @[FloatingPointDesigns.scala 1800:20]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1723:26]
      exp_reg_6_0 <= 5'h0; // @[FloatingPointDesigns.scala 1723:26]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      exp_reg_6_0 <= exp_reg_5_0; // @[FloatingPointDesigns.scala 1800:20]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1723:26]
      exp_reg_6_1 <= 5'h0; // @[FloatingPointDesigns.scala 1723:26]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      exp_reg_6_1 <= exp_reg_5_1; // @[FloatingPointDesigns.scala 1800:20]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1723:26]
      exp_reg_7_0 <= 5'h0; // @[FloatingPointDesigns.scala 1723:26]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      exp_reg_7_0 <= exp_reg_6_0; // @[FloatingPointDesigns.scala 1800:20]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1723:26]
      exp_reg_7_1 <= 5'h0; // @[FloatingPointDesigns.scala 1723:26]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      exp_reg_7_1 <= exp_reg_6_1; // @[FloatingPointDesigns.scala 1800:20]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1723:26]
      exp_reg_8_0 <= 5'h0; // @[FloatingPointDesigns.scala 1723:26]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      exp_reg_8_0 <= exp_reg_7_0; // @[FloatingPointDesigns.scala 1800:20]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1723:26]
      exp_reg_8_1 <= 5'h0; // @[FloatingPointDesigns.scala 1723:26]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      exp_reg_8_1 <= exp_reg_7_1; // @[FloatingPointDesigns.scala 1800:20]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1724:31]
      new_frac_reg_0_0 <= 11'h0; // @[FloatingPointDesigns.scala 1724:31]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      new_frac_reg_0_0 <= new_frac_0; // @[FloatingPointDesigns.scala 1789:23]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1724:31]
      new_frac_reg_0_1 <= 11'h0; // @[FloatingPointDesigns.scala 1724:31]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      new_frac_reg_0_1 <= new_frac_1; // @[FloatingPointDesigns.scala 1789:23]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1724:31]
      new_frac_reg_1_0 <= 11'h0; // @[FloatingPointDesigns.scala 1724:31]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      new_frac_reg_1_0 <= new_frac_reg_0_0; // @[FloatingPointDesigns.scala 1810:35]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1724:31]
      new_frac_reg_1_1 <= 11'h0; // @[FloatingPointDesigns.scala 1724:31]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      new_frac_reg_1_1 <= new_frac_reg_0_1; // @[FloatingPointDesigns.scala 1810:35]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1730:40]
      multipplier_out_s_reg_0 <= 22'h0; // @[FloatingPointDesigns.scala 1730:40]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      multipplier_out_s_reg_0 <= multiplier_io_out_s; // @[FloatingPointDesigns.scala 1790:32]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1730:40]
      multipplier_out_s_reg_1 <= 22'h0; // @[FloatingPointDesigns.scala 1730:40]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      multipplier_out_s_reg_1 <= multipplier_out_s_reg_0; // @[FloatingPointDesigns.scala 1802:36]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1730:40]
      multipplier_out_s_reg_2 <= 22'h0; // @[FloatingPointDesigns.scala 1730:40]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      multipplier_out_s_reg_2 <= multipplier_out_s_reg_1; // @[FloatingPointDesigns.scala 1802:36]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1730:40]
      multipplier_out_s_reg_3 <= 22'h0; // @[FloatingPointDesigns.scala 1730:40]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      multipplier_out_s_reg_3 <= multipplier_out_s_reg_2; // @[FloatingPointDesigns.scala 1802:36]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1730:40]
      multipplier_out_s_reg_4 <= 22'h0; // @[FloatingPointDesigns.scala 1730:40]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      multipplier_out_s_reg_4 <= multipplier_out_s_reg_3; // @[FloatingPointDesigns.scala 1802:36]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1730:40]
      multipplier_out_s_reg_5 <= 22'h0; // @[FloatingPointDesigns.scala 1730:40]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      multipplier_out_s_reg_5 <= multipplier_out_s_reg_4; // @[FloatingPointDesigns.scala 1802:36]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1738:35]
      subber_out_s_reg_0 <= 5'h0; // @[FloatingPointDesigns.scala 1738:35]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      subber_out_s_reg_0 <= subber_io_out_s; // @[FloatingPointDesigns.scala 1791:27]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1745:38]
      complementN_out_reg_0 <= 5'h0; // @[FloatingPointDesigns.scala 1745:38]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      complementN_out_reg_0 <= complementN_io_out; // @[FloatingPointDesigns.scala 1793:30]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1745:38]
      complementN_out_reg_1 <= 5'h0; // @[FloatingPointDesigns.scala 1745:38]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      complementN_out_reg_1 <= complementN_out_reg_0; // @[FloatingPointDesigns.scala 1808:40]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1745:38]
      complementN_out_reg_2 <= 5'h0; // @[FloatingPointDesigns.scala 1745:38]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      complementN_out_reg_2 <= complementN_out_reg_1; // @[FloatingPointDesigns.scala 1808:40]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1750:28]
      new_s_reg_0 <= 1'h0; // @[FloatingPointDesigns.scala 1750:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      new_s_reg_0 <= new_s; // @[FloatingPointDesigns.scala 1794:20]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1750:28]
      new_s_reg_1 <= 1'h0; // @[FloatingPointDesigns.scala 1750:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      new_s_reg_1 <= new_s_reg_0; // @[FloatingPointDesigns.scala 1806:28]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1750:28]
      new_s_reg_2 <= 1'h0; // @[FloatingPointDesigns.scala 1750:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      new_s_reg_2 <= new_s_reg_1; // @[FloatingPointDesigns.scala 1806:28]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1750:28]
      new_s_reg_3 <= 1'h0; // @[FloatingPointDesigns.scala 1750:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      new_s_reg_3 <= new_s_reg_2; // @[FloatingPointDesigns.scala 1806:28]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1755:34]
      is_exp1_neg_reg_0 <= 1'h0; // @[FloatingPointDesigns.scala 1755:34]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      is_exp1_neg_reg_0 <= is_exp1_neg_wire; // @[FloatingPointDesigns.scala 1795:26]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1755:34]
      is_exp1_neg_reg_1 <= 1'h0; // @[FloatingPointDesigns.scala 1755:34]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      is_exp1_neg_reg_1 <= is_exp1_neg_reg_0; // @[FloatingPointDesigns.scala 1811:38]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1770:35]
      adderN_out_s_reg_0 <= 5'h0; // @[FloatingPointDesigns.scala 1770:35]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      adderN_out_s_reg_0 <= adderN_io_out_s; // @[FloatingPointDesigns.scala 1796:27]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1771:35]
      adderN_out_c_reg_0 <= 1'h0; // @[FloatingPointDesigns.scala 1771:35]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      adderN_out_c_reg_0 <= adderN_io_out_c; // @[FloatingPointDesigns.scala 1797:27]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1773:30]
      new_exp_reg_0 <= 5'h0; // @[FloatingPointDesigns.scala 1773:30]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      if (multipplier_out_s_reg_5[21]) begin // @[FloatingPointDesigns.scala 1779:72]
        new_exp_reg_0 <= _new_exp_reg_0_T_7; // @[FloatingPointDesigns.scala 1780:24]
      end else begin
        new_exp_reg_0 <= _new_exp_reg_0_T_7; // @[FloatingPointDesigns.scala 1783:24]
      end
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1774:31]
      new_mant_reg_0 <= 10'h0; // @[FloatingPointDesigns.scala 1774:31]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      if (multipplier_out_s_reg_5[21]) begin // @[FloatingPointDesigns.scala 1779:72]
        if (is_exp1_neg_reg_1) begin // @[FloatingPointDesigns.scala 1781:31]
          new_mant_reg_0 <= _new_mant_reg_0_T_3;
        end else begin
          new_mant_reg_0 <= _new_mant_reg_0_T_8;
        end
      end else if (is_exp1_neg_reg_1) begin // @[FloatingPointDesigns.scala 1784:31]
        new_mant_reg_0 <= _new_mant_reg_0_T_13;
      end else begin
        new_mant_reg_0 <= _new_mant_reg_0_T_18;
      end
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1776:28]
      reg_out_s <= 16'h0; // @[FloatingPointDesigns.scala 1776:28]
    end else if (io_in_en) begin // @[FloatingPointDesigns.scala 1778:19]
      if (exp_reg_8_0 == 5'h0 | exp_reg_8_1 == 5'h0) begin // @[FloatingPointDesigns.scala 1819:60]
        reg_out_s <= 16'h0; // @[FloatingPointDesigns.scala 1820:19]
      end else begin
        reg_out_s <= _reg_out_s_T_1; // @[FloatingPointDesigns.scala 1822:19]
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  s_reg_0_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  s_reg_0_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  s_reg_1_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  s_reg_1_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  s_reg_2_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  s_reg_2_1 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  s_reg_3_0 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  s_reg_3_1 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  s_reg_4_0 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  s_reg_4_1 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  exp_reg_0_0 = _RAND_10[4:0];
  _RAND_11 = {1{`RANDOM}};
  exp_reg_0_1 = _RAND_11[4:0];
  _RAND_12 = {1{`RANDOM}};
  exp_reg_1_0 = _RAND_12[4:0];
  _RAND_13 = {1{`RANDOM}};
  exp_reg_1_1 = _RAND_13[4:0];
  _RAND_14 = {1{`RANDOM}};
  exp_reg_2_0 = _RAND_14[4:0];
  _RAND_15 = {1{`RANDOM}};
  exp_reg_2_1 = _RAND_15[4:0];
  _RAND_16 = {1{`RANDOM}};
  exp_reg_3_0 = _RAND_16[4:0];
  _RAND_17 = {1{`RANDOM}};
  exp_reg_3_1 = _RAND_17[4:0];
  _RAND_18 = {1{`RANDOM}};
  exp_reg_4_0 = _RAND_18[4:0];
  _RAND_19 = {1{`RANDOM}};
  exp_reg_4_1 = _RAND_19[4:0];
  _RAND_20 = {1{`RANDOM}};
  exp_reg_5_0 = _RAND_20[4:0];
  _RAND_21 = {1{`RANDOM}};
  exp_reg_5_1 = _RAND_21[4:0];
  _RAND_22 = {1{`RANDOM}};
  exp_reg_6_0 = _RAND_22[4:0];
  _RAND_23 = {1{`RANDOM}};
  exp_reg_6_1 = _RAND_23[4:0];
  _RAND_24 = {1{`RANDOM}};
  exp_reg_7_0 = _RAND_24[4:0];
  _RAND_25 = {1{`RANDOM}};
  exp_reg_7_1 = _RAND_25[4:0];
  _RAND_26 = {1{`RANDOM}};
  exp_reg_8_0 = _RAND_26[4:0];
  _RAND_27 = {1{`RANDOM}};
  exp_reg_8_1 = _RAND_27[4:0];
  _RAND_28 = {1{`RANDOM}};
  new_frac_reg_0_0 = _RAND_28[10:0];
  _RAND_29 = {1{`RANDOM}};
  new_frac_reg_0_1 = _RAND_29[10:0];
  _RAND_30 = {1{`RANDOM}};
  new_frac_reg_1_0 = _RAND_30[10:0];
  _RAND_31 = {1{`RANDOM}};
  new_frac_reg_1_1 = _RAND_31[10:0];
  _RAND_32 = {1{`RANDOM}};
  multipplier_out_s_reg_0 = _RAND_32[21:0];
  _RAND_33 = {1{`RANDOM}};
  multipplier_out_s_reg_1 = _RAND_33[21:0];
  _RAND_34 = {1{`RANDOM}};
  multipplier_out_s_reg_2 = _RAND_34[21:0];
  _RAND_35 = {1{`RANDOM}};
  multipplier_out_s_reg_3 = _RAND_35[21:0];
  _RAND_36 = {1{`RANDOM}};
  multipplier_out_s_reg_4 = _RAND_36[21:0];
  _RAND_37 = {1{`RANDOM}};
  multipplier_out_s_reg_5 = _RAND_37[21:0];
  _RAND_38 = {1{`RANDOM}};
  subber_out_s_reg_0 = _RAND_38[4:0];
  _RAND_39 = {1{`RANDOM}};
  complementN_out_reg_0 = _RAND_39[4:0];
  _RAND_40 = {1{`RANDOM}};
  complementN_out_reg_1 = _RAND_40[4:0];
  _RAND_41 = {1{`RANDOM}};
  complementN_out_reg_2 = _RAND_41[4:0];
  _RAND_42 = {1{`RANDOM}};
  new_s_reg_0 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  new_s_reg_1 = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  new_s_reg_2 = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  new_s_reg_3 = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  is_exp1_neg_reg_0 = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  is_exp1_neg_reg_1 = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  adderN_out_s_reg_0 = _RAND_48[4:0];
  _RAND_49 = {1{`RANDOM}};
  adderN_out_c_reg_0 = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  new_exp_reg_0 = _RAND_50[4:0];
  _RAND_51 = {1{`RANDOM}};
  new_mant_reg_0 = _RAND_51[9:0];
  _RAND_52 = {1{`RANDOM}};
  reg_out_s = _RAND_52[15:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module FPComplexMult_v2_12(
  input         clock,
  input         reset,
  input  [15:0] io_in_a_Re,
  input  [15:0] io_in_a_Im,
  input  [15:0] io_in_b_Re,
  input  [15:0] io_in_b_Im,
  output [15:0] io_out_s_Re,
  output [15:0] io_out_s_Im
);
  wire  FP_subtractor_13ccs_12_clock; // @[FPComplex.scala 178:24]
  wire  FP_subtractor_13ccs_12_reset; // @[FPComplex.scala 178:24]
  wire  FP_subtractor_13ccs_12_io_in_en; // @[FPComplex.scala 178:24]
  wire [15:0] FP_subtractor_13ccs_12_io_in_a; // @[FPComplex.scala 178:24]
  wire [15:0] FP_subtractor_13ccs_12_io_in_b; // @[FPComplex.scala 178:24]
  wire [15:0] FP_subtractor_13ccs_12_io_out_s; // @[FPComplex.scala 178:24]
  wire  FP_adder_13ccs_12_clock; // @[FPComplex.scala 179:24]
  wire  FP_adder_13ccs_12_reset; // @[FPComplex.scala 179:24]
  wire  FP_adder_13ccs_12_io_in_en; // @[FPComplex.scala 179:24]
  wire [15:0] FP_adder_13ccs_12_io_in_a; // @[FPComplex.scala 179:24]
  wire [15:0] FP_adder_13ccs_12_io_in_b; // @[FPComplex.scala 179:24]
  wire [15:0] FP_adder_13ccs_12_io_out_s; // @[FPComplex.scala 179:24]
  wire  FP_multiplier_10ccs_12_clock; // @[FPComplex.scala 181:26]
  wire  FP_multiplier_10ccs_12_reset; // @[FPComplex.scala 181:26]
  wire  FP_multiplier_10ccs_12_io_in_en; // @[FPComplex.scala 181:26]
  wire [15:0] FP_multiplier_10ccs_12_io_in_a; // @[FPComplex.scala 181:26]
  wire [15:0] FP_multiplier_10ccs_12_io_in_b; // @[FPComplex.scala 181:26]
  wire [15:0] FP_multiplier_10ccs_12_io_out_s; // @[FPComplex.scala 181:26]
  wire  FP_multiplier_10ccs_12_1_clock; // @[FPComplex.scala 181:26]
  wire  FP_multiplier_10ccs_12_1_reset; // @[FPComplex.scala 181:26]
  wire  FP_multiplier_10ccs_12_1_io_in_en; // @[FPComplex.scala 181:26]
  wire [15:0] FP_multiplier_10ccs_12_1_io_in_a; // @[FPComplex.scala 181:26]
  wire [15:0] FP_multiplier_10ccs_12_1_io_in_b; // @[FPComplex.scala 181:26]
  wire [15:0] FP_multiplier_10ccs_12_1_io_out_s; // @[FPComplex.scala 181:26]
  wire  FP_multiplier_10ccs_12_2_clock; // @[FPComplex.scala 181:26]
  wire  FP_multiplier_10ccs_12_2_reset; // @[FPComplex.scala 181:26]
  wire  FP_multiplier_10ccs_12_2_io_in_en; // @[FPComplex.scala 181:26]
  wire [15:0] FP_multiplier_10ccs_12_2_io_in_a; // @[FPComplex.scala 181:26]
  wire [15:0] FP_multiplier_10ccs_12_2_io_in_b; // @[FPComplex.scala 181:26]
  wire [15:0] FP_multiplier_10ccs_12_2_io_out_s; // @[FPComplex.scala 181:26]
  wire  FP_multiplier_10ccs_12_3_clock; // @[FPComplex.scala 181:26]
  wire  FP_multiplier_10ccs_12_3_reset; // @[FPComplex.scala 181:26]
  wire  FP_multiplier_10ccs_12_3_io_in_en; // @[FPComplex.scala 181:26]
  wire [15:0] FP_multiplier_10ccs_12_3_io_in_a; // @[FPComplex.scala 181:26]
  wire [15:0] FP_multiplier_10ccs_12_3_io_in_b; // @[FPComplex.scala 181:26]
  wire [15:0] FP_multiplier_10ccs_12_3_io_out_s; // @[FPComplex.scala 181:26]
  FP_subtractor_13ccs_12 FP_subtractor_13ccs_12 ( // @[FPComplex.scala 178:24]
    .clock(FP_subtractor_13ccs_12_clock),
    .reset(FP_subtractor_13ccs_12_reset),
    .io_in_en(FP_subtractor_13ccs_12_io_in_en),
    .io_in_a(FP_subtractor_13ccs_12_io_in_a),
    .io_in_b(FP_subtractor_13ccs_12_io_in_b),
    .io_out_s(FP_subtractor_13ccs_12_io_out_s)
  );
  FP_adder_13ccs_12 FP_adder_13ccs_12 ( // @[FPComplex.scala 179:24]
    .clock(FP_adder_13ccs_12_clock),
    .reset(FP_adder_13ccs_12_reset),
    .io_in_en(FP_adder_13ccs_12_io_in_en),
    .io_in_a(FP_adder_13ccs_12_io_in_a),
    .io_in_b(FP_adder_13ccs_12_io_in_b),
    .io_out_s(FP_adder_13ccs_12_io_out_s)
  );
  FP_multiplier_10ccs_12 FP_multiplier_10ccs_12 ( // @[FPComplex.scala 181:26]
    .clock(FP_multiplier_10ccs_12_clock),
    .reset(FP_multiplier_10ccs_12_reset),
    .io_in_en(FP_multiplier_10ccs_12_io_in_en),
    .io_in_a(FP_multiplier_10ccs_12_io_in_a),
    .io_in_b(FP_multiplier_10ccs_12_io_in_b),
    .io_out_s(FP_multiplier_10ccs_12_io_out_s)
  );
  FP_multiplier_10ccs_12 FP_multiplier_10ccs_12_1 ( // @[FPComplex.scala 181:26]
    .clock(FP_multiplier_10ccs_12_1_clock),
    .reset(FP_multiplier_10ccs_12_1_reset),
    .io_in_en(FP_multiplier_10ccs_12_1_io_in_en),
    .io_in_a(FP_multiplier_10ccs_12_1_io_in_a),
    .io_in_b(FP_multiplier_10ccs_12_1_io_in_b),
    .io_out_s(FP_multiplier_10ccs_12_1_io_out_s)
  );
  FP_multiplier_10ccs_12 FP_multiplier_10ccs_12_2 ( // @[FPComplex.scala 181:26]
    .clock(FP_multiplier_10ccs_12_2_clock),
    .reset(FP_multiplier_10ccs_12_2_reset),
    .io_in_en(FP_multiplier_10ccs_12_2_io_in_en),
    .io_in_a(FP_multiplier_10ccs_12_2_io_in_a),
    .io_in_b(FP_multiplier_10ccs_12_2_io_in_b),
    .io_out_s(FP_multiplier_10ccs_12_2_io_out_s)
  );
  FP_multiplier_10ccs_12 FP_multiplier_10ccs_12_3 ( // @[FPComplex.scala 181:26]
    .clock(FP_multiplier_10ccs_12_3_clock),
    .reset(FP_multiplier_10ccs_12_3_reset),
    .io_in_en(FP_multiplier_10ccs_12_3_io_in_en),
    .io_in_a(FP_multiplier_10ccs_12_3_io_in_a),
    .io_in_b(FP_multiplier_10ccs_12_3_io_in_b),
    .io_out_s(FP_multiplier_10ccs_12_3_io_out_s)
  );
  assign io_out_s_Re = FP_subtractor_13ccs_12_io_out_s; // @[FPComplex.scala 201:17]
  assign io_out_s_Im = FP_adder_13ccs_12_io_out_s; // @[FPComplex.scala 202:17]
  assign FP_subtractor_13ccs_12_clock = clock;
  assign FP_subtractor_13ccs_12_reset = reset;
  assign FP_subtractor_13ccs_12_io_in_en = 1'h1; // @[FPComplex.scala 187:18]
  assign FP_subtractor_13ccs_12_io_in_a = FP_multiplier_10ccs_12_io_out_s; // @[FPComplex.scala 197:17]
  assign FP_subtractor_13ccs_12_io_in_b = FP_multiplier_10ccs_12_1_io_out_s; // @[FPComplex.scala 198:17]
  assign FP_adder_13ccs_12_clock = clock;
  assign FP_adder_13ccs_12_reset = reset;
  assign FP_adder_13ccs_12_io_in_en = 1'h1; // @[FPComplex.scala 188:18]
  assign FP_adder_13ccs_12_io_in_a = FP_multiplier_10ccs_12_2_io_out_s; // @[FPComplex.scala 199:17]
  assign FP_adder_13ccs_12_io_in_b = FP_multiplier_10ccs_12_3_io_out_s; // @[FPComplex.scala 200:17]
  assign FP_multiplier_10ccs_12_clock = clock;
  assign FP_multiplier_10ccs_12_reset = reset;
  assign FP_multiplier_10ccs_12_io_in_en = 1'h1; // @[FPComplex.scala 185:31]
  assign FP_multiplier_10ccs_12_io_in_a = io_in_a_Re; // @[FPComplex.scala 189:28]
  assign FP_multiplier_10ccs_12_io_in_b = io_in_b_Re; // @[FPComplex.scala 190:28]
  assign FP_multiplier_10ccs_12_1_clock = clock;
  assign FP_multiplier_10ccs_12_1_reset = reset;
  assign FP_multiplier_10ccs_12_1_io_in_en = 1'h1; // @[FPComplex.scala 185:31]
  assign FP_multiplier_10ccs_12_1_io_in_a = io_in_a_Im; // @[FPComplex.scala 191:28]
  assign FP_multiplier_10ccs_12_1_io_in_b = io_in_b_Im; // @[FPComplex.scala 192:28]
  assign FP_multiplier_10ccs_12_2_clock = clock;
  assign FP_multiplier_10ccs_12_2_reset = reset;
  assign FP_multiplier_10ccs_12_2_io_in_en = 1'h1; // @[FPComplex.scala 185:31]
  assign FP_multiplier_10ccs_12_2_io_in_a = io_in_a_Re; // @[FPComplex.scala 193:28]
  assign FP_multiplier_10ccs_12_2_io_in_b = io_in_b_Im; // @[FPComplex.scala 194:28]
  assign FP_multiplier_10ccs_12_3_clock = clock;
  assign FP_multiplier_10ccs_12_3_reset = reset;
  assign FP_multiplier_10ccs_12_3_io_in_en = 1'h1; // @[FPComplex.scala 185:31]
  assign FP_multiplier_10ccs_12_3_io_in_a = io_in_a_Im; // @[FPComplex.scala 195:28]
  assign FP_multiplier_10ccs_12_3_io_in_b = io_in_b_Re; // @[FPComplex.scala 196:28]
endmodule
module FPComplexAdder_v2_12(
  input         clock,
  input         reset,
  input  [15:0] io_in_a_Re,
  input  [15:0] io_in_a_Im,
  input  [15:0] io_in_b_Re,
  input  [15:0] io_in_b_Im,
  output [15:0] io_out_s_Re,
  output [15:0] io_out_s_Im
);
  wire  FP_adder_13ccs_12_clock; // @[FPComplex.scala 36:25]
  wire  FP_adder_13ccs_12_reset; // @[FPComplex.scala 36:25]
  wire  FP_adder_13ccs_12_io_in_en; // @[FPComplex.scala 36:25]
  wire [15:0] FP_adder_13ccs_12_io_in_a; // @[FPComplex.scala 36:25]
  wire [15:0] FP_adder_13ccs_12_io_in_b; // @[FPComplex.scala 36:25]
  wire [15:0] FP_adder_13ccs_12_io_out_s; // @[FPComplex.scala 36:25]
  wire  FP_adder_13ccs_12_1_clock; // @[FPComplex.scala 36:25]
  wire  FP_adder_13ccs_12_1_reset; // @[FPComplex.scala 36:25]
  wire  FP_adder_13ccs_12_1_io_in_en; // @[FPComplex.scala 36:25]
  wire [15:0] FP_adder_13ccs_12_1_io_in_a; // @[FPComplex.scala 36:25]
  wire [15:0] FP_adder_13ccs_12_1_io_in_b; // @[FPComplex.scala 36:25]
  wire [15:0] FP_adder_13ccs_12_1_io_out_s; // @[FPComplex.scala 36:25]
  FP_adder_13ccs_12 FP_adder_13ccs_12 ( // @[FPComplex.scala 36:25]
    .clock(FP_adder_13ccs_12_clock),
    .reset(FP_adder_13ccs_12_reset),
    .io_in_en(FP_adder_13ccs_12_io_in_en),
    .io_in_a(FP_adder_13ccs_12_io_in_a),
    .io_in_b(FP_adder_13ccs_12_io_in_b),
    .io_out_s(FP_adder_13ccs_12_io_out_s)
  );
  FP_adder_13ccs_12 FP_adder_13ccs_12_1 ( // @[FPComplex.scala 36:25]
    .clock(FP_adder_13ccs_12_1_clock),
    .reset(FP_adder_13ccs_12_1_reset),
    .io_in_en(FP_adder_13ccs_12_1_io_in_en),
    .io_in_a(FP_adder_13ccs_12_1_io_in_a),
    .io_in_b(FP_adder_13ccs_12_1_io_in_b),
    .io_out_s(FP_adder_13ccs_12_1_io_out_s)
  );
  assign io_out_s_Re = FP_adder_13ccs_12_io_out_s; // @[FPComplex.scala 45:17]
  assign io_out_s_Im = FP_adder_13ccs_12_1_io_out_s; // @[FPComplex.scala 46:17]
  assign FP_adder_13ccs_12_clock = clock;
  assign FP_adder_13ccs_12_reset = reset;
  assign FP_adder_13ccs_12_io_in_en = 1'h1; // @[FPComplex.scala 39:24]
  assign FP_adder_13ccs_12_io_in_a = io_in_a_Re; // @[FPComplex.scala 41:23]
  assign FP_adder_13ccs_12_io_in_b = io_in_b_Re; // @[FPComplex.scala 42:23]
  assign FP_adder_13ccs_12_1_clock = clock;
  assign FP_adder_13ccs_12_1_reset = reset;
  assign FP_adder_13ccs_12_1_io_in_en = 1'h1; // @[FPComplex.scala 40:24]
  assign FP_adder_13ccs_12_1_io_in_a = io_in_a_Im; // @[FPComplex.scala 43:23]
  assign FP_adder_13ccs_12_1_io_in_b = io_in_b_Im; // @[FPComplex.scala 44:23]
endmodule
module FP_DDOT_dp_complex_12(
  input         clock,
  input         reset,
  input  [15:0] io_in_a_0_Re,
  input  [15:0] io_in_a_0_Im,
  input  [15:0] io_in_a_1_Re,
  input  [15:0] io_in_a_1_Im,
  input  [15:0] io_in_a_2_Re,
  input  [15:0] io_in_a_2_Im,
  input  [15:0] io_in_a_3_Re,
  input  [15:0] io_in_a_3_Im,
  input  [15:0] io_in_a_4_Re,
  input  [15:0] io_in_a_4_Im,
  input  [15:0] io_in_a_5_Re,
  input  [15:0] io_in_a_5_Im,
  input  [15:0] io_in_a_6_Re,
  input  [15:0] io_in_a_6_Im,
  input  [15:0] io_in_a_7_Re,
  input  [15:0] io_in_a_7_Im,
  input  [15:0] io_in_a_8_Re,
  input  [15:0] io_in_a_8_Im,
  input  [15:0] io_in_a_9_Re,
  input  [15:0] io_in_a_9_Im,
  input  [15:0] io_in_a_10_Re,
  input  [15:0] io_in_a_10_Im,
  input  [15:0] io_in_a_11_Re,
  input  [15:0] io_in_a_11_Im,
  input  [15:0] io_in_a_12_Re,
  input  [15:0] io_in_a_12_Im,
  input  [15:0] io_in_a_13_Re,
  input  [15:0] io_in_a_13_Im,
  input  [15:0] io_in_a_14_Re,
  input  [15:0] io_in_a_14_Im,
  input  [15:0] io_in_a_15_Re,
  input  [15:0] io_in_a_15_Im,
  input  [15:0] io_in_b_0_Re,
  input  [15:0] io_in_b_0_Im,
  input  [15:0] io_in_b_1_Re,
  input  [15:0] io_in_b_1_Im,
  input  [15:0] io_in_b_2_Re,
  input  [15:0] io_in_b_2_Im,
  input  [15:0] io_in_b_3_Re,
  input  [15:0] io_in_b_3_Im,
  input  [15:0] io_in_b_4_Re,
  input  [15:0] io_in_b_4_Im,
  input  [15:0] io_in_b_5_Re,
  input  [15:0] io_in_b_5_Im,
  input  [15:0] io_in_b_6_Re,
  input  [15:0] io_in_b_6_Im,
  input  [15:0] io_in_b_7_Re,
  input  [15:0] io_in_b_7_Im,
  input  [15:0] io_in_b_8_Re,
  input  [15:0] io_in_b_8_Im,
  input  [15:0] io_in_b_9_Re,
  input  [15:0] io_in_b_9_Im,
  input  [15:0] io_in_b_10_Re,
  input  [15:0] io_in_b_10_Im,
  input  [15:0] io_in_b_11_Re,
  input  [15:0] io_in_b_11_Im,
  input  [15:0] io_in_b_12_Re,
  input  [15:0] io_in_b_12_Im,
  input  [15:0] io_in_b_13_Re,
  input  [15:0] io_in_b_13_Im,
  input  [15:0] io_in_b_14_Re,
  input  [15:0] io_in_b_14_Im,
  input  [15:0] io_in_b_15_Re,
  input  [15:0] io_in_b_15_Im,
  output [15:0] io_out_s_Re,
  output [15:0] io_out_s_Im
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire  FPComplexMult_v2_12_clock; // @[FPComplex.scala 1129:44]
  wire  FPComplexMult_v2_12_reset; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_io_in_a_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_io_in_a_Im; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_io_in_b_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_io_in_b_Im; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_io_out_s_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_io_out_s_Im; // @[FPComplex.scala 1129:44]
  wire  FPComplexMult_v2_12_1_clock; // @[FPComplex.scala 1129:44]
  wire  FPComplexMult_v2_12_1_reset; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_1_io_in_a_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_1_io_in_a_Im; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_1_io_in_b_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_1_io_in_b_Im; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_1_io_out_s_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_1_io_out_s_Im; // @[FPComplex.scala 1129:44]
  wire  FPComplexMult_v2_12_2_clock; // @[FPComplex.scala 1129:44]
  wire  FPComplexMult_v2_12_2_reset; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_2_io_in_a_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_2_io_in_a_Im; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_2_io_in_b_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_2_io_in_b_Im; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_2_io_out_s_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_2_io_out_s_Im; // @[FPComplex.scala 1129:44]
  wire  FPComplexMult_v2_12_3_clock; // @[FPComplex.scala 1129:44]
  wire  FPComplexMult_v2_12_3_reset; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_3_io_in_a_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_3_io_in_a_Im; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_3_io_in_b_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_3_io_in_b_Im; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_3_io_out_s_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_3_io_out_s_Im; // @[FPComplex.scala 1129:44]
  wire  FPComplexMult_v2_12_4_clock; // @[FPComplex.scala 1129:44]
  wire  FPComplexMult_v2_12_4_reset; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_4_io_in_a_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_4_io_in_a_Im; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_4_io_in_b_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_4_io_in_b_Im; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_4_io_out_s_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_4_io_out_s_Im; // @[FPComplex.scala 1129:44]
  wire  FPComplexMult_v2_12_5_clock; // @[FPComplex.scala 1129:44]
  wire  FPComplexMult_v2_12_5_reset; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_5_io_in_a_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_5_io_in_a_Im; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_5_io_in_b_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_5_io_in_b_Im; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_5_io_out_s_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_5_io_out_s_Im; // @[FPComplex.scala 1129:44]
  wire  FPComplexMult_v2_12_6_clock; // @[FPComplex.scala 1129:44]
  wire  FPComplexMult_v2_12_6_reset; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_6_io_in_a_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_6_io_in_a_Im; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_6_io_in_b_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_6_io_in_b_Im; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_6_io_out_s_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_6_io_out_s_Im; // @[FPComplex.scala 1129:44]
  wire  FPComplexMult_v2_12_7_clock; // @[FPComplex.scala 1129:44]
  wire  FPComplexMult_v2_12_7_reset; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_7_io_in_a_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_7_io_in_a_Im; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_7_io_in_b_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_7_io_in_b_Im; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_7_io_out_s_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_7_io_out_s_Im; // @[FPComplex.scala 1129:44]
  wire  FPComplexMult_v2_12_8_clock; // @[FPComplex.scala 1129:44]
  wire  FPComplexMult_v2_12_8_reset; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_8_io_in_a_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_8_io_in_a_Im; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_8_io_in_b_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_8_io_in_b_Im; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_8_io_out_s_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_8_io_out_s_Im; // @[FPComplex.scala 1129:44]
  wire  FPComplexMult_v2_12_9_clock; // @[FPComplex.scala 1129:44]
  wire  FPComplexMult_v2_12_9_reset; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_9_io_in_a_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_9_io_in_a_Im; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_9_io_in_b_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_9_io_in_b_Im; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_9_io_out_s_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_9_io_out_s_Im; // @[FPComplex.scala 1129:44]
  wire  FPComplexMult_v2_12_10_clock; // @[FPComplex.scala 1129:44]
  wire  FPComplexMult_v2_12_10_reset; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_10_io_in_a_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_10_io_in_a_Im; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_10_io_in_b_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_10_io_in_b_Im; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_10_io_out_s_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_10_io_out_s_Im; // @[FPComplex.scala 1129:44]
  wire  FPComplexMult_v2_12_11_clock; // @[FPComplex.scala 1129:44]
  wire  FPComplexMult_v2_12_11_reset; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_11_io_in_a_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_11_io_in_a_Im; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_11_io_in_b_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_11_io_in_b_Im; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_11_io_out_s_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_11_io_out_s_Im; // @[FPComplex.scala 1129:44]
  wire  FPComplexMult_v2_12_12_clock; // @[FPComplex.scala 1129:44]
  wire  FPComplexMult_v2_12_12_reset; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_12_io_in_a_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_12_io_in_a_Im; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_12_io_in_b_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_12_io_in_b_Im; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_12_io_out_s_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_12_io_out_s_Im; // @[FPComplex.scala 1129:44]
  wire  FPComplexMult_v2_12_13_clock; // @[FPComplex.scala 1129:44]
  wire  FPComplexMult_v2_12_13_reset; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_13_io_in_a_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_13_io_in_a_Im; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_13_io_in_b_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_13_io_in_b_Im; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_13_io_out_s_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_13_io_out_s_Im; // @[FPComplex.scala 1129:44]
  wire  FPComplexMult_v2_12_14_clock; // @[FPComplex.scala 1129:44]
  wire  FPComplexMult_v2_12_14_reset; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_14_io_in_a_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_14_io_in_a_Im; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_14_io_in_b_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_14_io_in_b_Im; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_14_io_out_s_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_14_io_out_s_Im; // @[FPComplex.scala 1129:44]
  wire  FPComplexMult_v2_12_15_clock; // @[FPComplex.scala 1129:44]
  wire  FPComplexMult_v2_12_15_reset; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_15_io_in_a_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_15_io_in_a_Im; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_15_io_in_b_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_15_io_in_b_Im; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_15_io_out_s_Re; // @[FPComplex.scala 1129:44]
  wire [15:0] FPComplexMult_v2_12_15_io_out_s_Im; // @[FPComplex.scala 1129:44]
  wire  FPComplexAdder_v2_12_clock; // @[FPComplex.scala 1136:17]
  wire  FPComplexAdder_v2_12_reset; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_io_in_a_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_io_in_a_Im; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_io_in_b_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_io_in_b_Im; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_io_out_s_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_io_out_s_Im; // @[FPComplex.scala 1136:17]
  wire  FPComplexAdder_v2_12_1_clock; // @[FPComplex.scala 1136:17]
  wire  FPComplexAdder_v2_12_1_reset; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_1_io_in_a_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_1_io_in_a_Im; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_1_io_in_b_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_1_io_in_b_Im; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_1_io_out_s_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_1_io_out_s_Im; // @[FPComplex.scala 1136:17]
  wire  FPComplexAdder_v2_12_2_clock; // @[FPComplex.scala 1136:17]
  wire  FPComplexAdder_v2_12_2_reset; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_2_io_in_a_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_2_io_in_a_Im; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_2_io_in_b_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_2_io_in_b_Im; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_2_io_out_s_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_2_io_out_s_Im; // @[FPComplex.scala 1136:17]
  wire  FPComplexAdder_v2_12_3_clock; // @[FPComplex.scala 1136:17]
  wire  FPComplexAdder_v2_12_3_reset; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_3_io_in_a_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_3_io_in_a_Im; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_3_io_in_b_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_3_io_in_b_Im; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_3_io_out_s_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_3_io_out_s_Im; // @[FPComplex.scala 1136:17]
  wire  FPComplexAdder_v2_12_4_clock; // @[FPComplex.scala 1136:17]
  wire  FPComplexAdder_v2_12_4_reset; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_4_io_in_a_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_4_io_in_a_Im; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_4_io_in_b_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_4_io_in_b_Im; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_4_io_out_s_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_4_io_out_s_Im; // @[FPComplex.scala 1136:17]
  wire  FPComplexAdder_v2_12_5_clock; // @[FPComplex.scala 1136:17]
  wire  FPComplexAdder_v2_12_5_reset; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_5_io_in_a_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_5_io_in_a_Im; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_5_io_in_b_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_5_io_in_b_Im; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_5_io_out_s_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_5_io_out_s_Im; // @[FPComplex.scala 1136:17]
  wire  FPComplexAdder_v2_12_6_clock; // @[FPComplex.scala 1136:17]
  wire  FPComplexAdder_v2_12_6_reset; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_6_io_in_a_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_6_io_in_a_Im; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_6_io_in_b_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_6_io_in_b_Im; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_6_io_out_s_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_6_io_out_s_Im; // @[FPComplex.scala 1136:17]
  wire  FPComplexAdder_v2_12_7_clock; // @[FPComplex.scala 1136:17]
  wire  FPComplexAdder_v2_12_7_reset; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_7_io_in_a_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_7_io_in_a_Im; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_7_io_in_b_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_7_io_in_b_Im; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_7_io_out_s_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_7_io_out_s_Im; // @[FPComplex.scala 1136:17]
  wire  FPComplexAdder_v2_12_8_clock; // @[FPComplex.scala 1136:17]
  wire  FPComplexAdder_v2_12_8_reset; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_8_io_in_a_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_8_io_in_a_Im; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_8_io_in_b_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_8_io_in_b_Im; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_8_io_out_s_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_8_io_out_s_Im; // @[FPComplex.scala 1136:17]
  wire  FPComplexAdder_v2_12_9_clock; // @[FPComplex.scala 1136:17]
  wire  FPComplexAdder_v2_12_9_reset; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_9_io_in_a_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_9_io_in_a_Im; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_9_io_in_b_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_9_io_in_b_Im; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_9_io_out_s_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_9_io_out_s_Im; // @[FPComplex.scala 1136:17]
  wire  FPComplexAdder_v2_12_10_clock; // @[FPComplex.scala 1136:17]
  wire  FPComplexAdder_v2_12_10_reset; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_10_io_in_a_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_10_io_in_a_Im; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_10_io_in_b_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_10_io_in_b_Im; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_10_io_out_s_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_10_io_out_s_Im; // @[FPComplex.scala 1136:17]
  wire  FPComplexAdder_v2_12_11_clock; // @[FPComplex.scala 1136:17]
  wire  FPComplexAdder_v2_12_11_reset; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_11_io_in_a_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_11_io_in_a_Im; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_11_io_in_b_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_11_io_in_b_Im; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_11_io_out_s_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_11_io_out_s_Im; // @[FPComplex.scala 1136:17]
  wire  FPComplexAdder_v2_12_12_clock; // @[FPComplex.scala 1136:17]
  wire  FPComplexAdder_v2_12_12_reset; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_12_io_in_a_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_12_io_in_a_Im; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_12_io_in_b_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_12_io_in_b_Im; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_12_io_out_s_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_12_io_out_s_Im; // @[FPComplex.scala 1136:17]
  wire  FPComplexAdder_v2_12_13_clock; // @[FPComplex.scala 1136:17]
  wire  FPComplexAdder_v2_12_13_reset; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_13_io_in_a_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_13_io_in_a_Im; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_13_io_in_b_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_13_io_in_b_Im; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_13_io_out_s_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_13_io_out_s_Im; // @[FPComplex.scala 1136:17]
  wire  FPComplexAdder_v2_12_14_clock; // @[FPComplex.scala 1136:17]
  wire  FPComplexAdder_v2_12_14_reset; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_14_io_in_a_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_14_io_in_a_Im; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_14_io_in_b_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_14_io_in_b_Im; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_14_io_out_s_Re; // @[FPComplex.scala 1136:17]
  wire [15:0] FPComplexAdder_v2_12_14_io_out_s_Im; // @[FPComplex.scala 1136:17]
  reg [15:0] io_out_s_REG_Re; // @[FPComplex.scala 1185:26]
  reg [15:0] io_out_s_REG_Im; // @[FPComplex.scala 1185:26]
  FPComplexMult_v2_12 FPComplexMult_v2_12 ( // @[FPComplex.scala 1129:44]
    .clock(FPComplexMult_v2_12_clock),
    .reset(FPComplexMult_v2_12_reset),
    .io_in_a_Re(FPComplexMult_v2_12_io_in_a_Re),
    .io_in_a_Im(FPComplexMult_v2_12_io_in_a_Im),
    .io_in_b_Re(FPComplexMult_v2_12_io_in_b_Re),
    .io_in_b_Im(FPComplexMult_v2_12_io_in_b_Im),
    .io_out_s_Re(FPComplexMult_v2_12_io_out_s_Re),
    .io_out_s_Im(FPComplexMult_v2_12_io_out_s_Im)
  );
  FPComplexMult_v2_12 FPComplexMult_v2_12_1 ( // @[FPComplex.scala 1129:44]
    .clock(FPComplexMult_v2_12_1_clock),
    .reset(FPComplexMult_v2_12_1_reset),
    .io_in_a_Re(FPComplexMult_v2_12_1_io_in_a_Re),
    .io_in_a_Im(FPComplexMult_v2_12_1_io_in_a_Im),
    .io_in_b_Re(FPComplexMult_v2_12_1_io_in_b_Re),
    .io_in_b_Im(FPComplexMult_v2_12_1_io_in_b_Im),
    .io_out_s_Re(FPComplexMult_v2_12_1_io_out_s_Re),
    .io_out_s_Im(FPComplexMult_v2_12_1_io_out_s_Im)
  );
  FPComplexMult_v2_12 FPComplexMult_v2_12_2 ( // @[FPComplex.scala 1129:44]
    .clock(FPComplexMult_v2_12_2_clock),
    .reset(FPComplexMult_v2_12_2_reset),
    .io_in_a_Re(FPComplexMult_v2_12_2_io_in_a_Re),
    .io_in_a_Im(FPComplexMult_v2_12_2_io_in_a_Im),
    .io_in_b_Re(FPComplexMult_v2_12_2_io_in_b_Re),
    .io_in_b_Im(FPComplexMult_v2_12_2_io_in_b_Im),
    .io_out_s_Re(FPComplexMult_v2_12_2_io_out_s_Re),
    .io_out_s_Im(FPComplexMult_v2_12_2_io_out_s_Im)
  );
  FPComplexMult_v2_12 FPComplexMult_v2_12_3 ( // @[FPComplex.scala 1129:44]
    .clock(FPComplexMult_v2_12_3_clock),
    .reset(FPComplexMult_v2_12_3_reset),
    .io_in_a_Re(FPComplexMult_v2_12_3_io_in_a_Re),
    .io_in_a_Im(FPComplexMult_v2_12_3_io_in_a_Im),
    .io_in_b_Re(FPComplexMult_v2_12_3_io_in_b_Re),
    .io_in_b_Im(FPComplexMult_v2_12_3_io_in_b_Im),
    .io_out_s_Re(FPComplexMult_v2_12_3_io_out_s_Re),
    .io_out_s_Im(FPComplexMult_v2_12_3_io_out_s_Im)
  );
  FPComplexMult_v2_12 FPComplexMult_v2_12_4 ( // @[FPComplex.scala 1129:44]
    .clock(FPComplexMult_v2_12_4_clock),
    .reset(FPComplexMult_v2_12_4_reset),
    .io_in_a_Re(FPComplexMult_v2_12_4_io_in_a_Re),
    .io_in_a_Im(FPComplexMult_v2_12_4_io_in_a_Im),
    .io_in_b_Re(FPComplexMult_v2_12_4_io_in_b_Re),
    .io_in_b_Im(FPComplexMult_v2_12_4_io_in_b_Im),
    .io_out_s_Re(FPComplexMult_v2_12_4_io_out_s_Re),
    .io_out_s_Im(FPComplexMult_v2_12_4_io_out_s_Im)
  );
  FPComplexMult_v2_12 FPComplexMult_v2_12_5 ( // @[FPComplex.scala 1129:44]
    .clock(FPComplexMult_v2_12_5_clock),
    .reset(FPComplexMult_v2_12_5_reset),
    .io_in_a_Re(FPComplexMult_v2_12_5_io_in_a_Re),
    .io_in_a_Im(FPComplexMult_v2_12_5_io_in_a_Im),
    .io_in_b_Re(FPComplexMult_v2_12_5_io_in_b_Re),
    .io_in_b_Im(FPComplexMult_v2_12_5_io_in_b_Im),
    .io_out_s_Re(FPComplexMult_v2_12_5_io_out_s_Re),
    .io_out_s_Im(FPComplexMult_v2_12_5_io_out_s_Im)
  );
  FPComplexMult_v2_12 FPComplexMult_v2_12_6 ( // @[FPComplex.scala 1129:44]
    .clock(FPComplexMult_v2_12_6_clock),
    .reset(FPComplexMult_v2_12_6_reset),
    .io_in_a_Re(FPComplexMult_v2_12_6_io_in_a_Re),
    .io_in_a_Im(FPComplexMult_v2_12_6_io_in_a_Im),
    .io_in_b_Re(FPComplexMult_v2_12_6_io_in_b_Re),
    .io_in_b_Im(FPComplexMult_v2_12_6_io_in_b_Im),
    .io_out_s_Re(FPComplexMult_v2_12_6_io_out_s_Re),
    .io_out_s_Im(FPComplexMult_v2_12_6_io_out_s_Im)
  );
  FPComplexMult_v2_12 FPComplexMult_v2_12_7 ( // @[FPComplex.scala 1129:44]
    .clock(FPComplexMult_v2_12_7_clock),
    .reset(FPComplexMult_v2_12_7_reset),
    .io_in_a_Re(FPComplexMult_v2_12_7_io_in_a_Re),
    .io_in_a_Im(FPComplexMult_v2_12_7_io_in_a_Im),
    .io_in_b_Re(FPComplexMult_v2_12_7_io_in_b_Re),
    .io_in_b_Im(FPComplexMult_v2_12_7_io_in_b_Im),
    .io_out_s_Re(FPComplexMult_v2_12_7_io_out_s_Re),
    .io_out_s_Im(FPComplexMult_v2_12_7_io_out_s_Im)
  );
  FPComplexMult_v2_12 FPComplexMult_v2_12_8 ( // @[FPComplex.scala 1129:44]
    .clock(FPComplexMult_v2_12_8_clock),
    .reset(FPComplexMult_v2_12_8_reset),
    .io_in_a_Re(FPComplexMult_v2_12_8_io_in_a_Re),
    .io_in_a_Im(FPComplexMult_v2_12_8_io_in_a_Im),
    .io_in_b_Re(FPComplexMult_v2_12_8_io_in_b_Re),
    .io_in_b_Im(FPComplexMult_v2_12_8_io_in_b_Im),
    .io_out_s_Re(FPComplexMult_v2_12_8_io_out_s_Re),
    .io_out_s_Im(FPComplexMult_v2_12_8_io_out_s_Im)
  );
  FPComplexMult_v2_12 FPComplexMult_v2_12_9 ( // @[FPComplex.scala 1129:44]
    .clock(FPComplexMult_v2_12_9_clock),
    .reset(FPComplexMult_v2_12_9_reset),
    .io_in_a_Re(FPComplexMult_v2_12_9_io_in_a_Re),
    .io_in_a_Im(FPComplexMult_v2_12_9_io_in_a_Im),
    .io_in_b_Re(FPComplexMult_v2_12_9_io_in_b_Re),
    .io_in_b_Im(FPComplexMult_v2_12_9_io_in_b_Im),
    .io_out_s_Re(FPComplexMult_v2_12_9_io_out_s_Re),
    .io_out_s_Im(FPComplexMult_v2_12_9_io_out_s_Im)
  );
  FPComplexMult_v2_12 FPComplexMult_v2_12_10 ( // @[FPComplex.scala 1129:44]
    .clock(FPComplexMult_v2_12_10_clock),
    .reset(FPComplexMult_v2_12_10_reset),
    .io_in_a_Re(FPComplexMult_v2_12_10_io_in_a_Re),
    .io_in_a_Im(FPComplexMult_v2_12_10_io_in_a_Im),
    .io_in_b_Re(FPComplexMult_v2_12_10_io_in_b_Re),
    .io_in_b_Im(FPComplexMult_v2_12_10_io_in_b_Im),
    .io_out_s_Re(FPComplexMult_v2_12_10_io_out_s_Re),
    .io_out_s_Im(FPComplexMult_v2_12_10_io_out_s_Im)
  );
  FPComplexMult_v2_12 FPComplexMult_v2_12_11 ( // @[FPComplex.scala 1129:44]
    .clock(FPComplexMult_v2_12_11_clock),
    .reset(FPComplexMult_v2_12_11_reset),
    .io_in_a_Re(FPComplexMult_v2_12_11_io_in_a_Re),
    .io_in_a_Im(FPComplexMult_v2_12_11_io_in_a_Im),
    .io_in_b_Re(FPComplexMult_v2_12_11_io_in_b_Re),
    .io_in_b_Im(FPComplexMult_v2_12_11_io_in_b_Im),
    .io_out_s_Re(FPComplexMult_v2_12_11_io_out_s_Re),
    .io_out_s_Im(FPComplexMult_v2_12_11_io_out_s_Im)
  );
  FPComplexMult_v2_12 FPComplexMult_v2_12_12 ( // @[FPComplex.scala 1129:44]
    .clock(FPComplexMult_v2_12_12_clock),
    .reset(FPComplexMult_v2_12_12_reset),
    .io_in_a_Re(FPComplexMult_v2_12_12_io_in_a_Re),
    .io_in_a_Im(FPComplexMult_v2_12_12_io_in_a_Im),
    .io_in_b_Re(FPComplexMult_v2_12_12_io_in_b_Re),
    .io_in_b_Im(FPComplexMult_v2_12_12_io_in_b_Im),
    .io_out_s_Re(FPComplexMult_v2_12_12_io_out_s_Re),
    .io_out_s_Im(FPComplexMult_v2_12_12_io_out_s_Im)
  );
  FPComplexMult_v2_12 FPComplexMult_v2_12_13 ( // @[FPComplex.scala 1129:44]
    .clock(FPComplexMult_v2_12_13_clock),
    .reset(FPComplexMult_v2_12_13_reset),
    .io_in_a_Re(FPComplexMult_v2_12_13_io_in_a_Re),
    .io_in_a_Im(FPComplexMult_v2_12_13_io_in_a_Im),
    .io_in_b_Re(FPComplexMult_v2_12_13_io_in_b_Re),
    .io_in_b_Im(FPComplexMult_v2_12_13_io_in_b_Im),
    .io_out_s_Re(FPComplexMult_v2_12_13_io_out_s_Re),
    .io_out_s_Im(FPComplexMult_v2_12_13_io_out_s_Im)
  );
  FPComplexMult_v2_12 FPComplexMult_v2_12_14 ( // @[FPComplex.scala 1129:44]
    .clock(FPComplexMult_v2_12_14_clock),
    .reset(FPComplexMult_v2_12_14_reset),
    .io_in_a_Re(FPComplexMult_v2_12_14_io_in_a_Re),
    .io_in_a_Im(FPComplexMult_v2_12_14_io_in_a_Im),
    .io_in_b_Re(FPComplexMult_v2_12_14_io_in_b_Re),
    .io_in_b_Im(FPComplexMult_v2_12_14_io_in_b_Im),
    .io_out_s_Re(FPComplexMult_v2_12_14_io_out_s_Re),
    .io_out_s_Im(FPComplexMult_v2_12_14_io_out_s_Im)
  );
  FPComplexMult_v2_12 FPComplexMult_v2_12_15 ( // @[FPComplex.scala 1129:44]
    .clock(FPComplexMult_v2_12_15_clock),
    .reset(FPComplexMult_v2_12_15_reset),
    .io_in_a_Re(FPComplexMult_v2_12_15_io_in_a_Re),
    .io_in_a_Im(FPComplexMult_v2_12_15_io_in_a_Im),
    .io_in_b_Re(FPComplexMult_v2_12_15_io_in_b_Re),
    .io_in_b_Im(FPComplexMult_v2_12_15_io_in_b_Im),
    .io_out_s_Re(FPComplexMult_v2_12_15_io_out_s_Re),
    .io_out_s_Im(FPComplexMult_v2_12_15_io_out_s_Im)
  );
  FPComplexAdder_v2_12 FPComplexAdder_v2_12 ( // @[FPComplex.scala 1136:17]
    .clock(FPComplexAdder_v2_12_clock),
    .reset(FPComplexAdder_v2_12_reset),
    .io_in_a_Re(FPComplexAdder_v2_12_io_in_a_Re),
    .io_in_a_Im(FPComplexAdder_v2_12_io_in_a_Im),
    .io_in_b_Re(FPComplexAdder_v2_12_io_in_b_Re),
    .io_in_b_Im(FPComplexAdder_v2_12_io_in_b_Im),
    .io_out_s_Re(FPComplexAdder_v2_12_io_out_s_Re),
    .io_out_s_Im(FPComplexAdder_v2_12_io_out_s_Im)
  );
  FPComplexAdder_v2_12 FPComplexAdder_v2_12_1 ( // @[FPComplex.scala 1136:17]
    .clock(FPComplexAdder_v2_12_1_clock),
    .reset(FPComplexAdder_v2_12_1_reset),
    .io_in_a_Re(FPComplexAdder_v2_12_1_io_in_a_Re),
    .io_in_a_Im(FPComplexAdder_v2_12_1_io_in_a_Im),
    .io_in_b_Re(FPComplexAdder_v2_12_1_io_in_b_Re),
    .io_in_b_Im(FPComplexAdder_v2_12_1_io_in_b_Im),
    .io_out_s_Re(FPComplexAdder_v2_12_1_io_out_s_Re),
    .io_out_s_Im(FPComplexAdder_v2_12_1_io_out_s_Im)
  );
  FPComplexAdder_v2_12 FPComplexAdder_v2_12_2 ( // @[FPComplex.scala 1136:17]
    .clock(FPComplexAdder_v2_12_2_clock),
    .reset(FPComplexAdder_v2_12_2_reset),
    .io_in_a_Re(FPComplexAdder_v2_12_2_io_in_a_Re),
    .io_in_a_Im(FPComplexAdder_v2_12_2_io_in_a_Im),
    .io_in_b_Re(FPComplexAdder_v2_12_2_io_in_b_Re),
    .io_in_b_Im(FPComplexAdder_v2_12_2_io_in_b_Im),
    .io_out_s_Re(FPComplexAdder_v2_12_2_io_out_s_Re),
    .io_out_s_Im(FPComplexAdder_v2_12_2_io_out_s_Im)
  );
  FPComplexAdder_v2_12 FPComplexAdder_v2_12_3 ( // @[FPComplex.scala 1136:17]
    .clock(FPComplexAdder_v2_12_3_clock),
    .reset(FPComplexAdder_v2_12_3_reset),
    .io_in_a_Re(FPComplexAdder_v2_12_3_io_in_a_Re),
    .io_in_a_Im(FPComplexAdder_v2_12_3_io_in_a_Im),
    .io_in_b_Re(FPComplexAdder_v2_12_3_io_in_b_Re),
    .io_in_b_Im(FPComplexAdder_v2_12_3_io_in_b_Im),
    .io_out_s_Re(FPComplexAdder_v2_12_3_io_out_s_Re),
    .io_out_s_Im(FPComplexAdder_v2_12_3_io_out_s_Im)
  );
  FPComplexAdder_v2_12 FPComplexAdder_v2_12_4 ( // @[FPComplex.scala 1136:17]
    .clock(FPComplexAdder_v2_12_4_clock),
    .reset(FPComplexAdder_v2_12_4_reset),
    .io_in_a_Re(FPComplexAdder_v2_12_4_io_in_a_Re),
    .io_in_a_Im(FPComplexAdder_v2_12_4_io_in_a_Im),
    .io_in_b_Re(FPComplexAdder_v2_12_4_io_in_b_Re),
    .io_in_b_Im(FPComplexAdder_v2_12_4_io_in_b_Im),
    .io_out_s_Re(FPComplexAdder_v2_12_4_io_out_s_Re),
    .io_out_s_Im(FPComplexAdder_v2_12_4_io_out_s_Im)
  );
  FPComplexAdder_v2_12 FPComplexAdder_v2_12_5 ( // @[FPComplex.scala 1136:17]
    .clock(FPComplexAdder_v2_12_5_clock),
    .reset(FPComplexAdder_v2_12_5_reset),
    .io_in_a_Re(FPComplexAdder_v2_12_5_io_in_a_Re),
    .io_in_a_Im(FPComplexAdder_v2_12_5_io_in_a_Im),
    .io_in_b_Re(FPComplexAdder_v2_12_5_io_in_b_Re),
    .io_in_b_Im(FPComplexAdder_v2_12_5_io_in_b_Im),
    .io_out_s_Re(FPComplexAdder_v2_12_5_io_out_s_Re),
    .io_out_s_Im(FPComplexAdder_v2_12_5_io_out_s_Im)
  );
  FPComplexAdder_v2_12 FPComplexAdder_v2_12_6 ( // @[FPComplex.scala 1136:17]
    .clock(FPComplexAdder_v2_12_6_clock),
    .reset(FPComplexAdder_v2_12_6_reset),
    .io_in_a_Re(FPComplexAdder_v2_12_6_io_in_a_Re),
    .io_in_a_Im(FPComplexAdder_v2_12_6_io_in_a_Im),
    .io_in_b_Re(FPComplexAdder_v2_12_6_io_in_b_Re),
    .io_in_b_Im(FPComplexAdder_v2_12_6_io_in_b_Im),
    .io_out_s_Re(FPComplexAdder_v2_12_6_io_out_s_Re),
    .io_out_s_Im(FPComplexAdder_v2_12_6_io_out_s_Im)
  );
  FPComplexAdder_v2_12 FPComplexAdder_v2_12_7 ( // @[FPComplex.scala 1136:17]
    .clock(FPComplexAdder_v2_12_7_clock),
    .reset(FPComplexAdder_v2_12_7_reset),
    .io_in_a_Re(FPComplexAdder_v2_12_7_io_in_a_Re),
    .io_in_a_Im(FPComplexAdder_v2_12_7_io_in_a_Im),
    .io_in_b_Re(FPComplexAdder_v2_12_7_io_in_b_Re),
    .io_in_b_Im(FPComplexAdder_v2_12_7_io_in_b_Im),
    .io_out_s_Re(FPComplexAdder_v2_12_7_io_out_s_Re),
    .io_out_s_Im(FPComplexAdder_v2_12_7_io_out_s_Im)
  );
  FPComplexAdder_v2_12 FPComplexAdder_v2_12_8 ( // @[FPComplex.scala 1136:17]
    .clock(FPComplexAdder_v2_12_8_clock),
    .reset(FPComplexAdder_v2_12_8_reset),
    .io_in_a_Re(FPComplexAdder_v2_12_8_io_in_a_Re),
    .io_in_a_Im(FPComplexAdder_v2_12_8_io_in_a_Im),
    .io_in_b_Re(FPComplexAdder_v2_12_8_io_in_b_Re),
    .io_in_b_Im(FPComplexAdder_v2_12_8_io_in_b_Im),
    .io_out_s_Re(FPComplexAdder_v2_12_8_io_out_s_Re),
    .io_out_s_Im(FPComplexAdder_v2_12_8_io_out_s_Im)
  );
  FPComplexAdder_v2_12 FPComplexAdder_v2_12_9 ( // @[FPComplex.scala 1136:17]
    .clock(FPComplexAdder_v2_12_9_clock),
    .reset(FPComplexAdder_v2_12_9_reset),
    .io_in_a_Re(FPComplexAdder_v2_12_9_io_in_a_Re),
    .io_in_a_Im(FPComplexAdder_v2_12_9_io_in_a_Im),
    .io_in_b_Re(FPComplexAdder_v2_12_9_io_in_b_Re),
    .io_in_b_Im(FPComplexAdder_v2_12_9_io_in_b_Im),
    .io_out_s_Re(FPComplexAdder_v2_12_9_io_out_s_Re),
    .io_out_s_Im(FPComplexAdder_v2_12_9_io_out_s_Im)
  );
  FPComplexAdder_v2_12 FPComplexAdder_v2_12_10 ( // @[FPComplex.scala 1136:17]
    .clock(FPComplexAdder_v2_12_10_clock),
    .reset(FPComplexAdder_v2_12_10_reset),
    .io_in_a_Re(FPComplexAdder_v2_12_10_io_in_a_Re),
    .io_in_a_Im(FPComplexAdder_v2_12_10_io_in_a_Im),
    .io_in_b_Re(FPComplexAdder_v2_12_10_io_in_b_Re),
    .io_in_b_Im(FPComplexAdder_v2_12_10_io_in_b_Im),
    .io_out_s_Re(FPComplexAdder_v2_12_10_io_out_s_Re),
    .io_out_s_Im(FPComplexAdder_v2_12_10_io_out_s_Im)
  );
  FPComplexAdder_v2_12 FPComplexAdder_v2_12_11 ( // @[FPComplex.scala 1136:17]
    .clock(FPComplexAdder_v2_12_11_clock),
    .reset(FPComplexAdder_v2_12_11_reset),
    .io_in_a_Re(FPComplexAdder_v2_12_11_io_in_a_Re),
    .io_in_a_Im(FPComplexAdder_v2_12_11_io_in_a_Im),
    .io_in_b_Re(FPComplexAdder_v2_12_11_io_in_b_Re),
    .io_in_b_Im(FPComplexAdder_v2_12_11_io_in_b_Im),
    .io_out_s_Re(FPComplexAdder_v2_12_11_io_out_s_Re),
    .io_out_s_Im(FPComplexAdder_v2_12_11_io_out_s_Im)
  );
  FPComplexAdder_v2_12 FPComplexAdder_v2_12_12 ( // @[FPComplex.scala 1136:17]
    .clock(FPComplexAdder_v2_12_12_clock),
    .reset(FPComplexAdder_v2_12_12_reset),
    .io_in_a_Re(FPComplexAdder_v2_12_12_io_in_a_Re),
    .io_in_a_Im(FPComplexAdder_v2_12_12_io_in_a_Im),
    .io_in_b_Re(FPComplexAdder_v2_12_12_io_in_b_Re),
    .io_in_b_Im(FPComplexAdder_v2_12_12_io_in_b_Im),
    .io_out_s_Re(FPComplexAdder_v2_12_12_io_out_s_Re),
    .io_out_s_Im(FPComplexAdder_v2_12_12_io_out_s_Im)
  );
  FPComplexAdder_v2_12 FPComplexAdder_v2_12_13 ( // @[FPComplex.scala 1136:17]
    .clock(FPComplexAdder_v2_12_13_clock),
    .reset(FPComplexAdder_v2_12_13_reset),
    .io_in_a_Re(FPComplexAdder_v2_12_13_io_in_a_Re),
    .io_in_a_Im(FPComplexAdder_v2_12_13_io_in_a_Im),
    .io_in_b_Re(FPComplexAdder_v2_12_13_io_in_b_Re),
    .io_in_b_Im(FPComplexAdder_v2_12_13_io_in_b_Im),
    .io_out_s_Re(FPComplexAdder_v2_12_13_io_out_s_Re),
    .io_out_s_Im(FPComplexAdder_v2_12_13_io_out_s_Im)
  );
  FPComplexAdder_v2_12 FPComplexAdder_v2_12_14 ( // @[FPComplex.scala 1136:17]
    .clock(FPComplexAdder_v2_12_14_clock),
    .reset(FPComplexAdder_v2_12_14_reset),
    .io_in_a_Re(FPComplexAdder_v2_12_14_io_in_a_Re),
    .io_in_a_Im(FPComplexAdder_v2_12_14_io_in_a_Im),
    .io_in_b_Re(FPComplexAdder_v2_12_14_io_in_b_Re),
    .io_in_b_Im(FPComplexAdder_v2_12_14_io_in_b_Im),
    .io_out_s_Re(FPComplexAdder_v2_12_14_io_out_s_Re),
    .io_out_s_Im(FPComplexAdder_v2_12_14_io_out_s_Im)
  );
  assign io_out_s_Re = io_out_s_REG_Re; // @[FPComplex.scala 1185:16]
  assign io_out_s_Im = io_out_s_REG_Im; // @[FPComplex.scala 1185:16]
  assign FPComplexMult_v2_12_clock = clock;
  assign FPComplexMult_v2_12_reset = reset;
  assign FPComplexMult_v2_12_io_in_a_Re = io_in_a_0_Re; // @[FPComplex.scala 1130:47]
  assign FPComplexMult_v2_12_io_in_a_Im = io_in_a_0_Im; // @[FPComplex.scala 1130:47]
  assign FPComplexMult_v2_12_io_in_b_Re = io_in_b_0_Re; // @[FPComplex.scala 1131:47]
  assign FPComplexMult_v2_12_io_in_b_Im = io_in_b_0_Im; // @[FPComplex.scala 1131:47]
  assign FPComplexMult_v2_12_1_clock = clock;
  assign FPComplexMult_v2_12_1_reset = reset;
  assign FPComplexMult_v2_12_1_io_in_a_Re = io_in_a_1_Re; // @[FPComplex.scala 1130:47]
  assign FPComplexMult_v2_12_1_io_in_a_Im = io_in_a_1_Im; // @[FPComplex.scala 1130:47]
  assign FPComplexMult_v2_12_1_io_in_b_Re = io_in_b_1_Re; // @[FPComplex.scala 1131:47]
  assign FPComplexMult_v2_12_1_io_in_b_Im = io_in_b_1_Im; // @[FPComplex.scala 1131:47]
  assign FPComplexMult_v2_12_2_clock = clock;
  assign FPComplexMult_v2_12_2_reset = reset;
  assign FPComplexMult_v2_12_2_io_in_a_Re = io_in_a_2_Re; // @[FPComplex.scala 1130:47]
  assign FPComplexMult_v2_12_2_io_in_a_Im = io_in_a_2_Im; // @[FPComplex.scala 1130:47]
  assign FPComplexMult_v2_12_2_io_in_b_Re = io_in_b_2_Re; // @[FPComplex.scala 1131:47]
  assign FPComplexMult_v2_12_2_io_in_b_Im = io_in_b_2_Im; // @[FPComplex.scala 1131:47]
  assign FPComplexMult_v2_12_3_clock = clock;
  assign FPComplexMult_v2_12_3_reset = reset;
  assign FPComplexMult_v2_12_3_io_in_a_Re = io_in_a_3_Re; // @[FPComplex.scala 1130:47]
  assign FPComplexMult_v2_12_3_io_in_a_Im = io_in_a_3_Im; // @[FPComplex.scala 1130:47]
  assign FPComplexMult_v2_12_3_io_in_b_Re = io_in_b_3_Re; // @[FPComplex.scala 1131:47]
  assign FPComplexMult_v2_12_3_io_in_b_Im = io_in_b_3_Im; // @[FPComplex.scala 1131:47]
  assign FPComplexMult_v2_12_4_clock = clock;
  assign FPComplexMult_v2_12_4_reset = reset;
  assign FPComplexMult_v2_12_4_io_in_a_Re = io_in_a_4_Re; // @[FPComplex.scala 1130:47]
  assign FPComplexMult_v2_12_4_io_in_a_Im = io_in_a_4_Im; // @[FPComplex.scala 1130:47]
  assign FPComplexMult_v2_12_4_io_in_b_Re = io_in_b_4_Re; // @[FPComplex.scala 1131:47]
  assign FPComplexMult_v2_12_4_io_in_b_Im = io_in_b_4_Im; // @[FPComplex.scala 1131:47]
  assign FPComplexMult_v2_12_5_clock = clock;
  assign FPComplexMult_v2_12_5_reset = reset;
  assign FPComplexMult_v2_12_5_io_in_a_Re = io_in_a_5_Re; // @[FPComplex.scala 1130:47]
  assign FPComplexMult_v2_12_5_io_in_a_Im = io_in_a_5_Im; // @[FPComplex.scala 1130:47]
  assign FPComplexMult_v2_12_5_io_in_b_Re = io_in_b_5_Re; // @[FPComplex.scala 1131:47]
  assign FPComplexMult_v2_12_5_io_in_b_Im = io_in_b_5_Im; // @[FPComplex.scala 1131:47]
  assign FPComplexMult_v2_12_6_clock = clock;
  assign FPComplexMult_v2_12_6_reset = reset;
  assign FPComplexMult_v2_12_6_io_in_a_Re = io_in_a_6_Re; // @[FPComplex.scala 1130:47]
  assign FPComplexMult_v2_12_6_io_in_a_Im = io_in_a_6_Im; // @[FPComplex.scala 1130:47]
  assign FPComplexMult_v2_12_6_io_in_b_Re = io_in_b_6_Re; // @[FPComplex.scala 1131:47]
  assign FPComplexMult_v2_12_6_io_in_b_Im = io_in_b_6_Im; // @[FPComplex.scala 1131:47]
  assign FPComplexMult_v2_12_7_clock = clock;
  assign FPComplexMult_v2_12_7_reset = reset;
  assign FPComplexMult_v2_12_7_io_in_a_Re = io_in_a_7_Re; // @[FPComplex.scala 1130:47]
  assign FPComplexMult_v2_12_7_io_in_a_Im = io_in_a_7_Im; // @[FPComplex.scala 1130:47]
  assign FPComplexMult_v2_12_7_io_in_b_Re = io_in_b_7_Re; // @[FPComplex.scala 1131:47]
  assign FPComplexMult_v2_12_7_io_in_b_Im = io_in_b_7_Im; // @[FPComplex.scala 1131:47]
  assign FPComplexMult_v2_12_8_clock = clock;
  assign FPComplexMult_v2_12_8_reset = reset;
  assign FPComplexMult_v2_12_8_io_in_a_Re = io_in_a_8_Re; // @[FPComplex.scala 1130:47]
  assign FPComplexMult_v2_12_8_io_in_a_Im = io_in_a_8_Im; // @[FPComplex.scala 1130:47]
  assign FPComplexMult_v2_12_8_io_in_b_Re = io_in_b_8_Re; // @[FPComplex.scala 1131:47]
  assign FPComplexMult_v2_12_8_io_in_b_Im = io_in_b_8_Im; // @[FPComplex.scala 1131:47]
  assign FPComplexMult_v2_12_9_clock = clock;
  assign FPComplexMult_v2_12_9_reset = reset;
  assign FPComplexMult_v2_12_9_io_in_a_Re = io_in_a_9_Re; // @[FPComplex.scala 1130:47]
  assign FPComplexMult_v2_12_9_io_in_a_Im = io_in_a_9_Im; // @[FPComplex.scala 1130:47]
  assign FPComplexMult_v2_12_9_io_in_b_Re = io_in_b_9_Re; // @[FPComplex.scala 1131:47]
  assign FPComplexMult_v2_12_9_io_in_b_Im = io_in_b_9_Im; // @[FPComplex.scala 1131:47]
  assign FPComplexMult_v2_12_10_clock = clock;
  assign FPComplexMult_v2_12_10_reset = reset;
  assign FPComplexMult_v2_12_10_io_in_a_Re = io_in_a_10_Re; // @[FPComplex.scala 1130:47]
  assign FPComplexMult_v2_12_10_io_in_a_Im = io_in_a_10_Im; // @[FPComplex.scala 1130:47]
  assign FPComplexMult_v2_12_10_io_in_b_Re = io_in_b_10_Re; // @[FPComplex.scala 1131:47]
  assign FPComplexMult_v2_12_10_io_in_b_Im = io_in_b_10_Im; // @[FPComplex.scala 1131:47]
  assign FPComplexMult_v2_12_11_clock = clock;
  assign FPComplexMult_v2_12_11_reset = reset;
  assign FPComplexMult_v2_12_11_io_in_a_Re = io_in_a_11_Re; // @[FPComplex.scala 1130:47]
  assign FPComplexMult_v2_12_11_io_in_a_Im = io_in_a_11_Im; // @[FPComplex.scala 1130:47]
  assign FPComplexMult_v2_12_11_io_in_b_Re = io_in_b_11_Re; // @[FPComplex.scala 1131:47]
  assign FPComplexMult_v2_12_11_io_in_b_Im = io_in_b_11_Im; // @[FPComplex.scala 1131:47]
  assign FPComplexMult_v2_12_12_clock = clock;
  assign FPComplexMult_v2_12_12_reset = reset;
  assign FPComplexMult_v2_12_12_io_in_a_Re = io_in_a_12_Re; // @[FPComplex.scala 1130:47]
  assign FPComplexMult_v2_12_12_io_in_a_Im = io_in_a_12_Im; // @[FPComplex.scala 1130:47]
  assign FPComplexMult_v2_12_12_io_in_b_Re = io_in_b_12_Re; // @[FPComplex.scala 1131:47]
  assign FPComplexMult_v2_12_12_io_in_b_Im = io_in_b_12_Im; // @[FPComplex.scala 1131:47]
  assign FPComplexMult_v2_12_13_clock = clock;
  assign FPComplexMult_v2_12_13_reset = reset;
  assign FPComplexMult_v2_12_13_io_in_a_Re = io_in_a_13_Re; // @[FPComplex.scala 1130:47]
  assign FPComplexMult_v2_12_13_io_in_a_Im = io_in_a_13_Im; // @[FPComplex.scala 1130:47]
  assign FPComplexMult_v2_12_13_io_in_b_Re = io_in_b_13_Re; // @[FPComplex.scala 1131:47]
  assign FPComplexMult_v2_12_13_io_in_b_Im = io_in_b_13_Im; // @[FPComplex.scala 1131:47]
  assign FPComplexMult_v2_12_14_clock = clock;
  assign FPComplexMult_v2_12_14_reset = reset;
  assign FPComplexMult_v2_12_14_io_in_a_Re = io_in_a_14_Re; // @[FPComplex.scala 1130:47]
  assign FPComplexMult_v2_12_14_io_in_a_Im = io_in_a_14_Im; // @[FPComplex.scala 1130:47]
  assign FPComplexMult_v2_12_14_io_in_b_Re = io_in_b_14_Re; // @[FPComplex.scala 1131:47]
  assign FPComplexMult_v2_12_14_io_in_b_Im = io_in_b_14_Im; // @[FPComplex.scala 1131:47]
  assign FPComplexMult_v2_12_15_clock = clock;
  assign FPComplexMult_v2_12_15_reset = reset;
  assign FPComplexMult_v2_12_15_io_in_a_Re = io_in_a_15_Re; // @[FPComplex.scala 1130:47]
  assign FPComplexMult_v2_12_15_io_in_a_Im = io_in_a_15_Im; // @[FPComplex.scala 1130:47]
  assign FPComplexMult_v2_12_15_io_in_b_Re = io_in_b_15_Re; // @[FPComplex.scala 1131:47]
  assign FPComplexMult_v2_12_15_io_in_b_Im = io_in_b_15_Im; // @[FPComplex.scala 1131:47]
  assign FPComplexAdder_v2_12_clock = clock;
  assign FPComplexAdder_v2_12_reset = reset;
  assign FPComplexAdder_v2_12_io_in_a_Re = FPComplexMult_v2_12_io_out_s_Re; // @[FPComplex.scala 1167:43]
  assign FPComplexAdder_v2_12_io_in_a_Im = FPComplexMult_v2_12_io_out_s_Im; // @[FPComplex.scala 1167:43]
  assign FPComplexAdder_v2_12_io_in_b_Re = FPComplexMult_v2_12_1_io_out_s_Re; // @[FPComplex.scala 1168:43]
  assign FPComplexAdder_v2_12_io_in_b_Im = FPComplexMult_v2_12_1_io_out_s_Im; // @[FPComplex.scala 1168:43]
  assign FPComplexAdder_v2_12_1_clock = clock;
  assign FPComplexAdder_v2_12_1_reset = reset;
  assign FPComplexAdder_v2_12_1_io_in_a_Re = FPComplexMult_v2_12_2_io_out_s_Re; // @[FPComplex.scala 1167:43]
  assign FPComplexAdder_v2_12_1_io_in_a_Im = FPComplexMult_v2_12_2_io_out_s_Im; // @[FPComplex.scala 1167:43]
  assign FPComplexAdder_v2_12_1_io_in_b_Re = FPComplexMult_v2_12_3_io_out_s_Re; // @[FPComplex.scala 1168:43]
  assign FPComplexAdder_v2_12_1_io_in_b_Im = FPComplexMult_v2_12_3_io_out_s_Im; // @[FPComplex.scala 1168:43]
  assign FPComplexAdder_v2_12_2_clock = clock;
  assign FPComplexAdder_v2_12_2_reset = reset;
  assign FPComplexAdder_v2_12_2_io_in_a_Re = FPComplexMult_v2_12_4_io_out_s_Re; // @[FPComplex.scala 1167:43]
  assign FPComplexAdder_v2_12_2_io_in_a_Im = FPComplexMult_v2_12_4_io_out_s_Im; // @[FPComplex.scala 1167:43]
  assign FPComplexAdder_v2_12_2_io_in_b_Re = FPComplexMult_v2_12_5_io_out_s_Re; // @[FPComplex.scala 1168:43]
  assign FPComplexAdder_v2_12_2_io_in_b_Im = FPComplexMult_v2_12_5_io_out_s_Im; // @[FPComplex.scala 1168:43]
  assign FPComplexAdder_v2_12_3_clock = clock;
  assign FPComplexAdder_v2_12_3_reset = reset;
  assign FPComplexAdder_v2_12_3_io_in_a_Re = FPComplexMult_v2_12_6_io_out_s_Re; // @[FPComplex.scala 1167:43]
  assign FPComplexAdder_v2_12_3_io_in_a_Im = FPComplexMult_v2_12_6_io_out_s_Im; // @[FPComplex.scala 1167:43]
  assign FPComplexAdder_v2_12_3_io_in_b_Re = FPComplexMult_v2_12_7_io_out_s_Re; // @[FPComplex.scala 1168:43]
  assign FPComplexAdder_v2_12_3_io_in_b_Im = FPComplexMult_v2_12_7_io_out_s_Im; // @[FPComplex.scala 1168:43]
  assign FPComplexAdder_v2_12_4_clock = clock;
  assign FPComplexAdder_v2_12_4_reset = reset;
  assign FPComplexAdder_v2_12_4_io_in_a_Re = FPComplexMult_v2_12_8_io_out_s_Re; // @[FPComplex.scala 1167:43]
  assign FPComplexAdder_v2_12_4_io_in_a_Im = FPComplexMult_v2_12_8_io_out_s_Im; // @[FPComplex.scala 1167:43]
  assign FPComplexAdder_v2_12_4_io_in_b_Re = FPComplexMult_v2_12_9_io_out_s_Re; // @[FPComplex.scala 1168:43]
  assign FPComplexAdder_v2_12_4_io_in_b_Im = FPComplexMult_v2_12_9_io_out_s_Im; // @[FPComplex.scala 1168:43]
  assign FPComplexAdder_v2_12_5_clock = clock;
  assign FPComplexAdder_v2_12_5_reset = reset;
  assign FPComplexAdder_v2_12_5_io_in_a_Re = FPComplexMult_v2_12_10_io_out_s_Re; // @[FPComplex.scala 1167:43]
  assign FPComplexAdder_v2_12_5_io_in_a_Im = FPComplexMult_v2_12_10_io_out_s_Im; // @[FPComplex.scala 1167:43]
  assign FPComplexAdder_v2_12_5_io_in_b_Re = FPComplexMult_v2_12_11_io_out_s_Re; // @[FPComplex.scala 1168:43]
  assign FPComplexAdder_v2_12_5_io_in_b_Im = FPComplexMult_v2_12_11_io_out_s_Im; // @[FPComplex.scala 1168:43]
  assign FPComplexAdder_v2_12_6_clock = clock;
  assign FPComplexAdder_v2_12_6_reset = reset;
  assign FPComplexAdder_v2_12_6_io_in_a_Re = FPComplexMult_v2_12_12_io_out_s_Re; // @[FPComplex.scala 1167:43]
  assign FPComplexAdder_v2_12_6_io_in_a_Im = FPComplexMult_v2_12_12_io_out_s_Im; // @[FPComplex.scala 1167:43]
  assign FPComplexAdder_v2_12_6_io_in_b_Re = FPComplexMult_v2_12_13_io_out_s_Re; // @[FPComplex.scala 1168:43]
  assign FPComplexAdder_v2_12_6_io_in_b_Im = FPComplexMult_v2_12_13_io_out_s_Im; // @[FPComplex.scala 1168:43]
  assign FPComplexAdder_v2_12_7_clock = clock;
  assign FPComplexAdder_v2_12_7_reset = reset;
  assign FPComplexAdder_v2_12_7_io_in_a_Re = FPComplexMult_v2_12_14_io_out_s_Re; // @[FPComplex.scala 1167:43]
  assign FPComplexAdder_v2_12_7_io_in_a_Im = FPComplexMult_v2_12_14_io_out_s_Im; // @[FPComplex.scala 1167:43]
  assign FPComplexAdder_v2_12_7_io_in_b_Re = FPComplexMult_v2_12_15_io_out_s_Re; // @[FPComplex.scala 1168:43]
  assign FPComplexAdder_v2_12_7_io_in_b_Im = FPComplexMult_v2_12_15_io_out_s_Im; // @[FPComplex.scala 1168:43]
  assign FPComplexAdder_v2_12_8_clock = clock;
  assign FPComplexAdder_v2_12_8_reset = reset;
  assign FPComplexAdder_v2_12_8_io_in_a_Re = FPComplexAdder_v2_12_io_out_s_Re; // @[FPComplex.scala 1167:43]
  assign FPComplexAdder_v2_12_8_io_in_a_Im = FPComplexAdder_v2_12_io_out_s_Im; // @[FPComplex.scala 1167:43]
  assign FPComplexAdder_v2_12_8_io_in_b_Re = FPComplexAdder_v2_12_1_io_out_s_Re; // @[FPComplex.scala 1168:43]
  assign FPComplexAdder_v2_12_8_io_in_b_Im = FPComplexAdder_v2_12_1_io_out_s_Im; // @[FPComplex.scala 1168:43]
  assign FPComplexAdder_v2_12_9_clock = clock;
  assign FPComplexAdder_v2_12_9_reset = reset;
  assign FPComplexAdder_v2_12_9_io_in_a_Re = FPComplexAdder_v2_12_2_io_out_s_Re; // @[FPComplex.scala 1167:43]
  assign FPComplexAdder_v2_12_9_io_in_a_Im = FPComplexAdder_v2_12_2_io_out_s_Im; // @[FPComplex.scala 1167:43]
  assign FPComplexAdder_v2_12_9_io_in_b_Re = FPComplexAdder_v2_12_3_io_out_s_Re; // @[FPComplex.scala 1168:43]
  assign FPComplexAdder_v2_12_9_io_in_b_Im = FPComplexAdder_v2_12_3_io_out_s_Im; // @[FPComplex.scala 1168:43]
  assign FPComplexAdder_v2_12_10_clock = clock;
  assign FPComplexAdder_v2_12_10_reset = reset;
  assign FPComplexAdder_v2_12_10_io_in_a_Re = FPComplexAdder_v2_12_4_io_out_s_Re; // @[FPComplex.scala 1167:43]
  assign FPComplexAdder_v2_12_10_io_in_a_Im = FPComplexAdder_v2_12_4_io_out_s_Im; // @[FPComplex.scala 1167:43]
  assign FPComplexAdder_v2_12_10_io_in_b_Re = FPComplexAdder_v2_12_5_io_out_s_Re; // @[FPComplex.scala 1168:43]
  assign FPComplexAdder_v2_12_10_io_in_b_Im = FPComplexAdder_v2_12_5_io_out_s_Im; // @[FPComplex.scala 1168:43]
  assign FPComplexAdder_v2_12_11_clock = clock;
  assign FPComplexAdder_v2_12_11_reset = reset;
  assign FPComplexAdder_v2_12_11_io_in_a_Re = FPComplexAdder_v2_12_6_io_out_s_Re; // @[FPComplex.scala 1167:43]
  assign FPComplexAdder_v2_12_11_io_in_a_Im = FPComplexAdder_v2_12_6_io_out_s_Im; // @[FPComplex.scala 1167:43]
  assign FPComplexAdder_v2_12_11_io_in_b_Re = FPComplexAdder_v2_12_7_io_out_s_Re; // @[FPComplex.scala 1168:43]
  assign FPComplexAdder_v2_12_11_io_in_b_Im = FPComplexAdder_v2_12_7_io_out_s_Im; // @[FPComplex.scala 1168:43]
  assign FPComplexAdder_v2_12_12_clock = clock;
  assign FPComplexAdder_v2_12_12_reset = reset;
  assign FPComplexAdder_v2_12_12_io_in_a_Re = FPComplexAdder_v2_12_8_io_out_s_Re; // @[FPComplex.scala 1167:43]
  assign FPComplexAdder_v2_12_12_io_in_a_Im = FPComplexAdder_v2_12_8_io_out_s_Im; // @[FPComplex.scala 1167:43]
  assign FPComplexAdder_v2_12_12_io_in_b_Re = FPComplexAdder_v2_12_9_io_out_s_Re; // @[FPComplex.scala 1168:43]
  assign FPComplexAdder_v2_12_12_io_in_b_Im = FPComplexAdder_v2_12_9_io_out_s_Im; // @[FPComplex.scala 1168:43]
  assign FPComplexAdder_v2_12_13_clock = clock;
  assign FPComplexAdder_v2_12_13_reset = reset;
  assign FPComplexAdder_v2_12_13_io_in_a_Re = FPComplexAdder_v2_12_10_io_out_s_Re; // @[FPComplex.scala 1167:43]
  assign FPComplexAdder_v2_12_13_io_in_a_Im = FPComplexAdder_v2_12_10_io_out_s_Im; // @[FPComplex.scala 1167:43]
  assign FPComplexAdder_v2_12_13_io_in_b_Re = FPComplexAdder_v2_12_11_io_out_s_Re; // @[FPComplex.scala 1168:43]
  assign FPComplexAdder_v2_12_13_io_in_b_Im = FPComplexAdder_v2_12_11_io_out_s_Im; // @[FPComplex.scala 1168:43]
  assign FPComplexAdder_v2_12_14_clock = clock;
  assign FPComplexAdder_v2_12_14_reset = reset;
  assign FPComplexAdder_v2_12_14_io_in_a_Re = FPComplexAdder_v2_12_12_io_out_s_Re; // @[FPComplex.scala 1167:43]
  assign FPComplexAdder_v2_12_14_io_in_a_Im = FPComplexAdder_v2_12_12_io_out_s_Im; // @[FPComplex.scala 1167:43]
  assign FPComplexAdder_v2_12_14_io_in_b_Re = FPComplexAdder_v2_12_13_io_out_s_Re; // @[FPComplex.scala 1168:43]
  assign FPComplexAdder_v2_12_14_io_in_b_Im = FPComplexAdder_v2_12_13_io_out_s_Im; // @[FPComplex.scala 1168:43]
  always @(posedge clock) begin
    io_out_s_REG_Re <= FPComplexAdder_v2_12_14_io_out_s_Re; // @[FPComplex.scala 1185:26]
    io_out_s_REG_Im <= FPComplexAdder_v2_12_14_io_out_s_Im; // @[FPComplex.scala 1185:26]
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  io_out_s_REG_Re = _RAND_0[15:0];
  _RAND_1 = {1{`RANDOM}};
  io_out_s_REG_Im = _RAND_1[15:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module FP_square_root_newfpu_12(
  input         clock,
  input         reset,
  input  [15:0] io_in_a,
  output [15:0] io_out_s
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_85;
  reg [31:0] _RAND_86;
  reg [31:0] _RAND_87;
  reg [31:0] _RAND_88;
  reg [31:0] _RAND_89;
  reg [31:0] _RAND_90;
  reg [31:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [31:0] _RAND_93;
  reg [31:0] _RAND_94;
  reg [31:0] _RAND_95;
  reg [31:0] _RAND_96;
  reg [31:0] _RAND_97;
  reg [31:0] _RAND_98;
  reg [31:0] _RAND_99;
  reg [31:0] _RAND_100;
  reg [31:0] _RAND_101;
  reg [31:0] _RAND_102;
  reg [31:0] _RAND_103;
  reg [31:0] _RAND_104;
  reg [31:0] _RAND_105;
  reg [31:0] _RAND_106;
  reg [31:0] _RAND_107;
  reg [31:0] _RAND_108;
  reg [31:0] _RAND_109;
  reg [31:0] _RAND_110;
  reg [31:0] _RAND_111;
  reg [31:0] _RAND_112;
  reg [31:0] _RAND_113;
  reg [31:0] _RAND_114;
  reg [31:0] _RAND_115;
  reg [31:0] _RAND_116;
  reg [31:0] _RAND_117;
  reg [31:0] _RAND_118;
  reg [31:0] _RAND_119;
  reg [31:0] _RAND_120;
  reg [31:0] _RAND_121;
  reg [31:0] _RAND_122;
  reg [31:0] _RAND_123;
  reg [31:0] _RAND_124;
  reg [31:0] _RAND_125;
  reg [31:0] _RAND_126;
  reg [31:0] _RAND_127;
  reg [31:0] _RAND_128;
  reg [31:0] _RAND_129;
  reg [31:0] _RAND_130;
  reg [31:0] _RAND_131;
  reg [31:0] _RAND_132;
  reg [31:0] _RAND_133;
  reg [31:0] _RAND_134;
  reg [31:0] _RAND_135;
  reg [31:0] _RAND_136;
  reg [31:0] _RAND_137;
  reg [31:0] _RAND_138;
  reg [31:0] _RAND_139;
  reg [31:0] _RAND_140;
  reg [31:0] _RAND_141;
  reg [31:0] _RAND_142;
  reg [31:0] _RAND_143;
  reg [31:0] _RAND_144;
  reg [31:0] _RAND_145;
  reg [31:0] _RAND_146;
  reg [31:0] _RAND_147;
  reg [31:0] _RAND_148;
  reg [31:0] _RAND_149;
  reg [31:0] _RAND_150;
  reg [31:0] _RAND_151;
  reg [31:0] _RAND_152;
  reg [31:0] _RAND_153;
  reg [31:0] _RAND_154;
  reg [31:0] _RAND_155;
  reg [31:0] _RAND_156;
  reg [31:0] _RAND_157;
  reg [31:0] _RAND_158;
  reg [31:0] _RAND_159;
  reg [31:0] _RAND_160;
  reg [31:0] _RAND_161;
  reg [31:0] _RAND_162;
  reg [31:0] _RAND_163;
  reg [31:0] _RAND_164;
  reg [31:0] _RAND_165;
  reg [31:0] _RAND_166;
  reg [31:0] _RAND_167;
  reg [31:0] _RAND_168;
  reg [31:0] _RAND_169;
  reg [31:0] _RAND_170;
  reg [31:0] _RAND_171;
  reg [31:0] _RAND_172;
  reg [31:0] _RAND_173;
  reg [31:0] _RAND_174;
  reg [31:0] _RAND_175;
  reg [31:0] _RAND_176;
  reg [31:0] _RAND_177;
  reg [31:0] _RAND_178;
  reg [31:0] _RAND_179;
  reg [31:0] _RAND_180;
  reg [31:0] _RAND_181;
  reg [31:0] _RAND_182;
  reg [31:0] _RAND_183;
  reg [31:0] _RAND_184;
  reg [31:0] _RAND_185;
  reg [31:0] _RAND_186;
  reg [31:0] _RAND_187;
  reg [31:0] _RAND_188;
  reg [31:0] _RAND_189;
  reg [31:0] _RAND_190;
  reg [31:0] _RAND_191;
  reg [31:0] _RAND_192;
  reg [31:0] _RAND_193;
  reg [31:0] _RAND_194;
  reg [31:0] _RAND_195;
  reg [31:0] _RAND_196;
  reg [31:0] _RAND_197;
  reg [31:0] _RAND_198;
  reg [31:0] _RAND_199;
  reg [31:0] _RAND_200;
  reg [31:0] _RAND_201;
  reg [31:0] _RAND_202;
  reg [31:0] _RAND_203;
  reg [31:0] _RAND_204;
  reg [31:0] _RAND_205;
  reg [31:0] _RAND_206;
  reg [31:0] _RAND_207;
  reg [31:0] _RAND_208;
  reg [31:0] _RAND_209;
  reg [31:0] _RAND_210;
  reg [31:0] _RAND_211;
  reg [31:0] _RAND_212;
  reg [31:0] _RAND_213;
  reg [31:0] _RAND_214;
  reg [31:0] _RAND_215;
  reg [31:0] _RAND_216;
  reg [31:0] _RAND_217;
  reg [31:0] _RAND_218;
  reg [31:0] _RAND_219;
  reg [31:0] _RAND_220;
  reg [31:0] _RAND_221;
  reg [31:0] _RAND_222;
  reg [31:0] _RAND_223;
  reg [31:0] _RAND_224;
  reg [31:0] _RAND_225;
  reg [31:0] _RAND_226;
  reg [31:0] _RAND_227;
`endif // RANDOMIZE_REG_INIT
  wire  FP_multiplier_10ccs_12_clock; // @[FloatingPointDesigns.scala 1881:65]
  wire  FP_multiplier_10ccs_12_reset; // @[FloatingPointDesigns.scala 1881:65]
  wire  FP_multiplier_10ccs_12_io_in_en; // @[FloatingPointDesigns.scala 1881:65]
  wire [15:0] FP_multiplier_10ccs_12_io_in_a; // @[FloatingPointDesigns.scala 1881:65]
  wire [15:0] FP_multiplier_10ccs_12_io_in_b; // @[FloatingPointDesigns.scala 1881:65]
  wire [15:0] FP_multiplier_10ccs_12_io_out_s; // @[FloatingPointDesigns.scala 1881:65]
  wire  FP_multiplier_10ccs_12_1_clock; // @[FloatingPointDesigns.scala 1881:65]
  wire  FP_multiplier_10ccs_12_1_reset; // @[FloatingPointDesigns.scala 1881:65]
  wire  FP_multiplier_10ccs_12_1_io_in_en; // @[FloatingPointDesigns.scala 1881:65]
  wire [15:0] FP_multiplier_10ccs_12_1_io_in_a; // @[FloatingPointDesigns.scala 1881:65]
  wire [15:0] FP_multiplier_10ccs_12_1_io_in_b; // @[FloatingPointDesigns.scala 1881:65]
  wire [15:0] FP_multiplier_10ccs_12_1_io_out_s; // @[FloatingPointDesigns.scala 1881:65]
  wire  FP_multiplier_10ccs_12_2_clock; // @[FloatingPointDesigns.scala 1881:65]
  wire  FP_multiplier_10ccs_12_2_reset; // @[FloatingPointDesigns.scala 1881:65]
  wire  FP_multiplier_10ccs_12_2_io_in_en; // @[FloatingPointDesigns.scala 1881:65]
  wire [15:0] FP_multiplier_10ccs_12_2_io_in_a; // @[FloatingPointDesigns.scala 1881:65]
  wire [15:0] FP_multiplier_10ccs_12_2_io_in_b; // @[FloatingPointDesigns.scala 1881:65]
  wire [15:0] FP_multiplier_10ccs_12_2_io_out_s; // @[FloatingPointDesigns.scala 1881:65]
  wire  FP_multiplier_10ccs_12_3_clock; // @[FloatingPointDesigns.scala 1881:65]
  wire  FP_multiplier_10ccs_12_3_reset; // @[FloatingPointDesigns.scala 1881:65]
  wire  FP_multiplier_10ccs_12_3_io_in_en; // @[FloatingPointDesigns.scala 1881:65]
  wire [15:0] FP_multiplier_10ccs_12_3_io_in_a; // @[FloatingPointDesigns.scala 1881:65]
  wire [15:0] FP_multiplier_10ccs_12_3_io_in_b; // @[FloatingPointDesigns.scala 1881:65]
  wire [15:0] FP_multiplier_10ccs_12_3_io_out_s; // @[FloatingPointDesigns.scala 1881:65]
  wire  FP_multiplier_10ccs_12_4_clock; // @[FloatingPointDesigns.scala 1881:65]
  wire  FP_multiplier_10ccs_12_4_reset; // @[FloatingPointDesigns.scala 1881:65]
  wire  FP_multiplier_10ccs_12_4_io_in_en; // @[FloatingPointDesigns.scala 1881:65]
  wire [15:0] FP_multiplier_10ccs_12_4_io_in_a; // @[FloatingPointDesigns.scala 1881:65]
  wire [15:0] FP_multiplier_10ccs_12_4_io_in_b; // @[FloatingPointDesigns.scala 1881:65]
  wire [15:0] FP_multiplier_10ccs_12_4_io_out_s; // @[FloatingPointDesigns.scala 1881:65]
  wire  FP_multiplier_10ccs_12_5_clock; // @[FloatingPointDesigns.scala 1881:65]
  wire  FP_multiplier_10ccs_12_5_reset; // @[FloatingPointDesigns.scala 1881:65]
  wire  FP_multiplier_10ccs_12_5_io_in_en; // @[FloatingPointDesigns.scala 1881:65]
  wire [15:0] FP_multiplier_10ccs_12_5_io_in_a; // @[FloatingPointDesigns.scala 1881:65]
  wire [15:0] FP_multiplier_10ccs_12_5_io_in_b; // @[FloatingPointDesigns.scala 1881:65]
  wire [15:0] FP_multiplier_10ccs_12_5_io_out_s; // @[FloatingPointDesigns.scala 1881:65]
  wire  FP_multiplier_10ccs_12_6_clock; // @[FloatingPointDesigns.scala 1881:65]
  wire  FP_multiplier_10ccs_12_6_reset; // @[FloatingPointDesigns.scala 1881:65]
  wire  FP_multiplier_10ccs_12_6_io_in_en; // @[FloatingPointDesigns.scala 1881:65]
  wire [15:0] FP_multiplier_10ccs_12_6_io_in_a; // @[FloatingPointDesigns.scala 1881:65]
  wire [15:0] FP_multiplier_10ccs_12_6_io_in_b; // @[FloatingPointDesigns.scala 1881:65]
  wire [15:0] FP_multiplier_10ccs_12_6_io_out_s; // @[FloatingPointDesigns.scala 1881:65]
  wire  FP_multiplier_10ccs_12_7_clock; // @[FloatingPointDesigns.scala 1881:65]
  wire  FP_multiplier_10ccs_12_7_reset; // @[FloatingPointDesigns.scala 1881:65]
  wire  FP_multiplier_10ccs_12_7_io_in_en; // @[FloatingPointDesigns.scala 1881:65]
  wire [15:0] FP_multiplier_10ccs_12_7_io_in_a; // @[FloatingPointDesigns.scala 1881:65]
  wire [15:0] FP_multiplier_10ccs_12_7_io_in_b; // @[FloatingPointDesigns.scala 1881:65]
  wire [15:0] FP_multiplier_10ccs_12_7_io_out_s; // @[FloatingPointDesigns.scala 1881:65]
  wire  FP_multiplier_10ccs_12_8_clock; // @[FloatingPointDesigns.scala 1881:65]
  wire  FP_multiplier_10ccs_12_8_reset; // @[FloatingPointDesigns.scala 1881:65]
  wire  FP_multiplier_10ccs_12_8_io_in_en; // @[FloatingPointDesigns.scala 1881:65]
  wire [15:0] FP_multiplier_10ccs_12_8_io_in_a; // @[FloatingPointDesigns.scala 1881:65]
  wire [15:0] FP_multiplier_10ccs_12_8_io_in_b; // @[FloatingPointDesigns.scala 1881:65]
  wire [15:0] FP_multiplier_10ccs_12_8_io_out_s; // @[FloatingPointDesigns.scala 1881:65]
  wire  FP_subtractor_13ccs_12_clock; // @[FloatingPointDesigns.scala 1882:50]
  wire  FP_subtractor_13ccs_12_reset; // @[FloatingPointDesigns.scala 1882:50]
  wire  FP_subtractor_13ccs_12_io_in_en; // @[FloatingPointDesigns.scala 1882:50]
  wire [15:0] FP_subtractor_13ccs_12_io_in_a; // @[FloatingPointDesigns.scala 1882:50]
  wire [15:0] FP_subtractor_13ccs_12_io_in_b; // @[FloatingPointDesigns.scala 1882:50]
  wire [15:0] FP_subtractor_13ccs_12_io_out_s; // @[FloatingPointDesigns.scala 1882:50]
  wire  FP_subtractor_13ccs_12_1_clock; // @[FloatingPointDesigns.scala 1882:50]
  wire  FP_subtractor_13ccs_12_1_reset; // @[FloatingPointDesigns.scala 1882:50]
  wire  FP_subtractor_13ccs_12_1_io_in_en; // @[FloatingPointDesigns.scala 1882:50]
  wire [15:0] FP_subtractor_13ccs_12_1_io_in_a; // @[FloatingPointDesigns.scala 1882:50]
  wire [15:0] FP_subtractor_13ccs_12_1_io_in_b; // @[FloatingPointDesigns.scala 1882:50]
  wire [15:0] FP_subtractor_13ccs_12_1_io_out_s; // @[FloatingPointDesigns.scala 1882:50]
  wire  FP_subtractor_13ccs_12_2_clock; // @[FloatingPointDesigns.scala 1882:50]
  wire  FP_subtractor_13ccs_12_2_reset; // @[FloatingPointDesigns.scala 1882:50]
  wire  FP_subtractor_13ccs_12_2_io_in_en; // @[FloatingPointDesigns.scala 1882:50]
  wire [15:0] FP_subtractor_13ccs_12_2_io_in_a; // @[FloatingPointDesigns.scala 1882:50]
  wire [15:0] FP_subtractor_13ccs_12_2_io_in_b; // @[FloatingPointDesigns.scala 1882:50]
  wire [15:0] FP_subtractor_13ccs_12_2_io_out_s; // @[FloatingPointDesigns.scala 1882:50]
  wire  multiplier4_clock; // @[FloatingPointDesigns.scala 1950:29]
  wire  multiplier4_reset; // @[FloatingPointDesigns.scala 1950:29]
  wire  multiplier4_io_in_en; // @[FloatingPointDesigns.scala 1950:29]
  wire [15:0] multiplier4_io_in_a; // @[FloatingPointDesigns.scala 1950:29]
  wire [15:0] multiplier4_io_in_b; // @[FloatingPointDesigns.scala 1950:29]
  wire [15:0] multiplier4_io_out_s; // @[FloatingPointDesigns.scala 1950:29]
  wire [14:0] _number_T_1 = {{1'd0}, io_in_a[14:1]}; // @[FloatingPointDesigns.scala 1865:36]
  wire [14:0] _GEN_0 = io_in_a[14:0] > 15'h7800 ? 15'h3c00 : _number_T_1; // @[FloatingPointDesigns.scala 1862:46 1863:14 1865:14]
  wire [15:0] number = {{1'd0}, _GEN_0}; // @[FloatingPointDesigns.scala 1859:22]
  wire [15:0] result = 16'h5a00 - number; // @[FloatingPointDesigns.scala 1872:25]
  reg [15:0] x_n_0; // @[FloatingPointDesigns.scala 1874:22]
  reg [15:0] x_n_1; // @[FloatingPointDesigns.scala 1874:22]
  reg [15:0] x_n_2; // @[FloatingPointDesigns.scala 1874:22]
  reg [15:0] x_n_4; // @[FloatingPointDesigns.scala 1874:22]
  reg [15:0] x_n_5; // @[FloatingPointDesigns.scala 1874:22]
  reg [15:0] x_n_6; // @[FloatingPointDesigns.scala 1874:22]
  reg [15:0] x_n_8; // @[FloatingPointDesigns.scala 1874:22]
  reg [15:0] x_n_9; // @[FloatingPointDesigns.scala 1874:22]
  reg [15:0] x_n_10; // @[FloatingPointDesigns.scala 1874:22]
  reg [15:0] a_2_0; // @[FloatingPointDesigns.scala 1875:22]
  reg [15:0] a_2_1; // @[FloatingPointDesigns.scala 1875:22]
  reg [15:0] a_2_2; // @[FloatingPointDesigns.scala 1875:22]
  reg [15:0] a_2_3; // @[FloatingPointDesigns.scala 1875:22]
  reg [15:0] a_2_4; // @[FloatingPointDesigns.scala 1875:22]
  reg [15:0] a_2_5; // @[FloatingPointDesigns.scala 1875:22]
  reg [15:0] a_2_6; // @[FloatingPointDesigns.scala 1875:22]
  reg [15:0] a_2_7; // @[FloatingPointDesigns.scala 1875:22]
  reg [15:0] a_2_8; // @[FloatingPointDesigns.scala 1875:22]
  reg [15:0] a_2_9; // @[FloatingPointDesigns.scala 1875:22]
  reg [15:0] a_2_10; // @[FloatingPointDesigns.scala 1875:22]
  reg [15:0] a_2_11; // @[FloatingPointDesigns.scala 1875:22]
  reg [15:0] stage1_regs_0_0_0; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_0_0_1; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_0_0_2; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_0_0_3; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_0_0_4; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_0_0_5; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_0_0_6; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_0_0_7; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_0_0_8; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_0_1_0; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_0_1_1; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_0_1_2; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_0_1_3; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_0_1_4; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_0_1_5; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_0_1_6; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_0_1_7; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_0_1_8; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_1_0_0; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_1_0_1; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_1_0_2; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_1_0_3; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_1_0_4; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_1_0_5; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_1_0_6; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_1_0_7; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_1_0_8; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_1_1_0; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_1_1_1; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_1_1_2; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_1_1_3; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_1_1_4; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_1_1_5; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_1_1_6; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_1_1_7; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_1_1_8; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_2_0_0; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_2_0_1; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_2_0_2; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_2_0_3; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_2_0_4; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_2_0_5; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_2_0_6; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_2_0_7; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_2_0_8; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_2_1_0; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_2_1_1; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_2_1_2; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_2_1_3; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_2_1_4; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_2_1_5; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_2_1_6; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_2_1_7; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage1_regs_2_1_8; // @[FloatingPointDesigns.scala 1876:30]
  reg [15:0] stage2_regs_0_0_0; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_0_0_1; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_0_0_2; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_0_0_3; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_0_0_4; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_0_0_5; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_0_0_6; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_0_0_7; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_0_0_8; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_0_1_0; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_0_1_1; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_0_1_2; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_0_1_3; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_0_1_4; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_0_1_5; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_0_1_6; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_0_1_7; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_0_1_8; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_1_0_0; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_1_0_1; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_1_0_2; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_1_0_3; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_1_0_4; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_1_0_5; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_1_0_6; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_1_0_7; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_1_0_8; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_1_1_0; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_1_1_1; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_1_1_2; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_1_1_3; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_1_1_4; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_1_1_5; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_1_1_6; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_1_1_7; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_1_1_8; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_2_0_0; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_2_0_1; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_2_0_2; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_2_0_3; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_2_0_4; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_2_0_5; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_2_0_6; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_2_0_7; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_2_0_8; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_2_1_0; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_2_1_1; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_2_1_2; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_2_1_3; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_2_1_4; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_2_1_5; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_2_1_6; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_2_1_7; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage2_regs_2_1_8; // @[FloatingPointDesigns.scala 1877:30]
  reg [15:0] stage3_regs_0_0_0; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_0_0_1; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_0_0_2; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_0_0_3; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_0_0_4; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_0_0_5; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_0_0_6; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_0_0_7; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_0_0_8; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_0_0_9; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_0_0_10; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_0_0_11; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_0_1_0; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_0_1_1; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_0_1_2; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_0_1_3; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_0_1_4; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_0_1_5; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_0_1_6; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_0_1_7; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_0_1_8; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_0_1_9; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_0_1_10; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_0_1_11; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_1_0_0; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_1_0_1; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_1_0_2; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_1_0_3; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_1_0_4; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_1_0_5; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_1_0_6; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_1_0_7; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_1_0_8; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_1_0_9; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_1_0_10; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_1_0_11; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_1_1_0; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_1_1_1; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_1_1_2; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_1_1_3; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_1_1_4; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_1_1_5; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_1_1_6; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_1_1_7; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_1_1_8; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_1_1_9; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_1_1_10; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_1_1_11; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_2_0_0; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_2_0_1; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_2_0_2; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_2_0_3; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_2_0_4; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_2_0_5; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_2_0_6; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_2_0_7; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_2_0_8; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_2_0_9; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_2_0_10; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_2_0_11; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_2_1_0; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_2_1_1; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_2_1_2; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_2_1_3; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_2_1_4; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_2_1_5; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_2_1_6; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_2_1_7; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_2_1_8; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_2_1_9; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_2_1_10; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage3_regs_2_1_11; // @[FloatingPointDesigns.scala 1878:30]
  reg [15:0] stage4_regs_0_1_0; // @[FloatingPointDesigns.scala 1879:30]
  reg [15:0] stage4_regs_0_1_1; // @[FloatingPointDesigns.scala 1879:30]
  reg [15:0] stage4_regs_0_1_2; // @[FloatingPointDesigns.scala 1879:30]
  reg [15:0] stage4_regs_0_1_3; // @[FloatingPointDesigns.scala 1879:30]
  reg [15:0] stage4_regs_0_1_4; // @[FloatingPointDesigns.scala 1879:30]
  reg [15:0] stage4_regs_0_1_5; // @[FloatingPointDesigns.scala 1879:30]
  reg [15:0] stage4_regs_0_1_6; // @[FloatingPointDesigns.scala 1879:30]
  reg [15:0] stage4_regs_0_1_7; // @[FloatingPointDesigns.scala 1879:30]
  reg [15:0] stage4_regs_0_1_8; // @[FloatingPointDesigns.scala 1879:30]
  reg [15:0] stage4_regs_1_1_0; // @[FloatingPointDesigns.scala 1879:30]
  reg [15:0] stage4_regs_1_1_1; // @[FloatingPointDesigns.scala 1879:30]
  reg [15:0] stage4_regs_1_1_2; // @[FloatingPointDesigns.scala 1879:30]
  reg [15:0] stage4_regs_1_1_3; // @[FloatingPointDesigns.scala 1879:30]
  reg [15:0] stage4_regs_1_1_4; // @[FloatingPointDesigns.scala 1879:30]
  reg [15:0] stage4_regs_1_1_5; // @[FloatingPointDesigns.scala 1879:30]
  reg [15:0] stage4_regs_1_1_6; // @[FloatingPointDesigns.scala 1879:30]
  reg [15:0] stage4_regs_1_1_7; // @[FloatingPointDesigns.scala 1879:30]
  reg [15:0] stage4_regs_1_1_8; // @[FloatingPointDesigns.scala 1879:30]
  reg [15:0] stage4_regs_2_1_0; // @[FloatingPointDesigns.scala 1879:30]
  reg [15:0] stage4_regs_2_1_1; // @[FloatingPointDesigns.scala 1879:30]
  reg [15:0] stage4_regs_2_1_2; // @[FloatingPointDesigns.scala 1879:30]
  reg [15:0] stage4_regs_2_1_3; // @[FloatingPointDesigns.scala 1879:30]
  reg [15:0] stage4_regs_2_1_4; // @[FloatingPointDesigns.scala 1879:30]
  reg [15:0] stage4_regs_2_1_5; // @[FloatingPointDesigns.scala 1879:30]
  reg [15:0] stage4_regs_2_1_6; // @[FloatingPointDesigns.scala 1879:30]
  reg [15:0] stage4_regs_2_1_7; // @[FloatingPointDesigns.scala 1879:30]
  reg [15:0] stage4_regs_2_1_8; // @[FloatingPointDesigns.scala 1879:30]
  wire [4:0] _a_2_0_T_3 = io_in_a[14:10] - 5'h1; // @[FloatingPointDesigns.scala 1904:75]
  wire [15:0] _a_2_0_T_6 = {io_in_a[15],_a_2_0_T_3,io_in_a[9:0]}; // @[FloatingPointDesigns.scala 1904:82]
  wire [15:0] _GEN_139 = FP_multiplier_10ccs_12_2_io_out_s; // @[FloatingPointDesigns.scala 1874:22 1911:28 1912:26]
  wire [15:0] _GEN_215 = FP_multiplier_10ccs_12_5_io_out_s; // @[FloatingPointDesigns.scala 1874:22 1911:28 1912:26]
  wire [4:0] _restore_a_T_3 = stage4_regs_2_1_8[14:10] + 5'h1; // @[FloatingPointDesigns.scala 1949:106]
  wire [5:0] _restore_a_T_4 = {stage4_regs_2_1_8[15],_restore_a_T_3}; // @[FloatingPointDesigns.scala 1949:55]
  FP_multiplier_10ccs_12 FP_multiplier_10ccs_12 ( // @[FloatingPointDesigns.scala 1881:65]
    .clock(FP_multiplier_10ccs_12_clock),
    .reset(FP_multiplier_10ccs_12_reset),
    .io_in_en(FP_multiplier_10ccs_12_io_in_en),
    .io_in_a(FP_multiplier_10ccs_12_io_in_a),
    .io_in_b(FP_multiplier_10ccs_12_io_in_b),
    .io_out_s(FP_multiplier_10ccs_12_io_out_s)
  );
  FP_multiplier_10ccs_12 FP_multiplier_10ccs_12_1 ( // @[FloatingPointDesigns.scala 1881:65]
    .clock(FP_multiplier_10ccs_12_1_clock),
    .reset(FP_multiplier_10ccs_12_1_reset),
    .io_in_en(FP_multiplier_10ccs_12_1_io_in_en),
    .io_in_a(FP_multiplier_10ccs_12_1_io_in_a),
    .io_in_b(FP_multiplier_10ccs_12_1_io_in_b),
    .io_out_s(FP_multiplier_10ccs_12_1_io_out_s)
  );
  FP_multiplier_10ccs_12 FP_multiplier_10ccs_12_2 ( // @[FloatingPointDesigns.scala 1881:65]
    .clock(FP_multiplier_10ccs_12_2_clock),
    .reset(FP_multiplier_10ccs_12_2_reset),
    .io_in_en(FP_multiplier_10ccs_12_2_io_in_en),
    .io_in_a(FP_multiplier_10ccs_12_2_io_in_a),
    .io_in_b(FP_multiplier_10ccs_12_2_io_in_b),
    .io_out_s(FP_multiplier_10ccs_12_2_io_out_s)
  );
  FP_multiplier_10ccs_12 FP_multiplier_10ccs_12_3 ( // @[FloatingPointDesigns.scala 1881:65]
    .clock(FP_multiplier_10ccs_12_3_clock),
    .reset(FP_multiplier_10ccs_12_3_reset),
    .io_in_en(FP_multiplier_10ccs_12_3_io_in_en),
    .io_in_a(FP_multiplier_10ccs_12_3_io_in_a),
    .io_in_b(FP_multiplier_10ccs_12_3_io_in_b),
    .io_out_s(FP_multiplier_10ccs_12_3_io_out_s)
  );
  FP_multiplier_10ccs_12 FP_multiplier_10ccs_12_4 ( // @[FloatingPointDesigns.scala 1881:65]
    .clock(FP_multiplier_10ccs_12_4_clock),
    .reset(FP_multiplier_10ccs_12_4_reset),
    .io_in_en(FP_multiplier_10ccs_12_4_io_in_en),
    .io_in_a(FP_multiplier_10ccs_12_4_io_in_a),
    .io_in_b(FP_multiplier_10ccs_12_4_io_in_b),
    .io_out_s(FP_multiplier_10ccs_12_4_io_out_s)
  );
  FP_multiplier_10ccs_12 FP_multiplier_10ccs_12_5 ( // @[FloatingPointDesigns.scala 1881:65]
    .clock(FP_multiplier_10ccs_12_5_clock),
    .reset(FP_multiplier_10ccs_12_5_reset),
    .io_in_en(FP_multiplier_10ccs_12_5_io_in_en),
    .io_in_a(FP_multiplier_10ccs_12_5_io_in_a),
    .io_in_b(FP_multiplier_10ccs_12_5_io_in_b),
    .io_out_s(FP_multiplier_10ccs_12_5_io_out_s)
  );
  FP_multiplier_10ccs_12 FP_multiplier_10ccs_12_6 ( // @[FloatingPointDesigns.scala 1881:65]
    .clock(FP_multiplier_10ccs_12_6_clock),
    .reset(FP_multiplier_10ccs_12_6_reset),
    .io_in_en(FP_multiplier_10ccs_12_6_io_in_en),
    .io_in_a(FP_multiplier_10ccs_12_6_io_in_a),
    .io_in_b(FP_multiplier_10ccs_12_6_io_in_b),
    .io_out_s(FP_multiplier_10ccs_12_6_io_out_s)
  );
  FP_multiplier_10ccs_12 FP_multiplier_10ccs_12_7 ( // @[FloatingPointDesigns.scala 1881:65]
    .clock(FP_multiplier_10ccs_12_7_clock),
    .reset(FP_multiplier_10ccs_12_7_reset),
    .io_in_en(FP_multiplier_10ccs_12_7_io_in_en),
    .io_in_a(FP_multiplier_10ccs_12_7_io_in_a),
    .io_in_b(FP_multiplier_10ccs_12_7_io_in_b),
    .io_out_s(FP_multiplier_10ccs_12_7_io_out_s)
  );
  FP_multiplier_10ccs_12 FP_multiplier_10ccs_12_8 ( // @[FloatingPointDesigns.scala 1881:65]
    .clock(FP_multiplier_10ccs_12_8_clock),
    .reset(FP_multiplier_10ccs_12_8_reset),
    .io_in_en(FP_multiplier_10ccs_12_8_io_in_en),
    .io_in_a(FP_multiplier_10ccs_12_8_io_in_a),
    .io_in_b(FP_multiplier_10ccs_12_8_io_in_b),
    .io_out_s(FP_multiplier_10ccs_12_8_io_out_s)
  );
  FP_subtractor_13ccs_12 FP_subtractor_13ccs_12 ( // @[FloatingPointDesigns.scala 1882:50]
    .clock(FP_subtractor_13ccs_12_clock),
    .reset(FP_subtractor_13ccs_12_reset),
    .io_in_en(FP_subtractor_13ccs_12_io_in_en),
    .io_in_a(FP_subtractor_13ccs_12_io_in_a),
    .io_in_b(FP_subtractor_13ccs_12_io_in_b),
    .io_out_s(FP_subtractor_13ccs_12_io_out_s)
  );
  FP_subtractor_13ccs_12 FP_subtractor_13ccs_12_1 ( // @[FloatingPointDesigns.scala 1882:50]
    .clock(FP_subtractor_13ccs_12_1_clock),
    .reset(FP_subtractor_13ccs_12_1_reset),
    .io_in_en(FP_subtractor_13ccs_12_1_io_in_en),
    .io_in_a(FP_subtractor_13ccs_12_1_io_in_a),
    .io_in_b(FP_subtractor_13ccs_12_1_io_in_b),
    .io_out_s(FP_subtractor_13ccs_12_1_io_out_s)
  );
  FP_subtractor_13ccs_12 FP_subtractor_13ccs_12_2 ( // @[FloatingPointDesigns.scala 1882:50]
    .clock(FP_subtractor_13ccs_12_2_clock),
    .reset(FP_subtractor_13ccs_12_2_reset),
    .io_in_en(FP_subtractor_13ccs_12_2_io_in_en),
    .io_in_a(FP_subtractor_13ccs_12_2_io_in_a),
    .io_in_b(FP_subtractor_13ccs_12_2_io_in_b),
    .io_out_s(FP_subtractor_13ccs_12_2_io_out_s)
  );
  FP_multiplier_10ccs_12 multiplier4 ( // @[FloatingPointDesigns.scala 1950:29]
    .clock(multiplier4_clock),
    .reset(multiplier4_reset),
    .io_in_en(multiplier4_io_in_en),
    .io_in_a(multiplier4_io_in_a),
    .io_in_b(multiplier4_io_in_b),
    .io_out_s(multiplier4_io_out_s)
  );
  assign io_out_s = {{1'd0}, multiplier4_io_out_s[14:0]}; // @[FloatingPointDesigns.scala 1954:14]
  assign FP_multiplier_10ccs_12_clock = clock;
  assign FP_multiplier_10ccs_12_reset = reset;
  assign FP_multiplier_10ccs_12_io_in_en = 1'h1; // @[FloatingPointDesigns.scala 1883:41]
  assign FP_multiplier_10ccs_12_io_in_a = {1'h0,result[14:0]}; // @[FloatingPointDesigns.scala 1908:48]
  assign FP_multiplier_10ccs_12_io_in_b = {1'h0,result[14:0]}; // @[FloatingPointDesigns.scala 1909:48]
  assign FP_multiplier_10ccs_12_1_clock = clock;
  assign FP_multiplier_10ccs_12_1_reset = reset;
  assign FP_multiplier_10ccs_12_1_io_in_en = 1'h1; // @[FloatingPointDesigns.scala 1883:41]
  assign FP_multiplier_10ccs_12_1_io_in_a = FP_multiplier_10ccs_12_io_out_s; // @[FloatingPointDesigns.scala 1921:34]
  assign FP_multiplier_10ccs_12_1_io_in_b = {1'h0,stage1_regs_0_1_8[14:0]}; // @[FloatingPointDesigns.scala 1922:46]
  assign FP_multiplier_10ccs_12_2_clock = clock;
  assign FP_multiplier_10ccs_12_2_reset = reset;
  assign FP_multiplier_10ccs_12_2_io_in_en = 1'h1; // @[FloatingPointDesigns.scala 1883:41]
  assign FP_multiplier_10ccs_12_2_io_in_a = {1'h0,stage3_regs_0_0_11[14:0]}; // @[FloatingPointDesigns.scala 1939:46]
  assign FP_multiplier_10ccs_12_2_io_in_b = FP_subtractor_13ccs_12_io_out_s; // @[FloatingPointDesigns.scala 1940:34]
  assign FP_multiplier_10ccs_12_3_clock = clock;
  assign FP_multiplier_10ccs_12_3_reset = reset;
  assign FP_multiplier_10ccs_12_3_io_in_en = 1'h1; // @[FloatingPointDesigns.scala 1883:41]
  assign FP_multiplier_10ccs_12_3_io_in_a = {1'h0,FP_multiplier_10ccs_12_2_io_out_s[14:0]}; // @[FloatingPointDesigns.scala 1917:48]
  assign FP_multiplier_10ccs_12_3_io_in_b = {1'h0,FP_multiplier_10ccs_12_2_io_out_s[14:0]}; // @[FloatingPointDesigns.scala 1918:48]
  assign FP_multiplier_10ccs_12_4_clock = clock;
  assign FP_multiplier_10ccs_12_4_reset = reset;
  assign FP_multiplier_10ccs_12_4_io_in_en = 1'h1; // @[FloatingPointDesigns.scala 1883:41]
  assign FP_multiplier_10ccs_12_4_io_in_a = FP_multiplier_10ccs_12_3_io_out_s; // @[FloatingPointDesigns.scala 1921:34]
  assign FP_multiplier_10ccs_12_4_io_in_b = {1'h0,stage1_regs_1_1_8[14:0]}; // @[FloatingPointDesigns.scala 1922:46]
  assign FP_multiplier_10ccs_12_5_clock = clock;
  assign FP_multiplier_10ccs_12_5_reset = reset;
  assign FP_multiplier_10ccs_12_5_io_in_en = 1'h1; // @[FloatingPointDesigns.scala 1883:41]
  assign FP_multiplier_10ccs_12_5_io_in_a = {1'h0,stage3_regs_1_0_11[14:0]}; // @[FloatingPointDesigns.scala 1939:46]
  assign FP_multiplier_10ccs_12_5_io_in_b = FP_subtractor_13ccs_12_1_io_out_s; // @[FloatingPointDesigns.scala 1940:34]
  assign FP_multiplier_10ccs_12_6_clock = clock;
  assign FP_multiplier_10ccs_12_6_reset = reset;
  assign FP_multiplier_10ccs_12_6_io_in_en = 1'h1; // @[FloatingPointDesigns.scala 1883:41]
  assign FP_multiplier_10ccs_12_6_io_in_a = {1'h0,FP_multiplier_10ccs_12_5_io_out_s[14:0]}; // @[FloatingPointDesigns.scala 1917:48]
  assign FP_multiplier_10ccs_12_6_io_in_b = {1'h0,FP_multiplier_10ccs_12_5_io_out_s[14:0]}; // @[FloatingPointDesigns.scala 1918:48]
  assign FP_multiplier_10ccs_12_7_clock = clock;
  assign FP_multiplier_10ccs_12_7_reset = reset;
  assign FP_multiplier_10ccs_12_7_io_in_en = 1'h1; // @[FloatingPointDesigns.scala 1883:41]
  assign FP_multiplier_10ccs_12_7_io_in_a = FP_multiplier_10ccs_12_6_io_out_s; // @[FloatingPointDesigns.scala 1921:34]
  assign FP_multiplier_10ccs_12_7_io_in_b = {1'h0,stage1_regs_2_1_8[14:0]}; // @[FloatingPointDesigns.scala 1922:46]
  assign FP_multiplier_10ccs_12_8_clock = clock;
  assign FP_multiplier_10ccs_12_8_reset = reset;
  assign FP_multiplier_10ccs_12_8_io_in_en = 1'h1; // @[FloatingPointDesigns.scala 1883:41]
  assign FP_multiplier_10ccs_12_8_io_in_a = {1'h0,stage3_regs_2_0_11[14:0]}; // @[FloatingPointDesigns.scala 1939:46]
  assign FP_multiplier_10ccs_12_8_io_in_b = FP_subtractor_13ccs_12_2_io_out_s; // @[FloatingPointDesigns.scala 1940:34]
  assign FP_subtractor_13ccs_12_clock = clock;
  assign FP_subtractor_13ccs_12_reset = reset;
  assign FP_subtractor_13ccs_12_io_in_en = 1'h1; // @[FloatingPointDesigns.scala 1884:32]
  assign FP_subtractor_13ccs_12_io_in_a = 16'h3e00; // @[FloatingPointDesigns.scala 1860:26 1861:16]
  assign FP_subtractor_13ccs_12_io_in_b = FP_multiplier_10ccs_12_1_io_out_s; // @[FloatingPointDesigns.scala 1931:31]
  assign FP_subtractor_13ccs_12_1_clock = clock;
  assign FP_subtractor_13ccs_12_1_reset = reset;
  assign FP_subtractor_13ccs_12_1_io_in_en = 1'h1; // @[FloatingPointDesigns.scala 1884:32]
  assign FP_subtractor_13ccs_12_1_io_in_a = 16'h3e00; // @[FloatingPointDesigns.scala 1860:26 1861:16]
  assign FP_subtractor_13ccs_12_1_io_in_b = FP_multiplier_10ccs_12_4_io_out_s; // @[FloatingPointDesigns.scala 1931:31]
  assign FP_subtractor_13ccs_12_2_clock = clock;
  assign FP_subtractor_13ccs_12_2_reset = reset;
  assign FP_subtractor_13ccs_12_2_io_in_en = 1'h1; // @[FloatingPointDesigns.scala 1884:32]
  assign FP_subtractor_13ccs_12_2_io_in_a = 16'h3e00; // @[FloatingPointDesigns.scala 1860:26 1861:16]
  assign FP_subtractor_13ccs_12_2_io_in_b = FP_multiplier_10ccs_12_7_io_out_s; // @[FloatingPointDesigns.scala 1931:31]
  assign multiplier4_clock = clock;
  assign multiplier4_reset = reset;
  assign multiplier4_io_in_en = 1'h1; // @[FloatingPointDesigns.scala 1951:26]
  assign multiplier4_io_in_a = {1'h0,FP_multiplier_10ccs_12_8_io_out_s[14:0]}; // @[FloatingPointDesigns.scala 1952:37]
  assign multiplier4_io_in_b = {_restore_a_T_4,stage4_regs_2_1_8[9:0]}; // @[FloatingPointDesigns.scala 1949:113]
  always @(posedge clock) begin
    if (reset) begin // @[FloatingPointDesigns.scala 1874:22]
      x_n_0 <= 16'h0; // @[FloatingPointDesigns.scala 1874:22]
    end else begin
      x_n_0 <= result;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1874:22]
      x_n_1 <= 16'h0; // @[FloatingPointDesigns.scala 1874:22]
    end else begin
      x_n_1 <= stage1_regs_0_0_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1874:22]
      x_n_2 <= 16'h0; // @[FloatingPointDesigns.scala 1874:22]
    end else begin
      x_n_2 <= stage2_regs_0_0_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1874:22]
      x_n_4 <= 16'h0; // @[FloatingPointDesigns.scala 1874:22]
    end else begin
      x_n_4 <= _GEN_139;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1874:22]
      x_n_5 <= 16'h0; // @[FloatingPointDesigns.scala 1874:22]
    end else begin
      x_n_5 <= stage1_regs_1_0_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1874:22]
      x_n_6 <= 16'h0; // @[FloatingPointDesigns.scala 1874:22]
    end else begin
      x_n_6 <= stage2_regs_1_0_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1874:22]
      x_n_8 <= 16'h0; // @[FloatingPointDesigns.scala 1874:22]
    end else begin
      x_n_8 <= _GEN_215;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1874:22]
      x_n_9 <= 16'h0; // @[FloatingPointDesigns.scala 1874:22]
    end else begin
      x_n_9 <= stage1_regs_2_0_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1874:22]
      x_n_10 <= 16'h0; // @[FloatingPointDesigns.scala 1874:22]
    end else begin
      x_n_10 <= stage2_regs_2_0_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1875:22]
      a_2_0 <= 16'h0; // @[FloatingPointDesigns.scala 1875:22]
    end else begin
      a_2_0 <= _a_2_0_T_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1875:22]
      a_2_1 <= 16'h0; // @[FloatingPointDesigns.scala 1875:22]
    end else begin
      a_2_1 <= stage1_regs_0_1_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1875:22]
      a_2_2 <= 16'h0; // @[FloatingPointDesigns.scala 1875:22]
    end else begin
      a_2_2 <= stage2_regs_0_1_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1875:22]
      a_2_3 <= 16'h0; // @[FloatingPointDesigns.scala 1875:22]
    end else begin
      a_2_3 <= stage3_regs_0_1_11;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1875:22]
      a_2_4 <= 16'h0; // @[FloatingPointDesigns.scala 1875:22]
    end else begin
      a_2_4 <= stage4_regs_0_1_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1875:22]
      a_2_5 <= 16'h0; // @[FloatingPointDesigns.scala 1875:22]
    end else begin
      a_2_5 <= stage1_regs_1_1_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1875:22]
      a_2_6 <= 16'h0; // @[FloatingPointDesigns.scala 1875:22]
    end else begin
      a_2_6 <= stage2_regs_1_1_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1875:22]
      a_2_7 <= 16'h0; // @[FloatingPointDesigns.scala 1875:22]
    end else begin
      a_2_7 <= stage3_regs_1_1_11;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1875:22]
      a_2_8 <= 16'h0; // @[FloatingPointDesigns.scala 1875:22]
    end else begin
      a_2_8 <= stage4_regs_1_1_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1875:22]
      a_2_9 <= 16'h0; // @[FloatingPointDesigns.scala 1875:22]
    end else begin
      a_2_9 <= stage1_regs_2_1_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1875:22]
      a_2_10 <= 16'h0; // @[FloatingPointDesigns.scala 1875:22]
    end else begin
      a_2_10 <= stage2_regs_2_1_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1875:22]
      a_2_11 <= 16'h0; // @[FloatingPointDesigns.scala 1875:22]
    end else begin
      a_2_11 <= stage3_regs_2_1_11;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_0_0_0 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_0_0_0 <= x_n_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_0_0_1 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_0_0_1 <= stage1_regs_0_0_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_0_0_2 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_0_0_2 <= stage1_regs_0_0_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_0_0_3 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_0_0_3 <= stage1_regs_0_0_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_0_0_4 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_0_0_4 <= stage1_regs_0_0_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_0_0_5 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_0_0_5 <= stage1_regs_0_0_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_0_0_6 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_0_0_6 <= stage1_regs_0_0_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_0_0_7 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_0_0_7 <= stage1_regs_0_0_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_0_0_8 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_0_0_8 <= stage1_regs_0_0_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_0_1_0 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_0_1_0 <= a_2_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_0_1_1 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_0_1_1 <= stage1_regs_0_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_0_1_2 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_0_1_2 <= stage1_regs_0_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_0_1_3 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_0_1_3 <= stage1_regs_0_1_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_0_1_4 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_0_1_4 <= stage1_regs_0_1_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_0_1_5 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_0_1_5 <= stage1_regs_0_1_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_0_1_6 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_0_1_6 <= stage1_regs_0_1_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_0_1_7 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_0_1_7 <= stage1_regs_0_1_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_0_1_8 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_0_1_8 <= stage1_regs_0_1_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_1_0_0 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_1_0_0 <= x_n_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_1_0_1 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_1_0_1 <= stage1_regs_1_0_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_1_0_2 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_1_0_2 <= stage1_regs_1_0_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_1_0_3 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_1_0_3 <= stage1_regs_1_0_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_1_0_4 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_1_0_4 <= stage1_regs_1_0_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_1_0_5 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_1_0_5 <= stage1_regs_1_0_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_1_0_6 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_1_0_6 <= stage1_regs_1_0_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_1_0_7 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_1_0_7 <= stage1_regs_1_0_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_1_0_8 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_1_0_8 <= stage1_regs_1_0_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_1_1_0 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_1_1_0 <= a_2_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_1_1_1 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_1_1_1 <= stage1_regs_1_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_1_1_2 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_1_1_2 <= stage1_regs_1_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_1_1_3 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_1_1_3 <= stage1_regs_1_1_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_1_1_4 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_1_1_4 <= stage1_regs_1_1_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_1_1_5 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_1_1_5 <= stage1_regs_1_1_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_1_1_6 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_1_1_6 <= stage1_regs_1_1_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_1_1_7 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_1_1_7 <= stage1_regs_1_1_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_1_1_8 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_1_1_8 <= stage1_regs_1_1_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_2_0_0 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_2_0_0 <= x_n_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_2_0_1 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_2_0_1 <= stage1_regs_2_0_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_2_0_2 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_2_0_2 <= stage1_regs_2_0_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_2_0_3 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_2_0_3 <= stage1_regs_2_0_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_2_0_4 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_2_0_4 <= stage1_regs_2_0_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_2_0_5 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_2_0_5 <= stage1_regs_2_0_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_2_0_6 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_2_0_6 <= stage1_regs_2_0_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_2_0_7 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_2_0_7 <= stage1_regs_2_0_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_2_0_8 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_2_0_8 <= stage1_regs_2_0_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_2_1_0 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_2_1_0 <= a_2_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_2_1_1 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_2_1_1 <= stage1_regs_2_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_2_1_2 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_2_1_2 <= stage1_regs_2_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_2_1_3 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_2_1_3 <= stage1_regs_2_1_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_2_1_4 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_2_1_4 <= stage1_regs_2_1_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_2_1_5 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_2_1_5 <= stage1_regs_2_1_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_2_1_6 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_2_1_6 <= stage1_regs_2_1_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_2_1_7 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_2_1_7 <= stage1_regs_2_1_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1876:30]
      stage1_regs_2_1_8 <= 16'h0; // @[FloatingPointDesigns.scala 1876:30]
    end else begin
      stage1_regs_2_1_8 <= stage1_regs_2_1_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_0_0_0 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_0_0_0 <= x_n_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_0_0_1 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_0_0_1 <= stage2_regs_0_0_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_0_0_2 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_0_0_2 <= stage2_regs_0_0_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_0_0_3 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_0_0_3 <= stage2_regs_0_0_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_0_0_4 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_0_0_4 <= stage2_regs_0_0_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_0_0_5 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_0_0_5 <= stage2_regs_0_0_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_0_0_6 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_0_0_6 <= stage2_regs_0_0_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_0_0_7 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_0_0_7 <= stage2_regs_0_0_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_0_0_8 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_0_0_8 <= stage2_regs_0_0_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_0_1_0 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_0_1_0 <= a_2_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_0_1_1 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_0_1_1 <= stage2_regs_0_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_0_1_2 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_0_1_2 <= stage2_regs_0_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_0_1_3 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_0_1_3 <= stage2_regs_0_1_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_0_1_4 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_0_1_4 <= stage2_regs_0_1_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_0_1_5 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_0_1_5 <= stage2_regs_0_1_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_0_1_6 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_0_1_6 <= stage2_regs_0_1_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_0_1_7 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_0_1_7 <= stage2_regs_0_1_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_0_1_8 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_0_1_8 <= stage2_regs_0_1_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_1_0_0 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_1_0_0 <= x_n_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_1_0_1 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_1_0_1 <= stage2_regs_1_0_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_1_0_2 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_1_0_2 <= stage2_regs_1_0_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_1_0_3 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_1_0_3 <= stage2_regs_1_0_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_1_0_4 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_1_0_4 <= stage2_regs_1_0_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_1_0_5 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_1_0_5 <= stage2_regs_1_0_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_1_0_6 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_1_0_6 <= stage2_regs_1_0_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_1_0_7 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_1_0_7 <= stage2_regs_1_0_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_1_0_8 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_1_0_8 <= stage2_regs_1_0_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_1_1_0 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_1_1_0 <= a_2_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_1_1_1 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_1_1_1 <= stage2_regs_1_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_1_1_2 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_1_1_2 <= stage2_regs_1_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_1_1_3 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_1_1_3 <= stage2_regs_1_1_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_1_1_4 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_1_1_4 <= stage2_regs_1_1_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_1_1_5 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_1_1_5 <= stage2_regs_1_1_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_1_1_6 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_1_1_6 <= stage2_regs_1_1_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_1_1_7 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_1_1_7 <= stage2_regs_1_1_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_1_1_8 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_1_1_8 <= stage2_regs_1_1_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_2_0_0 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_2_0_0 <= x_n_9;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_2_0_1 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_2_0_1 <= stage2_regs_2_0_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_2_0_2 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_2_0_2 <= stage2_regs_2_0_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_2_0_3 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_2_0_3 <= stage2_regs_2_0_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_2_0_4 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_2_0_4 <= stage2_regs_2_0_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_2_0_5 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_2_0_5 <= stage2_regs_2_0_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_2_0_6 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_2_0_6 <= stage2_regs_2_0_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_2_0_7 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_2_0_7 <= stage2_regs_2_0_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_2_0_8 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_2_0_8 <= stage2_regs_2_0_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_2_1_0 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_2_1_0 <= a_2_9;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_2_1_1 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_2_1_1 <= stage2_regs_2_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_2_1_2 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_2_1_2 <= stage2_regs_2_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_2_1_3 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_2_1_3 <= stage2_regs_2_1_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_2_1_4 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_2_1_4 <= stage2_regs_2_1_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_2_1_5 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_2_1_5 <= stage2_regs_2_1_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_2_1_6 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_2_1_6 <= stage2_regs_2_1_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_2_1_7 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_2_1_7 <= stage2_regs_2_1_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1877:30]
      stage2_regs_2_1_8 <= 16'h0; // @[FloatingPointDesigns.scala 1877:30]
    end else begin
      stage2_regs_2_1_8 <= stage2_regs_2_1_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_0_0_0 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_0_0_0 <= x_n_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_0_0_1 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_0_0_1 <= stage3_regs_0_0_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_0_0_2 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_0_0_2 <= stage3_regs_0_0_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_0_0_3 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_0_0_3 <= stage3_regs_0_0_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_0_0_4 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_0_0_4 <= stage3_regs_0_0_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_0_0_5 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_0_0_5 <= stage3_regs_0_0_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_0_0_6 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_0_0_6 <= stage3_regs_0_0_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_0_0_7 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_0_0_7 <= stage3_regs_0_0_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_0_0_8 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_0_0_8 <= stage3_regs_0_0_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_0_0_9 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_0_0_9 <= stage3_regs_0_0_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_0_0_10 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_0_0_10 <= stage3_regs_0_0_9;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_0_0_11 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_0_0_11 <= stage3_regs_0_0_10;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_0_1_0 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_0_1_0 <= a_2_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_0_1_1 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_0_1_1 <= stage3_regs_0_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_0_1_2 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_0_1_2 <= stage3_regs_0_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_0_1_3 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_0_1_3 <= stage3_regs_0_1_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_0_1_4 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_0_1_4 <= stage3_regs_0_1_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_0_1_5 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_0_1_5 <= stage3_regs_0_1_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_0_1_6 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_0_1_6 <= stage3_regs_0_1_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_0_1_7 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_0_1_7 <= stage3_regs_0_1_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_0_1_8 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_0_1_8 <= stage3_regs_0_1_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_0_1_9 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_0_1_9 <= stage3_regs_0_1_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_0_1_10 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_0_1_10 <= stage3_regs_0_1_9;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_0_1_11 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_0_1_11 <= stage3_regs_0_1_10;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_1_0_0 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_1_0_0 <= x_n_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_1_0_1 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_1_0_1 <= stage3_regs_1_0_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_1_0_2 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_1_0_2 <= stage3_regs_1_0_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_1_0_3 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_1_0_3 <= stage3_regs_1_0_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_1_0_4 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_1_0_4 <= stage3_regs_1_0_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_1_0_5 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_1_0_5 <= stage3_regs_1_0_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_1_0_6 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_1_0_6 <= stage3_regs_1_0_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_1_0_7 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_1_0_7 <= stage3_regs_1_0_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_1_0_8 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_1_0_8 <= stage3_regs_1_0_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_1_0_9 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_1_0_9 <= stage3_regs_1_0_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_1_0_10 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_1_0_10 <= stage3_regs_1_0_9;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_1_0_11 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_1_0_11 <= stage3_regs_1_0_10;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_1_1_0 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_1_1_0 <= a_2_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_1_1_1 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_1_1_1 <= stage3_regs_1_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_1_1_2 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_1_1_2 <= stage3_regs_1_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_1_1_3 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_1_1_3 <= stage3_regs_1_1_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_1_1_4 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_1_1_4 <= stage3_regs_1_1_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_1_1_5 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_1_1_5 <= stage3_regs_1_1_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_1_1_6 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_1_1_6 <= stage3_regs_1_1_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_1_1_7 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_1_1_7 <= stage3_regs_1_1_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_1_1_8 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_1_1_8 <= stage3_regs_1_1_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_1_1_9 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_1_1_9 <= stage3_regs_1_1_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_1_1_10 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_1_1_10 <= stage3_regs_1_1_9;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_1_1_11 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_1_1_11 <= stage3_regs_1_1_10;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_2_0_0 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_2_0_0 <= x_n_10;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_2_0_1 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_2_0_1 <= stage3_regs_2_0_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_2_0_2 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_2_0_2 <= stage3_regs_2_0_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_2_0_3 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_2_0_3 <= stage3_regs_2_0_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_2_0_4 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_2_0_4 <= stage3_regs_2_0_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_2_0_5 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_2_0_5 <= stage3_regs_2_0_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_2_0_6 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_2_0_6 <= stage3_regs_2_0_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_2_0_7 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_2_0_7 <= stage3_regs_2_0_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_2_0_8 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_2_0_8 <= stage3_regs_2_0_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_2_0_9 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_2_0_9 <= stage3_regs_2_0_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_2_0_10 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_2_0_10 <= stage3_regs_2_0_9;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_2_0_11 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_2_0_11 <= stage3_regs_2_0_10;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_2_1_0 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_2_1_0 <= a_2_10;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_2_1_1 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_2_1_1 <= stage3_regs_2_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_2_1_2 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_2_1_2 <= stage3_regs_2_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_2_1_3 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_2_1_3 <= stage3_regs_2_1_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_2_1_4 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_2_1_4 <= stage3_regs_2_1_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_2_1_5 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_2_1_5 <= stage3_regs_2_1_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_2_1_6 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_2_1_6 <= stage3_regs_2_1_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_2_1_7 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_2_1_7 <= stage3_regs_2_1_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_2_1_8 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_2_1_8 <= stage3_regs_2_1_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_2_1_9 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_2_1_9 <= stage3_regs_2_1_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_2_1_10 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_2_1_10 <= stage3_regs_2_1_9;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1878:30]
      stage3_regs_2_1_11 <= 16'h0; // @[FloatingPointDesigns.scala 1878:30]
    end else begin
      stage3_regs_2_1_11 <= stage3_regs_2_1_10;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1879:30]
      stage4_regs_0_1_0 <= 16'h0; // @[FloatingPointDesigns.scala 1879:30]
    end else begin
      stage4_regs_0_1_0 <= a_2_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1879:30]
      stage4_regs_0_1_1 <= 16'h0; // @[FloatingPointDesigns.scala 1879:30]
    end else begin
      stage4_regs_0_1_1 <= stage4_regs_0_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1879:30]
      stage4_regs_0_1_2 <= 16'h0; // @[FloatingPointDesigns.scala 1879:30]
    end else begin
      stage4_regs_0_1_2 <= stage4_regs_0_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1879:30]
      stage4_regs_0_1_3 <= 16'h0; // @[FloatingPointDesigns.scala 1879:30]
    end else begin
      stage4_regs_0_1_3 <= stage4_regs_0_1_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1879:30]
      stage4_regs_0_1_4 <= 16'h0; // @[FloatingPointDesigns.scala 1879:30]
    end else begin
      stage4_regs_0_1_4 <= stage4_regs_0_1_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1879:30]
      stage4_regs_0_1_5 <= 16'h0; // @[FloatingPointDesigns.scala 1879:30]
    end else begin
      stage4_regs_0_1_5 <= stage4_regs_0_1_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1879:30]
      stage4_regs_0_1_6 <= 16'h0; // @[FloatingPointDesigns.scala 1879:30]
    end else begin
      stage4_regs_0_1_6 <= stage4_regs_0_1_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1879:30]
      stage4_regs_0_1_7 <= 16'h0; // @[FloatingPointDesigns.scala 1879:30]
    end else begin
      stage4_regs_0_1_7 <= stage4_regs_0_1_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1879:30]
      stage4_regs_0_1_8 <= 16'h0; // @[FloatingPointDesigns.scala 1879:30]
    end else begin
      stage4_regs_0_1_8 <= stage4_regs_0_1_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1879:30]
      stage4_regs_1_1_0 <= 16'h0; // @[FloatingPointDesigns.scala 1879:30]
    end else begin
      stage4_regs_1_1_0 <= a_2_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1879:30]
      stage4_regs_1_1_1 <= 16'h0; // @[FloatingPointDesigns.scala 1879:30]
    end else begin
      stage4_regs_1_1_1 <= stage4_regs_1_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1879:30]
      stage4_regs_1_1_2 <= 16'h0; // @[FloatingPointDesigns.scala 1879:30]
    end else begin
      stage4_regs_1_1_2 <= stage4_regs_1_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1879:30]
      stage4_regs_1_1_3 <= 16'h0; // @[FloatingPointDesigns.scala 1879:30]
    end else begin
      stage4_regs_1_1_3 <= stage4_regs_1_1_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1879:30]
      stage4_regs_1_1_4 <= 16'h0; // @[FloatingPointDesigns.scala 1879:30]
    end else begin
      stage4_regs_1_1_4 <= stage4_regs_1_1_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1879:30]
      stage4_regs_1_1_5 <= 16'h0; // @[FloatingPointDesigns.scala 1879:30]
    end else begin
      stage4_regs_1_1_5 <= stage4_regs_1_1_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1879:30]
      stage4_regs_1_1_6 <= 16'h0; // @[FloatingPointDesigns.scala 1879:30]
    end else begin
      stage4_regs_1_1_6 <= stage4_regs_1_1_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1879:30]
      stage4_regs_1_1_7 <= 16'h0; // @[FloatingPointDesigns.scala 1879:30]
    end else begin
      stage4_regs_1_1_7 <= stage4_regs_1_1_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1879:30]
      stage4_regs_1_1_8 <= 16'h0; // @[FloatingPointDesigns.scala 1879:30]
    end else begin
      stage4_regs_1_1_8 <= stage4_regs_1_1_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1879:30]
      stage4_regs_2_1_0 <= 16'h0; // @[FloatingPointDesigns.scala 1879:30]
    end else begin
      stage4_regs_2_1_0 <= a_2_11;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1879:30]
      stage4_regs_2_1_1 <= 16'h0; // @[FloatingPointDesigns.scala 1879:30]
    end else begin
      stage4_regs_2_1_1 <= stage4_regs_2_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1879:30]
      stage4_regs_2_1_2 <= 16'h0; // @[FloatingPointDesigns.scala 1879:30]
    end else begin
      stage4_regs_2_1_2 <= stage4_regs_2_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1879:30]
      stage4_regs_2_1_3 <= 16'h0; // @[FloatingPointDesigns.scala 1879:30]
    end else begin
      stage4_regs_2_1_3 <= stage4_regs_2_1_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1879:30]
      stage4_regs_2_1_4 <= 16'h0; // @[FloatingPointDesigns.scala 1879:30]
    end else begin
      stage4_regs_2_1_4 <= stage4_regs_2_1_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1879:30]
      stage4_regs_2_1_5 <= 16'h0; // @[FloatingPointDesigns.scala 1879:30]
    end else begin
      stage4_regs_2_1_5 <= stage4_regs_2_1_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1879:30]
      stage4_regs_2_1_6 <= 16'h0; // @[FloatingPointDesigns.scala 1879:30]
    end else begin
      stage4_regs_2_1_6 <= stage4_regs_2_1_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1879:30]
      stage4_regs_2_1_7 <= 16'h0; // @[FloatingPointDesigns.scala 1879:30]
    end else begin
      stage4_regs_2_1_7 <= stage4_regs_2_1_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 1879:30]
      stage4_regs_2_1_8 <= 16'h0; // @[FloatingPointDesigns.scala 1879:30]
    end else begin
      stage4_regs_2_1_8 <= stage4_regs_2_1_7;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  x_n_0 = _RAND_0[15:0];
  _RAND_1 = {1{`RANDOM}};
  x_n_1 = _RAND_1[15:0];
  _RAND_2 = {1{`RANDOM}};
  x_n_2 = _RAND_2[15:0];
  _RAND_3 = {1{`RANDOM}};
  x_n_4 = _RAND_3[15:0];
  _RAND_4 = {1{`RANDOM}};
  x_n_5 = _RAND_4[15:0];
  _RAND_5 = {1{`RANDOM}};
  x_n_6 = _RAND_5[15:0];
  _RAND_6 = {1{`RANDOM}};
  x_n_8 = _RAND_6[15:0];
  _RAND_7 = {1{`RANDOM}};
  x_n_9 = _RAND_7[15:0];
  _RAND_8 = {1{`RANDOM}};
  x_n_10 = _RAND_8[15:0];
  _RAND_9 = {1{`RANDOM}};
  a_2_0 = _RAND_9[15:0];
  _RAND_10 = {1{`RANDOM}};
  a_2_1 = _RAND_10[15:0];
  _RAND_11 = {1{`RANDOM}};
  a_2_2 = _RAND_11[15:0];
  _RAND_12 = {1{`RANDOM}};
  a_2_3 = _RAND_12[15:0];
  _RAND_13 = {1{`RANDOM}};
  a_2_4 = _RAND_13[15:0];
  _RAND_14 = {1{`RANDOM}};
  a_2_5 = _RAND_14[15:0];
  _RAND_15 = {1{`RANDOM}};
  a_2_6 = _RAND_15[15:0];
  _RAND_16 = {1{`RANDOM}};
  a_2_7 = _RAND_16[15:0];
  _RAND_17 = {1{`RANDOM}};
  a_2_8 = _RAND_17[15:0];
  _RAND_18 = {1{`RANDOM}};
  a_2_9 = _RAND_18[15:0];
  _RAND_19 = {1{`RANDOM}};
  a_2_10 = _RAND_19[15:0];
  _RAND_20 = {1{`RANDOM}};
  a_2_11 = _RAND_20[15:0];
  _RAND_21 = {1{`RANDOM}};
  stage1_regs_0_0_0 = _RAND_21[15:0];
  _RAND_22 = {1{`RANDOM}};
  stage1_regs_0_0_1 = _RAND_22[15:0];
  _RAND_23 = {1{`RANDOM}};
  stage1_regs_0_0_2 = _RAND_23[15:0];
  _RAND_24 = {1{`RANDOM}};
  stage1_regs_0_0_3 = _RAND_24[15:0];
  _RAND_25 = {1{`RANDOM}};
  stage1_regs_0_0_4 = _RAND_25[15:0];
  _RAND_26 = {1{`RANDOM}};
  stage1_regs_0_0_5 = _RAND_26[15:0];
  _RAND_27 = {1{`RANDOM}};
  stage1_regs_0_0_6 = _RAND_27[15:0];
  _RAND_28 = {1{`RANDOM}};
  stage1_regs_0_0_7 = _RAND_28[15:0];
  _RAND_29 = {1{`RANDOM}};
  stage1_regs_0_0_8 = _RAND_29[15:0];
  _RAND_30 = {1{`RANDOM}};
  stage1_regs_0_1_0 = _RAND_30[15:0];
  _RAND_31 = {1{`RANDOM}};
  stage1_regs_0_1_1 = _RAND_31[15:0];
  _RAND_32 = {1{`RANDOM}};
  stage1_regs_0_1_2 = _RAND_32[15:0];
  _RAND_33 = {1{`RANDOM}};
  stage1_regs_0_1_3 = _RAND_33[15:0];
  _RAND_34 = {1{`RANDOM}};
  stage1_regs_0_1_4 = _RAND_34[15:0];
  _RAND_35 = {1{`RANDOM}};
  stage1_regs_0_1_5 = _RAND_35[15:0];
  _RAND_36 = {1{`RANDOM}};
  stage1_regs_0_1_6 = _RAND_36[15:0];
  _RAND_37 = {1{`RANDOM}};
  stage1_regs_0_1_7 = _RAND_37[15:0];
  _RAND_38 = {1{`RANDOM}};
  stage1_regs_0_1_8 = _RAND_38[15:0];
  _RAND_39 = {1{`RANDOM}};
  stage1_regs_1_0_0 = _RAND_39[15:0];
  _RAND_40 = {1{`RANDOM}};
  stage1_regs_1_0_1 = _RAND_40[15:0];
  _RAND_41 = {1{`RANDOM}};
  stage1_regs_1_0_2 = _RAND_41[15:0];
  _RAND_42 = {1{`RANDOM}};
  stage1_regs_1_0_3 = _RAND_42[15:0];
  _RAND_43 = {1{`RANDOM}};
  stage1_regs_1_0_4 = _RAND_43[15:0];
  _RAND_44 = {1{`RANDOM}};
  stage1_regs_1_0_5 = _RAND_44[15:0];
  _RAND_45 = {1{`RANDOM}};
  stage1_regs_1_0_6 = _RAND_45[15:0];
  _RAND_46 = {1{`RANDOM}};
  stage1_regs_1_0_7 = _RAND_46[15:0];
  _RAND_47 = {1{`RANDOM}};
  stage1_regs_1_0_8 = _RAND_47[15:0];
  _RAND_48 = {1{`RANDOM}};
  stage1_regs_1_1_0 = _RAND_48[15:0];
  _RAND_49 = {1{`RANDOM}};
  stage1_regs_1_1_1 = _RAND_49[15:0];
  _RAND_50 = {1{`RANDOM}};
  stage1_regs_1_1_2 = _RAND_50[15:0];
  _RAND_51 = {1{`RANDOM}};
  stage1_regs_1_1_3 = _RAND_51[15:0];
  _RAND_52 = {1{`RANDOM}};
  stage1_regs_1_1_4 = _RAND_52[15:0];
  _RAND_53 = {1{`RANDOM}};
  stage1_regs_1_1_5 = _RAND_53[15:0];
  _RAND_54 = {1{`RANDOM}};
  stage1_regs_1_1_6 = _RAND_54[15:0];
  _RAND_55 = {1{`RANDOM}};
  stage1_regs_1_1_7 = _RAND_55[15:0];
  _RAND_56 = {1{`RANDOM}};
  stage1_regs_1_1_8 = _RAND_56[15:0];
  _RAND_57 = {1{`RANDOM}};
  stage1_regs_2_0_0 = _RAND_57[15:0];
  _RAND_58 = {1{`RANDOM}};
  stage1_regs_2_0_1 = _RAND_58[15:0];
  _RAND_59 = {1{`RANDOM}};
  stage1_regs_2_0_2 = _RAND_59[15:0];
  _RAND_60 = {1{`RANDOM}};
  stage1_regs_2_0_3 = _RAND_60[15:0];
  _RAND_61 = {1{`RANDOM}};
  stage1_regs_2_0_4 = _RAND_61[15:0];
  _RAND_62 = {1{`RANDOM}};
  stage1_regs_2_0_5 = _RAND_62[15:0];
  _RAND_63 = {1{`RANDOM}};
  stage1_regs_2_0_6 = _RAND_63[15:0];
  _RAND_64 = {1{`RANDOM}};
  stage1_regs_2_0_7 = _RAND_64[15:0];
  _RAND_65 = {1{`RANDOM}};
  stage1_regs_2_0_8 = _RAND_65[15:0];
  _RAND_66 = {1{`RANDOM}};
  stage1_regs_2_1_0 = _RAND_66[15:0];
  _RAND_67 = {1{`RANDOM}};
  stage1_regs_2_1_1 = _RAND_67[15:0];
  _RAND_68 = {1{`RANDOM}};
  stage1_regs_2_1_2 = _RAND_68[15:0];
  _RAND_69 = {1{`RANDOM}};
  stage1_regs_2_1_3 = _RAND_69[15:0];
  _RAND_70 = {1{`RANDOM}};
  stage1_regs_2_1_4 = _RAND_70[15:0];
  _RAND_71 = {1{`RANDOM}};
  stage1_regs_2_1_5 = _RAND_71[15:0];
  _RAND_72 = {1{`RANDOM}};
  stage1_regs_2_1_6 = _RAND_72[15:0];
  _RAND_73 = {1{`RANDOM}};
  stage1_regs_2_1_7 = _RAND_73[15:0];
  _RAND_74 = {1{`RANDOM}};
  stage1_regs_2_1_8 = _RAND_74[15:0];
  _RAND_75 = {1{`RANDOM}};
  stage2_regs_0_0_0 = _RAND_75[15:0];
  _RAND_76 = {1{`RANDOM}};
  stage2_regs_0_0_1 = _RAND_76[15:0];
  _RAND_77 = {1{`RANDOM}};
  stage2_regs_0_0_2 = _RAND_77[15:0];
  _RAND_78 = {1{`RANDOM}};
  stage2_regs_0_0_3 = _RAND_78[15:0];
  _RAND_79 = {1{`RANDOM}};
  stage2_regs_0_0_4 = _RAND_79[15:0];
  _RAND_80 = {1{`RANDOM}};
  stage2_regs_0_0_5 = _RAND_80[15:0];
  _RAND_81 = {1{`RANDOM}};
  stage2_regs_0_0_6 = _RAND_81[15:0];
  _RAND_82 = {1{`RANDOM}};
  stage2_regs_0_0_7 = _RAND_82[15:0];
  _RAND_83 = {1{`RANDOM}};
  stage2_regs_0_0_8 = _RAND_83[15:0];
  _RAND_84 = {1{`RANDOM}};
  stage2_regs_0_1_0 = _RAND_84[15:0];
  _RAND_85 = {1{`RANDOM}};
  stage2_regs_0_1_1 = _RAND_85[15:0];
  _RAND_86 = {1{`RANDOM}};
  stage2_regs_0_1_2 = _RAND_86[15:0];
  _RAND_87 = {1{`RANDOM}};
  stage2_regs_0_1_3 = _RAND_87[15:0];
  _RAND_88 = {1{`RANDOM}};
  stage2_regs_0_1_4 = _RAND_88[15:0];
  _RAND_89 = {1{`RANDOM}};
  stage2_regs_0_1_5 = _RAND_89[15:0];
  _RAND_90 = {1{`RANDOM}};
  stage2_regs_0_1_6 = _RAND_90[15:0];
  _RAND_91 = {1{`RANDOM}};
  stage2_regs_0_1_7 = _RAND_91[15:0];
  _RAND_92 = {1{`RANDOM}};
  stage2_regs_0_1_8 = _RAND_92[15:0];
  _RAND_93 = {1{`RANDOM}};
  stage2_regs_1_0_0 = _RAND_93[15:0];
  _RAND_94 = {1{`RANDOM}};
  stage2_regs_1_0_1 = _RAND_94[15:0];
  _RAND_95 = {1{`RANDOM}};
  stage2_regs_1_0_2 = _RAND_95[15:0];
  _RAND_96 = {1{`RANDOM}};
  stage2_regs_1_0_3 = _RAND_96[15:0];
  _RAND_97 = {1{`RANDOM}};
  stage2_regs_1_0_4 = _RAND_97[15:0];
  _RAND_98 = {1{`RANDOM}};
  stage2_regs_1_0_5 = _RAND_98[15:0];
  _RAND_99 = {1{`RANDOM}};
  stage2_regs_1_0_6 = _RAND_99[15:0];
  _RAND_100 = {1{`RANDOM}};
  stage2_regs_1_0_7 = _RAND_100[15:0];
  _RAND_101 = {1{`RANDOM}};
  stage2_regs_1_0_8 = _RAND_101[15:0];
  _RAND_102 = {1{`RANDOM}};
  stage2_regs_1_1_0 = _RAND_102[15:0];
  _RAND_103 = {1{`RANDOM}};
  stage2_regs_1_1_1 = _RAND_103[15:0];
  _RAND_104 = {1{`RANDOM}};
  stage2_regs_1_1_2 = _RAND_104[15:0];
  _RAND_105 = {1{`RANDOM}};
  stage2_regs_1_1_3 = _RAND_105[15:0];
  _RAND_106 = {1{`RANDOM}};
  stage2_regs_1_1_4 = _RAND_106[15:0];
  _RAND_107 = {1{`RANDOM}};
  stage2_regs_1_1_5 = _RAND_107[15:0];
  _RAND_108 = {1{`RANDOM}};
  stage2_regs_1_1_6 = _RAND_108[15:0];
  _RAND_109 = {1{`RANDOM}};
  stage2_regs_1_1_7 = _RAND_109[15:0];
  _RAND_110 = {1{`RANDOM}};
  stage2_regs_1_1_8 = _RAND_110[15:0];
  _RAND_111 = {1{`RANDOM}};
  stage2_regs_2_0_0 = _RAND_111[15:0];
  _RAND_112 = {1{`RANDOM}};
  stage2_regs_2_0_1 = _RAND_112[15:0];
  _RAND_113 = {1{`RANDOM}};
  stage2_regs_2_0_2 = _RAND_113[15:0];
  _RAND_114 = {1{`RANDOM}};
  stage2_regs_2_0_3 = _RAND_114[15:0];
  _RAND_115 = {1{`RANDOM}};
  stage2_regs_2_0_4 = _RAND_115[15:0];
  _RAND_116 = {1{`RANDOM}};
  stage2_regs_2_0_5 = _RAND_116[15:0];
  _RAND_117 = {1{`RANDOM}};
  stage2_regs_2_0_6 = _RAND_117[15:0];
  _RAND_118 = {1{`RANDOM}};
  stage2_regs_2_0_7 = _RAND_118[15:0];
  _RAND_119 = {1{`RANDOM}};
  stage2_regs_2_0_8 = _RAND_119[15:0];
  _RAND_120 = {1{`RANDOM}};
  stage2_regs_2_1_0 = _RAND_120[15:0];
  _RAND_121 = {1{`RANDOM}};
  stage2_regs_2_1_1 = _RAND_121[15:0];
  _RAND_122 = {1{`RANDOM}};
  stage2_regs_2_1_2 = _RAND_122[15:0];
  _RAND_123 = {1{`RANDOM}};
  stage2_regs_2_1_3 = _RAND_123[15:0];
  _RAND_124 = {1{`RANDOM}};
  stage2_regs_2_1_4 = _RAND_124[15:0];
  _RAND_125 = {1{`RANDOM}};
  stage2_regs_2_1_5 = _RAND_125[15:0];
  _RAND_126 = {1{`RANDOM}};
  stage2_regs_2_1_6 = _RAND_126[15:0];
  _RAND_127 = {1{`RANDOM}};
  stage2_regs_2_1_7 = _RAND_127[15:0];
  _RAND_128 = {1{`RANDOM}};
  stage2_regs_2_1_8 = _RAND_128[15:0];
  _RAND_129 = {1{`RANDOM}};
  stage3_regs_0_0_0 = _RAND_129[15:0];
  _RAND_130 = {1{`RANDOM}};
  stage3_regs_0_0_1 = _RAND_130[15:0];
  _RAND_131 = {1{`RANDOM}};
  stage3_regs_0_0_2 = _RAND_131[15:0];
  _RAND_132 = {1{`RANDOM}};
  stage3_regs_0_0_3 = _RAND_132[15:0];
  _RAND_133 = {1{`RANDOM}};
  stage3_regs_0_0_4 = _RAND_133[15:0];
  _RAND_134 = {1{`RANDOM}};
  stage3_regs_0_0_5 = _RAND_134[15:0];
  _RAND_135 = {1{`RANDOM}};
  stage3_regs_0_0_6 = _RAND_135[15:0];
  _RAND_136 = {1{`RANDOM}};
  stage3_regs_0_0_7 = _RAND_136[15:0];
  _RAND_137 = {1{`RANDOM}};
  stage3_regs_0_0_8 = _RAND_137[15:0];
  _RAND_138 = {1{`RANDOM}};
  stage3_regs_0_0_9 = _RAND_138[15:0];
  _RAND_139 = {1{`RANDOM}};
  stage3_regs_0_0_10 = _RAND_139[15:0];
  _RAND_140 = {1{`RANDOM}};
  stage3_regs_0_0_11 = _RAND_140[15:0];
  _RAND_141 = {1{`RANDOM}};
  stage3_regs_0_1_0 = _RAND_141[15:0];
  _RAND_142 = {1{`RANDOM}};
  stage3_regs_0_1_1 = _RAND_142[15:0];
  _RAND_143 = {1{`RANDOM}};
  stage3_regs_0_1_2 = _RAND_143[15:0];
  _RAND_144 = {1{`RANDOM}};
  stage3_regs_0_1_3 = _RAND_144[15:0];
  _RAND_145 = {1{`RANDOM}};
  stage3_regs_0_1_4 = _RAND_145[15:0];
  _RAND_146 = {1{`RANDOM}};
  stage3_regs_0_1_5 = _RAND_146[15:0];
  _RAND_147 = {1{`RANDOM}};
  stage3_regs_0_1_6 = _RAND_147[15:0];
  _RAND_148 = {1{`RANDOM}};
  stage3_regs_0_1_7 = _RAND_148[15:0];
  _RAND_149 = {1{`RANDOM}};
  stage3_regs_0_1_8 = _RAND_149[15:0];
  _RAND_150 = {1{`RANDOM}};
  stage3_regs_0_1_9 = _RAND_150[15:0];
  _RAND_151 = {1{`RANDOM}};
  stage3_regs_0_1_10 = _RAND_151[15:0];
  _RAND_152 = {1{`RANDOM}};
  stage3_regs_0_1_11 = _RAND_152[15:0];
  _RAND_153 = {1{`RANDOM}};
  stage3_regs_1_0_0 = _RAND_153[15:0];
  _RAND_154 = {1{`RANDOM}};
  stage3_regs_1_0_1 = _RAND_154[15:0];
  _RAND_155 = {1{`RANDOM}};
  stage3_regs_1_0_2 = _RAND_155[15:0];
  _RAND_156 = {1{`RANDOM}};
  stage3_regs_1_0_3 = _RAND_156[15:0];
  _RAND_157 = {1{`RANDOM}};
  stage3_regs_1_0_4 = _RAND_157[15:0];
  _RAND_158 = {1{`RANDOM}};
  stage3_regs_1_0_5 = _RAND_158[15:0];
  _RAND_159 = {1{`RANDOM}};
  stage3_regs_1_0_6 = _RAND_159[15:0];
  _RAND_160 = {1{`RANDOM}};
  stage3_regs_1_0_7 = _RAND_160[15:0];
  _RAND_161 = {1{`RANDOM}};
  stage3_regs_1_0_8 = _RAND_161[15:0];
  _RAND_162 = {1{`RANDOM}};
  stage3_regs_1_0_9 = _RAND_162[15:0];
  _RAND_163 = {1{`RANDOM}};
  stage3_regs_1_0_10 = _RAND_163[15:0];
  _RAND_164 = {1{`RANDOM}};
  stage3_regs_1_0_11 = _RAND_164[15:0];
  _RAND_165 = {1{`RANDOM}};
  stage3_regs_1_1_0 = _RAND_165[15:0];
  _RAND_166 = {1{`RANDOM}};
  stage3_regs_1_1_1 = _RAND_166[15:0];
  _RAND_167 = {1{`RANDOM}};
  stage3_regs_1_1_2 = _RAND_167[15:0];
  _RAND_168 = {1{`RANDOM}};
  stage3_regs_1_1_3 = _RAND_168[15:0];
  _RAND_169 = {1{`RANDOM}};
  stage3_regs_1_1_4 = _RAND_169[15:0];
  _RAND_170 = {1{`RANDOM}};
  stage3_regs_1_1_5 = _RAND_170[15:0];
  _RAND_171 = {1{`RANDOM}};
  stage3_regs_1_1_6 = _RAND_171[15:0];
  _RAND_172 = {1{`RANDOM}};
  stage3_regs_1_1_7 = _RAND_172[15:0];
  _RAND_173 = {1{`RANDOM}};
  stage3_regs_1_1_8 = _RAND_173[15:0];
  _RAND_174 = {1{`RANDOM}};
  stage3_regs_1_1_9 = _RAND_174[15:0];
  _RAND_175 = {1{`RANDOM}};
  stage3_regs_1_1_10 = _RAND_175[15:0];
  _RAND_176 = {1{`RANDOM}};
  stage3_regs_1_1_11 = _RAND_176[15:0];
  _RAND_177 = {1{`RANDOM}};
  stage3_regs_2_0_0 = _RAND_177[15:0];
  _RAND_178 = {1{`RANDOM}};
  stage3_regs_2_0_1 = _RAND_178[15:0];
  _RAND_179 = {1{`RANDOM}};
  stage3_regs_2_0_2 = _RAND_179[15:0];
  _RAND_180 = {1{`RANDOM}};
  stage3_regs_2_0_3 = _RAND_180[15:0];
  _RAND_181 = {1{`RANDOM}};
  stage3_regs_2_0_4 = _RAND_181[15:0];
  _RAND_182 = {1{`RANDOM}};
  stage3_regs_2_0_5 = _RAND_182[15:0];
  _RAND_183 = {1{`RANDOM}};
  stage3_regs_2_0_6 = _RAND_183[15:0];
  _RAND_184 = {1{`RANDOM}};
  stage3_regs_2_0_7 = _RAND_184[15:0];
  _RAND_185 = {1{`RANDOM}};
  stage3_regs_2_0_8 = _RAND_185[15:0];
  _RAND_186 = {1{`RANDOM}};
  stage3_regs_2_0_9 = _RAND_186[15:0];
  _RAND_187 = {1{`RANDOM}};
  stage3_regs_2_0_10 = _RAND_187[15:0];
  _RAND_188 = {1{`RANDOM}};
  stage3_regs_2_0_11 = _RAND_188[15:0];
  _RAND_189 = {1{`RANDOM}};
  stage3_regs_2_1_0 = _RAND_189[15:0];
  _RAND_190 = {1{`RANDOM}};
  stage3_regs_2_1_1 = _RAND_190[15:0];
  _RAND_191 = {1{`RANDOM}};
  stage3_regs_2_1_2 = _RAND_191[15:0];
  _RAND_192 = {1{`RANDOM}};
  stage3_regs_2_1_3 = _RAND_192[15:0];
  _RAND_193 = {1{`RANDOM}};
  stage3_regs_2_1_4 = _RAND_193[15:0];
  _RAND_194 = {1{`RANDOM}};
  stage3_regs_2_1_5 = _RAND_194[15:0];
  _RAND_195 = {1{`RANDOM}};
  stage3_regs_2_1_6 = _RAND_195[15:0];
  _RAND_196 = {1{`RANDOM}};
  stage3_regs_2_1_7 = _RAND_196[15:0];
  _RAND_197 = {1{`RANDOM}};
  stage3_regs_2_1_8 = _RAND_197[15:0];
  _RAND_198 = {1{`RANDOM}};
  stage3_regs_2_1_9 = _RAND_198[15:0];
  _RAND_199 = {1{`RANDOM}};
  stage3_regs_2_1_10 = _RAND_199[15:0];
  _RAND_200 = {1{`RANDOM}};
  stage3_regs_2_1_11 = _RAND_200[15:0];
  _RAND_201 = {1{`RANDOM}};
  stage4_regs_0_1_0 = _RAND_201[15:0];
  _RAND_202 = {1{`RANDOM}};
  stage4_regs_0_1_1 = _RAND_202[15:0];
  _RAND_203 = {1{`RANDOM}};
  stage4_regs_0_1_2 = _RAND_203[15:0];
  _RAND_204 = {1{`RANDOM}};
  stage4_regs_0_1_3 = _RAND_204[15:0];
  _RAND_205 = {1{`RANDOM}};
  stage4_regs_0_1_4 = _RAND_205[15:0];
  _RAND_206 = {1{`RANDOM}};
  stage4_regs_0_1_5 = _RAND_206[15:0];
  _RAND_207 = {1{`RANDOM}};
  stage4_regs_0_1_6 = _RAND_207[15:0];
  _RAND_208 = {1{`RANDOM}};
  stage4_regs_0_1_7 = _RAND_208[15:0];
  _RAND_209 = {1{`RANDOM}};
  stage4_regs_0_1_8 = _RAND_209[15:0];
  _RAND_210 = {1{`RANDOM}};
  stage4_regs_1_1_0 = _RAND_210[15:0];
  _RAND_211 = {1{`RANDOM}};
  stage4_regs_1_1_1 = _RAND_211[15:0];
  _RAND_212 = {1{`RANDOM}};
  stage4_regs_1_1_2 = _RAND_212[15:0];
  _RAND_213 = {1{`RANDOM}};
  stage4_regs_1_1_3 = _RAND_213[15:0];
  _RAND_214 = {1{`RANDOM}};
  stage4_regs_1_1_4 = _RAND_214[15:0];
  _RAND_215 = {1{`RANDOM}};
  stage4_regs_1_1_5 = _RAND_215[15:0];
  _RAND_216 = {1{`RANDOM}};
  stage4_regs_1_1_6 = _RAND_216[15:0];
  _RAND_217 = {1{`RANDOM}};
  stage4_regs_1_1_7 = _RAND_217[15:0];
  _RAND_218 = {1{`RANDOM}};
  stage4_regs_1_1_8 = _RAND_218[15:0];
  _RAND_219 = {1{`RANDOM}};
  stage4_regs_2_1_0 = _RAND_219[15:0];
  _RAND_220 = {1{`RANDOM}};
  stage4_regs_2_1_1 = _RAND_220[15:0];
  _RAND_221 = {1{`RANDOM}};
  stage4_regs_2_1_2 = _RAND_221[15:0];
  _RAND_222 = {1{`RANDOM}};
  stage4_regs_2_1_3 = _RAND_222[15:0];
  _RAND_223 = {1{`RANDOM}};
  stage4_regs_2_1_4 = _RAND_223[15:0];
  _RAND_224 = {1{`RANDOM}};
  stage4_regs_2_1_5 = _RAND_224[15:0];
  _RAND_225 = {1{`RANDOM}};
  stage4_regs_2_1_6 = _RAND_225[15:0];
  _RAND_226 = {1{`RANDOM}};
  stage4_regs_2_1_7 = _RAND_226[15:0];
  _RAND_227 = {1{`RANDOM}};
  stage4_regs_2_1_8 = _RAND_227[15:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module FP_reciprocal_newfpu_12(
  input         clock,
  input         reset,
  input  [15:0] io_in_a,
  output [15:0] io_out_s
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_85;
  reg [31:0] _RAND_86;
  reg [31:0] _RAND_87;
  reg [31:0] _RAND_88;
  reg [31:0] _RAND_89;
  reg [31:0] _RAND_90;
  reg [31:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [31:0] _RAND_93;
  reg [31:0] _RAND_94;
  reg [31:0] _RAND_95;
  reg [31:0] _RAND_96;
  reg [31:0] _RAND_97;
  reg [31:0] _RAND_98;
  reg [31:0] _RAND_99;
  reg [31:0] _RAND_100;
  reg [31:0] _RAND_101;
  reg [31:0] _RAND_102;
  reg [31:0] _RAND_103;
  reg [31:0] _RAND_104;
  reg [31:0] _RAND_105;
  reg [31:0] _RAND_106;
  reg [31:0] _RAND_107;
  reg [31:0] _RAND_108;
  reg [31:0] _RAND_109;
  reg [31:0] _RAND_110;
  reg [31:0] _RAND_111;
  reg [31:0] _RAND_112;
  reg [31:0] _RAND_113;
  reg [31:0] _RAND_114;
  reg [31:0] _RAND_115;
  reg [31:0] _RAND_116;
  reg [31:0] _RAND_117;
  reg [31:0] _RAND_118;
  reg [31:0] _RAND_119;
  reg [31:0] _RAND_120;
  reg [31:0] _RAND_121;
  reg [31:0] _RAND_122;
  reg [31:0] _RAND_123;
  reg [31:0] _RAND_124;
  reg [31:0] _RAND_125;
  reg [31:0] _RAND_126;
  reg [31:0] _RAND_127;
  reg [31:0] _RAND_128;
  reg [31:0] _RAND_129;
  reg [31:0] _RAND_130;
  reg [31:0] _RAND_131;
  reg [31:0] _RAND_132;
  reg [31:0] _RAND_133;
  reg [31:0] _RAND_134;
  reg [31:0] _RAND_135;
  reg [31:0] _RAND_136;
  reg [31:0] _RAND_137;
  reg [31:0] _RAND_138;
  reg [31:0] _RAND_139;
  reg [31:0] _RAND_140;
  reg [31:0] _RAND_141;
  reg [31:0] _RAND_142;
  reg [31:0] _RAND_143;
  reg [31:0] _RAND_144;
  reg [31:0] _RAND_145;
  reg [31:0] _RAND_146;
  reg [31:0] _RAND_147;
  reg [31:0] _RAND_148;
  reg [31:0] _RAND_149;
  reg [31:0] _RAND_150;
  reg [31:0] _RAND_151;
  reg [31:0] _RAND_152;
  reg [31:0] _RAND_153;
  reg [31:0] _RAND_154;
  reg [31:0] _RAND_155;
  reg [31:0] _RAND_156;
  reg [31:0] _RAND_157;
  reg [31:0] _RAND_158;
  reg [31:0] _RAND_159;
  reg [31:0] _RAND_160;
  reg [31:0] _RAND_161;
  reg [31:0] _RAND_162;
  reg [31:0] _RAND_163;
  reg [31:0] _RAND_164;
  reg [31:0] _RAND_165;
  reg [31:0] _RAND_166;
  reg [31:0] _RAND_167;
  reg [31:0] _RAND_168;
  reg [31:0] _RAND_169;
  reg [31:0] _RAND_170;
  reg [31:0] _RAND_171;
  reg [31:0] _RAND_172;
  reg [31:0] _RAND_173;
  reg [31:0] _RAND_174;
  reg [31:0] _RAND_175;
  reg [31:0] _RAND_176;
  reg [31:0] _RAND_177;
  reg [31:0] _RAND_178;
  reg [31:0] _RAND_179;
  reg [31:0] _RAND_180;
  reg [31:0] _RAND_181;
  reg [31:0] _RAND_182;
  reg [31:0] _RAND_183;
  reg [31:0] _RAND_184;
  reg [31:0] _RAND_185;
  reg [31:0] _RAND_186;
  reg [31:0] _RAND_187;
  reg [31:0] _RAND_188;
  reg [31:0] _RAND_189;
  reg [31:0] _RAND_190;
  reg [31:0] _RAND_191;
  reg [31:0] _RAND_192;
  reg [31:0] _RAND_193;
  reg [31:0] _RAND_194;
  reg [31:0] _RAND_195;
  reg [31:0] _RAND_196;
  reg [31:0] _RAND_197;
`endif // RANDOMIZE_REG_INIT
  wire  FP_multiplier_10ccs_12_clock; // @[FloatingPointDesigns.scala 2011:65]
  wire  FP_multiplier_10ccs_12_reset; // @[FloatingPointDesigns.scala 2011:65]
  wire  FP_multiplier_10ccs_12_io_in_en; // @[FloatingPointDesigns.scala 2011:65]
  wire [15:0] FP_multiplier_10ccs_12_io_in_a; // @[FloatingPointDesigns.scala 2011:65]
  wire [15:0] FP_multiplier_10ccs_12_io_in_b; // @[FloatingPointDesigns.scala 2011:65]
  wire [15:0] FP_multiplier_10ccs_12_io_out_s; // @[FloatingPointDesigns.scala 2011:65]
  wire  FP_multiplier_10ccs_12_1_clock; // @[FloatingPointDesigns.scala 2011:65]
  wire  FP_multiplier_10ccs_12_1_reset; // @[FloatingPointDesigns.scala 2011:65]
  wire  FP_multiplier_10ccs_12_1_io_in_en; // @[FloatingPointDesigns.scala 2011:65]
  wire [15:0] FP_multiplier_10ccs_12_1_io_in_a; // @[FloatingPointDesigns.scala 2011:65]
  wire [15:0] FP_multiplier_10ccs_12_1_io_in_b; // @[FloatingPointDesigns.scala 2011:65]
  wire [15:0] FP_multiplier_10ccs_12_1_io_out_s; // @[FloatingPointDesigns.scala 2011:65]
  wire  FP_multiplier_10ccs_12_2_clock; // @[FloatingPointDesigns.scala 2011:65]
  wire  FP_multiplier_10ccs_12_2_reset; // @[FloatingPointDesigns.scala 2011:65]
  wire  FP_multiplier_10ccs_12_2_io_in_en; // @[FloatingPointDesigns.scala 2011:65]
  wire [15:0] FP_multiplier_10ccs_12_2_io_in_a; // @[FloatingPointDesigns.scala 2011:65]
  wire [15:0] FP_multiplier_10ccs_12_2_io_in_b; // @[FloatingPointDesigns.scala 2011:65]
  wire [15:0] FP_multiplier_10ccs_12_2_io_out_s; // @[FloatingPointDesigns.scala 2011:65]
  wire  FP_subtractor_13ccs_12_clock; // @[FloatingPointDesigns.scala 2012:50]
  wire  FP_subtractor_13ccs_12_reset; // @[FloatingPointDesigns.scala 2012:50]
  wire  FP_subtractor_13ccs_12_io_in_en; // @[FloatingPointDesigns.scala 2012:50]
  wire [15:0] FP_subtractor_13ccs_12_io_in_a; // @[FloatingPointDesigns.scala 2012:50]
  wire [15:0] FP_subtractor_13ccs_12_io_in_b; // @[FloatingPointDesigns.scala 2012:50]
  wire [15:0] FP_subtractor_13ccs_12_io_out_s; // @[FloatingPointDesigns.scala 2012:50]
  wire  multiplier4_clock; // @[FloatingPointDesigns.scala 2091:29]
  wire  multiplier4_reset; // @[FloatingPointDesigns.scala 2091:29]
  wire  multiplier4_io_in_en; // @[FloatingPointDesigns.scala 2091:29]
  wire [15:0] multiplier4_io_in_a; // @[FloatingPointDesigns.scala 2091:29]
  wire [15:0] multiplier4_io_in_b; // @[FloatingPointDesigns.scala 2091:29]
  wire [15:0] multiplier4_io_out_s; // @[FloatingPointDesigns.scala 2091:29]
  wire  FP_multiplier_10ccs_12_3_clock; // @[FloatingPointDesigns.scala 2103:69]
  wire  FP_multiplier_10ccs_12_3_reset; // @[FloatingPointDesigns.scala 2103:69]
  wire  FP_multiplier_10ccs_12_3_io_in_en; // @[FloatingPointDesigns.scala 2103:69]
  wire [15:0] FP_multiplier_10ccs_12_3_io_in_a; // @[FloatingPointDesigns.scala 2103:69]
  wire [15:0] FP_multiplier_10ccs_12_3_io_in_b; // @[FloatingPointDesigns.scala 2103:69]
  wire [15:0] FP_multiplier_10ccs_12_3_io_out_s; // @[FloatingPointDesigns.scala 2103:69]
  wire  FP_multiplier_10ccs_12_4_clock; // @[FloatingPointDesigns.scala 2103:69]
  wire  FP_multiplier_10ccs_12_4_reset; // @[FloatingPointDesigns.scala 2103:69]
  wire  FP_multiplier_10ccs_12_4_io_in_en; // @[FloatingPointDesigns.scala 2103:69]
  wire [15:0] FP_multiplier_10ccs_12_4_io_in_a; // @[FloatingPointDesigns.scala 2103:69]
  wire [15:0] FP_multiplier_10ccs_12_4_io_in_b; // @[FloatingPointDesigns.scala 2103:69]
  wire [15:0] FP_multiplier_10ccs_12_4_io_out_s; // @[FloatingPointDesigns.scala 2103:69]
  wire  FP_multiplier_10ccs_12_5_clock; // @[FloatingPointDesigns.scala 2103:69]
  wire  FP_multiplier_10ccs_12_5_reset; // @[FloatingPointDesigns.scala 2103:69]
  wire  FP_multiplier_10ccs_12_5_io_in_en; // @[FloatingPointDesigns.scala 2103:69]
  wire [15:0] FP_multiplier_10ccs_12_5_io_in_a; // @[FloatingPointDesigns.scala 2103:69]
  wire [15:0] FP_multiplier_10ccs_12_5_io_in_b; // @[FloatingPointDesigns.scala 2103:69]
  wire [15:0] FP_multiplier_10ccs_12_5_io_out_s; // @[FloatingPointDesigns.scala 2103:69]
  wire  FP_multiplier_10ccs_12_6_clock; // @[FloatingPointDesigns.scala 2103:69]
  wire  FP_multiplier_10ccs_12_6_reset; // @[FloatingPointDesigns.scala 2103:69]
  wire  FP_multiplier_10ccs_12_6_io_in_en; // @[FloatingPointDesigns.scala 2103:69]
  wire [15:0] FP_multiplier_10ccs_12_6_io_in_a; // @[FloatingPointDesigns.scala 2103:69]
  wire [15:0] FP_multiplier_10ccs_12_6_io_in_b; // @[FloatingPointDesigns.scala 2103:69]
  wire [15:0] FP_multiplier_10ccs_12_6_io_out_s; // @[FloatingPointDesigns.scala 2103:69]
  wire  FP_subtractor_13ccs_12_1_clock; // @[FloatingPointDesigns.scala 2104:54]
  wire  FP_subtractor_13ccs_12_1_reset; // @[FloatingPointDesigns.scala 2104:54]
  wire  FP_subtractor_13ccs_12_1_io_in_en; // @[FloatingPointDesigns.scala 2104:54]
  wire [15:0] FP_subtractor_13ccs_12_1_io_in_a; // @[FloatingPointDesigns.scala 2104:54]
  wire [15:0] FP_subtractor_13ccs_12_1_io_in_b; // @[FloatingPointDesigns.scala 2104:54]
  wire [15:0] FP_subtractor_13ccs_12_1_io_out_s; // @[FloatingPointDesigns.scala 2104:54]
  wire  FP_subtractor_13ccs_12_2_clock; // @[FloatingPointDesigns.scala 2104:54]
  wire  FP_subtractor_13ccs_12_2_reset; // @[FloatingPointDesigns.scala 2104:54]
  wire  FP_subtractor_13ccs_12_2_io_in_en; // @[FloatingPointDesigns.scala 2104:54]
  wire [15:0] FP_subtractor_13ccs_12_2_io_in_a; // @[FloatingPointDesigns.scala 2104:54]
  wire [15:0] FP_subtractor_13ccs_12_2_io_in_b; // @[FloatingPointDesigns.scala 2104:54]
  wire [15:0] FP_subtractor_13ccs_12_2_io_out_s; // @[FloatingPointDesigns.scala 2104:54]
  wire [14:0] _number_T_1 = {{1'd0}, io_in_a[14:1]}; // @[FloatingPointDesigns.scala 1996:36]
  wire [14:0] _GEN_0 = io_in_a[14:0] > 15'h7800 ? 15'h3c00 : _number_T_1; // @[FloatingPointDesigns.scala 1993:46 1994:14 1996:14]
  wire [15:0] number = {{1'd0}, _GEN_0}; // @[FloatingPointDesigns.scala 1988:22]
  wire [15:0] result = 16'h5a00 - number; // @[FloatingPointDesigns.scala 2003:25]
  reg [15:0] x_n_0; // @[FloatingPointDesigns.scala 2005:22]
  reg [15:0] x_n_1; // @[FloatingPointDesigns.scala 2005:22]
  reg [15:0] x_n_2; // @[FloatingPointDesigns.scala 2005:22]
  reg [15:0] a_2_0; // @[FloatingPointDesigns.scala 2006:22]
  reg [15:0] a_2_1; // @[FloatingPointDesigns.scala 2006:22]
  reg [15:0] a_2_2; // @[FloatingPointDesigns.scala 2006:22]
  reg [15:0] a_2_3; // @[FloatingPointDesigns.scala 2006:22]
  reg [15:0] stage1_regs_0_0_0; // @[FloatingPointDesigns.scala 2007:30]
  reg [15:0] stage1_regs_0_0_1; // @[FloatingPointDesigns.scala 2007:30]
  reg [15:0] stage1_regs_0_0_2; // @[FloatingPointDesigns.scala 2007:30]
  reg [15:0] stage1_regs_0_0_3; // @[FloatingPointDesigns.scala 2007:30]
  reg [15:0] stage1_regs_0_0_4; // @[FloatingPointDesigns.scala 2007:30]
  reg [15:0] stage1_regs_0_0_5; // @[FloatingPointDesigns.scala 2007:30]
  reg [15:0] stage1_regs_0_0_6; // @[FloatingPointDesigns.scala 2007:30]
  reg [15:0] stage1_regs_0_0_7; // @[FloatingPointDesigns.scala 2007:30]
  reg [15:0] stage1_regs_0_0_8; // @[FloatingPointDesigns.scala 2007:30]
  reg [15:0] stage1_regs_0_1_0; // @[FloatingPointDesigns.scala 2007:30]
  reg [15:0] stage1_regs_0_1_1; // @[FloatingPointDesigns.scala 2007:30]
  reg [15:0] stage1_regs_0_1_2; // @[FloatingPointDesigns.scala 2007:30]
  reg [15:0] stage1_regs_0_1_3; // @[FloatingPointDesigns.scala 2007:30]
  reg [15:0] stage1_regs_0_1_4; // @[FloatingPointDesigns.scala 2007:30]
  reg [15:0] stage1_regs_0_1_5; // @[FloatingPointDesigns.scala 2007:30]
  reg [15:0] stage1_regs_0_1_6; // @[FloatingPointDesigns.scala 2007:30]
  reg [15:0] stage1_regs_0_1_7; // @[FloatingPointDesigns.scala 2007:30]
  reg [15:0] stage1_regs_0_1_8; // @[FloatingPointDesigns.scala 2007:30]
  reg [15:0] stage2_regs_0_0_0; // @[FloatingPointDesigns.scala 2008:30]
  reg [15:0] stage2_regs_0_0_1; // @[FloatingPointDesigns.scala 2008:30]
  reg [15:0] stage2_regs_0_0_2; // @[FloatingPointDesigns.scala 2008:30]
  reg [15:0] stage2_regs_0_0_3; // @[FloatingPointDesigns.scala 2008:30]
  reg [15:0] stage2_regs_0_0_4; // @[FloatingPointDesigns.scala 2008:30]
  reg [15:0] stage2_regs_0_0_5; // @[FloatingPointDesigns.scala 2008:30]
  reg [15:0] stage2_regs_0_0_6; // @[FloatingPointDesigns.scala 2008:30]
  reg [15:0] stage2_regs_0_0_7; // @[FloatingPointDesigns.scala 2008:30]
  reg [15:0] stage2_regs_0_0_8; // @[FloatingPointDesigns.scala 2008:30]
  reg [15:0] stage2_regs_0_1_0; // @[FloatingPointDesigns.scala 2008:30]
  reg [15:0] stage2_regs_0_1_1; // @[FloatingPointDesigns.scala 2008:30]
  reg [15:0] stage2_regs_0_1_2; // @[FloatingPointDesigns.scala 2008:30]
  reg [15:0] stage2_regs_0_1_3; // @[FloatingPointDesigns.scala 2008:30]
  reg [15:0] stage2_regs_0_1_4; // @[FloatingPointDesigns.scala 2008:30]
  reg [15:0] stage2_regs_0_1_5; // @[FloatingPointDesigns.scala 2008:30]
  reg [15:0] stage2_regs_0_1_6; // @[FloatingPointDesigns.scala 2008:30]
  reg [15:0] stage2_regs_0_1_7; // @[FloatingPointDesigns.scala 2008:30]
  reg [15:0] stage2_regs_0_1_8; // @[FloatingPointDesigns.scala 2008:30]
  reg [15:0] stage3_regs_0_0_0; // @[FloatingPointDesigns.scala 2009:30]
  reg [15:0] stage3_regs_0_0_1; // @[FloatingPointDesigns.scala 2009:30]
  reg [15:0] stage3_regs_0_0_2; // @[FloatingPointDesigns.scala 2009:30]
  reg [15:0] stage3_regs_0_0_3; // @[FloatingPointDesigns.scala 2009:30]
  reg [15:0] stage3_regs_0_0_4; // @[FloatingPointDesigns.scala 2009:30]
  reg [15:0] stage3_regs_0_0_5; // @[FloatingPointDesigns.scala 2009:30]
  reg [15:0] stage3_regs_0_0_6; // @[FloatingPointDesigns.scala 2009:30]
  reg [15:0] stage3_regs_0_0_7; // @[FloatingPointDesigns.scala 2009:30]
  reg [15:0] stage3_regs_0_0_8; // @[FloatingPointDesigns.scala 2009:30]
  reg [15:0] stage3_regs_0_0_9; // @[FloatingPointDesigns.scala 2009:30]
  reg [15:0] stage3_regs_0_0_10; // @[FloatingPointDesigns.scala 2009:30]
  reg [15:0] stage3_regs_0_0_11; // @[FloatingPointDesigns.scala 2009:30]
  reg [15:0] stage3_regs_0_1_0; // @[FloatingPointDesigns.scala 2009:30]
  reg [15:0] stage3_regs_0_1_1; // @[FloatingPointDesigns.scala 2009:30]
  reg [15:0] stage3_regs_0_1_2; // @[FloatingPointDesigns.scala 2009:30]
  reg [15:0] stage3_regs_0_1_3; // @[FloatingPointDesigns.scala 2009:30]
  reg [15:0] stage3_regs_0_1_4; // @[FloatingPointDesigns.scala 2009:30]
  reg [15:0] stage3_regs_0_1_5; // @[FloatingPointDesigns.scala 2009:30]
  reg [15:0] stage3_regs_0_1_6; // @[FloatingPointDesigns.scala 2009:30]
  reg [15:0] stage3_regs_0_1_7; // @[FloatingPointDesigns.scala 2009:30]
  reg [15:0] stage3_regs_0_1_8; // @[FloatingPointDesigns.scala 2009:30]
  reg [15:0] stage3_regs_0_1_9; // @[FloatingPointDesigns.scala 2009:30]
  reg [15:0] stage3_regs_0_1_10; // @[FloatingPointDesigns.scala 2009:30]
  reg [15:0] stage3_regs_0_1_11; // @[FloatingPointDesigns.scala 2009:30]
  reg [15:0] stage4_regs_0_1_0; // @[FloatingPointDesigns.scala 2010:30]
  reg [15:0] stage4_regs_0_1_1; // @[FloatingPointDesigns.scala 2010:30]
  reg [15:0] stage4_regs_0_1_2; // @[FloatingPointDesigns.scala 2010:30]
  reg [15:0] stage4_regs_0_1_3; // @[FloatingPointDesigns.scala 2010:30]
  reg [15:0] stage4_regs_0_1_4; // @[FloatingPointDesigns.scala 2010:30]
  reg [15:0] stage4_regs_0_1_5; // @[FloatingPointDesigns.scala 2010:30]
  reg [15:0] stage4_regs_0_1_6; // @[FloatingPointDesigns.scala 2010:30]
  reg [15:0] stage4_regs_0_1_7; // @[FloatingPointDesigns.scala 2010:30]
  reg [15:0] stage4_regs_0_1_8; // @[FloatingPointDesigns.scala 2010:30]
  wire [4:0] _a_2_0_T_3 = io_in_a[14:10] - 5'h1; // @[FloatingPointDesigns.scala 2036:75]
  wire [15:0] _a_2_0_T_6 = {io_in_a[15],_a_2_0_T_3,io_in_a[9:0]}; // @[FloatingPointDesigns.scala 2036:82]
  reg [15:0] a_2_isr_to_r; // @[FloatingPointDesigns.scala 2081:31]
  reg [15:0] transition_regs_0; // @[FloatingPointDesigns.scala 2082:34]
  reg [15:0] transition_regs_1; // @[FloatingPointDesigns.scala 2082:34]
  reg [15:0] transition_regs_2; // @[FloatingPointDesigns.scala 2082:34]
  reg [15:0] transition_regs_3; // @[FloatingPointDesigns.scala 2082:34]
  reg [15:0] transition_regs_4; // @[FloatingPointDesigns.scala 2082:34]
  reg [15:0] transition_regs_5; // @[FloatingPointDesigns.scala 2082:34]
  reg [15:0] transition_regs_6; // @[FloatingPointDesigns.scala 2082:34]
  reg [15:0] transition_regs_7; // @[FloatingPointDesigns.scala 2082:34]
  reg [15:0] transition_regs_8; // @[FloatingPointDesigns.scala 2082:34]
  wire [4:0] _a_2_isr_to_r_T_3 = stage4_regs_0_1_8[14:10] + 5'h1; // @[FloatingPointDesigns.scala 2084:115]
  wire [15:0] _a_2_isr_to_r_T_6 = {stage4_regs_0_1_8[15],_a_2_isr_to_r_T_3,stage4_regs_0_1_8[9:0]}; // @[FloatingPointDesigns.scala 2084:122]
  reg [15:0] x_n_r_0; // @[FloatingPointDesigns.scala 2098:24]
  reg [15:0] x_n_r_1; // @[FloatingPointDesigns.scala 2098:24]
  reg [15:0] x_n_r_3; // @[FloatingPointDesigns.scala 2098:24]
  reg [15:0] x_n_r_4; // @[FloatingPointDesigns.scala 2098:24]
  reg [15:0] a_2_r_0; // @[FloatingPointDesigns.scala 2099:24]
  reg [15:0] a_2_r_1; // @[FloatingPointDesigns.scala 2099:24]
  reg [15:0] a_2_r_2; // @[FloatingPointDesigns.scala 2099:24]
  reg [15:0] a_2_r_3; // @[FloatingPointDesigns.scala 2099:24]
  reg [15:0] a_2_r_4; // @[FloatingPointDesigns.scala 2099:24]
  reg [15:0] a_2_r_5; // @[FloatingPointDesigns.scala 2099:24]
  reg [15:0] stage1_regs_r_0_0_0; // @[FloatingPointDesigns.scala 2100:32]
  reg [15:0] stage1_regs_r_0_0_1; // @[FloatingPointDesigns.scala 2100:32]
  reg [15:0] stage1_regs_r_0_0_2; // @[FloatingPointDesigns.scala 2100:32]
  reg [15:0] stage1_regs_r_0_0_3; // @[FloatingPointDesigns.scala 2100:32]
  reg [15:0] stage1_regs_r_0_0_4; // @[FloatingPointDesigns.scala 2100:32]
  reg [15:0] stage1_regs_r_0_0_5; // @[FloatingPointDesigns.scala 2100:32]
  reg [15:0] stage1_regs_r_0_0_6; // @[FloatingPointDesigns.scala 2100:32]
  reg [15:0] stage1_regs_r_0_0_7; // @[FloatingPointDesigns.scala 2100:32]
  reg [15:0] stage1_regs_r_0_0_8; // @[FloatingPointDesigns.scala 2100:32]
  reg [15:0] stage1_regs_r_0_1_0; // @[FloatingPointDesigns.scala 2100:32]
  reg [15:0] stage1_regs_r_0_1_1; // @[FloatingPointDesigns.scala 2100:32]
  reg [15:0] stage1_regs_r_0_1_2; // @[FloatingPointDesigns.scala 2100:32]
  reg [15:0] stage1_regs_r_0_1_3; // @[FloatingPointDesigns.scala 2100:32]
  reg [15:0] stage1_regs_r_0_1_4; // @[FloatingPointDesigns.scala 2100:32]
  reg [15:0] stage1_regs_r_0_1_5; // @[FloatingPointDesigns.scala 2100:32]
  reg [15:0] stage1_regs_r_0_1_6; // @[FloatingPointDesigns.scala 2100:32]
  reg [15:0] stage1_regs_r_0_1_7; // @[FloatingPointDesigns.scala 2100:32]
  reg [15:0] stage1_regs_r_0_1_8; // @[FloatingPointDesigns.scala 2100:32]
  reg [15:0] stage1_regs_r_1_0_0; // @[FloatingPointDesigns.scala 2100:32]
  reg [15:0] stage1_regs_r_1_0_1; // @[FloatingPointDesigns.scala 2100:32]
  reg [15:0] stage1_regs_r_1_0_2; // @[FloatingPointDesigns.scala 2100:32]
  reg [15:0] stage1_regs_r_1_0_3; // @[FloatingPointDesigns.scala 2100:32]
  reg [15:0] stage1_regs_r_1_0_4; // @[FloatingPointDesigns.scala 2100:32]
  reg [15:0] stage1_regs_r_1_0_5; // @[FloatingPointDesigns.scala 2100:32]
  reg [15:0] stage1_regs_r_1_0_6; // @[FloatingPointDesigns.scala 2100:32]
  reg [15:0] stage1_regs_r_1_0_7; // @[FloatingPointDesigns.scala 2100:32]
  reg [15:0] stage1_regs_r_1_0_8; // @[FloatingPointDesigns.scala 2100:32]
  reg [15:0] stage1_regs_r_1_1_0; // @[FloatingPointDesigns.scala 2100:32]
  reg [15:0] stage1_regs_r_1_1_1; // @[FloatingPointDesigns.scala 2100:32]
  reg [15:0] stage1_regs_r_1_1_2; // @[FloatingPointDesigns.scala 2100:32]
  reg [15:0] stage1_regs_r_1_1_3; // @[FloatingPointDesigns.scala 2100:32]
  reg [15:0] stage1_regs_r_1_1_4; // @[FloatingPointDesigns.scala 2100:32]
  reg [15:0] stage1_regs_r_1_1_5; // @[FloatingPointDesigns.scala 2100:32]
  reg [15:0] stage1_regs_r_1_1_6; // @[FloatingPointDesigns.scala 2100:32]
  reg [15:0] stage1_regs_r_1_1_7; // @[FloatingPointDesigns.scala 2100:32]
  reg [15:0] stage1_regs_r_1_1_8; // @[FloatingPointDesigns.scala 2100:32]
  reg [15:0] stage2_regs_r_0_0_0; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_0_0_1; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_0_0_2; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_0_0_3; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_0_0_4; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_0_0_5; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_0_0_6; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_0_0_7; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_0_0_8; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_0_0_9; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_0_0_10; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_0_0_11; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_0_1_0; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_0_1_1; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_0_1_2; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_0_1_3; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_0_1_4; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_0_1_5; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_0_1_6; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_0_1_7; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_0_1_8; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_0_1_9; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_0_1_10; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_0_1_11; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_1_0_0; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_1_0_1; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_1_0_2; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_1_0_3; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_1_0_4; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_1_0_5; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_1_0_6; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_1_0_7; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_1_0_8; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_1_0_9; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_1_0_10; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_1_0_11; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_1_1_0; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_1_1_1; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_1_1_2; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_1_1_3; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_1_1_4; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_1_1_5; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_1_1_6; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_1_1_7; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_1_1_8; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_1_1_9; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_1_1_10; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage2_regs_r_1_1_11; // @[FloatingPointDesigns.scala 2101:32]
  reg [15:0] stage3_regs_r_0_1_0; // @[FloatingPointDesigns.scala 2102:32]
  reg [15:0] stage3_regs_r_0_1_1; // @[FloatingPointDesigns.scala 2102:32]
  reg [15:0] stage3_regs_r_0_1_2; // @[FloatingPointDesigns.scala 2102:32]
  reg [15:0] stage3_regs_r_0_1_3; // @[FloatingPointDesigns.scala 2102:32]
  reg [15:0] stage3_regs_r_0_1_4; // @[FloatingPointDesigns.scala 2102:32]
  reg [15:0] stage3_regs_r_0_1_5; // @[FloatingPointDesigns.scala 2102:32]
  reg [15:0] stage3_regs_r_0_1_6; // @[FloatingPointDesigns.scala 2102:32]
  reg [15:0] stage3_regs_r_0_1_7; // @[FloatingPointDesigns.scala 2102:32]
  reg [15:0] stage3_regs_r_0_1_8; // @[FloatingPointDesigns.scala 2102:32]
  reg [15:0] stage3_regs_r_1_1_0; // @[FloatingPointDesigns.scala 2102:32]
  reg [15:0] stage3_regs_r_1_1_1; // @[FloatingPointDesigns.scala 2102:32]
  reg [15:0] stage3_regs_r_1_1_2; // @[FloatingPointDesigns.scala 2102:32]
  reg [15:0] stage3_regs_r_1_1_3; // @[FloatingPointDesigns.scala 2102:32]
  reg [15:0] stage3_regs_r_1_1_4; // @[FloatingPointDesigns.scala 2102:32]
  reg [15:0] stage3_regs_r_1_1_5; // @[FloatingPointDesigns.scala 2102:32]
  reg [15:0] stage3_regs_r_1_1_6; // @[FloatingPointDesigns.scala 2102:32]
  reg [15:0] stage3_regs_r_1_1_7; // @[FloatingPointDesigns.scala 2102:32]
  reg [15:0] stage3_regs_r_1_1_8; // @[FloatingPointDesigns.scala 2102:32]
  wire [15:0] _GEN_133 = multiplier4_io_out_s; // @[FloatingPointDesigns.scala 2098:24 2123:28 2124:28]
  wire [15:0] _GEN_189 = FP_multiplier_10ccs_12_4_io_out_s; // @[FloatingPointDesigns.scala 2098:24 2132:28 2133:28]
  FP_multiplier_10ccs_12 FP_multiplier_10ccs_12 ( // @[FloatingPointDesigns.scala 2011:65]
    .clock(FP_multiplier_10ccs_12_clock),
    .reset(FP_multiplier_10ccs_12_reset),
    .io_in_en(FP_multiplier_10ccs_12_io_in_en),
    .io_in_a(FP_multiplier_10ccs_12_io_in_a),
    .io_in_b(FP_multiplier_10ccs_12_io_in_b),
    .io_out_s(FP_multiplier_10ccs_12_io_out_s)
  );
  FP_multiplier_10ccs_12 FP_multiplier_10ccs_12_1 ( // @[FloatingPointDesigns.scala 2011:65]
    .clock(FP_multiplier_10ccs_12_1_clock),
    .reset(FP_multiplier_10ccs_12_1_reset),
    .io_in_en(FP_multiplier_10ccs_12_1_io_in_en),
    .io_in_a(FP_multiplier_10ccs_12_1_io_in_a),
    .io_in_b(FP_multiplier_10ccs_12_1_io_in_b),
    .io_out_s(FP_multiplier_10ccs_12_1_io_out_s)
  );
  FP_multiplier_10ccs_12 FP_multiplier_10ccs_12_2 ( // @[FloatingPointDesigns.scala 2011:65]
    .clock(FP_multiplier_10ccs_12_2_clock),
    .reset(FP_multiplier_10ccs_12_2_reset),
    .io_in_en(FP_multiplier_10ccs_12_2_io_in_en),
    .io_in_a(FP_multiplier_10ccs_12_2_io_in_a),
    .io_in_b(FP_multiplier_10ccs_12_2_io_in_b),
    .io_out_s(FP_multiplier_10ccs_12_2_io_out_s)
  );
  FP_subtractor_13ccs_12 FP_subtractor_13ccs_12 ( // @[FloatingPointDesigns.scala 2012:50]
    .clock(FP_subtractor_13ccs_12_clock),
    .reset(FP_subtractor_13ccs_12_reset),
    .io_in_en(FP_subtractor_13ccs_12_io_in_en),
    .io_in_a(FP_subtractor_13ccs_12_io_in_a),
    .io_in_b(FP_subtractor_13ccs_12_io_in_b),
    .io_out_s(FP_subtractor_13ccs_12_io_out_s)
  );
  FP_multiplier_10ccs_12 multiplier4 ( // @[FloatingPointDesigns.scala 2091:29]
    .clock(multiplier4_clock),
    .reset(multiplier4_reset),
    .io_in_en(multiplier4_io_in_en),
    .io_in_a(multiplier4_io_in_a),
    .io_in_b(multiplier4_io_in_b),
    .io_out_s(multiplier4_io_out_s)
  );
  FP_multiplier_10ccs_12 FP_multiplier_10ccs_12_3 ( // @[FloatingPointDesigns.scala 2103:69]
    .clock(FP_multiplier_10ccs_12_3_clock),
    .reset(FP_multiplier_10ccs_12_3_reset),
    .io_in_en(FP_multiplier_10ccs_12_3_io_in_en),
    .io_in_a(FP_multiplier_10ccs_12_3_io_in_a),
    .io_in_b(FP_multiplier_10ccs_12_3_io_in_b),
    .io_out_s(FP_multiplier_10ccs_12_3_io_out_s)
  );
  FP_multiplier_10ccs_12 FP_multiplier_10ccs_12_4 ( // @[FloatingPointDesigns.scala 2103:69]
    .clock(FP_multiplier_10ccs_12_4_clock),
    .reset(FP_multiplier_10ccs_12_4_reset),
    .io_in_en(FP_multiplier_10ccs_12_4_io_in_en),
    .io_in_a(FP_multiplier_10ccs_12_4_io_in_a),
    .io_in_b(FP_multiplier_10ccs_12_4_io_in_b),
    .io_out_s(FP_multiplier_10ccs_12_4_io_out_s)
  );
  FP_multiplier_10ccs_12 FP_multiplier_10ccs_12_5 ( // @[FloatingPointDesigns.scala 2103:69]
    .clock(FP_multiplier_10ccs_12_5_clock),
    .reset(FP_multiplier_10ccs_12_5_reset),
    .io_in_en(FP_multiplier_10ccs_12_5_io_in_en),
    .io_in_a(FP_multiplier_10ccs_12_5_io_in_a),
    .io_in_b(FP_multiplier_10ccs_12_5_io_in_b),
    .io_out_s(FP_multiplier_10ccs_12_5_io_out_s)
  );
  FP_multiplier_10ccs_12 FP_multiplier_10ccs_12_6 ( // @[FloatingPointDesigns.scala 2103:69]
    .clock(FP_multiplier_10ccs_12_6_clock),
    .reset(FP_multiplier_10ccs_12_6_reset),
    .io_in_en(FP_multiplier_10ccs_12_6_io_in_en),
    .io_in_a(FP_multiplier_10ccs_12_6_io_in_a),
    .io_in_b(FP_multiplier_10ccs_12_6_io_in_b),
    .io_out_s(FP_multiplier_10ccs_12_6_io_out_s)
  );
  FP_subtractor_13ccs_12 FP_subtractor_13ccs_12_1 ( // @[FloatingPointDesigns.scala 2104:54]
    .clock(FP_subtractor_13ccs_12_1_clock),
    .reset(FP_subtractor_13ccs_12_1_reset),
    .io_in_en(FP_subtractor_13ccs_12_1_io_in_en),
    .io_in_a(FP_subtractor_13ccs_12_1_io_in_a),
    .io_in_b(FP_subtractor_13ccs_12_1_io_in_b),
    .io_out_s(FP_subtractor_13ccs_12_1_io_out_s)
  );
  FP_subtractor_13ccs_12 FP_subtractor_13ccs_12_2 ( // @[FloatingPointDesigns.scala 2104:54]
    .clock(FP_subtractor_13ccs_12_2_clock),
    .reset(FP_subtractor_13ccs_12_2_reset),
    .io_in_en(FP_subtractor_13ccs_12_2_io_in_en),
    .io_in_a(FP_subtractor_13ccs_12_2_io_in_a),
    .io_in_b(FP_subtractor_13ccs_12_2_io_in_b),
    .io_out_s(FP_subtractor_13ccs_12_2_io_out_s)
  );
  assign io_out_s = {stage3_regs_r_1_1_8[15],FP_multiplier_10ccs_12_6_io_out_s[14:0]}; // @[FloatingPointDesigns.scala 2160:58]
  assign FP_multiplier_10ccs_12_clock = clock;
  assign FP_multiplier_10ccs_12_reset = reset;
  assign FP_multiplier_10ccs_12_io_in_en = 1'h1; // @[FloatingPointDesigns.scala 2013:41]
  assign FP_multiplier_10ccs_12_io_in_a = {1'h0,result[14:0]}; // @[FloatingPointDesigns.scala 2040:48]
  assign FP_multiplier_10ccs_12_io_in_b = {1'h0,result[14:0]}; // @[FloatingPointDesigns.scala 2041:48]
  assign FP_multiplier_10ccs_12_1_clock = clock;
  assign FP_multiplier_10ccs_12_1_reset = reset;
  assign FP_multiplier_10ccs_12_1_io_in_en = 1'h1; // @[FloatingPointDesigns.scala 2013:41]
  assign FP_multiplier_10ccs_12_1_io_in_a = FP_multiplier_10ccs_12_io_out_s; // @[FloatingPointDesigns.scala 2053:34]
  assign FP_multiplier_10ccs_12_1_io_in_b = {1'h0,stage1_regs_0_1_8[14:0]}; // @[FloatingPointDesigns.scala 2054:46]
  assign FP_multiplier_10ccs_12_2_clock = clock;
  assign FP_multiplier_10ccs_12_2_reset = reset;
  assign FP_multiplier_10ccs_12_2_io_in_en = 1'h1; // @[FloatingPointDesigns.scala 2013:41]
  assign FP_multiplier_10ccs_12_2_io_in_a = {1'h0,stage3_regs_0_0_11[14:0]}; // @[FloatingPointDesigns.scala 2071:46]
  assign FP_multiplier_10ccs_12_2_io_in_b = FP_subtractor_13ccs_12_io_out_s; // @[FloatingPointDesigns.scala 2072:34]
  assign FP_subtractor_13ccs_12_clock = clock;
  assign FP_subtractor_13ccs_12_reset = reset;
  assign FP_subtractor_13ccs_12_io_in_en = 1'h1; // @[FloatingPointDesigns.scala 2014:32]
  assign FP_subtractor_13ccs_12_io_in_a = 16'h3e00; // @[FloatingPointDesigns.scala 1989:26 1990:16]
  assign FP_subtractor_13ccs_12_io_in_b = FP_multiplier_10ccs_12_1_io_out_s; // @[FloatingPointDesigns.scala 2063:31]
  assign multiplier4_clock = clock;
  assign multiplier4_reset = reset;
  assign multiplier4_io_in_en = 1'h1; // @[FloatingPointDesigns.scala 2092:26]
  assign multiplier4_io_in_a = {1'h0,FP_multiplier_10ccs_12_2_io_out_s[14:0]}; // @[FloatingPointDesigns.scala 2093:37]
  assign multiplier4_io_in_b = {1'h0,FP_multiplier_10ccs_12_2_io_out_s[14:0]}; // @[FloatingPointDesigns.scala 2094:37]
  assign FP_multiplier_10ccs_12_3_clock = clock;
  assign FP_multiplier_10ccs_12_3_reset = reset;
  assign FP_multiplier_10ccs_12_3_io_in_en = 1'h1; // @[FloatingPointDesigns.scala 2105:43]
  assign FP_multiplier_10ccs_12_3_io_in_a = {1'h0,multiplier4_io_out_s[14:0]}; // @[FloatingPointDesigns.scala 2129:50]
  assign FP_multiplier_10ccs_12_3_io_in_b = {1'h0,transition_regs_8[14:0]}; // @[FloatingPointDesigns.scala 2130:50]
  assign FP_multiplier_10ccs_12_4_clock = clock;
  assign FP_multiplier_10ccs_12_4_reset = reset;
  assign FP_multiplier_10ccs_12_4_io_in_en = 1'h1; // @[FloatingPointDesigns.scala 2105:43]
  assign FP_multiplier_10ccs_12_4_io_in_a = {1'h0,stage2_regs_r_0_0_11[14:0]}; // @[FloatingPointDesigns.scala 2151:48]
  assign FP_multiplier_10ccs_12_4_io_in_b = FP_subtractor_13ccs_12_1_io_out_s; // @[FloatingPointDesigns.scala 2152:36]
  assign FP_multiplier_10ccs_12_5_clock = clock;
  assign FP_multiplier_10ccs_12_5_reset = reset;
  assign FP_multiplier_10ccs_12_5_io_in_en = 1'h1; // @[FloatingPointDesigns.scala 2105:43]
  assign FP_multiplier_10ccs_12_5_io_in_a = {1'h0,FP_multiplier_10ccs_12_4_io_out_s[14:0]}; // @[FloatingPointDesigns.scala 2138:50]
  assign FP_multiplier_10ccs_12_5_io_in_b = {1'h0,stage3_regs_r_0_1_8[14:0]}; // @[FloatingPointDesigns.scala 2139:50]
  assign FP_multiplier_10ccs_12_6_clock = clock;
  assign FP_multiplier_10ccs_12_6_reset = reset;
  assign FP_multiplier_10ccs_12_6_io_in_en = 1'h1; // @[FloatingPointDesigns.scala 2105:43]
  assign FP_multiplier_10ccs_12_6_io_in_a = {1'h0,stage2_regs_r_1_0_11[14:0]}; // @[FloatingPointDesigns.scala 2151:48]
  assign FP_multiplier_10ccs_12_6_io_in_b = FP_subtractor_13ccs_12_2_io_out_s; // @[FloatingPointDesigns.scala 2152:36]
  assign FP_subtractor_13ccs_12_1_clock = clock;
  assign FP_subtractor_13ccs_12_1_reset = reset;
  assign FP_subtractor_13ccs_12_1_io_in_en = 1'h1; // @[FloatingPointDesigns.scala 2106:34]
  assign FP_subtractor_13ccs_12_1_io_in_a = 16'h4000; // @[FloatingPointDesigns.scala 1991:19 1992:9]
  assign FP_subtractor_13ccs_12_1_io_in_b = FP_multiplier_10ccs_12_3_io_out_s; // @[FloatingPointDesigns.scala 2143:33]
  assign FP_subtractor_13ccs_12_2_clock = clock;
  assign FP_subtractor_13ccs_12_2_reset = reset;
  assign FP_subtractor_13ccs_12_2_io_in_en = 1'h1; // @[FloatingPointDesigns.scala 2106:34]
  assign FP_subtractor_13ccs_12_2_io_in_a = 16'h4000; // @[FloatingPointDesigns.scala 1991:19 1992:9]
  assign FP_subtractor_13ccs_12_2_io_in_b = FP_multiplier_10ccs_12_5_io_out_s; // @[FloatingPointDesigns.scala 2143:33]
  always @(posedge clock) begin
    if (reset) begin // @[FloatingPointDesigns.scala 2005:22]
      x_n_0 <= 16'h0; // @[FloatingPointDesigns.scala 2005:22]
    end else begin
      x_n_0 <= result;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2005:22]
      x_n_1 <= 16'h0; // @[FloatingPointDesigns.scala 2005:22]
    end else begin
      x_n_1 <= stage1_regs_0_0_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2005:22]
      x_n_2 <= 16'h0; // @[FloatingPointDesigns.scala 2005:22]
    end else begin
      x_n_2 <= stage2_regs_0_0_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2006:22]
      a_2_0 <= 16'h0; // @[FloatingPointDesigns.scala 2006:22]
    end else begin
      a_2_0 <= _a_2_0_T_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2006:22]
      a_2_1 <= 16'h0; // @[FloatingPointDesigns.scala 2006:22]
    end else begin
      a_2_1 <= stage1_regs_0_1_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2006:22]
      a_2_2 <= 16'h0; // @[FloatingPointDesigns.scala 2006:22]
    end else begin
      a_2_2 <= stage2_regs_0_1_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2006:22]
      a_2_3 <= 16'h0; // @[FloatingPointDesigns.scala 2006:22]
    end else begin
      a_2_3 <= stage3_regs_0_1_11;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage1_regs_0_0_0 <= 16'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage1_regs_0_0_0 <= x_n_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage1_regs_0_0_1 <= 16'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage1_regs_0_0_1 <= stage1_regs_0_0_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage1_regs_0_0_2 <= 16'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage1_regs_0_0_2 <= stage1_regs_0_0_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage1_regs_0_0_3 <= 16'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage1_regs_0_0_3 <= stage1_regs_0_0_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage1_regs_0_0_4 <= 16'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage1_regs_0_0_4 <= stage1_regs_0_0_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage1_regs_0_0_5 <= 16'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage1_regs_0_0_5 <= stage1_regs_0_0_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage1_regs_0_0_6 <= 16'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage1_regs_0_0_6 <= stage1_regs_0_0_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage1_regs_0_0_7 <= 16'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage1_regs_0_0_7 <= stage1_regs_0_0_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage1_regs_0_0_8 <= 16'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage1_regs_0_0_8 <= stage1_regs_0_0_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage1_regs_0_1_0 <= 16'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage1_regs_0_1_0 <= a_2_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage1_regs_0_1_1 <= 16'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage1_regs_0_1_1 <= stage1_regs_0_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage1_regs_0_1_2 <= 16'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage1_regs_0_1_2 <= stage1_regs_0_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage1_regs_0_1_3 <= 16'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage1_regs_0_1_3 <= stage1_regs_0_1_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage1_regs_0_1_4 <= 16'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage1_regs_0_1_4 <= stage1_regs_0_1_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage1_regs_0_1_5 <= 16'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage1_regs_0_1_5 <= stage1_regs_0_1_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage1_regs_0_1_6 <= 16'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage1_regs_0_1_6 <= stage1_regs_0_1_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage1_regs_0_1_7 <= 16'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage1_regs_0_1_7 <= stage1_regs_0_1_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2007:30]
      stage1_regs_0_1_8 <= 16'h0; // @[FloatingPointDesigns.scala 2007:30]
    end else begin
      stage1_regs_0_1_8 <= stage1_regs_0_1_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage2_regs_0_0_0 <= 16'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage2_regs_0_0_0 <= x_n_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage2_regs_0_0_1 <= 16'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage2_regs_0_0_1 <= stage2_regs_0_0_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage2_regs_0_0_2 <= 16'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage2_regs_0_0_2 <= stage2_regs_0_0_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage2_regs_0_0_3 <= 16'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage2_regs_0_0_3 <= stage2_regs_0_0_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage2_regs_0_0_4 <= 16'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage2_regs_0_0_4 <= stage2_regs_0_0_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage2_regs_0_0_5 <= 16'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage2_regs_0_0_5 <= stage2_regs_0_0_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage2_regs_0_0_6 <= 16'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage2_regs_0_0_6 <= stage2_regs_0_0_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage2_regs_0_0_7 <= 16'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage2_regs_0_0_7 <= stage2_regs_0_0_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage2_regs_0_0_8 <= 16'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage2_regs_0_0_8 <= stage2_regs_0_0_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage2_regs_0_1_0 <= 16'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage2_regs_0_1_0 <= a_2_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage2_regs_0_1_1 <= 16'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage2_regs_0_1_1 <= stage2_regs_0_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage2_regs_0_1_2 <= 16'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage2_regs_0_1_2 <= stage2_regs_0_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage2_regs_0_1_3 <= 16'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage2_regs_0_1_3 <= stage2_regs_0_1_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage2_regs_0_1_4 <= 16'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage2_regs_0_1_4 <= stage2_regs_0_1_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage2_regs_0_1_5 <= 16'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage2_regs_0_1_5 <= stage2_regs_0_1_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage2_regs_0_1_6 <= 16'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage2_regs_0_1_6 <= stage2_regs_0_1_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage2_regs_0_1_7 <= 16'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage2_regs_0_1_7 <= stage2_regs_0_1_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2008:30]
      stage2_regs_0_1_8 <= 16'h0; // @[FloatingPointDesigns.scala 2008:30]
    end else begin
      stage2_regs_0_1_8 <= stage2_regs_0_1_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2009:30]
      stage3_regs_0_0_0 <= 16'h0; // @[FloatingPointDesigns.scala 2009:30]
    end else begin
      stage3_regs_0_0_0 <= x_n_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2009:30]
      stage3_regs_0_0_1 <= 16'h0; // @[FloatingPointDesigns.scala 2009:30]
    end else begin
      stage3_regs_0_0_1 <= stage3_regs_0_0_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2009:30]
      stage3_regs_0_0_2 <= 16'h0; // @[FloatingPointDesigns.scala 2009:30]
    end else begin
      stage3_regs_0_0_2 <= stage3_regs_0_0_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2009:30]
      stage3_regs_0_0_3 <= 16'h0; // @[FloatingPointDesigns.scala 2009:30]
    end else begin
      stage3_regs_0_0_3 <= stage3_regs_0_0_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2009:30]
      stage3_regs_0_0_4 <= 16'h0; // @[FloatingPointDesigns.scala 2009:30]
    end else begin
      stage3_regs_0_0_4 <= stage3_regs_0_0_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2009:30]
      stage3_regs_0_0_5 <= 16'h0; // @[FloatingPointDesigns.scala 2009:30]
    end else begin
      stage3_regs_0_0_5 <= stage3_regs_0_0_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2009:30]
      stage3_regs_0_0_6 <= 16'h0; // @[FloatingPointDesigns.scala 2009:30]
    end else begin
      stage3_regs_0_0_6 <= stage3_regs_0_0_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2009:30]
      stage3_regs_0_0_7 <= 16'h0; // @[FloatingPointDesigns.scala 2009:30]
    end else begin
      stage3_regs_0_0_7 <= stage3_regs_0_0_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2009:30]
      stage3_regs_0_0_8 <= 16'h0; // @[FloatingPointDesigns.scala 2009:30]
    end else begin
      stage3_regs_0_0_8 <= stage3_regs_0_0_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2009:30]
      stage3_regs_0_0_9 <= 16'h0; // @[FloatingPointDesigns.scala 2009:30]
    end else begin
      stage3_regs_0_0_9 <= stage3_regs_0_0_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2009:30]
      stage3_regs_0_0_10 <= 16'h0; // @[FloatingPointDesigns.scala 2009:30]
    end else begin
      stage3_regs_0_0_10 <= stage3_regs_0_0_9;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2009:30]
      stage3_regs_0_0_11 <= 16'h0; // @[FloatingPointDesigns.scala 2009:30]
    end else begin
      stage3_regs_0_0_11 <= stage3_regs_0_0_10;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2009:30]
      stage3_regs_0_1_0 <= 16'h0; // @[FloatingPointDesigns.scala 2009:30]
    end else begin
      stage3_regs_0_1_0 <= a_2_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2009:30]
      stage3_regs_0_1_1 <= 16'h0; // @[FloatingPointDesigns.scala 2009:30]
    end else begin
      stage3_regs_0_1_1 <= stage3_regs_0_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2009:30]
      stage3_regs_0_1_2 <= 16'h0; // @[FloatingPointDesigns.scala 2009:30]
    end else begin
      stage3_regs_0_1_2 <= stage3_regs_0_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2009:30]
      stage3_regs_0_1_3 <= 16'h0; // @[FloatingPointDesigns.scala 2009:30]
    end else begin
      stage3_regs_0_1_3 <= stage3_regs_0_1_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2009:30]
      stage3_regs_0_1_4 <= 16'h0; // @[FloatingPointDesigns.scala 2009:30]
    end else begin
      stage3_regs_0_1_4 <= stage3_regs_0_1_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2009:30]
      stage3_regs_0_1_5 <= 16'h0; // @[FloatingPointDesigns.scala 2009:30]
    end else begin
      stage3_regs_0_1_5 <= stage3_regs_0_1_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2009:30]
      stage3_regs_0_1_6 <= 16'h0; // @[FloatingPointDesigns.scala 2009:30]
    end else begin
      stage3_regs_0_1_6 <= stage3_regs_0_1_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2009:30]
      stage3_regs_0_1_7 <= 16'h0; // @[FloatingPointDesigns.scala 2009:30]
    end else begin
      stage3_regs_0_1_7 <= stage3_regs_0_1_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2009:30]
      stage3_regs_0_1_8 <= 16'h0; // @[FloatingPointDesigns.scala 2009:30]
    end else begin
      stage3_regs_0_1_8 <= stage3_regs_0_1_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2009:30]
      stage3_regs_0_1_9 <= 16'h0; // @[FloatingPointDesigns.scala 2009:30]
    end else begin
      stage3_regs_0_1_9 <= stage3_regs_0_1_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2009:30]
      stage3_regs_0_1_10 <= 16'h0; // @[FloatingPointDesigns.scala 2009:30]
    end else begin
      stage3_regs_0_1_10 <= stage3_regs_0_1_9;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2009:30]
      stage3_regs_0_1_11 <= 16'h0; // @[FloatingPointDesigns.scala 2009:30]
    end else begin
      stage3_regs_0_1_11 <= stage3_regs_0_1_10;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2010:30]
      stage4_regs_0_1_0 <= 16'h0; // @[FloatingPointDesigns.scala 2010:30]
    end else begin
      stage4_regs_0_1_0 <= a_2_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2010:30]
      stage4_regs_0_1_1 <= 16'h0; // @[FloatingPointDesigns.scala 2010:30]
    end else begin
      stage4_regs_0_1_1 <= stage4_regs_0_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2010:30]
      stage4_regs_0_1_2 <= 16'h0; // @[FloatingPointDesigns.scala 2010:30]
    end else begin
      stage4_regs_0_1_2 <= stage4_regs_0_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2010:30]
      stage4_regs_0_1_3 <= 16'h0; // @[FloatingPointDesigns.scala 2010:30]
    end else begin
      stage4_regs_0_1_3 <= stage4_regs_0_1_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2010:30]
      stage4_regs_0_1_4 <= 16'h0; // @[FloatingPointDesigns.scala 2010:30]
    end else begin
      stage4_regs_0_1_4 <= stage4_regs_0_1_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2010:30]
      stage4_regs_0_1_5 <= 16'h0; // @[FloatingPointDesigns.scala 2010:30]
    end else begin
      stage4_regs_0_1_5 <= stage4_regs_0_1_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2010:30]
      stage4_regs_0_1_6 <= 16'h0; // @[FloatingPointDesigns.scala 2010:30]
    end else begin
      stage4_regs_0_1_6 <= stage4_regs_0_1_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2010:30]
      stage4_regs_0_1_7 <= 16'h0; // @[FloatingPointDesigns.scala 2010:30]
    end else begin
      stage4_regs_0_1_7 <= stage4_regs_0_1_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2010:30]
      stage4_regs_0_1_8 <= 16'h0; // @[FloatingPointDesigns.scala 2010:30]
    end else begin
      stage4_regs_0_1_8 <= stage4_regs_0_1_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2081:31]
      a_2_isr_to_r <= 16'h0; // @[FloatingPointDesigns.scala 2081:31]
    end else begin
      a_2_isr_to_r <= _a_2_isr_to_r_T_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2082:34]
      transition_regs_0 <= 16'h0; // @[FloatingPointDesigns.scala 2082:34]
    end else begin
      transition_regs_0 <= a_2_isr_to_r;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2082:34]
      transition_regs_1 <= 16'h0; // @[FloatingPointDesigns.scala 2082:34]
    end else begin
      transition_regs_1 <= transition_regs_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2082:34]
      transition_regs_2 <= 16'h0; // @[FloatingPointDesigns.scala 2082:34]
    end else begin
      transition_regs_2 <= transition_regs_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2082:34]
      transition_regs_3 <= 16'h0; // @[FloatingPointDesigns.scala 2082:34]
    end else begin
      transition_regs_3 <= transition_regs_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2082:34]
      transition_regs_4 <= 16'h0; // @[FloatingPointDesigns.scala 2082:34]
    end else begin
      transition_regs_4 <= transition_regs_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2082:34]
      transition_regs_5 <= 16'h0; // @[FloatingPointDesigns.scala 2082:34]
    end else begin
      transition_regs_5 <= transition_regs_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2082:34]
      transition_regs_6 <= 16'h0; // @[FloatingPointDesigns.scala 2082:34]
    end else begin
      transition_regs_6 <= transition_regs_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2082:34]
      transition_regs_7 <= 16'h0; // @[FloatingPointDesigns.scala 2082:34]
    end else begin
      transition_regs_7 <= transition_regs_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2082:34]
      transition_regs_8 <= 16'h0; // @[FloatingPointDesigns.scala 2082:34]
    end else begin
      transition_regs_8 <= transition_regs_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2098:24]
      x_n_r_0 <= 16'h0; // @[FloatingPointDesigns.scala 2098:24]
    end else begin
      x_n_r_0 <= _GEN_133;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2098:24]
      x_n_r_1 <= 16'h0; // @[FloatingPointDesigns.scala 2098:24]
    end else begin
      x_n_r_1 <= stage1_regs_r_0_0_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2098:24]
      x_n_r_3 <= 16'h0; // @[FloatingPointDesigns.scala 2098:24]
    end else begin
      x_n_r_3 <= _GEN_189;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2098:24]
      x_n_r_4 <= 16'h0; // @[FloatingPointDesigns.scala 2098:24]
    end else begin
      x_n_r_4 <= stage1_regs_r_1_0_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:24]
      a_2_r_0 <= 16'h0; // @[FloatingPointDesigns.scala 2099:24]
    end else begin
      a_2_r_0 <= transition_regs_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:24]
      a_2_r_1 <= 16'h0; // @[FloatingPointDesigns.scala 2099:24]
    end else begin
      a_2_r_1 <= stage1_regs_r_0_1_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:24]
      a_2_r_2 <= 16'h0; // @[FloatingPointDesigns.scala 2099:24]
    end else begin
      a_2_r_2 <= stage2_regs_r_0_1_11;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:24]
      a_2_r_3 <= 16'h0; // @[FloatingPointDesigns.scala 2099:24]
    end else begin
      a_2_r_3 <= stage3_regs_r_0_1_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:24]
      a_2_r_4 <= 16'h0; // @[FloatingPointDesigns.scala 2099:24]
    end else begin
      a_2_r_4 <= stage1_regs_r_1_1_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2099:24]
      a_2_r_5 <= 16'h0; // @[FloatingPointDesigns.scala 2099:24]
    end else begin
      a_2_r_5 <= stage2_regs_r_1_1_11;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage1_regs_r_0_0_0 <= 16'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage1_regs_r_0_0_0 <= x_n_r_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage1_regs_r_0_0_1 <= 16'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage1_regs_r_0_0_1 <= stage1_regs_r_0_0_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage1_regs_r_0_0_2 <= 16'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage1_regs_r_0_0_2 <= stage1_regs_r_0_0_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage1_regs_r_0_0_3 <= 16'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage1_regs_r_0_0_3 <= stage1_regs_r_0_0_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage1_regs_r_0_0_4 <= 16'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage1_regs_r_0_0_4 <= stage1_regs_r_0_0_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage1_regs_r_0_0_5 <= 16'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage1_regs_r_0_0_5 <= stage1_regs_r_0_0_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage1_regs_r_0_0_6 <= 16'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage1_regs_r_0_0_6 <= stage1_regs_r_0_0_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage1_regs_r_0_0_7 <= 16'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage1_regs_r_0_0_7 <= stage1_regs_r_0_0_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage1_regs_r_0_0_8 <= 16'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage1_regs_r_0_0_8 <= stage1_regs_r_0_0_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage1_regs_r_0_1_0 <= 16'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage1_regs_r_0_1_0 <= a_2_r_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage1_regs_r_0_1_1 <= 16'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage1_regs_r_0_1_1 <= stage1_regs_r_0_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage1_regs_r_0_1_2 <= 16'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage1_regs_r_0_1_2 <= stage1_regs_r_0_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage1_regs_r_0_1_3 <= 16'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage1_regs_r_0_1_3 <= stage1_regs_r_0_1_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage1_regs_r_0_1_4 <= 16'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage1_regs_r_0_1_4 <= stage1_regs_r_0_1_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage1_regs_r_0_1_5 <= 16'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage1_regs_r_0_1_5 <= stage1_regs_r_0_1_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage1_regs_r_0_1_6 <= 16'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage1_regs_r_0_1_6 <= stage1_regs_r_0_1_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage1_regs_r_0_1_7 <= 16'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage1_regs_r_0_1_7 <= stage1_regs_r_0_1_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage1_regs_r_0_1_8 <= 16'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage1_regs_r_0_1_8 <= stage1_regs_r_0_1_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage1_regs_r_1_0_0 <= 16'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage1_regs_r_1_0_0 <= x_n_r_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage1_regs_r_1_0_1 <= 16'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage1_regs_r_1_0_1 <= stage1_regs_r_1_0_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage1_regs_r_1_0_2 <= 16'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage1_regs_r_1_0_2 <= stage1_regs_r_1_0_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage1_regs_r_1_0_3 <= 16'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage1_regs_r_1_0_3 <= stage1_regs_r_1_0_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage1_regs_r_1_0_4 <= 16'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage1_regs_r_1_0_4 <= stage1_regs_r_1_0_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage1_regs_r_1_0_5 <= 16'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage1_regs_r_1_0_5 <= stage1_regs_r_1_0_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage1_regs_r_1_0_6 <= 16'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage1_regs_r_1_0_6 <= stage1_regs_r_1_0_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage1_regs_r_1_0_7 <= 16'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage1_regs_r_1_0_7 <= stage1_regs_r_1_0_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage1_regs_r_1_0_8 <= 16'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage1_regs_r_1_0_8 <= stage1_regs_r_1_0_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage1_regs_r_1_1_0 <= 16'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage1_regs_r_1_1_0 <= a_2_r_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage1_regs_r_1_1_1 <= 16'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage1_regs_r_1_1_1 <= stage1_regs_r_1_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage1_regs_r_1_1_2 <= 16'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage1_regs_r_1_1_2 <= stage1_regs_r_1_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage1_regs_r_1_1_3 <= 16'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage1_regs_r_1_1_3 <= stage1_regs_r_1_1_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage1_regs_r_1_1_4 <= 16'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage1_regs_r_1_1_4 <= stage1_regs_r_1_1_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage1_regs_r_1_1_5 <= 16'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage1_regs_r_1_1_5 <= stage1_regs_r_1_1_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage1_regs_r_1_1_6 <= 16'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage1_regs_r_1_1_6 <= stage1_regs_r_1_1_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage1_regs_r_1_1_7 <= 16'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage1_regs_r_1_1_7 <= stage1_regs_r_1_1_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2100:32]
      stage1_regs_r_1_1_8 <= 16'h0; // @[FloatingPointDesigns.scala 2100:32]
    end else begin
      stage1_regs_r_1_1_8 <= stage1_regs_r_1_1_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_0_0_0 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_0_0_0 <= x_n_r_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_0_0_1 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_0_0_1 <= stage2_regs_r_0_0_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_0_0_2 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_0_0_2 <= stage2_regs_r_0_0_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_0_0_3 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_0_0_3 <= stage2_regs_r_0_0_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_0_0_4 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_0_0_4 <= stage2_regs_r_0_0_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_0_0_5 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_0_0_5 <= stage2_regs_r_0_0_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_0_0_6 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_0_0_6 <= stage2_regs_r_0_0_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_0_0_7 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_0_0_7 <= stage2_regs_r_0_0_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_0_0_8 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_0_0_8 <= stage2_regs_r_0_0_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_0_0_9 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_0_0_9 <= stage2_regs_r_0_0_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_0_0_10 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_0_0_10 <= stage2_regs_r_0_0_9;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_0_0_11 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_0_0_11 <= stage2_regs_r_0_0_10;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_0_1_0 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_0_1_0 <= a_2_r_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_0_1_1 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_0_1_1 <= stage2_regs_r_0_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_0_1_2 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_0_1_2 <= stage2_regs_r_0_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_0_1_3 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_0_1_3 <= stage2_regs_r_0_1_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_0_1_4 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_0_1_4 <= stage2_regs_r_0_1_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_0_1_5 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_0_1_5 <= stage2_regs_r_0_1_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_0_1_6 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_0_1_6 <= stage2_regs_r_0_1_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_0_1_7 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_0_1_7 <= stage2_regs_r_0_1_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_0_1_8 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_0_1_8 <= stage2_regs_r_0_1_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_0_1_9 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_0_1_9 <= stage2_regs_r_0_1_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_0_1_10 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_0_1_10 <= stage2_regs_r_0_1_9;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_0_1_11 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_0_1_11 <= stage2_regs_r_0_1_10;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_1_0_0 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_1_0_0 <= x_n_r_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_1_0_1 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_1_0_1 <= stage2_regs_r_1_0_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_1_0_2 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_1_0_2 <= stage2_regs_r_1_0_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_1_0_3 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_1_0_3 <= stage2_regs_r_1_0_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_1_0_4 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_1_0_4 <= stage2_regs_r_1_0_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_1_0_5 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_1_0_5 <= stage2_regs_r_1_0_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_1_0_6 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_1_0_6 <= stage2_regs_r_1_0_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_1_0_7 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_1_0_7 <= stage2_regs_r_1_0_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_1_0_8 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_1_0_8 <= stage2_regs_r_1_0_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_1_0_9 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_1_0_9 <= stage2_regs_r_1_0_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_1_0_10 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_1_0_10 <= stage2_regs_r_1_0_9;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_1_0_11 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_1_0_11 <= stage2_regs_r_1_0_10;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_1_1_0 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_1_1_0 <= a_2_r_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_1_1_1 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_1_1_1 <= stage2_regs_r_1_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_1_1_2 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_1_1_2 <= stage2_regs_r_1_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_1_1_3 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_1_1_3 <= stage2_regs_r_1_1_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_1_1_4 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_1_1_4 <= stage2_regs_r_1_1_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_1_1_5 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_1_1_5 <= stage2_regs_r_1_1_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_1_1_6 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_1_1_6 <= stage2_regs_r_1_1_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_1_1_7 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_1_1_7 <= stage2_regs_r_1_1_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_1_1_8 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_1_1_8 <= stage2_regs_r_1_1_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_1_1_9 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_1_1_9 <= stage2_regs_r_1_1_8;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_1_1_10 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_1_1_10 <= stage2_regs_r_1_1_9;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2101:32]
      stage2_regs_r_1_1_11 <= 16'h0; // @[FloatingPointDesigns.scala 2101:32]
    end else begin
      stage2_regs_r_1_1_11 <= stage2_regs_r_1_1_10;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2102:32]
      stage3_regs_r_0_1_0 <= 16'h0; // @[FloatingPointDesigns.scala 2102:32]
    end else begin
      stage3_regs_r_0_1_0 <= a_2_r_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2102:32]
      stage3_regs_r_0_1_1 <= 16'h0; // @[FloatingPointDesigns.scala 2102:32]
    end else begin
      stage3_regs_r_0_1_1 <= stage3_regs_r_0_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2102:32]
      stage3_regs_r_0_1_2 <= 16'h0; // @[FloatingPointDesigns.scala 2102:32]
    end else begin
      stage3_regs_r_0_1_2 <= stage3_regs_r_0_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2102:32]
      stage3_regs_r_0_1_3 <= 16'h0; // @[FloatingPointDesigns.scala 2102:32]
    end else begin
      stage3_regs_r_0_1_3 <= stage3_regs_r_0_1_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2102:32]
      stage3_regs_r_0_1_4 <= 16'h0; // @[FloatingPointDesigns.scala 2102:32]
    end else begin
      stage3_regs_r_0_1_4 <= stage3_regs_r_0_1_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2102:32]
      stage3_regs_r_0_1_5 <= 16'h0; // @[FloatingPointDesigns.scala 2102:32]
    end else begin
      stage3_regs_r_0_1_5 <= stage3_regs_r_0_1_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2102:32]
      stage3_regs_r_0_1_6 <= 16'h0; // @[FloatingPointDesigns.scala 2102:32]
    end else begin
      stage3_regs_r_0_1_6 <= stage3_regs_r_0_1_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2102:32]
      stage3_regs_r_0_1_7 <= 16'h0; // @[FloatingPointDesigns.scala 2102:32]
    end else begin
      stage3_regs_r_0_1_7 <= stage3_regs_r_0_1_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2102:32]
      stage3_regs_r_0_1_8 <= 16'h0; // @[FloatingPointDesigns.scala 2102:32]
    end else begin
      stage3_regs_r_0_1_8 <= stage3_regs_r_0_1_7;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2102:32]
      stage3_regs_r_1_1_0 <= 16'h0; // @[FloatingPointDesigns.scala 2102:32]
    end else begin
      stage3_regs_r_1_1_0 <= a_2_r_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2102:32]
      stage3_regs_r_1_1_1 <= 16'h0; // @[FloatingPointDesigns.scala 2102:32]
    end else begin
      stage3_regs_r_1_1_1 <= stage3_regs_r_1_1_0;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2102:32]
      stage3_regs_r_1_1_2 <= 16'h0; // @[FloatingPointDesigns.scala 2102:32]
    end else begin
      stage3_regs_r_1_1_2 <= stage3_regs_r_1_1_1;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2102:32]
      stage3_regs_r_1_1_3 <= 16'h0; // @[FloatingPointDesigns.scala 2102:32]
    end else begin
      stage3_regs_r_1_1_3 <= stage3_regs_r_1_1_2;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2102:32]
      stage3_regs_r_1_1_4 <= 16'h0; // @[FloatingPointDesigns.scala 2102:32]
    end else begin
      stage3_regs_r_1_1_4 <= stage3_regs_r_1_1_3;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2102:32]
      stage3_regs_r_1_1_5 <= 16'h0; // @[FloatingPointDesigns.scala 2102:32]
    end else begin
      stage3_regs_r_1_1_5 <= stage3_regs_r_1_1_4;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2102:32]
      stage3_regs_r_1_1_6 <= 16'h0; // @[FloatingPointDesigns.scala 2102:32]
    end else begin
      stage3_regs_r_1_1_6 <= stage3_regs_r_1_1_5;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2102:32]
      stage3_regs_r_1_1_7 <= 16'h0; // @[FloatingPointDesigns.scala 2102:32]
    end else begin
      stage3_regs_r_1_1_7 <= stage3_regs_r_1_1_6;
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2102:32]
      stage3_regs_r_1_1_8 <= 16'h0; // @[FloatingPointDesigns.scala 2102:32]
    end else begin
      stage3_regs_r_1_1_8 <= stage3_regs_r_1_1_7;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  x_n_0 = _RAND_0[15:0];
  _RAND_1 = {1{`RANDOM}};
  x_n_1 = _RAND_1[15:0];
  _RAND_2 = {1{`RANDOM}};
  x_n_2 = _RAND_2[15:0];
  _RAND_3 = {1{`RANDOM}};
  a_2_0 = _RAND_3[15:0];
  _RAND_4 = {1{`RANDOM}};
  a_2_1 = _RAND_4[15:0];
  _RAND_5 = {1{`RANDOM}};
  a_2_2 = _RAND_5[15:0];
  _RAND_6 = {1{`RANDOM}};
  a_2_3 = _RAND_6[15:0];
  _RAND_7 = {1{`RANDOM}};
  stage1_regs_0_0_0 = _RAND_7[15:0];
  _RAND_8 = {1{`RANDOM}};
  stage1_regs_0_0_1 = _RAND_8[15:0];
  _RAND_9 = {1{`RANDOM}};
  stage1_regs_0_0_2 = _RAND_9[15:0];
  _RAND_10 = {1{`RANDOM}};
  stage1_regs_0_0_3 = _RAND_10[15:0];
  _RAND_11 = {1{`RANDOM}};
  stage1_regs_0_0_4 = _RAND_11[15:0];
  _RAND_12 = {1{`RANDOM}};
  stage1_regs_0_0_5 = _RAND_12[15:0];
  _RAND_13 = {1{`RANDOM}};
  stage1_regs_0_0_6 = _RAND_13[15:0];
  _RAND_14 = {1{`RANDOM}};
  stage1_regs_0_0_7 = _RAND_14[15:0];
  _RAND_15 = {1{`RANDOM}};
  stage1_regs_0_0_8 = _RAND_15[15:0];
  _RAND_16 = {1{`RANDOM}};
  stage1_regs_0_1_0 = _RAND_16[15:0];
  _RAND_17 = {1{`RANDOM}};
  stage1_regs_0_1_1 = _RAND_17[15:0];
  _RAND_18 = {1{`RANDOM}};
  stage1_regs_0_1_2 = _RAND_18[15:0];
  _RAND_19 = {1{`RANDOM}};
  stage1_regs_0_1_3 = _RAND_19[15:0];
  _RAND_20 = {1{`RANDOM}};
  stage1_regs_0_1_4 = _RAND_20[15:0];
  _RAND_21 = {1{`RANDOM}};
  stage1_regs_0_1_5 = _RAND_21[15:0];
  _RAND_22 = {1{`RANDOM}};
  stage1_regs_0_1_6 = _RAND_22[15:0];
  _RAND_23 = {1{`RANDOM}};
  stage1_regs_0_1_7 = _RAND_23[15:0];
  _RAND_24 = {1{`RANDOM}};
  stage1_regs_0_1_8 = _RAND_24[15:0];
  _RAND_25 = {1{`RANDOM}};
  stage2_regs_0_0_0 = _RAND_25[15:0];
  _RAND_26 = {1{`RANDOM}};
  stage2_regs_0_0_1 = _RAND_26[15:0];
  _RAND_27 = {1{`RANDOM}};
  stage2_regs_0_0_2 = _RAND_27[15:0];
  _RAND_28 = {1{`RANDOM}};
  stage2_regs_0_0_3 = _RAND_28[15:0];
  _RAND_29 = {1{`RANDOM}};
  stage2_regs_0_0_4 = _RAND_29[15:0];
  _RAND_30 = {1{`RANDOM}};
  stage2_regs_0_0_5 = _RAND_30[15:0];
  _RAND_31 = {1{`RANDOM}};
  stage2_regs_0_0_6 = _RAND_31[15:0];
  _RAND_32 = {1{`RANDOM}};
  stage2_regs_0_0_7 = _RAND_32[15:0];
  _RAND_33 = {1{`RANDOM}};
  stage2_regs_0_0_8 = _RAND_33[15:0];
  _RAND_34 = {1{`RANDOM}};
  stage2_regs_0_1_0 = _RAND_34[15:0];
  _RAND_35 = {1{`RANDOM}};
  stage2_regs_0_1_1 = _RAND_35[15:0];
  _RAND_36 = {1{`RANDOM}};
  stage2_regs_0_1_2 = _RAND_36[15:0];
  _RAND_37 = {1{`RANDOM}};
  stage2_regs_0_1_3 = _RAND_37[15:0];
  _RAND_38 = {1{`RANDOM}};
  stage2_regs_0_1_4 = _RAND_38[15:0];
  _RAND_39 = {1{`RANDOM}};
  stage2_regs_0_1_5 = _RAND_39[15:0];
  _RAND_40 = {1{`RANDOM}};
  stage2_regs_0_1_6 = _RAND_40[15:0];
  _RAND_41 = {1{`RANDOM}};
  stage2_regs_0_1_7 = _RAND_41[15:0];
  _RAND_42 = {1{`RANDOM}};
  stage2_regs_0_1_8 = _RAND_42[15:0];
  _RAND_43 = {1{`RANDOM}};
  stage3_regs_0_0_0 = _RAND_43[15:0];
  _RAND_44 = {1{`RANDOM}};
  stage3_regs_0_0_1 = _RAND_44[15:0];
  _RAND_45 = {1{`RANDOM}};
  stage3_regs_0_0_2 = _RAND_45[15:0];
  _RAND_46 = {1{`RANDOM}};
  stage3_regs_0_0_3 = _RAND_46[15:0];
  _RAND_47 = {1{`RANDOM}};
  stage3_regs_0_0_4 = _RAND_47[15:0];
  _RAND_48 = {1{`RANDOM}};
  stage3_regs_0_0_5 = _RAND_48[15:0];
  _RAND_49 = {1{`RANDOM}};
  stage3_regs_0_0_6 = _RAND_49[15:0];
  _RAND_50 = {1{`RANDOM}};
  stage3_regs_0_0_7 = _RAND_50[15:0];
  _RAND_51 = {1{`RANDOM}};
  stage3_regs_0_0_8 = _RAND_51[15:0];
  _RAND_52 = {1{`RANDOM}};
  stage3_regs_0_0_9 = _RAND_52[15:0];
  _RAND_53 = {1{`RANDOM}};
  stage3_regs_0_0_10 = _RAND_53[15:0];
  _RAND_54 = {1{`RANDOM}};
  stage3_regs_0_0_11 = _RAND_54[15:0];
  _RAND_55 = {1{`RANDOM}};
  stage3_regs_0_1_0 = _RAND_55[15:0];
  _RAND_56 = {1{`RANDOM}};
  stage3_regs_0_1_1 = _RAND_56[15:0];
  _RAND_57 = {1{`RANDOM}};
  stage3_regs_0_1_2 = _RAND_57[15:0];
  _RAND_58 = {1{`RANDOM}};
  stage3_regs_0_1_3 = _RAND_58[15:0];
  _RAND_59 = {1{`RANDOM}};
  stage3_regs_0_1_4 = _RAND_59[15:0];
  _RAND_60 = {1{`RANDOM}};
  stage3_regs_0_1_5 = _RAND_60[15:0];
  _RAND_61 = {1{`RANDOM}};
  stage3_regs_0_1_6 = _RAND_61[15:0];
  _RAND_62 = {1{`RANDOM}};
  stage3_regs_0_1_7 = _RAND_62[15:0];
  _RAND_63 = {1{`RANDOM}};
  stage3_regs_0_1_8 = _RAND_63[15:0];
  _RAND_64 = {1{`RANDOM}};
  stage3_regs_0_1_9 = _RAND_64[15:0];
  _RAND_65 = {1{`RANDOM}};
  stage3_regs_0_1_10 = _RAND_65[15:0];
  _RAND_66 = {1{`RANDOM}};
  stage3_regs_0_1_11 = _RAND_66[15:0];
  _RAND_67 = {1{`RANDOM}};
  stage4_regs_0_1_0 = _RAND_67[15:0];
  _RAND_68 = {1{`RANDOM}};
  stage4_regs_0_1_1 = _RAND_68[15:0];
  _RAND_69 = {1{`RANDOM}};
  stage4_regs_0_1_2 = _RAND_69[15:0];
  _RAND_70 = {1{`RANDOM}};
  stage4_regs_0_1_3 = _RAND_70[15:0];
  _RAND_71 = {1{`RANDOM}};
  stage4_regs_0_1_4 = _RAND_71[15:0];
  _RAND_72 = {1{`RANDOM}};
  stage4_regs_0_1_5 = _RAND_72[15:0];
  _RAND_73 = {1{`RANDOM}};
  stage4_regs_0_1_6 = _RAND_73[15:0];
  _RAND_74 = {1{`RANDOM}};
  stage4_regs_0_1_7 = _RAND_74[15:0];
  _RAND_75 = {1{`RANDOM}};
  stage4_regs_0_1_8 = _RAND_75[15:0];
  _RAND_76 = {1{`RANDOM}};
  a_2_isr_to_r = _RAND_76[15:0];
  _RAND_77 = {1{`RANDOM}};
  transition_regs_0 = _RAND_77[15:0];
  _RAND_78 = {1{`RANDOM}};
  transition_regs_1 = _RAND_78[15:0];
  _RAND_79 = {1{`RANDOM}};
  transition_regs_2 = _RAND_79[15:0];
  _RAND_80 = {1{`RANDOM}};
  transition_regs_3 = _RAND_80[15:0];
  _RAND_81 = {1{`RANDOM}};
  transition_regs_4 = _RAND_81[15:0];
  _RAND_82 = {1{`RANDOM}};
  transition_regs_5 = _RAND_82[15:0];
  _RAND_83 = {1{`RANDOM}};
  transition_regs_6 = _RAND_83[15:0];
  _RAND_84 = {1{`RANDOM}};
  transition_regs_7 = _RAND_84[15:0];
  _RAND_85 = {1{`RANDOM}};
  transition_regs_8 = _RAND_85[15:0];
  _RAND_86 = {1{`RANDOM}};
  x_n_r_0 = _RAND_86[15:0];
  _RAND_87 = {1{`RANDOM}};
  x_n_r_1 = _RAND_87[15:0];
  _RAND_88 = {1{`RANDOM}};
  x_n_r_3 = _RAND_88[15:0];
  _RAND_89 = {1{`RANDOM}};
  x_n_r_4 = _RAND_89[15:0];
  _RAND_90 = {1{`RANDOM}};
  a_2_r_0 = _RAND_90[15:0];
  _RAND_91 = {1{`RANDOM}};
  a_2_r_1 = _RAND_91[15:0];
  _RAND_92 = {1{`RANDOM}};
  a_2_r_2 = _RAND_92[15:0];
  _RAND_93 = {1{`RANDOM}};
  a_2_r_3 = _RAND_93[15:0];
  _RAND_94 = {1{`RANDOM}};
  a_2_r_4 = _RAND_94[15:0];
  _RAND_95 = {1{`RANDOM}};
  a_2_r_5 = _RAND_95[15:0];
  _RAND_96 = {1{`RANDOM}};
  stage1_regs_r_0_0_0 = _RAND_96[15:0];
  _RAND_97 = {1{`RANDOM}};
  stage1_regs_r_0_0_1 = _RAND_97[15:0];
  _RAND_98 = {1{`RANDOM}};
  stage1_regs_r_0_0_2 = _RAND_98[15:0];
  _RAND_99 = {1{`RANDOM}};
  stage1_regs_r_0_0_3 = _RAND_99[15:0];
  _RAND_100 = {1{`RANDOM}};
  stage1_regs_r_0_0_4 = _RAND_100[15:0];
  _RAND_101 = {1{`RANDOM}};
  stage1_regs_r_0_0_5 = _RAND_101[15:0];
  _RAND_102 = {1{`RANDOM}};
  stage1_regs_r_0_0_6 = _RAND_102[15:0];
  _RAND_103 = {1{`RANDOM}};
  stage1_regs_r_0_0_7 = _RAND_103[15:0];
  _RAND_104 = {1{`RANDOM}};
  stage1_regs_r_0_0_8 = _RAND_104[15:0];
  _RAND_105 = {1{`RANDOM}};
  stage1_regs_r_0_1_0 = _RAND_105[15:0];
  _RAND_106 = {1{`RANDOM}};
  stage1_regs_r_0_1_1 = _RAND_106[15:0];
  _RAND_107 = {1{`RANDOM}};
  stage1_regs_r_0_1_2 = _RAND_107[15:0];
  _RAND_108 = {1{`RANDOM}};
  stage1_regs_r_0_1_3 = _RAND_108[15:0];
  _RAND_109 = {1{`RANDOM}};
  stage1_regs_r_0_1_4 = _RAND_109[15:0];
  _RAND_110 = {1{`RANDOM}};
  stage1_regs_r_0_1_5 = _RAND_110[15:0];
  _RAND_111 = {1{`RANDOM}};
  stage1_regs_r_0_1_6 = _RAND_111[15:0];
  _RAND_112 = {1{`RANDOM}};
  stage1_regs_r_0_1_7 = _RAND_112[15:0];
  _RAND_113 = {1{`RANDOM}};
  stage1_regs_r_0_1_8 = _RAND_113[15:0];
  _RAND_114 = {1{`RANDOM}};
  stage1_regs_r_1_0_0 = _RAND_114[15:0];
  _RAND_115 = {1{`RANDOM}};
  stage1_regs_r_1_0_1 = _RAND_115[15:0];
  _RAND_116 = {1{`RANDOM}};
  stage1_regs_r_1_0_2 = _RAND_116[15:0];
  _RAND_117 = {1{`RANDOM}};
  stage1_regs_r_1_0_3 = _RAND_117[15:0];
  _RAND_118 = {1{`RANDOM}};
  stage1_regs_r_1_0_4 = _RAND_118[15:0];
  _RAND_119 = {1{`RANDOM}};
  stage1_regs_r_1_0_5 = _RAND_119[15:0];
  _RAND_120 = {1{`RANDOM}};
  stage1_regs_r_1_0_6 = _RAND_120[15:0];
  _RAND_121 = {1{`RANDOM}};
  stage1_regs_r_1_0_7 = _RAND_121[15:0];
  _RAND_122 = {1{`RANDOM}};
  stage1_regs_r_1_0_8 = _RAND_122[15:0];
  _RAND_123 = {1{`RANDOM}};
  stage1_regs_r_1_1_0 = _RAND_123[15:0];
  _RAND_124 = {1{`RANDOM}};
  stage1_regs_r_1_1_1 = _RAND_124[15:0];
  _RAND_125 = {1{`RANDOM}};
  stage1_regs_r_1_1_2 = _RAND_125[15:0];
  _RAND_126 = {1{`RANDOM}};
  stage1_regs_r_1_1_3 = _RAND_126[15:0];
  _RAND_127 = {1{`RANDOM}};
  stage1_regs_r_1_1_4 = _RAND_127[15:0];
  _RAND_128 = {1{`RANDOM}};
  stage1_regs_r_1_1_5 = _RAND_128[15:0];
  _RAND_129 = {1{`RANDOM}};
  stage1_regs_r_1_1_6 = _RAND_129[15:0];
  _RAND_130 = {1{`RANDOM}};
  stage1_regs_r_1_1_7 = _RAND_130[15:0];
  _RAND_131 = {1{`RANDOM}};
  stage1_regs_r_1_1_8 = _RAND_131[15:0];
  _RAND_132 = {1{`RANDOM}};
  stage2_regs_r_0_0_0 = _RAND_132[15:0];
  _RAND_133 = {1{`RANDOM}};
  stage2_regs_r_0_0_1 = _RAND_133[15:0];
  _RAND_134 = {1{`RANDOM}};
  stage2_regs_r_0_0_2 = _RAND_134[15:0];
  _RAND_135 = {1{`RANDOM}};
  stage2_regs_r_0_0_3 = _RAND_135[15:0];
  _RAND_136 = {1{`RANDOM}};
  stage2_regs_r_0_0_4 = _RAND_136[15:0];
  _RAND_137 = {1{`RANDOM}};
  stage2_regs_r_0_0_5 = _RAND_137[15:0];
  _RAND_138 = {1{`RANDOM}};
  stage2_regs_r_0_0_6 = _RAND_138[15:0];
  _RAND_139 = {1{`RANDOM}};
  stage2_regs_r_0_0_7 = _RAND_139[15:0];
  _RAND_140 = {1{`RANDOM}};
  stage2_regs_r_0_0_8 = _RAND_140[15:0];
  _RAND_141 = {1{`RANDOM}};
  stage2_regs_r_0_0_9 = _RAND_141[15:0];
  _RAND_142 = {1{`RANDOM}};
  stage2_regs_r_0_0_10 = _RAND_142[15:0];
  _RAND_143 = {1{`RANDOM}};
  stage2_regs_r_0_0_11 = _RAND_143[15:0];
  _RAND_144 = {1{`RANDOM}};
  stage2_regs_r_0_1_0 = _RAND_144[15:0];
  _RAND_145 = {1{`RANDOM}};
  stage2_regs_r_0_1_1 = _RAND_145[15:0];
  _RAND_146 = {1{`RANDOM}};
  stage2_regs_r_0_1_2 = _RAND_146[15:0];
  _RAND_147 = {1{`RANDOM}};
  stage2_regs_r_0_1_3 = _RAND_147[15:0];
  _RAND_148 = {1{`RANDOM}};
  stage2_regs_r_0_1_4 = _RAND_148[15:0];
  _RAND_149 = {1{`RANDOM}};
  stage2_regs_r_0_1_5 = _RAND_149[15:0];
  _RAND_150 = {1{`RANDOM}};
  stage2_regs_r_0_1_6 = _RAND_150[15:0];
  _RAND_151 = {1{`RANDOM}};
  stage2_regs_r_0_1_7 = _RAND_151[15:0];
  _RAND_152 = {1{`RANDOM}};
  stage2_regs_r_0_1_8 = _RAND_152[15:0];
  _RAND_153 = {1{`RANDOM}};
  stage2_regs_r_0_1_9 = _RAND_153[15:0];
  _RAND_154 = {1{`RANDOM}};
  stage2_regs_r_0_1_10 = _RAND_154[15:0];
  _RAND_155 = {1{`RANDOM}};
  stage2_regs_r_0_1_11 = _RAND_155[15:0];
  _RAND_156 = {1{`RANDOM}};
  stage2_regs_r_1_0_0 = _RAND_156[15:0];
  _RAND_157 = {1{`RANDOM}};
  stage2_regs_r_1_0_1 = _RAND_157[15:0];
  _RAND_158 = {1{`RANDOM}};
  stage2_regs_r_1_0_2 = _RAND_158[15:0];
  _RAND_159 = {1{`RANDOM}};
  stage2_regs_r_1_0_3 = _RAND_159[15:0];
  _RAND_160 = {1{`RANDOM}};
  stage2_regs_r_1_0_4 = _RAND_160[15:0];
  _RAND_161 = {1{`RANDOM}};
  stage2_regs_r_1_0_5 = _RAND_161[15:0];
  _RAND_162 = {1{`RANDOM}};
  stage2_regs_r_1_0_6 = _RAND_162[15:0];
  _RAND_163 = {1{`RANDOM}};
  stage2_regs_r_1_0_7 = _RAND_163[15:0];
  _RAND_164 = {1{`RANDOM}};
  stage2_regs_r_1_0_8 = _RAND_164[15:0];
  _RAND_165 = {1{`RANDOM}};
  stage2_regs_r_1_0_9 = _RAND_165[15:0];
  _RAND_166 = {1{`RANDOM}};
  stage2_regs_r_1_0_10 = _RAND_166[15:0];
  _RAND_167 = {1{`RANDOM}};
  stage2_regs_r_1_0_11 = _RAND_167[15:0];
  _RAND_168 = {1{`RANDOM}};
  stage2_regs_r_1_1_0 = _RAND_168[15:0];
  _RAND_169 = {1{`RANDOM}};
  stage2_regs_r_1_1_1 = _RAND_169[15:0];
  _RAND_170 = {1{`RANDOM}};
  stage2_regs_r_1_1_2 = _RAND_170[15:0];
  _RAND_171 = {1{`RANDOM}};
  stage2_regs_r_1_1_3 = _RAND_171[15:0];
  _RAND_172 = {1{`RANDOM}};
  stage2_regs_r_1_1_4 = _RAND_172[15:0];
  _RAND_173 = {1{`RANDOM}};
  stage2_regs_r_1_1_5 = _RAND_173[15:0];
  _RAND_174 = {1{`RANDOM}};
  stage2_regs_r_1_1_6 = _RAND_174[15:0];
  _RAND_175 = {1{`RANDOM}};
  stage2_regs_r_1_1_7 = _RAND_175[15:0];
  _RAND_176 = {1{`RANDOM}};
  stage2_regs_r_1_1_8 = _RAND_176[15:0];
  _RAND_177 = {1{`RANDOM}};
  stage2_regs_r_1_1_9 = _RAND_177[15:0];
  _RAND_178 = {1{`RANDOM}};
  stage2_regs_r_1_1_10 = _RAND_178[15:0];
  _RAND_179 = {1{`RANDOM}};
  stage2_regs_r_1_1_11 = _RAND_179[15:0];
  _RAND_180 = {1{`RANDOM}};
  stage3_regs_r_0_1_0 = _RAND_180[15:0];
  _RAND_181 = {1{`RANDOM}};
  stage3_regs_r_0_1_1 = _RAND_181[15:0];
  _RAND_182 = {1{`RANDOM}};
  stage3_regs_r_0_1_2 = _RAND_182[15:0];
  _RAND_183 = {1{`RANDOM}};
  stage3_regs_r_0_1_3 = _RAND_183[15:0];
  _RAND_184 = {1{`RANDOM}};
  stage3_regs_r_0_1_4 = _RAND_184[15:0];
  _RAND_185 = {1{`RANDOM}};
  stage3_regs_r_0_1_5 = _RAND_185[15:0];
  _RAND_186 = {1{`RANDOM}};
  stage3_regs_r_0_1_6 = _RAND_186[15:0];
  _RAND_187 = {1{`RANDOM}};
  stage3_regs_r_0_1_7 = _RAND_187[15:0];
  _RAND_188 = {1{`RANDOM}};
  stage3_regs_r_0_1_8 = _RAND_188[15:0];
  _RAND_189 = {1{`RANDOM}};
  stage3_regs_r_1_1_0 = _RAND_189[15:0];
  _RAND_190 = {1{`RANDOM}};
  stage3_regs_r_1_1_1 = _RAND_190[15:0];
  _RAND_191 = {1{`RANDOM}};
  stage3_regs_r_1_1_2 = _RAND_191[15:0];
  _RAND_192 = {1{`RANDOM}};
  stage3_regs_r_1_1_3 = _RAND_192[15:0];
  _RAND_193 = {1{`RANDOM}};
  stage3_regs_r_1_1_4 = _RAND_193[15:0];
  _RAND_194 = {1{`RANDOM}};
  stage3_regs_r_1_1_5 = _RAND_194[15:0];
  _RAND_195 = {1{`RANDOM}};
  stage3_regs_r_1_1_6 = _RAND_195[15:0];
  _RAND_196 = {1{`RANDOM}};
  stage3_regs_r_1_1_7 = _RAND_196[15:0];
  _RAND_197 = {1{`RANDOM}};
  stage3_regs_r_1_1_8 = _RAND_197[15:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module FP_divider_newfpu_12(
  input         clock,
  input         reset,
  input  [15:0] io_in_a,
  input  [15:0] io_in_b,
  output [15:0] io_out_s
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_85;
  reg [31:0] _RAND_86;
  reg [31:0] _RAND_87;
  reg [31:0] _RAND_88;
  reg [31:0] _RAND_89;
  reg [31:0] _RAND_90;
  reg [31:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [31:0] _RAND_93;
  reg [31:0] _RAND_94;
  reg [31:0] _RAND_95;
  reg [31:0] _RAND_96;
  reg [31:0] _RAND_97;
  reg [31:0] _RAND_98;
  reg [31:0] _RAND_99;
  reg [31:0] _RAND_100;
  reg [31:0] _RAND_101;
  reg [31:0] _RAND_102;
  reg [31:0] _RAND_103;
  reg [31:0] _RAND_104;
  reg [31:0] _RAND_105;
  reg [31:0] _RAND_106;
  reg [31:0] _RAND_107;
  reg [31:0] _RAND_108;
  reg [31:0] _RAND_109;
  reg [31:0] _RAND_110;
  reg [31:0] _RAND_111;
  reg [31:0] _RAND_112;
  reg [31:0] _RAND_113;
  reg [31:0] _RAND_114;
  reg [31:0] _RAND_115;
  reg [31:0] _RAND_116;
  reg [31:0] _RAND_117;
  reg [31:0] _RAND_118;
`endif // RANDOMIZE_REG_INIT
  wire  FP_reciprocal_newfpu_12_clock; // @[FloatingPointDesigns.scala 2177:28]
  wire  FP_reciprocal_newfpu_12_reset; // @[FloatingPointDesigns.scala 2177:28]
  wire [15:0] FP_reciprocal_newfpu_12_io_in_a; // @[FloatingPointDesigns.scala 2177:28]
  wire [15:0] FP_reciprocal_newfpu_12_io_out_s; // @[FloatingPointDesigns.scala 2177:28]
  wire  FP_multiplier_10ccs_12_clock; // @[FloatingPointDesigns.scala 2180:28]
  wire  FP_multiplier_10ccs_12_reset; // @[FloatingPointDesigns.scala 2180:28]
  wire  FP_multiplier_10ccs_12_io_in_en; // @[FloatingPointDesigns.scala 2180:28]
  wire [15:0] FP_multiplier_10ccs_12_io_in_a; // @[FloatingPointDesigns.scala 2180:28]
  wire [15:0] FP_multiplier_10ccs_12_io_in_b; // @[FloatingPointDesigns.scala 2180:28]
  wire [15:0] FP_multiplier_10ccs_12_io_out_s; // @[FloatingPointDesigns.scala 2180:28]
  reg [15:0] regs_0; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_1; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_2; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_3; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_4; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_5; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_6; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_7; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_8; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_9; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_10; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_11; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_12; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_13; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_14; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_15; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_16; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_17; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_18; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_19; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_20; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_21; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_22; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_23; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_24; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_25; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_26; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_27; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_28; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_29; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_30; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_31; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_32; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_33; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_34; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_35; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_36; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_37; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_38; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_39; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_40; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_41; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_42; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_43; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_44; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_45; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_46; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_47; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_48; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_49; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_50; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_51; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_52; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_53; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_54; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_55; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_56; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_57; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_58; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_59; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_60; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_61; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_62; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_63; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_64; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_65; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_66; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_67; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_68; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_69; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_70; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_71; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_72; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_73; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_74; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_75; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_76; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_77; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_78; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_79; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_80; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_81; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_82; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_83; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_84; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_85; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_86; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_87; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_88; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_89; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_90; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_91; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_92; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_93; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_94; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_95; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_96; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_97; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_98; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_99; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_100; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_101; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_102; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_103; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_104; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_105; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_106; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_107; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_108; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_109; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_110; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_111; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_112; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_113; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_114; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_115; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_116; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_117; // @[FloatingPointDesigns.scala 2172:23]
  reg [15:0] regs_118; // @[FloatingPointDesigns.scala 2172:23]
  FP_reciprocal_newfpu_12 FP_reciprocal_newfpu_12 ( // @[FloatingPointDesigns.scala 2177:28]
    .clock(FP_reciprocal_newfpu_12_clock),
    .reset(FP_reciprocal_newfpu_12_reset),
    .io_in_a(FP_reciprocal_newfpu_12_io_in_a),
    .io_out_s(FP_reciprocal_newfpu_12_io_out_s)
  );
  FP_multiplier_10ccs_12 FP_multiplier_10ccs_12 ( // @[FloatingPointDesigns.scala 2180:28]
    .clock(FP_multiplier_10ccs_12_clock),
    .reset(FP_multiplier_10ccs_12_reset),
    .io_in_en(FP_multiplier_10ccs_12_io_in_en),
    .io_in_a(FP_multiplier_10ccs_12_io_in_a),
    .io_in_b(FP_multiplier_10ccs_12_io_in_b),
    .io_out_s(FP_multiplier_10ccs_12_io_out_s)
  );
  assign io_out_s = FP_multiplier_10ccs_12_io_out_s; // @[FloatingPointDesigns.scala 2184:14]
  assign FP_reciprocal_newfpu_12_clock = clock;
  assign FP_reciprocal_newfpu_12_reset = reset;
  assign FP_reciprocal_newfpu_12_io_in_a = io_in_b; // @[FloatingPointDesigns.scala 2179:21]
  assign FP_multiplier_10ccs_12_clock = clock;
  assign FP_multiplier_10ccs_12_reset = reset;
  assign FP_multiplier_10ccs_12_io_in_en = 1'h1; // @[FloatingPointDesigns.scala 2181:22]
  assign FP_multiplier_10ccs_12_io_in_a = regs_118; // @[FloatingPointDesigns.scala 2182:21]
  assign FP_multiplier_10ccs_12_io_in_b = FP_reciprocal_newfpu_12_io_out_s; // @[FloatingPointDesigns.scala 2183:21]
  always @(posedge clock) begin
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_0 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_0 <= io_in_a; // @[FloatingPointDesigns.scala 2173:13]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_1 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_1 <= regs_0; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_2 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_2 <= regs_1; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_3 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_3 <= regs_2; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_4 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_4 <= regs_3; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_5 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_5 <= regs_4; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_6 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_6 <= regs_5; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_7 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_7 <= regs_6; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_8 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_8 <= regs_7; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_9 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_9 <= regs_8; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_10 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_10 <= regs_9; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_11 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_11 <= regs_10; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_12 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_12 <= regs_11; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_13 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_13 <= regs_12; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_14 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_14 <= regs_13; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_15 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_15 <= regs_14; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_16 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_16 <= regs_15; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_17 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_17 <= regs_16; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_18 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_18 <= regs_17; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_19 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_19 <= regs_18; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_20 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_20 <= regs_19; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_21 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_21 <= regs_20; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_22 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_22 <= regs_21; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_23 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_23 <= regs_22; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_24 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_24 <= regs_23; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_25 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_25 <= regs_24; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_26 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_26 <= regs_25; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_27 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_27 <= regs_26; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_28 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_28 <= regs_27; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_29 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_29 <= regs_28; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_30 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_30 <= regs_29; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_31 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_31 <= regs_30; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_32 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_32 <= regs_31; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_33 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_33 <= regs_32; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_34 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_34 <= regs_33; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_35 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_35 <= regs_34; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_36 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_36 <= regs_35; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_37 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_37 <= regs_36; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_38 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_38 <= regs_37; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_39 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_39 <= regs_38; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_40 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_40 <= regs_39; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_41 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_41 <= regs_40; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_42 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_42 <= regs_41; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_43 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_43 <= regs_42; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_44 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_44 <= regs_43; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_45 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_45 <= regs_44; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_46 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_46 <= regs_45; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_47 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_47 <= regs_46; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_48 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_48 <= regs_47; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_49 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_49 <= regs_48; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_50 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_50 <= regs_49; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_51 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_51 <= regs_50; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_52 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_52 <= regs_51; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_53 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_53 <= regs_52; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_54 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_54 <= regs_53; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_55 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_55 <= regs_54; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_56 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_56 <= regs_55; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_57 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_57 <= regs_56; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_58 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_58 <= regs_57; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_59 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_59 <= regs_58; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_60 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_60 <= regs_59; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_61 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_61 <= regs_60; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_62 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_62 <= regs_61; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_63 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_63 <= regs_62; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_64 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_64 <= regs_63; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_65 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_65 <= regs_64; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_66 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_66 <= regs_65; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_67 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_67 <= regs_66; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_68 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_68 <= regs_67; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_69 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_69 <= regs_68; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_70 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_70 <= regs_69; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_71 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_71 <= regs_70; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_72 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_72 <= regs_71; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_73 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_73 <= regs_72; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_74 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_74 <= regs_73; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_75 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_75 <= regs_74; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_76 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_76 <= regs_75; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_77 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_77 <= regs_76; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_78 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_78 <= regs_77; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_79 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_79 <= regs_78; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_80 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_80 <= regs_79; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_81 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_81 <= regs_80; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_82 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_82 <= regs_81; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_83 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_83 <= regs_82; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_84 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_84 <= regs_83; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_85 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_85 <= regs_84; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_86 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_86 <= regs_85; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_87 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_87 <= regs_86; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_88 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_88 <= regs_87; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_89 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_89 <= regs_88; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_90 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_90 <= regs_89; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_91 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_91 <= regs_90; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_92 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_92 <= regs_91; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_93 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_93 <= regs_92; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_94 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_94 <= regs_93; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_95 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_95 <= regs_94; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_96 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_96 <= regs_95; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_97 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_97 <= regs_96; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_98 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_98 <= regs_97; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_99 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_99 <= regs_98; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_100 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_100 <= regs_99; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_101 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_101 <= regs_100; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_102 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_102 <= regs_101; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_103 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_103 <= regs_102; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_104 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_104 <= regs_103; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_105 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_105 <= regs_104; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_106 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_106 <= regs_105; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_107 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_107 <= regs_106; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_108 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_108 <= regs_107; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_109 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_109 <= regs_108; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_110 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_110 <= regs_109; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_111 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_111 <= regs_110; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_112 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_112 <= regs_111; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_113 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_113 <= regs_112; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_114 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_114 <= regs_113; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_115 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_115 <= regs_114; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_116 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_116 <= regs_115; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_117 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_117 <= regs_116; // @[FloatingPointDesigns.scala 2175:15]
    end
    if (reset) begin // @[FloatingPointDesigns.scala 2172:23]
      regs_118 <= 16'h0; // @[FloatingPointDesigns.scala 2172:23]
    end else begin
      regs_118 <= regs_117; // @[FloatingPointDesigns.scala 2175:15]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  regs_0 = _RAND_0[15:0];
  _RAND_1 = {1{`RANDOM}};
  regs_1 = _RAND_1[15:0];
  _RAND_2 = {1{`RANDOM}};
  regs_2 = _RAND_2[15:0];
  _RAND_3 = {1{`RANDOM}};
  regs_3 = _RAND_3[15:0];
  _RAND_4 = {1{`RANDOM}};
  regs_4 = _RAND_4[15:0];
  _RAND_5 = {1{`RANDOM}};
  regs_5 = _RAND_5[15:0];
  _RAND_6 = {1{`RANDOM}};
  regs_6 = _RAND_6[15:0];
  _RAND_7 = {1{`RANDOM}};
  regs_7 = _RAND_7[15:0];
  _RAND_8 = {1{`RANDOM}};
  regs_8 = _RAND_8[15:0];
  _RAND_9 = {1{`RANDOM}};
  regs_9 = _RAND_9[15:0];
  _RAND_10 = {1{`RANDOM}};
  regs_10 = _RAND_10[15:0];
  _RAND_11 = {1{`RANDOM}};
  regs_11 = _RAND_11[15:0];
  _RAND_12 = {1{`RANDOM}};
  regs_12 = _RAND_12[15:0];
  _RAND_13 = {1{`RANDOM}};
  regs_13 = _RAND_13[15:0];
  _RAND_14 = {1{`RANDOM}};
  regs_14 = _RAND_14[15:0];
  _RAND_15 = {1{`RANDOM}};
  regs_15 = _RAND_15[15:0];
  _RAND_16 = {1{`RANDOM}};
  regs_16 = _RAND_16[15:0];
  _RAND_17 = {1{`RANDOM}};
  regs_17 = _RAND_17[15:0];
  _RAND_18 = {1{`RANDOM}};
  regs_18 = _RAND_18[15:0];
  _RAND_19 = {1{`RANDOM}};
  regs_19 = _RAND_19[15:0];
  _RAND_20 = {1{`RANDOM}};
  regs_20 = _RAND_20[15:0];
  _RAND_21 = {1{`RANDOM}};
  regs_21 = _RAND_21[15:0];
  _RAND_22 = {1{`RANDOM}};
  regs_22 = _RAND_22[15:0];
  _RAND_23 = {1{`RANDOM}};
  regs_23 = _RAND_23[15:0];
  _RAND_24 = {1{`RANDOM}};
  regs_24 = _RAND_24[15:0];
  _RAND_25 = {1{`RANDOM}};
  regs_25 = _RAND_25[15:0];
  _RAND_26 = {1{`RANDOM}};
  regs_26 = _RAND_26[15:0];
  _RAND_27 = {1{`RANDOM}};
  regs_27 = _RAND_27[15:0];
  _RAND_28 = {1{`RANDOM}};
  regs_28 = _RAND_28[15:0];
  _RAND_29 = {1{`RANDOM}};
  regs_29 = _RAND_29[15:0];
  _RAND_30 = {1{`RANDOM}};
  regs_30 = _RAND_30[15:0];
  _RAND_31 = {1{`RANDOM}};
  regs_31 = _RAND_31[15:0];
  _RAND_32 = {1{`RANDOM}};
  regs_32 = _RAND_32[15:0];
  _RAND_33 = {1{`RANDOM}};
  regs_33 = _RAND_33[15:0];
  _RAND_34 = {1{`RANDOM}};
  regs_34 = _RAND_34[15:0];
  _RAND_35 = {1{`RANDOM}};
  regs_35 = _RAND_35[15:0];
  _RAND_36 = {1{`RANDOM}};
  regs_36 = _RAND_36[15:0];
  _RAND_37 = {1{`RANDOM}};
  regs_37 = _RAND_37[15:0];
  _RAND_38 = {1{`RANDOM}};
  regs_38 = _RAND_38[15:0];
  _RAND_39 = {1{`RANDOM}};
  regs_39 = _RAND_39[15:0];
  _RAND_40 = {1{`RANDOM}};
  regs_40 = _RAND_40[15:0];
  _RAND_41 = {1{`RANDOM}};
  regs_41 = _RAND_41[15:0];
  _RAND_42 = {1{`RANDOM}};
  regs_42 = _RAND_42[15:0];
  _RAND_43 = {1{`RANDOM}};
  regs_43 = _RAND_43[15:0];
  _RAND_44 = {1{`RANDOM}};
  regs_44 = _RAND_44[15:0];
  _RAND_45 = {1{`RANDOM}};
  regs_45 = _RAND_45[15:0];
  _RAND_46 = {1{`RANDOM}};
  regs_46 = _RAND_46[15:0];
  _RAND_47 = {1{`RANDOM}};
  regs_47 = _RAND_47[15:0];
  _RAND_48 = {1{`RANDOM}};
  regs_48 = _RAND_48[15:0];
  _RAND_49 = {1{`RANDOM}};
  regs_49 = _RAND_49[15:0];
  _RAND_50 = {1{`RANDOM}};
  regs_50 = _RAND_50[15:0];
  _RAND_51 = {1{`RANDOM}};
  regs_51 = _RAND_51[15:0];
  _RAND_52 = {1{`RANDOM}};
  regs_52 = _RAND_52[15:0];
  _RAND_53 = {1{`RANDOM}};
  regs_53 = _RAND_53[15:0];
  _RAND_54 = {1{`RANDOM}};
  regs_54 = _RAND_54[15:0];
  _RAND_55 = {1{`RANDOM}};
  regs_55 = _RAND_55[15:0];
  _RAND_56 = {1{`RANDOM}};
  regs_56 = _RAND_56[15:0];
  _RAND_57 = {1{`RANDOM}};
  regs_57 = _RAND_57[15:0];
  _RAND_58 = {1{`RANDOM}};
  regs_58 = _RAND_58[15:0];
  _RAND_59 = {1{`RANDOM}};
  regs_59 = _RAND_59[15:0];
  _RAND_60 = {1{`RANDOM}};
  regs_60 = _RAND_60[15:0];
  _RAND_61 = {1{`RANDOM}};
  regs_61 = _RAND_61[15:0];
  _RAND_62 = {1{`RANDOM}};
  regs_62 = _RAND_62[15:0];
  _RAND_63 = {1{`RANDOM}};
  regs_63 = _RAND_63[15:0];
  _RAND_64 = {1{`RANDOM}};
  regs_64 = _RAND_64[15:0];
  _RAND_65 = {1{`RANDOM}};
  regs_65 = _RAND_65[15:0];
  _RAND_66 = {1{`RANDOM}};
  regs_66 = _RAND_66[15:0];
  _RAND_67 = {1{`RANDOM}};
  regs_67 = _RAND_67[15:0];
  _RAND_68 = {1{`RANDOM}};
  regs_68 = _RAND_68[15:0];
  _RAND_69 = {1{`RANDOM}};
  regs_69 = _RAND_69[15:0];
  _RAND_70 = {1{`RANDOM}};
  regs_70 = _RAND_70[15:0];
  _RAND_71 = {1{`RANDOM}};
  regs_71 = _RAND_71[15:0];
  _RAND_72 = {1{`RANDOM}};
  regs_72 = _RAND_72[15:0];
  _RAND_73 = {1{`RANDOM}};
  regs_73 = _RAND_73[15:0];
  _RAND_74 = {1{`RANDOM}};
  regs_74 = _RAND_74[15:0];
  _RAND_75 = {1{`RANDOM}};
  regs_75 = _RAND_75[15:0];
  _RAND_76 = {1{`RANDOM}};
  regs_76 = _RAND_76[15:0];
  _RAND_77 = {1{`RANDOM}};
  regs_77 = _RAND_77[15:0];
  _RAND_78 = {1{`RANDOM}};
  regs_78 = _RAND_78[15:0];
  _RAND_79 = {1{`RANDOM}};
  regs_79 = _RAND_79[15:0];
  _RAND_80 = {1{`RANDOM}};
  regs_80 = _RAND_80[15:0];
  _RAND_81 = {1{`RANDOM}};
  regs_81 = _RAND_81[15:0];
  _RAND_82 = {1{`RANDOM}};
  regs_82 = _RAND_82[15:0];
  _RAND_83 = {1{`RANDOM}};
  regs_83 = _RAND_83[15:0];
  _RAND_84 = {1{`RANDOM}};
  regs_84 = _RAND_84[15:0];
  _RAND_85 = {1{`RANDOM}};
  regs_85 = _RAND_85[15:0];
  _RAND_86 = {1{`RANDOM}};
  regs_86 = _RAND_86[15:0];
  _RAND_87 = {1{`RANDOM}};
  regs_87 = _RAND_87[15:0];
  _RAND_88 = {1{`RANDOM}};
  regs_88 = _RAND_88[15:0];
  _RAND_89 = {1{`RANDOM}};
  regs_89 = _RAND_89[15:0];
  _RAND_90 = {1{`RANDOM}};
  regs_90 = _RAND_90[15:0];
  _RAND_91 = {1{`RANDOM}};
  regs_91 = _RAND_91[15:0];
  _RAND_92 = {1{`RANDOM}};
  regs_92 = _RAND_92[15:0];
  _RAND_93 = {1{`RANDOM}};
  regs_93 = _RAND_93[15:0];
  _RAND_94 = {1{`RANDOM}};
  regs_94 = _RAND_94[15:0];
  _RAND_95 = {1{`RANDOM}};
  regs_95 = _RAND_95[15:0];
  _RAND_96 = {1{`RANDOM}};
  regs_96 = _RAND_96[15:0];
  _RAND_97 = {1{`RANDOM}};
  regs_97 = _RAND_97[15:0];
  _RAND_98 = {1{`RANDOM}};
  regs_98 = _RAND_98[15:0];
  _RAND_99 = {1{`RANDOM}};
  regs_99 = _RAND_99[15:0];
  _RAND_100 = {1{`RANDOM}};
  regs_100 = _RAND_100[15:0];
  _RAND_101 = {1{`RANDOM}};
  regs_101 = _RAND_101[15:0];
  _RAND_102 = {1{`RANDOM}};
  regs_102 = _RAND_102[15:0];
  _RAND_103 = {1{`RANDOM}};
  regs_103 = _RAND_103[15:0];
  _RAND_104 = {1{`RANDOM}};
  regs_104 = _RAND_104[15:0];
  _RAND_105 = {1{`RANDOM}};
  regs_105 = _RAND_105[15:0];
  _RAND_106 = {1{`RANDOM}};
  regs_106 = _RAND_106[15:0];
  _RAND_107 = {1{`RANDOM}};
  regs_107 = _RAND_107[15:0];
  _RAND_108 = {1{`RANDOM}};
  regs_108 = _RAND_108[15:0];
  _RAND_109 = {1{`RANDOM}};
  regs_109 = _RAND_109[15:0];
  _RAND_110 = {1{`RANDOM}};
  regs_110 = _RAND_110[15:0];
  _RAND_111 = {1{`RANDOM}};
  regs_111 = _RAND_111[15:0];
  _RAND_112 = {1{`RANDOM}};
  regs_112 = _RAND_112[15:0];
  _RAND_113 = {1{`RANDOM}};
  regs_113 = _RAND_113[15:0];
  _RAND_114 = {1{`RANDOM}};
  regs_114 = _RAND_114[15:0];
  _RAND_115 = {1{`RANDOM}};
  regs_115 = _RAND_115[15:0];
  _RAND_116 = {1{`RANDOM}};
  regs_116 = _RAND_116[15:0];
  _RAND_117 = {1{`RANDOM}};
  regs_117 = _RAND_117[15:0];
  _RAND_118 = {1{`RANDOM}};
  regs_118 = _RAND_118[15:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module hqr5_complex_12(
  input         clock,
  input         reset,
  input  [15:0] io_in_a_Re,
  input  [15:0] io_in_a_Im,
  input  [15:0] io_in_b_Re,
  output [15:0] io_out_s_Re,
  output [15:0] io_out_s_Im
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  wire  FP_square_root_newfpu_12_clock; // @[FPComplex.scala 994:22]
  wire  FP_square_root_newfpu_12_reset; // @[FPComplex.scala 994:22]
  wire [15:0] FP_square_root_newfpu_12_io_in_a; // @[FPComplex.scala 994:22]
  wire [15:0] FP_square_root_newfpu_12_io_out_s; // @[FPComplex.scala 994:22]
  wire  FPComplexMult_v2_12_clock; // @[FPComplex.scala 995:29]
  wire  FPComplexMult_v2_12_reset; // @[FPComplex.scala 995:29]
  wire [15:0] FPComplexMult_v2_12_io_in_a_Re; // @[FPComplex.scala 995:29]
  wire [15:0] FPComplexMult_v2_12_io_in_a_Im; // @[FPComplex.scala 995:29]
  wire [15:0] FPComplexMult_v2_12_io_in_b_Re; // @[FPComplex.scala 995:29]
  wire [15:0] FPComplexMult_v2_12_io_in_b_Im; // @[FPComplex.scala 995:29]
  wire [15:0] FPComplexMult_v2_12_io_out_s_Re; // @[FPComplex.scala 995:29]
  wire [15:0] FPComplexMult_v2_12_io_out_s_Im; // @[FPComplex.scala 995:29]
  wire  FPComplexMult_v2_12_1_clock; // @[FPComplex.scala 996:29]
  wire  FPComplexMult_v2_12_1_reset; // @[FPComplex.scala 996:29]
  wire [15:0] FPComplexMult_v2_12_1_io_in_a_Re; // @[FPComplex.scala 996:29]
  wire [15:0] FPComplexMult_v2_12_1_io_in_a_Im; // @[FPComplex.scala 996:29]
  wire [15:0] FPComplexMult_v2_12_1_io_in_b_Re; // @[FPComplex.scala 996:29]
  wire [15:0] FPComplexMult_v2_12_1_io_in_b_Im; // @[FPComplex.scala 996:29]
  wire [15:0] FPComplexMult_v2_12_1_io_out_s_Re; // @[FPComplex.scala 996:29]
  wire [15:0] FPComplexMult_v2_12_1_io_out_s_Im; // @[FPComplex.scala 996:29]
  wire  FP_divider_newfpu_12_clock; // @[FPComplex.scala 1000:21]
  wire  FP_divider_newfpu_12_reset; // @[FPComplex.scala 1000:21]
  wire [15:0] FP_divider_newfpu_12_io_in_a; // @[FPComplex.scala 1000:21]
  wire [15:0] FP_divider_newfpu_12_io_in_b; // @[FPComplex.scala 1000:21]
  wire [15:0] FP_divider_newfpu_12_io_out_s; // @[FPComplex.scala 1000:21]
  wire  FP_divider_newfpu_12_1_clock; // @[FPComplex.scala 1001:21]
  wire  FP_divider_newfpu_12_1_reset; // @[FPComplex.scala 1001:21]
  wire [15:0] FP_divider_newfpu_12_1_io_in_a; // @[FPComplex.scala 1001:21]
  wire [15:0] FP_divider_newfpu_12_1_io_in_b; // @[FPComplex.scala 1001:21]
  wire [15:0] FP_divider_newfpu_12_1_io_out_s; // @[FPComplex.scala 1001:21]
  wire  FPComplexAdder_v2_12_clock; // @[FPComplex.scala 1003:23]
  wire  FPComplexAdder_v2_12_reset; // @[FPComplex.scala 1003:23]
  wire [15:0] FPComplexAdder_v2_12_io_in_a_Re; // @[FPComplex.scala 1003:23]
  wire [15:0] FPComplexAdder_v2_12_io_in_a_Im; // @[FPComplex.scala 1003:23]
  wire [15:0] FPComplexAdder_v2_12_io_in_b_Re; // @[FPComplex.scala 1003:23]
  wire [15:0] FPComplexAdder_v2_12_io_in_b_Im; // @[FPComplex.scala 1003:23]
  wire [15:0] FPComplexAdder_v2_12_io_out_s_Re; // @[FPComplex.scala 1003:23]
  wire [15:0] FPComplexAdder_v2_12_io_out_s_Im; // @[FPComplex.scala 1003:23]
  reg [15:0] cd1; // @[FPComplex.scala 1004:18]
  reg [15:0] cd2; // @[FPComplex.scala 1005:18]
  reg [15:0] s_Re; // @[FPComplex.scala 1007:16]
  reg [15:0] s_Im; // @[FPComplex.scala 1007:16]
  wire [31:0] _GEN_0 = {{16'd0}, io_in_a_Im}; // @[FPComplex.scala 1012:31]
  wire [31:0] _conjugate_Im_T = _GEN_0 ^ 32'h80000000; // @[FPComplex.scala 1012:31]
  FP_square_root_newfpu_12 FP_square_root_newfpu_12 ( // @[FPComplex.scala 994:22]
    .clock(FP_square_root_newfpu_12_clock),
    .reset(FP_square_root_newfpu_12_reset),
    .io_in_a(FP_square_root_newfpu_12_io_in_a),
    .io_out_s(FP_square_root_newfpu_12_io_out_s)
  );
  FPComplexMult_v2_12 FPComplexMult_v2_12 ( // @[FPComplex.scala 995:29]
    .clock(FPComplexMult_v2_12_clock),
    .reset(FPComplexMult_v2_12_reset),
    .io_in_a_Re(FPComplexMult_v2_12_io_in_a_Re),
    .io_in_a_Im(FPComplexMult_v2_12_io_in_a_Im),
    .io_in_b_Re(FPComplexMult_v2_12_io_in_b_Re),
    .io_in_b_Im(FPComplexMult_v2_12_io_in_b_Im),
    .io_out_s_Re(FPComplexMult_v2_12_io_out_s_Re),
    .io_out_s_Im(FPComplexMult_v2_12_io_out_s_Im)
  );
  FPComplexMult_v2_12 FPComplexMult_v2_12_1 ( // @[FPComplex.scala 996:29]
    .clock(FPComplexMult_v2_12_1_clock),
    .reset(FPComplexMult_v2_12_1_reset),
    .io_in_a_Re(FPComplexMult_v2_12_1_io_in_a_Re),
    .io_in_a_Im(FPComplexMult_v2_12_1_io_in_a_Im),
    .io_in_b_Re(FPComplexMult_v2_12_1_io_in_b_Re),
    .io_in_b_Im(FPComplexMult_v2_12_1_io_in_b_Im),
    .io_out_s_Re(FPComplexMult_v2_12_1_io_out_s_Re),
    .io_out_s_Im(FPComplexMult_v2_12_1_io_out_s_Im)
  );
  FP_divider_newfpu_12 FP_divider_newfpu_12 ( // @[FPComplex.scala 1000:21]
    .clock(FP_divider_newfpu_12_clock),
    .reset(FP_divider_newfpu_12_reset),
    .io_in_a(FP_divider_newfpu_12_io_in_a),
    .io_in_b(FP_divider_newfpu_12_io_in_b),
    .io_out_s(FP_divider_newfpu_12_io_out_s)
  );
  FP_divider_newfpu_12 FP_divider_newfpu_12_1 ( // @[FPComplex.scala 1001:21]
    .clock(FP_divider_newfpu_12_1_clock),
    .reset(FP_divider_newfpu_12_1_reset),
    .io_in_a(FP_divider_newfpu_12_1_io_in_a),
    .io_in_b(FP_divider_newfpu_12_1_io_in_b),
    .io_out_s(FP_divider_newfpu_12_1_io_out_s)
  );
  FPComplexAdder_v2_12 FPComplexAdder_v2_12 ( // @[FPComplex.scala 1003:23]
    .clock(FPComplexAdder_v2_12_clock),
    .reset(FPComplexAdder_v2_12_reset),
    .io_in_a_Re(FPComplexAdder_v2_12_io_in_a_Re),
    .io_in_a_Im(FPComplexAdder_v2_12_io_in_a_Im),
    .io_in_b_Re(FPComplexAdder_v2_12_io_in_b_Re),
    .io_in_b_Im(FPComplexAdder_v2_12_io_in_b_Im),
    .io_out_s_Re(FPComplexAdder_v2_12_io_out_s_Re),
    .io_out_s_Im(FPComplexAdder_v2_12_io_out_s_Im)
  );
  assign io_out_s_Re = FPComplexAdder_v2_12_io_out_s_Re; // @[FPComplex.scala 1100:14]
  assign io_out_s_Im = FPComplexAdder_v2_12_io_out_s_Im; // @[FPComplex.scala 1100:14]
  assign FP_square_root_newfpu_12_clock = clock;
  assign FP_square_root_newfpu_12_reset = reset;
  assign FP_square_root_newfpu_12_io_in_a = cd1; // @[FPComplex.scala 1027:15]
  assign FPComplexMult_v2_12_clock = clock;
  assign FPComplexMult_v2_12_reset = reset;
  assign FPComplexMult_v2_12_io_in_a_Re = io_in_a_Re; // @[FPComplex.scala 1010:25 1011:18]
  assign FPComplexMult_v2_12_io_in_a_Im = _conjugate_Im_T[15:0]; // @[FPComplex.scala 1010:25 1012:18]
  assign FPComplexMult_v2_12_io_in_b_Re = io_in_a_Re; // @[FPComplex.scala 1016:22]
  assign FPComplexMult_v2_12_io_in_b_Im = io_in_a_Im; // @[FPComplex.scala 1016:22]
  assign FPComplexMult_v2_12_1_clock = clock;
  assign FPComplexMult_v2_12_1_reset = reset;
  assign FPComplexMult_v2_12_1_io_in_a_Re = s_Re; // @[FPComplex.scala 1093:22]
  assign FPComplexMult_v2_12_1_io_in_a_Im = s_Im; // @[FPComplex.scala 1093:22]
  assign FPComplexMult_v2_12_1_io_in_b_Re = io_in_b_Re; // @[FPComplex.scala 1094:22]
  assign FPComplexMult_v2_12_1_io_in_b_Im = 16'h0; // @[FPComplex.scala 1094:22]
  assign FP_divider_newfpu_12_clock = clock;
  assign FP_divider_newfpu_12_reset = reset;
  assign FP_divider_newfpu_12_io_in_a = io_in_a_Re; // @[FPComplex.scala 1060:14]
  assign FP_divider_newfpu_12_io_in_b = cd2; // @[FPComplex.scala 1061:14]
  assign FP_divider_newfpu_12_1_clock = clock;
  assign FP_divider_newfpu_12_1_reset = reset;
  assign FP_divider_newfpu_12_1_io_in_a = io_in_a_Im; // @[FPComplex.scala 1066:15]
  assign FP_divider_newfpu_12_1_io_in_b = cd2; // @[FPComplex.scala 1067:15]
  assign FPComplexAdder_v2_12_clock = clock;
  assign FPComplexAdder_v2_12_reset = reset;
  assign FPComplexAdder_v2_12_io_in_a_Re = io_in_a_Re; // @[FPComplex.scala 1097:16]
  assign FPComplexAdder_v2_12_io_in_a_Im = io_in_a_Im; // @[FPComplex.scala 1097:16]
  assign FPComplexAdder_v2_12_io_in_b_Re = FPComplexMult_v2_12_1_io_out_s_Re; // @[FPComplex.scala 1098:16]
  assign FPComplexAdder_v2_12_io_in_b_Im = FPComplexMult_v2_12_1_io_out_s_Im; // @[FPComplex.scala 1098:16]
  always @(posedge clock) begin
    cd1 <= FPComplexMult_v2_12_io_out_s_Re; // @[FPComplex.scala 1017:9]
    cd2 <= FP_square_root_newfpu_12_io_out_s; // @[FPComplex.scala 1028:9]
    s_Re <= FP_divider_newfpu_12_io_out_s; // @[FPComplex.scala 1088:12]
    s_Im <= FP_divider_newfpu_12_1_io_out_s; // @[FPComplex.scala 1089:12]
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  cd1 = _RAND_0[15:0];
  _RAND_1 = {1{`RANDOM}};
  cd2 = _RAND_1[15:0];
  _RAND_2 = {1{`RANDOM}};
  s_Re = _RAND_2[15:0];
  _RAND_3 = {1{`RANDOM}};
  s_Im = _RAND_3[15:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module hqr7_12(
  input         clock,
  input         reset,
  input  [15:0] io_in_a,
  output [15:0] io_out_s
);
  wire  FP_multiplier_10ccs_12_clock; // @[FloatingPointDesigns.scala 2548:28]
  wire  FP_multiplier_10ccs_12_reset; // @[FloatingPointDesigns.scala 2548:28]
  wire  FP_multiplier_10ccs_12_io_in_en; // @[FloatingPointDesigns.scala 2548:28]
  wire [15:0] FP_multiplier_10ccs_12_io_in_a; // @[FloatingPointDesigns.scala 2548:28]
  wire [15:0] FP_multiplier_10ccs_12_io_in_b; // @[FloatingPointDesigns.scala 2548:28]
  wire [15:0] FP_multiplier_10ccs_12_io_out_s; // @[FloatingPointDesigns.scala 2548:28]
  wire  FP_reciprocal_newfpu_12_clock; // @[FloatingPointDesigns.scala 2549:28]
  wire  FP_reciprocal_newfpu_12_reset; // @[FloatingPointDesigns.scala 2549:28]
  wire [15:0] FP_reciprocal_newfpu_12_io_in_a; // @[FloatingPointDesigns.scala 2549:28]
  wire [15:0] FP_reciprocal_newfpu_12_io_out_s; // @[FloatingPointDesigns.scala 2549:28]
  FP_multiplier_10ccs_12 FP_multiplier_10ccs_12 ( // @[FloatingPointDesigns.scala 2548:28]
    .clock(FP_multiplier_10ccs_12_clock),
    .reset(FP_multiplier_10ccs_12_reset),
    .io_in_en(FP_multiplier_10ccs_12_io_in_en),
    .io_in_a(FP_multiplier_10ccs_12_io_in_a),
    .io_in_b(FP_multiplier_10ccs_12_io_in_b),
    .io_out_s(FP_multiplier_10ccs_12_io_out_s)
  );
  FP_reciprocal_newfpu_12 FP_reciprocal_newfpu_12 ( // @[FloatingPointDesigns.scala 2549:28]
    .clock(FP_reciprocal_newfpu_12_clock),
    .reset(FP_reciprocal_newfpu_12_reset),
    .io_in_a(FP_reciprocal_newfpu_12_io_in_a),
    .io_out_s(FP_reciprocal_newfpu_12_io_out_s)
  );
  assign io_out_s = FP_multiplier_10ccs_12_io_out_s; // @[FloatingPointDesigns.scala 2556:14]
  assign FP_multiplier_10ccs_12_clock = clock;
  assign FP_multiplier_10ccs_12_reset = reset;
  assign FP_multiplier_10ccs_12_io_in_en = 1'h1; // @[FloatingPointDesigns.scala 2550:22]
  assign FP_multiplier_10ccs_12_io_in_a = 16'h0; // @[FloatingPointDesigns.scala 2553:21]
  assign FP_multiplier_10ccs_12_io_in_b = FP_reciprocal_newfpu_12_io_out_s; // @[FloatingPointDesigns.scala 2554:21]
  assign FP_reciprocal_newfpu_12_clock = clock;
  assign FP_reciprocal_newfpu_12_reset = reset;
  assign FP_reciprocal_newfpu_12_io_in_a = io_in_a; // @[FloatingPointDesigns.scala 2552:21]
endmodule
module FPReg_12(
  input         clock,
  input         reset,
  input  [15:0] io_in_Re,
  input  [15:0] io_in_Im,
  output [15:0] io_out_Re,
  output [15:0] io_out_Im
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
`endif // RANDOMIZE_REG_INIT
  reg [15:0] reg_0_Re; // @[FPComplex.scala 936:22]
  reg [15:0] reg_0_Im; // @[FPComplex.scala 936:22]
  reg [15:0] reg_1_Re; // @[FPComplex.scala 936:22]
  reg [15:0] reg_1_Im; // @[FPComplex.scala 936:22]
  reg [15:0] reg_2_Re; // @[FPComplex.scala 936:22]
  reg [15:0] reg_2_Im; // @[FPComplex.scala 936:22]
  reg [15:0] reg_3_Re; // @[FPComplex.scala 936:22]
  reg [15:0] reg_3_Im; // @[FPComplex.scala 936:22]
  reg [15:0] reg_4_Re; // @[FPComplex.scala 936:22]
  reg [15:0] reg_4_Im; // @[FPComplex.scala 936:22]
  reg [15:0] reg_5_Re; // @[FPComplex.scala 936:22]
  reg [15:0] reg_5_Im; // @[FPComplex.scala 936:22]
  reg [15:0] reg_6_Re; // @[FPComplex.scala 936:22]
  reg [15:0] reg_6_Im; // @[FPComplex.scala 936:22]
  reg [15:0] reg_7_Re; // @[FPComplex.scala 936:22]
  reg [15:0] reg_7_Im; // @[FPComplex.scala 936:22]
  reg [15:0] reg_8_Re; // @[FPComplex.scala 936:22]
  reg [15:0] reg_8_Im; // @[FPComplex.scala 936:22]
  reg [15:0] reg_9_Re; // @[FPComplex.scala 936:22]
  reg [15:0] reg_9_Im; // @[FPComplex.scala 936:22]
  reg [15:0] reg_10_Re; // @[FPComplex.scala 936:22]
  reg [15:0] reg_10_Im; // @[FPComplex.scala 936:22]
  reg [15:0] reg_11_Re; // @[FPComplex.scala 936:22]
  reg [15:0] reg_11_Im; // @[FPComplex.scala 936:22]
  reg [15:0] reg_12_Re; // @[FPComplex.scala 936:22]
  reg [15:0] reg_12_Im; // @[FPComplex.scala 936:22]
  reg [15:0] reg_13_Re; // @[FPComplex.scala 936:22]
  reg [15:0] reg_13_Im; // @[FPComplex.scala 936:22]
  reg [15:0] reg_14_Re; // @[FPComplex.scala 936:22]
  reg [15:0] reg_14_Im; // @[FPComplex.scala 936:22]
  reg [15:0] reg_15_Re; // @[FPComplex.scala 936:22]
  reg [15:0] reg_15_Im; // @[FPComplex.scala 936:22]
  reg [15:0] reg_16_Re; // @[FPComplex.scala 936:22]
  reg [15:0] reg_16_Im; // @[FPComplex.scala 936:22]
  reg [15:0] reg_17_Re; // @[FPComplex.scala 936:22]
  reg [15:0] reg_17_Im; // @[FPComplex.scala 936:22]
  reg [15:0] reg_18_Re; // @[FPComplex.scala 936:22]
  reg [15:0] reg_18_Im; // @[FPComplex.scala 936:22]
  reg [15:0] reg_19_Re; // @[FPComplex.scala 936:22]
  reg [15:0] reg_19_Im; // @[FPComplex.scala 936:22]
  reg [15:0] reg_20_Re; // @[FPComplex.scala 936:22]
  reg [15:0] reg_20_Im; // @[FPComplex.scala 936:22]
  reg [15:0] reg_21_Re; // @[FPComplex.scala 936:22]
  reg [15:0] reg_21_Im; // @[FPComplex.scala 936:22]
  reg [15:0] reg_22_Re; // @[FPComplex.scala 936:22]
  reg [15:0] reg_22_Im; // @[FPComplex.scala 936:22]
  assign io_out_Re = reg_22_Re; // @[FPComplex.scala 941:12]
  assign io_out_Im = reg_22_Im; // @[FPComplex.scala 941:12]
  always @(posedge clock) begin
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_0_Re <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_0_Re <= io_in_Re; // @[FPComplex.scala 937:14]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_0_Im <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_0_Im <= io_in_Im; // @[FPComplex.scala 937:14]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_1_Re <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_1_Re <= reg_0_Re; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_1_Im <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_1_Im <= reg_0_Im; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_2_Re <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_2_Re <= reg_1_Re; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_2_Im <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_2_Im <= reg_1_Im; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_3_Re <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_3_Re <= reg_2_Re; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_3_Im <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_3_Im <= reg_2_Im; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_4_Re <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_4_Re <= reg_3_Re; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_4_Im <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_4_Im <= reg_3_Im; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_5_Re <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_5_Re <= reg_4_Re; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_5_Im <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_5_Im <= reg_4_Im; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_6_Re <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_6_Re <= reg_5_Re; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_6_Im <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_6_Im <= reg_5_Im; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_7_Re <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_7_Re <= reg_6_Re; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_7_Im <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_7_Im <= reg_6_Im; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_8_Re <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_8_Re <= reg_7_Re; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_8_Im <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_8_Im <= reg_7_Im; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_9_Re <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_9_Re <= reg_8_Re; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_9_Im <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_9_Im <= reg_8_Im; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_10_Re <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_10_Re <= reg_9_Re; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_10_Im <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_10_Im <= reg_9_Im; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_11_Re <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_11_Re <= reg_10_Re; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_11_Im <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_11_Im <= reg_10_Im; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_12_Re <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_12_Re <= reg_11_Re; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_12_Im <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_12_Im <= reg_11_Im; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_13_Re <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_13_Re <= reg_12_Re; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_13_Im <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_13_Im <= reg_12_Im; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_14_Re <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_14_Re <= reg_13_Re; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_14_Im <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_14_Im <= reg_13_Im; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_15_Re <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_15_Re <= reg_14_Re; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_15_Im <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_15_Im <= reg_14_Im; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_16_Re <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_16_Re <= reg_15_Re; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_16_Im <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_16_Im <= reg_15_Im; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_17_Re <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_17_Re <= reg_16_Re; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_17_Im <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_17_Im <= reg_16_Im; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_18_Re <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_18_Re <= reg_17_Re; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_18_Im <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_18_Im <= reg_17_Im; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_19_Re <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_19_Re <= reg_18_Re; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_19_Im <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_19_Im <= reg_18_Im; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_20_Re <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_20_Re <= reg_19_Re; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_20_Im <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_20_Im <= reg_19_Im; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_21_Re <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_21_Re <= reg_20_Re; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_21_Im <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_21_Im <= reg_20_Im; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_22_Re <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_22_Re <= reg_21_Re; // @[FPComplex.scala 939:16]
    end
    if (reset) begin // @[FPComplex.scala 936:22]
      reg_22_Im <= 16'h0; // @[FPComplex.scala 936:22]
    end else begin
      reg_22_Im <= reg_21_Im; // @[FPComplex.scala 939:16]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  reg_0_Re = _RAND_0[15:0];
  _RAND_1 = {1{`RANDOM}};
  reg_0_Im = _RAND_1[15:0];
  _RAND_2 = {1{`RANDOM}};
  reg_1_Re = _RAND_2[15:0];
  _RAND_3 = {1{`RANDOM}};
  reg_1_Im = _RAND_3[15:0];
  _RAND_4 = {1{`RANDOM}};
  reg_2_Re = _RAND_4[15:0];
  _RAND_5 = {1{`RANDOM}};
  reg_2_Im = _RAND_5[15:0];
  _RAND_6 = {1{`RANDOM}};
  reg_3_Re = _RAND_6[15:0];
  _RAND_7 = {1{`RANDOM}};
  reg_3_Im = _RAND_7[15:0];
  _RAND_8 = {1{`RANDOM}};
  reg_4_Re = _RAND_8[15:0];
  _RAND_9 = {1{`RANDOM}};
  reg_4_Im = _RAND_9[15:0];
  _RAND_10 = {1{`RANDOM}};
  reg_5_Re = _RAND_10[15:0];
  _RAND_11 = {1{`RANDOM}};
  reg_5_Im = _RAND_11[15:0];
  _RAND_12 = {1{`RANDOM}};
  reg_6_Re = _RAND_12[15:0];
  _RAND_13 = {1{`RANDOM}};
  reg_6_Im = _RAND_13[15:0];
  _RAND_14 = {1{`RANDOM}};
  reg_7_Re = _RAND_14[15:0];
  _RAND_15 = {1{`RANDOM}};
  reg_7_Im = _RAND_15[15:0];
  _RAND_16 = {1{`RANDOM}};
  reg_8_Re = _RAND_16[15:0];
  _RAND_17 = {1{`RANDOM}};
  reg_8_Im = _RAND_17[15:0];
  _RAND_18 = {1{`RANDOM}};
  reg_9_Re = _RAND_18[15:0];
  _RAND_19 = {1{`RANDOM}};
  reg_9_Im = _RAND_19[15:0];
  _RAND_20 = {1{`RANDOM}};
  reg_10_Re = _RAND_20[15:0];
  _RAND_21 = {1{`RANDOM}};
  reg_10_Im = _RAND_21[15:0];
  _RAND_22 = {1{`RANDOM}};
  reg_11_Re = _RAND_22[15:0];
  _RAND_23 = {1{`RANDOM}};
  reg_11_Im = _RAND_23[15:0];
  _RAND_24 = {1{`RANDOM}};
  reg_12_Re = _RAND_24[15:0];
  _RAND_25 = {1{`RANDOM}};
  reg_12_Im = _RAND_25[15:0];
  _RAND_26 = {1{`RANDOM}};
  reg_13_Re = _RAND_26[15:0];
  _RAND_27 = {1{`RANDOM}};
  reg_13_Im = _RAND_27[15:0];
  _RAND_28 = {1{`RANDOM}};
  reg_14_Re = _RAND_28[15:0];
  _RAND_29 = {1{`RANDOM}};
  reg_14_Im = _RAND_29[15:0];
  _RAND_30 = {1{`RANDOM}};
  reg_15_Re = _RAND_30[15:0];
  _RAND_31 = {1{`RANDOM}};
  reg_15_Im = _RAND_31[15:0];
  _RAND_32 = {1{`RANDOM}};
  reg_16_Re = _RAND_32[15:0];
  _RAND_33 = {1{`RANDOM}};
  reg_16_Im = _RAND_33[15:0];
  _RAND_34 = {1{`RANDOM}};
  reg_17_Re = _RAND_34[15:0];
  _RAND_35 = {1{`RANDOM}};
  reg_17_Im = _RAND_35[15:0];
  _RAND_36 = {1{`RANDOM}};
  reg_18_Re = _RAND_36[15:0];
  _RAND_37 = {1{`RANDOM}};
  reg_18_Im = _RAND_37[15:0];
  _RAND_38 = {1{`RANDOM}};
  reg_19_Re = _RAND_38[15:0];
  _RAND_39 = {1{`RANDOM}};
  reg_19_Im = _RAND_39[15:0];
  _RAND_40 = {1{`RANDOM}};
  reg_20_Re = _RAND_40[15:0];
  _RAND_41 = {1{`RANDOM}};
  reg_20_Im = _RAND_41[15:0];
  _RAND_42 = {1{`RANDOM}};
  reg_21_Re = _RAND_42[15:0];
  _RAND_43 = {1{`RANDOM}};
  reg_21_Im = _RAND_43[15:0];
  _RAND_44 = {1{`RANDOM}};
  reg_22_Re = _RAND_44[15:0];
  _RAND_45 = {1{`RANDOM}};
  reg_22_Im = _RAND_45[15:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module axpy_dp_complex_12(
  input         clock,
  input         reset,
  input  [15:0] io_in_a_Re,
  input  [15:0] io_in_a_Im,
  input  [15:0] io_in_b_0_Re,
  input  [15:0] io_in_b_0_Im,
  input  [15:0] io_in_b_1_Re,
  input  [15:0] io_in_b_1_Im,
  input  [15:0] io_in_b_2_Re,
  input  [15:0] io_in_b_2_Im,
  input  [15:0] io_in_b_3_Re,
  input  [15:0] io_in_b_3_Im,
  input  [15:0] io_in_b_4_Re,
  input  [15:0] io_in_b_4_Im,
  input  [15:0] io_in_b_5_Re,
  input  [15:0] io_in_b_5_Im,
  input  [15:0] io_in_b_6_Re,
  input  [15:0] io_in_b_6_Im,
  input  [15:0] io_in_b_7_Re,
  input  [15:0] io_in_b_7_Im,
  input  [15:0] io_in_b_8_Re,
  input  [15:0] io_in_b_8_Im,
  input  [15:0] io_in_b_9_Re,
  input  [15:0] io_in_b_9_Im,
  input  [15:0] io_in_b_10_Re,
  input  [15:0] io_in_b_10_Im,
  input  [15:0] io_in_b_11_Re,
  input  [15:0] io_in_b_11_Im,
  input  [15:0] io_in_b_12_Re,
  input  [15:0] io_in_b_12_Im,
  input  [15:0] io_in_b_13_Re,
  input  [15:0] io_in_b_13_Im,
  input  [15:0] io_in_b_14_Re,
  input  [15:0] io_in_b_14_Im,
  input  [15:0] io_in_b_15_Re,
  input  [15:0] io_in_b_15_Im,
  input  [15:0] io_in_c_0_Re,
  input  [15:0] io_in_c_0_Im,
  input  [15:0] io_in_c_1_Re,
  input  [15:0] io_in_c_1_Im,
  input  [15:0] io_in_c_2_Re,
  input  [15:0] io_in_c_2_Im,
  input  [15:0] io_in_c_3_Re,
  input  [15:0] io_in_c_3_Im,
  input  [15:0] io_in_c_4_Re,
  input  [15:0] io_in_c_4_Im,
  input  [15:0] io_in_c_5_Re,
  input  [15:0] io_in_c_5_Im,
  input  [15:0] io_in_c_6_Re,
  input  [15:0] io_in_c_6_Im,
  input  [15:0] io_in_c_7_Re,
  input  [15:0] io_in_c_7_Im,
  input  [15:0] io_in_c_8_Re,
  input  [15:0] io_in_c_8_Im,
  input  [15:0] io_in_c_9_Re,
  input  [15:0] io_in_c_9_Im,
  input  [15:0] io_in_c_10_Re,
  input  [15:0] io_in_c_10_Im,
  input  [15:0] io_in_c_11_Re,
  input  [15:0] io_in_c_11_Im,
  input  [15:0] io_in_c_12_Re,
  input  [15:0] io_in_c_12_Im,
  input  [15:0] io_in_c_13_Re,
  input  [15:0] io_in_c_13_Im,
  input  [15:0] io_in_c_14_Re,
  input  [15:0] io_in_c_14_Im,
  input  [15:0] io_in_c_15_Re,
  input  [15:0] io_in_c_15_Im,
  output [15:0] io_out_s_0_Re,
  output [15:0] io_out_s_0_Im,
  output [15:0] io_out_s_1_Re,
  output [15:0] io_out_s_1_Im,
  output [15:0] io_out_s_2_Re,
  output [15:0] io_out_s_2_Im,
  output [15:0] io_out_s_3_Re,
  output [15:0] io_out_s_3_Im,
  output [15:0] io_out_s_4_Re,
  output [15:0] io_out_s_4_Im,
  output [15:0] io_out_s_5_Re,
  output [15:0] io_out_s_5_Im,
  output [15:0] io_out_s_6_Re,
  output [15:0] io_out_s_6_Im,
  output [15:0] io_out_s_7_Re,
  output [15:0] io_out_s_7_Im,
  output [15:0] io_out_s_8_Re,
  output [15:0] io_out_s_8_Im,
  output [15:0] io_out_s_9_Re,
  output [15:0] io_out_s_9_Im,
  output [15:0] io_out_s_10_Re,
  output [15:0] io_out_s_10_Im,
  output [15:0] io_out_s_11_Re,
  output [15:0] io_out_s_11_Im,
  output [15:0] io_out_s_12_Re,
  output [15:0] io_out_s_12_Im,
  output [15:0] io_out_s_13_Re,
  output [15:0] io_out_s_13_Im,
  output [15:0] io_out_s_14_Re,
  output [15:0] io_out_s_14_Im,
  output [15:0] io_out_s_15_Re,
  output [15:0] io_out_s_15_Im
);
  wire  FPComplexMult_v2_12_clock; // @[FPComplex.scala 1203:28]
  wire  FPComplexMult_v2_12_reset; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_io_in_a_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_io_in_a_Im; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_io_in_b_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_io_in_b_Im; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_io_out_s_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_io_out_s_Im; // @[FPComplex.scala 1203:28]
  wire  FPComplexMult_v2_12_1_clock; // @[FPComplex.scala 1203:28]
  wire  FPComplexMult_v2_12_1_reset; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_1_io_in_a_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_1_io_in_a_Im; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_1_io_in_b_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_1_io_in_b_Im; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_1_io_out_s_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_1_io_out_s_Im; // @[FPComplex.scala 1203:28]
  wire  FPComplexMult_v2_12_2_clock; // @[FPComplex.scala 1203:28]
  wire  FPComplexMult_v2_12_2_reset; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_2_io_in_a_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_2_io_in_a_Im; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_2_io_in_b_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_2_io_in_b_Im; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_2_io_out_s_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_2_io_out_s_Im; // @[FPComplex.scala 1203:28]
  wire  FPComplexMult_v2_12_3_clock; // @[FPComplex.scala 1203:28]
  wire  FPComplexMult_v2_12_3_reset; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_3_io_in_a_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_3_io_in_a_Im; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_3_io_in_b_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_3_io_in_b_Im; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_3_io_out_s_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_3_io_out_s_Im; // @[FPComplex.scala 1203:28]
  wire  FPComplexMult_v2_12_4_clock; // @[FPComplex.scala 1203:28]
  wire  FPComplexMult_v2_12_4_reset; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_4_io_in_a_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_4_io_in_a_Im; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_4_io_in_b_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_4_io_in_b_Im; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_4_io_out_s_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_4_io_out_s_Im; // @[FPComplex.scala 1203:28]
  wire  FPComplexMult_v2_12_5_clock; // @[FPComplex.scala 1203:28]
  wire  FPComplexMult_v2_12_5_reset; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_5_io_in_a_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_5_io_in_a_Im; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_5_io_in_b_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_5_io_in_b_Im; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_5_io_out_s_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_5_io_out_s_Im; // @[FPComplex.scala 1203:28]
  wire  FPComplexMult_v2_12_6_clock; // @[FPComplex.scala 1203:28]
  wire  FPComplexMult_v2_12_6_reset; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_6_io_in_a_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_6_io_in_a_Im; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_6_io_in_b_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_6_io_in_b_Im; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_6_io_out_s_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_6_io_out_s_Im; // @[FPComplex.scala 1203:28]
  wire  FPComplexMult_v2_12_7_clock; // @[FPComplex.scala 1203:28]
  wire  FPComplexMult_v2_12_7_reset; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_7_io_in_a_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_7_io_in_a_Im; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_7_io_in_b_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_7_io_in_b_Im; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_7_io_out_s_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_7_io_out_s_Im; // @[FPComplex.scala 1203:28]
  wire  FPComplexMult_v2_12_8_clock; // @[FPComplex.scala 1203:28]
  wire  FPComplexMult_v2_12_8_reset; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_8_io_in_a_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_8_io_in_a_Im; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_8_io_in_b_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_8_io_in_b_Im; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_8_io_out_s_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_8_io_out_s_Im; // @[FPComplex.scala 1203:28]
  wire  FPComplexMult_v2_12_9_clock; // @[FPComplex.scala 1203:28]
  wire  FPComplexMult_v2_12_9_reset; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_9_io_in_a_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_9_io_in_a_Im; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_9_io_in_b_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_9_io_in_b_Im; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_9_io_out_s_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_9_io_out_s_Im; // @[FPComplex.scala 1203:28]
  wire  FPComplexMult_v2_12_10_clock; // @[FPComplex.scala 1203:28]
  wire  FPComplexMult_v2_12_10_reset; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_10_io_in_a_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_10_io_in_a_Im; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_10_io_in_b_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_10_io_in_b_Im; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_10_io_out_s_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_10_io_out_s_Im; // @[FPComplex.scala 1203:28]
  wire  FPComplexMult_v2_12_11_clock; // @[FPComplex.scala 1203:28]
  wire  FPComplexMult_v2_12_11_reset; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_11_io_in_a_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_11_io_in_a_Im; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_11_io_in_b_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_11_io_in_b_Im; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_11_io_out_s_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_11_io_out_s_Im; // @[FPComplex.scala 1203:28]
  wire  FPComplexMult_v2_12_12_clock; // @[FPComplex.scala 1203:28]
  wire  FPComplexMult_v2_12_12_reset; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_12_io_in_a_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_12_io_in_a_Im; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_12_io_in_b_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_12_io_in_b_Im; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_12_io_out_s_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_12_io_out_s_Im; // @[FPComplex.scala 1203:28]
  wire  FPComplexMult_v2_12_13_clock; // @[FPComplex.scala 1203:28]
  wire  FPComplexMult_v2_12_13_reset; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_13_io_in_a_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_13_io_in_a_Im; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_13_io_in_b_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_13_io_in_b_Im; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_13_io_out_s_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_13_io_out_s_Im; // @[FPComplex.scala 1203:28]
  wire  FPComplexMult_v2_12_14_clock; // @[FPComplex.scala 1203:28]
  wire  FPComplexMult_v2_12_14_reset; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_14_io_in_a_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_14_io_in_a_Im; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_14_io_in_b_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_14_io_in_b_Im; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_14_io_out_s_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_14_io_out_s_Im; // @[FPComplex.scala 1203:28]
  wire  FPComplexMult_v2_12_15_clock; // @[FPComplex.scala 1203:28]
  wire  FPComplexMult_v2_12_15_reset; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_15_io_in_a_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_15_io_in_a_Im; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_15_io_in_b_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_15_io_in_b_Im; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_15_io_out_s_Re; // @[FPComplex.scala 1203:28]
  wire [15:0] FPComplexMult_v2_12_15_io_out_s_Im; // @[FPComplex.scala 1203:28]
  wire  FPComplexAdder_v2_12_clock; // @[FPComplex.scala 1208:25]
  wire  FPComplexAdder_v2_12_reset; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_io_in_a_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_io_in_a_Im; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_io_in_b_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_io_in_b_Im; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_io_out_s_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_io_out_s_Im; // @[FPComplex.scala 1208:25]
  wire  FPComplexAdder_v2_12_1_clock; // @[FPComplex.scala 1208:25]
  wire  FPComplexAdder_v2_12_1_reset; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_1_io_in_a_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_1_io_in_a_Im; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_1_io_in_b_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_1_io_in_b_Im; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_1_io_out_s_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_1_io_out_s_Im; // @[FPComplex.scala 1208:25]
  wire  FPComplexAdder_v2_12_2_clock; // @[FPComplex.scala 1208:25]
  wire  FPComplexAdder_v2_12_2_reset; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_2_io_in_a_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_2_io_in_a_Im; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_2_io_in_b_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_2_io_in_b_Im; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_2_io_out_s_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_2_io_out_s_Im; // @[FPComplex.scala 1208:25]
  wire  FPComplexAdder_v2_12_3_clock; // @[FPComplex.scala 1208:25]
  wire  FPComplexAdder_v2_12_3_reset; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_3_io_in_a_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_3_io_in_a_Im; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_3_io_in_b_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_3_io_in_b_Im; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_3_io_out_s_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_3_io_out_s_Im; // @[FPComplex.scala 1208:25]
  wire  FPComplexAdder_v2_12_4_clock; // @[FPComplex.scala 1208:25]
  wire  FPComplexAdder_v2_12_4_reset; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_4_io_in_a_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_4_io_in_a_Im; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_4_io_in_b_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_4_io_in_b_Im; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_4_io_out_s_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_4_io_out_s_Im; // @[FPComplex.scala 1208:25]
  wire  FPComplexAdder_v2_12_5_clock; // @[FPComplex.scala 1208:25]
  wire  FPComplexAdder_v2_12_5_reset; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_5_io_in_a_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_5_io_in_a_Im; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_5_io_in_b_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_5_io_in_b_Im; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_5_io_out_s_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_5_io_out_s_Im; // @[FPComplex.scala 1208:25]
  wire  FPComplexAdder_v2_12_6_clock; // @[FPComplex.scala 1208:25]
  wire  FPComplexAdder_v2_12_6_reset; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_6_io_in_a_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_6_io_in_a_Im; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_6_io_in_b_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_6_io_in_b_Im; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_6_io_out_s_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_6_io_out_s_Im; // @[FPComplex.scala 1208:25]
  wire  FPComplexAdder_v2_12_7_clock; // @[FPComplex.scala 1208:25]
  wire  FPComplexAdder_v2_12_7_reset; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_7_io_in_a_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_7_io_in_a_Im; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_7_io_in_b_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_7_io_in_b_Im; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_7_io_out_s_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_7_io_out_s_Im; // @[FPComplex.scala 1208:25]
  wire  FPComplexAdder_v2_12_8_clock; // @[FPComplex.scala 1208:25]
  wire  FPComplexAdder_v2_12_8_reset; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_8_io_in_a_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_8_io_in_a_Im; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_8_io_in_b_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_8_io_in_b_Im; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_8_io_out_s_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_8_io_out_s_Im; // @[FPComplex.scala 1208:25]
  wire  FPComplexAdder_v2_12_9_clock; // @[FPComplex.scala 1208:25]
  wire  FPComplexAdder_v2_12_9_reset; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_9_io_in_a_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_9_io_in_a_Im; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_9_io_in_b_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_9_io_in_b_Im; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_9_io_out_s_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_9_io_out_s_Im; // @[FPComplex.scala 1208:25]
  wire  FPComplexAdder_v2_12_10_clock; // @[FPComplex.scala 1208:25]
  wire  FPComplexAdder_v2_12_10_reset; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_10_io_in_a_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_10_io_in_a_Im; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_10_io_in_b_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_10_io_in_b_Im; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_10_io_out_s_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_10_io_out_s_Im; // @[FPComplex.scala 1208:25]
  wire  FPComplexAdder_v2_12_11_clock; // @[FPComplex.scala 1208:25]
  wire  FPComplexAdder_v2_12_11_reset; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_11_io_in_a_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_11_io_in_a_Im; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_11_io_in_b_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_11_io_in_b_Im; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_11_io_out_s_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_11_io_out_s_Im; // @[FPComplex.scala 1208:25]
  wire  FPComplexAdder_v2_12_12_clock; // @[FPComplex.scala 1208:25]
  wire  FPComplexAdder_v2_12_12_reset; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_12_io_in_a_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_12_io_in_a_Im; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_12_io_in_b_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_12_io_in_b_Im; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_12_io_out_s_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_12_io_out_s_Im; // @[FPComplex.scala 1208:25]
  wire  FPComplexAdder_v2_12_13_clock; // @[FPComplex.scala 1208:25]
  wire  FPComplexAdder_v2_12_13_reset; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_13_io_in_a_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_13_io_in_a_Im; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_13_io_in_b_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_13_io_in_b_Im; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_13_io_out_s_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_13_io_out_s_Im; // @[FPComplex.scala 1208:25]
  wire  FPComplexAdder_v2_12_14_clock; // @[FPComplex.scala 1208:25]
  wire  FPComplexAdder_v2_12_14_reset; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_14_io_in_a_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_14_io_in_a_Im; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_14_io_in_b_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_14_io_in_b_Im; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_14_io_out_s_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_14_io_out_s_Im; // @[FPComplex.scala 1208:25]
  wire  FPComplexAdder_v2_12_15_clock; // @[FPComplex.scala 1208:25]
  wire  FPComplexAdder_v2_12_15_reset; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_15_io_in_a_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_15_io_in_a_Im; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_15_io_in_b_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_15_io_in_b_Im; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_15_io_out_s_Re; // @[FPComplex.scala 1208:25]
  wire [15:0] FPComplexAdder_v2_12_15_io_out_s_Im; // @[FPComplex.scala 1208:25]
  wire  FPReg_12_clock; // @[FPComplex.scala 1215:17]
  wire  FPReg_12_reset; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_io_in_Re; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_io_in_Im; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_io_out_Re; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_io_out_Im; // @[FPComplex.scala 1215:17]
  wire  FPReg_12_1_clock; // @[FPComplex.scala 1215:17]
  wire  FPReg_12_1_reset; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_1_io_in_Re; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_1_io_in_Im; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_1_io_out_Re; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_1_io_out_Im; // @[FPComplex.scala 1215:17]
  wire  FPReg_12_2_clock; // @[FPComplex.scala 1215:17]
  wire  FPReg_12_2_reset; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_2_io_in_Re; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_2_io_in_Im; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_2_io_out_Re; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_2_io_out_Im; // @[FPComplex.scala 1215:17]
  wire  FPReg_12_3_clock; // @[FPComplex.scala 1215:17]
  wire  FPReg_12_3_reset; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_3_io_in_Re; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_3_io_in_Im; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_3_io_out_Re; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_3_io_out_Im; // @[FPComplex.scala 1215:17]
  wire  FPReg_12_4_clock; // @[FPComplex.scala 1215:17]
  wire  FPReg_12_4_reset; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_4_io_in_Re; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_4_io_in_Im; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_4_io_out_Re; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_4_io_out_Im; // @[FPComplex.scala 1215:17]
  wire  FPReg_12_5_clock; // @[FPComplex.scala 1215:17]
  wire  FPReg_12_5_reset; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_5_io_in_Re; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_5_io_in_Im; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_5_io_out_Re; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_5_io_out_Im; // @[FPComplex.scala 1215:17]
  wire  FPReg_12_6_clock; // @[FPComplex.scala 1215:17]
  wire  FPReg_12_6_reset; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_6_io_in_Re; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_6_io_in_Im; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_6_io_out_Re; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_6_io_out_Im; // @[FPComplex.scala 1215:17]
  wire  FPReg_12_7_clock; // @[FPComplex.scala 1215:17]
  wire  FPReg_12_7_reset; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_7_io_in_Re; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_7_io_in_Im; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_7_io_out_Re; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_7_io_out_Im; // @[FPComplex.scala 1215:17]
  wire  FPReg_12_8_clock; // @[FPComplex.scala 1215:17]
  wire  FPReg_12_8_reset; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_8_io_in_Re; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_8_io_in_Im; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_8_io_out_Re; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_8_io_out_Im; // @[FPComplex.scala 1215:17]
  wire  FPReg_12_9_clock; // @[FPComplex.scala 1215:17]
  wire  FPReg_12_9_reset; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_9_io_in_Re; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_9_io_in_Im; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_9_io_out_Re; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_9_io_out_Im; // @[FPComplex.scala 1215:17]
  wire  FPReg_12_10_clock; // @[FPComplex.scala 1215:17]
  wire  FPReg_12_10_reset; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_10_io_in_Re; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_10_io_in_Im; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_10_io_out_Re; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_10_io_out_Im; // @[FPComplex.scala 1215:17]
  wire  FPReg_12_11_clock; // @[FPComplex.scala 1215:17]
  wire  FPReg_12_11_reset; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_11_io_in_Re; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_11_io_in_Im; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_11_io_out_Re; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_11_io_out_Im; // @[FPComplex.scala 1215:17]
  wire  FPReg_12_12_clock; // @[FPComplex.scala 1215:17]
  wire  FPReg_12_12_reset; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_12_io_in_Re; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_12_io_in_Im; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_12_io_out_Re; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_12_io_out_Im; // @[FPComplex.scala 1215:17]
  wire  FPReg_12_13_clock; // @[FPComplex.scala 1215:17]
  wire  FPReg_12_13_reset; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_13_io_in_Re; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_13_io_in_Im; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_13_io_out_Re; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_13_io_out_Im; // @[FPComplex.scala 1215:17]
  wire  FPReg_12_14_clock; // @[FPComplex.scala 1215:17]
  wire  FPReg_12_14_reset; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_14_io_in_Re; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_14_io_in_Im; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_14_io_out_Re; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_14_io_out_Im; // @[FPComplex.scala 1215:17]
  wire  FPReg_12_15_clock; // @[FPComplex.scala 1215:17]
  wire  FPReg_12_15_reset; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_15_io_in_Re; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_15_io_in_Im; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_15_io_out_Re; // @[FPComplex.scala 1215:17]
  wire [15:0] FPReg_12_15_io_out_Im; // @[FPComplex.scala 1215:17]
  FPComplexMult_v2_12 FPComplexMult_v2_12 ( // @[FPComplex.scala 1203:28]
    .clock(FPComplexMult_v2_12_clock),
    .reset(FPComplexMult_v2_12_reset),
    .io_in_a_Re(FPComplexMult_v2_12_io_in_a_Re),
    .io_in_a_Im(FPComplexMult_v2_12_io_in_a_Im),
    .io_in_b_Re(FPComplexMult_v2_12_io_in_b_Re),
    .io_in_b_Im(FPComplexMult_v2_12_io_in_b_Im),
    .io_out_s_Re(FPComplexMult_v2_12_io_out_s_Re),
    .io_out_s_Im(FPComplexMult_v2_12_io_out_s_Im)
  );
  FPComplexMult_v2_12 FPComplexMult_v2_12_1 ( // @[FPComplex.scala 1203:28]
    .clock(FPComplexMult_v2_12_1_clock),
    .reset(FPComplexMult_v2_12_1_reset),
    .io_in_a_Re(FPComplexMult_v2_12_1_io_in_a_Re),
    .io_in_a_Im(FPComplexMult_v2_12_1_io_in_a_Im),
    .io_in_b_Re(FPComplexMult_v2_12_1_io_in_b_Re),
    .io_in_b_Im(FPComplexMult_v2_12_1_io_in_b_Im),
    .io_out_s_Re(FPComplexMult_v2_12_1_io_out_s_Re),
    .io_out_s_Im(FPComplexMult_v2_12_1_io_out_s_Im)
  );
  FPComplexMult_v2_12 FPComplexMult_v2_12_2 ( // @[FPComplex.scala 1203:28]
    .clock(FPComplexMult_v2_12_2_clock),
    .reset(FPComplexMult_v2_12_2_reset),
    .io_in_a_Re(FPComplexMult_v2_12_2_io_in_a_Re),
    .io_in_a_Im(FPComplexMult_v2_12_2_io_in_a_Im),
    .io_in_b_Re(FPComplexMult_v2_12_2_io_in_b_Re),
    .io_in_b_Im(FPComplexMult_v2_12_2_io_in_b_Im),
    .io_out_s_Re(FPComplexMult_v2_12_2_io_out_s_Re),
    .io_out_s_Im(FPComplexMult_v2_12_2_io_out_s_Im)
  );
  FPComplexMult_v2_12 FPComplexMult_v2_12_3 ( // @[FPComplex.scala 1203:28]
    .clock(FPComplexMult_v2_12_3_clock),
    .reset(FPComplexMult_v2_12_3_reset),
    .io_in_a_Re(FPComplexMult_v2_12_3_io_in_a_Re),
    .io_in_a_Im(FPComplexMult_v2_12_3_io_in_a_Im),
    .io_in_b_Re(FPComplexMult_v2_12_3_io_in_b_Re),
    .io_in_b_Im(FPComplexMult_v2_12_3_io_in_b_Im),
    .io_out_s_Re(FPComplexMult_v2_12_3_io_out_s_Re),
    .io_out_s_Im(FPComplexMult_v2_12_3_io_out_s_Im)
  );
  FPComplexMult_v2_12 FPComplexMult_v2_12_4 ( // @[FPComplex.scala 1203:28]
    .clock(FPComplexMult_v2_12_4_clock),
    .reset(FPComplexMult_v2_12_4_reset),
    .io_in_a_Re(FPComplexMult_v2_12_4_io_in_a_Re),
    .io_in_a_Im(FPComplexMult_v2_12_4_io_in_a_Im),
    .io_in_b_Re(FPComplexMult_v2_12_4_io_in_b_Re),
    .io_in_b_Im(FPComplexMult_v2_12_4_io_in_b_Im),
    .io_out_s_Re(FPComplexMult_v2_12_4_io_out_s_Re),
    .io_out_s_Im(FPComplexMult_v2_12_4_io_out_s_Im)
  );
  FPComplexMult_v2_12 FPComplexMult_v2_12_5 ( // @[FPComplex.scala 1203:28]
    .clock(FPComplexMult_v2_12_5_clock),
    .reset(FPComplexMult_v2_12_5_reset),
    .io_in_a_Re(FPComplexMult_v2_12_5_io_in_a_Re),
    .io_in_a_Im(FPComplexMult_v2_12_5_io_in_a_Im),
    .io_in_b_Re(FPComplexMult_v2_12_5_io_in_b_Re),
    .io_in_b_Im(FPComplexMult_v2_12_5_io_in_b_Im),
    .io_out_s_Re(FPComplexMult_v2_12_5_io_out_s_Re),
    .io_out_s_Im(FPComplexMult_v2_12_5_io_out_s_Im)
  );
  FPComplexMult_v2_12 FPComplexMult_v2_12_6 ( // @[FPComplex.scala 1203:28]
    .clock(FPComplexMult_v2_12_6_clock),
    .reset(FPComplexMult_v2_12_6_reset),
    .io_in_a_Re(FPComplexMult_v2_12_6_io_in_a_Re),
    .io_in_a_Im(FPComplexMult_v2_12_6_io_in_a_Im),
    .io_in_b_Re(FPComplexMult_v2_12_6_io_in_b_Re),
    .io_in_b_Im(FPComplexMult_v2_12_6_io_in_b_Im),
    .io_out_s_Re(FPComplexMult_v2_12_6_io_out_s_Re),
    .io_out_s_Im(FPComplexMult_v2_12_6_io_out_s_Im)
  );
  FPComplexMult_v2_12 FPComplexMult_v2_12_7 ( // @[FPComplex.scala 1203:28]
    .clock(FPComplexMult_v2_12_7_clock),
    .reset(FPComplexMult_v2_12_7_reset),
    .io_in_a_Re(FPComplexMult_v2_12_7_io_in_a_Re),
    .io_in_a_Im(FPComplexMult_v2_12_7_io_in_a_Im),
    .io_in_b_Re(FPComplexMult_v2_12_7_io_in_b_Re),
    .io_in_b_Im(FPComplexMult_v2_12_7_io_in_b_Im),
    .io_out_s_Re(FPComplexMult_v2_12_7_io_out_s_Re),
    .io_out_s_Im(FPComplexMult_v2_12_7_io_out_s_Im)
  );
  FPComplexMult_v2_12 FPComplexMult_v2_12_8 ( // @[FPComplex.scala 1203:28]
    .clock(FPComplexMult_v2_12_8_clock),
    .reset(FPComplexMult_v2_12_8_reset),
    .io_in_a_Re(FPComplexMult_v2_12_8_io_in_a_Re),
    .io_in_a_Im(FPComplexMult_v2_12_8_io_in_a_Im),
    .io_in_b_Re(FPComplexMult_v2_12_8_io_in_b_Re),
    .io_in_b_Im(FPComplexMult_v2_12_8_io_in_b_Im),
    .io_out_s_Re(FPComplexMult_v2_12_8_io_out_s_Re),
    .io_out_s_Im(FPComplexMult_v2_12_8_io_out_s_Im)
  );
  FPComplexMult_v2_12 FPComplexMult_v2_12_9 ( // @[FPComplex.scala 1203:28]
    .clock(FPComplexMult_v2_12_9_clock),
    .reset(FPComplexMult_v2_12_9_reset),
    .io_in_a_Re(FPComplexMult_v2_12_9_io_in_a_Re),
    .io_in_a_Im(FPComplexMult_v2_12_9_io_in_a_Im),
    .io_in_b_Re(FPComplexMult_v2_12_9_io_in_b_Re),
    .io_in_b_Im(FPComplexMult_v2_12_9_io_in_b_Im),
    .io_out_s_Re(FPComplexMult_v2_12_9_io_out_s_Re),
    .io_out_s_Im(FPComplexMult_v2_12_9_io_out_s_Im)
  );
  FPComplexMult_v2_12 FPComplexMult_v2_12_10 ( // @[FPComplex.scala 1203:28]
    .clock(FPComplexMult_v2_12_10_clock),
    .reset(FPComplexMult_v2_12_10_reset),
    .io_in_a_Re(FPComplexMult_v2_12_10_io_in_a_Re),
    .io_in_a_Im(FPComplexMult_v2_12_10_io_in_a_Im),
    .io_in_b_Re(FPComplexMult_v2_12_10_io_in_b_Re),
    .io_in_b_Im(FPComplexMult_v2_12_10_io_in_b_Im),
    .io_out_s_Re(FPComplexMult_v2_12_10_io_out_s_Re),
    .io_out_s_Im(FPComplexMult_v2_12_10_io_out_s_Im)
  );
  FPComplexMult_v2_12 FPComplexMult_v2_12_11 ( // @[FPComplex.scala 1203:28]
    .clock(FPComplexMult_v2_12_11_clock),
    .reset(FPComplexMult_v2_12_11_reset),
    .io_in_a_Re(FPComplexMult_v2_12_11_io_in_a_Re),
    .io_in_a_Im(FPComplexMult_v2_12_11_io_in_a_Im),
    .io_in_b_Re(FPComplexMult_v2_12_11_io_in_b_Re),
    .io_in_b_Im(FPComplexMult_v2_12_11_io_in_b_Im),
    .io_out_s_Re(FPComplexMult_v2_12_11_io_out_s_Re),
    .io_out_s_Im(FPComplexMult_v2_12_11_io_out_s_Im)
  );
  FPComplexMult_v2_12 FPComplexMult_v2_12_12 ( // @[FPComplex.scala 1203:28]
    .clock(FPComplexMult_v2_12_12_clock),
    .reset(FPComplexMult_v2_12_12_reset),
    .io_in_a_Re(FPComplexMult_v2_12_12_io_in_a_Re),
    .io_in_a_Im(FPComplexMult_v2_12_12_io_in_a_Im),
    .io_in_b_Re(FPComplexMult_v2_12_12_io_in_b_Re),
    .io_in_b_Im(FPComplexMult_v2_12_12_io_in_b_Im),
    .io_out_s_Re(FPComplexMult_v2_12_12_io_out_s_Re),
    .io_out_s_Im(FPComplexMult_v2_12_12_io_out_s_Im)
  );
  FPComplexMult_v2_12 FPComplexMult_v2_12_13 ( // @[FPComplex.scala 1203:28]
    .clock(FPComplexMult_v2_12_13_clock),
    .reset(FPComplexMult_v2_12_13_reset),
    .io_in_a_Re(FPComplexMult_v2_12_13_io_in_a_Re),
    .io_in_a_Im(FPComplexMult_v2_12_13_io_in_a_Im),
    .io_in_b_Re(FPComplexMult_v2_12_13_io_in_b_Re),
    .io_in_b_Im(FPComplexMult_v2_12_13_io_in_b_Im),
    .io_out_s_Re(FPComplexMult_v2_12_13_io_out_s_Re),
    .io_out_s_Im(FPComplexMult_v2_12_13_io_out_s_Im)
  );
  FPComplexMult_v2_12 FPComplexMult_v2_12_14 ( // @[FPComplex.scala 1203:28]
    .clock(FPComplexMult_v2_12_14_clock),
    .reset(FPComplexMult_v2_12_14_reset),
    .io_in_a_Re(FPComplexMult_v2_12_14_io_in_a_Re),
    .io_in_a_Im(FPComplexMult_v2_12_14_io_in_a_Im),
    .io_in_b_Re(FPComplexMult_v2_12_14_io_in_b_Re),
    .io_in_b_Im(FPComplexMult_v2_12_14_io_in_b_Im),
    .io_out_s_Re(FPComplexMult_v2_12_14_io_out_s_Re),
    .io_out_s_Im(FPComplexMult_v2_12_14_io_out_s_Im)
  );
  FPComplexMult_v2_12 FPComplexMult_v2_12_15 ( // @[FPComplex.scala 1203:28]
    .clock(FPComplexMult_v2_12_15_clock),
    .reset(FPComplexMult_v2_12_15_reset),
    .io_in_a_Re(FPComplexMult_v2_12_15_io_in_a_Re),
    .io_in_a_Im(FPComplexMult_v2_12_15_io_in_a_Im),
    .io_in_b_Re(FPComplexMult_v2_12_15_io_in_b_Re),
    .io_in_b_Im(FPComplexMult_v2_12_15_io_in_b_Im),
    .io_out_s_Re(FPComplexMult_v2_12_15_io_out_s_Re),
    .io_out_s_Im(FPComplexMult_v2_12_15_io_out_s_Im)
  );
  FPComplexAdder_v2_12 FPComplexAdder_v2_12 ( // @[FPComplex.scala 1208:25]
    .clock(FPComplexAdder_v2_12_clock),
    .reset(FPComplexAdder_v2_12_reset),
    .io_in_a_Re(FPComplexAdder_v2_12_io_in_a_Re),
    .io_in_a_Im(FPComplexAdder_v2_12_io_in_a_Im),
    .io_in_b_Re(FPComplexAdder_v2_12_io_in_b_Re),
    .io_in_b_Im(FPComplexAdder_v2_12_io_in_b_Im),
    .io_out_s_Re(FPComplexAdder_v2_12_io_out_s_Re),
    .io_out_s_Im(FPComplexAdder_v2_12_io_out_s_Im)
  );
  FPComplexAdder_v2_12 FPComplexAdder_v2_12_1 ( // @[FPComplex.scala 1208:25]
    .clock(FPComplexAdder_v2_12_1_clock),
    .reset(FPComplexAdder_v2_12_1_reset),
    .io_in_a_Re(FPComplexAdder_v2_12_1_io_in_a_Re),
    .io_in_a_Im(FPComplexAdder_v2_12_1_io_in_a_Im),
    .io_in_b_Re(FPComplexAdder_v2_12_1_io_in_b_Re),
    .io_in_b_Im(FPComplexAdder_v2_12_1_io_in_b_Im),
    .io_out_s_Re(FPComplexAdder_v2_12_1_io_out_s_Re),
    .io_out_s_Im(FPComplexAdder_v2_12_1_io_out_s_Im)
  );
  FPComplexAdder_v2_12 FPComplexAdder_v2_12_2 ( // @[FPComplex.scala 1208:25]
    .clock(FPComplexAdder_v2_12_2_clock),
    .reset(FPComplexAdder_v2_12_2_reset),
    .io_in_a_Re(FPComplexAdder_v2_12_2_io_in_a_Re),
    .io_in_a_Im(FPComplexAdder_v2_12_2_io_in_a_Im),
    .io_in_b_Re(FPComplexAdder_v2_12_2_io_in_b_Re),
    .io_in_b_Im(FPComplexAdder_v2_12_2_io_in_b_Im),
    .io_out_s_Re(FPComplexAdder_v2_12_2_io_out_s_Re),
    .io_out_s_Im(FPComplexAdder_v2_12_2_io_out_s_Im)
  );
  FPComplexAdder_v2_12 FPComplexAdder_v2_12_3 ( // @[FPComplex.scala 1208:25]
    .clock(FPComplexAdder_v2_12_3_clock),
    .reset(FPComplexAdder_v2_12_3_reset),
    .io_in_a_Re(FPComplexAdder_v2_12_3_io_in_a_Re),
    .io_in_a_Im(FPComplexAdder_v2_12_3_io_in_a_Im),
    .io_in_b_Re(FPComplexAdder_v2_12_3_io_in_b_Re),
    .io_in_b_Im(FPComplexAdder_v2_12_3_io_in_b_Im),
    .io_out_s_Re(FPComplexAdder_v2_12_3_io_out_s_Re),
    .io_out_s_Im(FPComplexAdder_v2_12_3_io_out_s_Im)
  );
  FPComplexAdder_v2_12 FPComplexAdder_v2_12_4 ( // @[FPComplex.scala 1208:25]
    .clock(FPComplexAdder_v2_12_4_clock),
    .reset(FPComplexAdder_v2_12_4_reset),
    .io_in_a_Re(FPComplexAdder_v2_12_4_io_in_a_Re),
    .io_in_a_Im(FPComplexAdder_v2_12_4_io_in_a_Im),
    .io_in_b_Re(FPComplexAdder_v2_12_4_io_in_b_Re),
    .io_in_b_Im(FPComplexAdder_v2_12_4_io_in_b_Im),
    .io_out_s_Re(FPComplexAdder_v2_12_4_io_out_s_Re),
    .io_out_s_Im(FPComplexAdder_v2_12_4_io_out_s_Im)
  );
  FPComplexAdder_v2_12 FPComplexAdder_v2_12_5 ( // @[FPComplex.scala 1208:25]
    .clock(FPComplexAdder_v2_12_5_clock),
    .reset(FPComplexAdder_v2_12_5_reset),
    .io_in_a_Re(FPComplexAdder_v2_12_5_io_in_a_Re),
    .io_in_a_Im(FPComplexAdder_v2_12_5_io_in_a_Im),
    .io_in_b_Re(FPComplexAdder_v2_12_5_io_in_b_Re),
    .io_in_b_Im(FPComplexAdder_v2_12_5_io_in_b_Im),
    .io_out_s_Re(FPComplexAdder_v2_12_5_io_out_s_Re),
    .io_out_s_Im(FPComplexAdder_v2_12_5_io_out_s_Im)
  );
  FPComplexAdder_v2_12 FPComplexAdder_v2_12_6 ( // @[FPComplex.scala 1208:25]
    .clock(FPComplexAdder_v2_12_6_clock),
    .reset(FPComplexAdder_v2_12_6_reset),
    .io_in_a_Re(FPComplexAdder_v2_12_6_io_in_a_Re),
    .io_in_a_Im(FPComplexAdder_v2_12_6_io_in_a_Im),
    .io_in_b_Re(FPComplexAdder_v2_12_6_io_in_b_Re),
    .io_in_b_Im(FPComplexAdder_v2_12_6_io_in_b_Im),
    .io_out_s_Re(FPComplexAdder_v2_12_6_io_out_s_Re),
    .io_out_s_Im(FPComplexAdder_v2_12_6_io_out_s_Im)
  );
  FPComplexAdder_v2_12 FPComplexAdder_v2_12_7 ( // @[FPComplex.scala 1208:25]
    .clock(FPComplexAdder_v2_12_7_clock),
    .reset(FPComplexAdder_v2_12_7_reset),
    .io_in_a_Re(FPComplexAdder_v2_12_7_io_in_a_Re),
    .io_in_a_Im(FPComplexAdder_v2_12_7_io_in_a_Im),
    .io_in_b_Re(FPComplexAdder_v2_12_7_io_in_b_Re),
    .io_in_b_Im(FPComplexAdder_v2_12_7_io_in_b_Im),
    .io_out_s_Re(FPComplexAdder_v2_12_7_io_out_s_Re),
    .io_out_s_Im(FPComplexAdder_v2_12_7_io_out_s_Im)
  );
  FPComplexAdder_v2_12 FPComplexAdder_v2_12_8 ( // @[FPComplex.scala 1208:25]
    .clock(FPComplexAdder_v2_12_8_clock),
    .reset(FPComplexAdder_v2_12_8_reset),
    .io_in_a_Re(FPComplexAdder_v2_12_8_io_in_a_Re),
    .io_in_a_Im(FPComplexAdder_v2_12_8_io_in_a_Im),
    .io_in_b_Re(FPComplexAdder_v2_12_8_io_in_b_Re),
    .io_in_b_Im(FPComplexAdder_v2_12_8_io_in_b_Im),
    .io_out_s_Re(FPComplexAdder_v2_12_8_io_out_s_Re),
    .io_out_s_Im(FPComplexAdder_v2_12_8_io_out_s_Im)
  );
  FPComplexAdder_v2_12 FPComplexAdder_v2_12_9 ( // @[FPComplex.scala 1208:25]
    .clock(FPComplexAdder_v2_12_9_clock),
    .reset(FPComplexAdder_v2_12_9_reset),
    .io_in_a_Re(FPComplexAdder_v2_12_9_io_in_a_Re),
    .io_in_a_Im(FPComplexAdder_v2_12_9_io_in_a_Im),
    .io_in_b_Re(FPComplexAdder_v2_12_9_io_in_b_Re),
    .io_in_b_Im(FPComplexAdder_v2_12_9_io_in_b_Im),
    .io_out_s_Re(FPComplexAdder_v2_12_9_io_out_s_Re),
    .io_out_s_Im(FPComplexAdder_v2_12_9_io_out_s_Im)
  );
  FPComplexAdder_v2_12 FPComplexAdder_v2_12_10 ( // @[FPComplex.scala 1208:25]
    .clock(FPComplexAdder_v2_12_10_clock),
    .reset(FPComplexAdder_v2_12_10_reset),
    .io_in_a_Re(FPComplexAdder_v2_12_10_io_in_a_Re),
    .io_in_a_Im(FPComplexAdder_v2_12_10_io_in_a_Im),
    .io_in_b_Re(FPComplexAdder_v2_12_10_io_in_b_Re),
    .io_in_b_Im(FPComplexAdder_v2_12_10_io_in_b_Im),
    .io_out_s_Re(FPComplexAdder_v2_12_10_io_out_s_Re),
    .io_out_s_Im(FPComplexAdder_v2_12_10_io_out_s_Im)
  );
  FPComplexAdder_v2_12 FPComplexAdder_v2_12_11 ( // @[FPComplex.scala 1208:25]
    .clock(FPComplexAdder_v2_12_11_clock),
    .reset(FPComplexAdder_v2_12_11_reset),
    .io_in_a_Re(FPComplexAdder_v2_12_11_io_in_a_Re),
    .io_in_a_Im(FPComplexAdder_v2_12_11_io_in_a_Im),
    .io_in_b_Re(FPComplexAdder_v2_12_11_io_in_b_Re),
    .io_in_b_Im(FPComplexAdder_v2_12_11_io_in_b_Im),
    .io_out_s_Re(FPComplexAdder_v2_12_11_io_out_s_Re),
    .io_out_s_Im(FPComplexAdder_v2_12_11_io_out_s_Im)
  );
  FPComplexAdder_v2_12 FPComplexAdder_v2_12_12 ( // @[FPComplex.scala 1208:25]
    .clock(FPComplexAdder_v2_12_12_clock),
    .reset(FPComplexAdder_v2_12_12_reset),
    .io_in_a_Re(FPComplexAdder_v2_12_12_io_in_a_Re),
    .io_in_a_Im(FPComplexAdder_v2_12_12_io_in_a_Im),
    .io_in_b_Re(FPComplexAdder_v2_12_12_io_in_b_Re),
    .io_in_b_Im(FPComplexAdder_v2_12_12_io_in_b_Im),
    .io_out_s_Re(FPComplexAdder_v2_12_12_io_out_s_Re),
    .io_out_s_Im(FPComplexAdder_v2_12_12_io_out_s_Im)
  );
  FPComplexAdder_v2_12 FPComplexAdder_v2_12_13 ( // @[FPComplex.scala 1208:25]
    .clock(FPComplexAdder_v2_12_13_clock),
    .reset(FPComplexAdder_v2_12_13_reset),
    .io_in_a_Re(FPComplexAdder_v2_12_13_io_in_a_Re),
    .io_in_a_Im(FPComplexAdder_v2_12_13_io_in_a_Im),
    .io_in_b_Re(FPComplexAdder_v2_12_13_io_in_b_Re),
    .io_in_b_Im(FPComplexAdder_v2_12_13_io_in_b_Im),
    .io_out_s_Re(FPComplexAdder_v2_12_13_io_out_s_Re),
    .io_out_s_Im(FPComplexAdder_v2_12_13_io_out_s_Im)
  );
  FPComplexAdder_v2_12 FPComplexAdder_v2_12_14 ( // @[FPComplex.scala 1208:25]
    .clock(FPComplexAdder_v2_12_14_clock),
    .reset(FPComplexAdder_v2_12_14_reset),
    .io_in_a_Re(FPComplexAdder_v2_12_14_io_in_a_Re),
    .io_in_a_Im(FPComplexAdder_v2_12_14_io_in_a_Im),
    .io_in_b_Re(FPComplexAdder_v2_12_14_io_in_b_Re),
    .io_in_b_Im(FPComplexAdder_v2_12_14_io_in_b_Im),
    .io_out_s_Re(FPComplexAdder_v2_12_14_io_out_s_Re),
    .io_out_s_Im(FPComplexAdder_v2_12_14_io_out_s_Im)
  );
  FPComplexAdder_v2_12 FPComplexAdder_v2_12_15 ( // @[FPComplex.scala 1208:25]
    .clock(FPComplexAdder_v2_12_15_clock),
    .reset(FPComplexAdder_v2_12_15_reset),
    .io_in_a_Re(FPComplexAdder_v2_12_15_io_in_a_Re),
    .io_in_a_Im(FPComplexAdder_v2_12_15_io_in_a_Im),
    .io_in_b_Re(FPComplexAdder_v2_12_15_io_in_b_Re),
    .io_in_b_Im(FPComplexAdder_v2_12_15_io_in_b_Im),
    .io_out_s_Re(FPComplexAdder_v2_12_15_io_out_s_Re),
    .io_out_s_Im(FPComplexAdder_v2_12_15_io_out_s_Im)
  );
  FPReg_12 FPReg_12 ( // @[FPComplex.scala 1215:17]
    .clock(FPReg_12_clock),
    .reset(FPReg_12_reset),
    .io_in_Re(FPReg_12_io_in_Re),
    .io_in_Im(FPReg_12_io_in_Im),
    .io_out_Re(FPReg_12_io_out_Re),
    .io_out_Im(FPReg_12_io_out_Im)
  );
  FPReg_12 FPReg_12_1 ( // @[FPComplex.scala 1215:17]
    .clock(FPReg_12_1_clock),
    .reset(FPReg_12_1_reset),
    .io_in_Re(FPReg_12_1_io_in_Re),
    .io_in_Im(FPReg_12_1_io_in_Im),
    .io_out_Re(FPReg_12_1_io_out_Re),
    .io_out_Im(FPReg_12_1_io_out_Im)
  );
  FPReg_12 FPReg_12_2 ( // @[FPComplex.scala 1215:17]
    .clock(FPReg_12_2_clock),
    .reset(FPReg_12_2_reset),
    .io_in_Re(FPReg_12_2_io_in_Re),
    .io_in_Im(FPReg_12_2_io_in_Im),
    .io_out_Re(FPReg_12_2_io_out_Re),
    .io_out_Im(FPReg_12_2_io_out_Im)
  );
  FPReg_12 FPReg_12_3 ( // @[FPComplex.scala 1215:17]
    .clock(FPReg_12_3_clock),
    .reset(FPReg_12_3_reset),
    .io_in_Re(FPReg_12_3_io_in_Re),
    .io_in_Im(FPReg_12_3_io_in_Im),
    .io_out_Re(FPReg_12_3_io_out_Re),
    .io_out_Im(FPReg_12_3_io_out_Im)
  );
  FPReg_12 FPReg_12_4 ( // @[FPComplex.scala 1215:17]
    .clock(FPReg_12_4_clock),
    .reset(FPReg_12_4_reset),
    .io_in_Re(FPReg_12_4_io_in_Re),
    .io_in_Im(FPReg_12_4_io_in_Im),
    .io_out_Re(FPReg_12_4_io_out_Re),
    .io_out_Im(FPReg_12_4_io_out_Im)
  );
  FPReg_12 FPReg_12_5 ( // @[FPComplex.scala 1215:17]
    .clock(FPReg_12_5_clock),
    .reset(FPReg_12_5_reset),
    .io_in_Re(FPReg_12_5_io_in_Re),
    .io_in_Im(FPReg_12_5_io_in_Im),
    .io_out_Re(FPReg_12_5_io_out_Re),
    .io_out_Im(FPReg_12_5_io_out_Im)
  );
  FPReg_12 FPReg_12_6 ( // @[FPComplex.scala 1215:17]
    .clock(FPReg_12_6_clock),
    .reset(FPReg_12_6_reset),
    .io_in_Re(FPReg_12_6_io_in_Re),
    .io_in_Im(FPReg_12_6_io_in_Im),
    .io_out_Re(FPReg_12_6_io_out_Re),
    .io_out_Im(FPReg_12_6_io_out_Im)
  );
  FPReg_12 FPReg_12_7 ( // @[FPComplex.scala 1215:17]
    .clock(FPReg_12_7_clock),
    .reset(FPReg_12_7_reset),
    .io_in_Re(FPReg_12_7_io_in_Re),
    .io_in_Im(FPReg_12_7_io_in_Im),
    .io_out_Re(FPReg_12_7_io_out_Re),
    .io_out_Im(FPReg_12_7_io_out_Im)
  );
  FPReg_12 FPReg_12_8 ( // @[FPComplex.scala 1215:17]
    .clock(FPReg_12_8_clock),
    .reset(FPReg_12_8_reset),
    .io_in_Re(FPReg_12_8_io_in_Re),
    .io_in_Im(FPReg_12_8_io_in_Im),
    .io_out_Re(FPReg_12_8_io_out_Re),
    .io_out_Im(FPReg_12_8_io_out_Im)
  );
  FPReg_12 FPReg_12_9 ( // @[FPComplex.scala 1215:17]
    .clock(FPReg_12_9_clock),
    .reset(FPReg_12_9_reset),
    .io_in_Re(FPReg_12_9_io_in_Re),
    .io_in_Im(FPReg_12_9_io_in_Im),
    .io_out_Re(FPReg_12_9_io_out_Re),
    .io_out_Im(FPReg_12_9_io_out_Im)
  );
  FPReg_12 FPReg_12_10 ( // @[FPComplex.scala 1215:17]
    .clock(FPReg_12_10_clock),
    .reset(FPReg_12_10_reset),
    .io_in_Re(FPReg_12_10_io_in_Re),
    .io_in_Im(FPReg_12_10_io_in_Im),
    .io_out_Re(FPReg_12_10_io_out_Re),
    .io_out_Im(FPReg_12_10_io_out_Im)
  );
  FPReg_12 FPReg_12_11 ( // @[FPComplex.scala 1215:17]
    .clock(FPReg_12_11_clock),
    .reset(FPReg_12_11_reset),
    .io_in_Re(FPReg_12_11_io_in_Re),
    .io_in_Im(FPReg_12_11_io_in_Im),
    .io_out_Re(FPReg_12_11_io_out_Re),
    .io_out_Im(FPReg_12_11_io_out_Im)
  );
  FPReg_12 FPReg_12_12 ( // @[FPComplex.scala 1215:17]
    .clock(FPReg_12_12_clock),
    .reset(FPReg_12_12_reset),
    .io_in_Re(FPReg_12_12_io_in_Re),
    .io_in_Im(FPReg_12_12_io_in_Im),
    .io_out_Re(FPReg_12_12_io_out_Re),
    .io_out_Im(FPReg_12_12_io_out_Im)
  );
  FPReg_12 FPReg_12_13 ( // @[FPComplex.scala 1215:17]
    .clock(FPReg_12_13_clock),
    .reset(FPReg_12_13_reset),
    .io_in_Re(FPReg_12_13_io_in_Re),
    .io_in_Im(FPReg_12_13_io_in_Im),
    .io_out_Re(FPReg_12_13_io_out_Re),
    .io_out_Im(FPReg_12_13_io_out_Im)
  );
  FPReg_12 FPReg_12_14 ( // @[FPComplex.scala 1215:17]
    .clock(FPReg_12_14_clock),
    .reset(FPReg_12_14_reset),
    .io_in_Re(FPReg_12_14_io_in_Re),
    .io_in_Im(FPReg_12_14_io_in_Im),
    .io_out_Re(FPReg_12_14_io_out_Re),
    .io_out_Im(FPReg_12_14_io_out_Im)
  );
  FPReg_12 FPReg_12_15 ( // @[FPComplex.scala 1215:17]
    .clock(FPReg_12_15_clock),
    .reset(FPReg_12_15_reset),
    .io_in_Re(FPReg_12_15_io_in_Re),
    .io_in_Im(FPReg_12_15_io_in_Im),
    .io_out_Re(FPReg_12_15_io_out_Re),
    .io_out_Im(FPReg_12_15_io_out_Im)
  );
  assign io_out_s_0_Re = FPComplexAdder_v2_12_io_out_s_Re; // @[FPComplex.scala 1224:19]
  assign io_out_s_0_Im = FPComplexAdder_v2_12_io_out_s_Im; // @[FPComplex.scala 1224:19]
  assign io_out_s_1_Re = FPComplexAdder_v2_12_1_io_out_s_Re; // @[FPComplex.scala 1224:19]
  assign io_out_s_1_Im = FPComplexAdder_v2_12_1_io_out_s_Im; // @[FPComplex.scala 1224:19]
  assign io_out_s_2_Re = FPComplexAdder_v2_12_2_io_out_s_Re; // @[FPComplex.scala 1224:19]
  assign io_out_s_2_Im = FPComplexAdder_v2_12_2_io_out_s_Im; // @[FPComplex.scala 1224:19]
  assign io_out_s_3_Re = FPComplexAdder_v2_12_3_io_out_s_Re; // @[FPComplex.scala 1224:19]
  assign io_out_s_3_Im = FPComplexAdder_v2_12_3_io_out_s_Im; // @[FPComplex.scala 1224:19]
  assign io_out_s_4_Re = FPComplexAdder_v2_12_4_io_out_s_Re; // @[FPComplex.scala 1224:19]
  assign io_out_s_4_Im = FPComplexAdder_v2_12_4_io_out_s_Im; // @[FPComplex.scala 1224:19]
  assign io_out_s_5_Re = FPComplexAdder_v2_12_5_io_out_s_Re; // @[FPComplex.scala 1224:19]
  assign io_out_s_5_Im = FPComplexAdder_v2_12_5_io_out_s_Im; // @[FPComplex.scala 1224:19]
  assign io_out_s_6_Re = FPComplexAdder_v2_12_6_io_out_s_Re; // @[FPComplex.scala 1224:19]
  assign io_out_s_6_Im = FPComplexAdder_v2_12_6_io_out_s_Im; // @[FPComplex.scala 1224:19]
  assign io_out_s_7_Re = FPComplexAdder_v2_12_7_io_out_s_Re; // @[FPComplex.scala 1224:19]
  assign io_out_s_7_Im = FPComplexAdder_v2_12_7_io_out_s_Im; // @[FPComplex.scala 1224:19]
  assign io_out_s_8_Re = FPComplexAdder_v2_12_8_io_out_s_Re; // @[FPComplex.scala 1224:19]
  assign io_out_s_8_Im = FPComplexAdder_v2_12_8_io_out_s_Im; // @[FPComplex.scala 1224:19]
  assign io_out_s_9_Re = FPComplexAdder_v2_12_9_io_out_s_Re; // @[FPComplex.scala 1224:19]
  assign io_out_s_9_Im = FPComplexAdder_v2_12_9_io_out_s_Im; // @[FPComplex.scala 1224:19]
  assign io_out_s_10_Re = FPComplexAdder_v2_12_10_io_out_s_Re; // @[FPComplex.scala 1224:19]
  assign io_out_s_10_Im = FPComplexAdder_v2_12_10_io_out_s_Im; // @[FPComplex.scala 1224:19]
  assign io_out_s_11_Re = FPComplexAdder_v2_12_11_io_out_s_Re; // @[FPComplex.scala 1224:19]
  assign io_out_s_11_Im = FPComplexAdder_v2_12_11_io_out_s_Im; // @[FPComplex.scala 1224:19]
  assign io_out_s_12_Re = FPComplexAdder_v2_12_12_io_out_s_Re; // @[FPComplex.scala 1224:19]
  assign io_out_s_12_Im = FPComplexAdder_v2_12_12_io_out_s_Im; // @[FPComplex.scala 1224:19]
  assign io_out_s_13_Re = FPComplexAdder_v2_12_13_io_out_s_Re; // @[FPComplex.scala 1224:19]
  assign io_out_s_13_Im = FPComplexAdder_v2_12_13_io_out_s_Im; // @[FPComplex.scala 1224:19]
  assign io_out_s_14_Re = FPComplexAdder_v2_12_14_io_out_s_Re; // @[FPComplex.scala 1224:19]
  assign io_out_s_14_Im = FPComplexAdder_v2_12_14_io_out_s_Im; // @[FPComplex.scala 1224:19]
  assign io_out_s_15_Re = FPComplexAdder_v2_12_15_io_out_s_Re; // @[FPComplex.scala 1224:19]
  assign io_out_s_15_Im = FPComplexAdder_v2_12_15_io_out_s_Im; // @[FPComplex.scala 1224:19]
  assign FPComplexMult_v2_12_clock = clock;
  assign FPComplexMult_v2_12_reset = reset;
  assign FPComplexMult_v2_12_io_in_a_Re = io_in_a_Re; // @[FPComplex.scala 1219:30]
  assign FPComplexMult_v2_12_io_in_a_Im = io_in_a_Im; // @[FPComplex.scala 1219:30]
  assign FPComplexMult_v2_12_io_in_b_Re = io_in_b_0_Re; // @[FPComplex.scala 1220:30]
  assign FPComplexMult_v2_12_io_in_b_Im = io_in_b_0_Im; // @[FPComplex.scala 1220:30]
  assign FPComplexMult_v2_12_1_clock = clock;
  assign FPComplexMult_v2_12_1_reset = reset;
  assign FPComplexMult_v2_12_1_io_in_a_Re = io_in_a_Re; // @[FPComplex.scala 1219:30]
  assign FPComplexMult_v2_12_1_io_in_a_Im = io_in_a_Im; // @[FPComplex.scala 1219:30]
  assign FPComplexMult_v2_12_1_io_in_b_Re = io_in_b_1_Re; // @[FPComplex.scala 1220:30]
  assign FPComplexMult_v2_12_1_io_in_b_Im = io_in_b_1_Im; // @[FPComplex.scala 1220:30]
  assign FPComplexMult_v2_12_2_clock = clock;
  assign FPComplexMult_v2_12_2_reset = reset;
  assign FPComplexMult_v2_12_2_io_in_a_Re = io_in_a_Re; // @[FPComplex.scala 1219:30]
  assign FPComplexMult_v2_12_2_io_in_a_Im = io_in_a_Im; // @[FPComplex.scala 1219:30]
  assign FPComplexMult_v2_12_2_io_in_b_Re = io_in_b_2_Re; // @[FPComplex.scala 1220:30]
  assign FPComplexMult_v2_12_2_io_in_b_Im = io_in_b_2_Im; // @[FPComplex.scala 1220:30]
  assign FPComplexMult_v2_12_3_clock = clock;
  assign FPComplexMult_v2_12_3_reset = reset;
  assign FPComplexMult_v2_12_3_io_in_a_Re = io_in_a_Re; // @[FPComplex.scala 1219:30]
  assign FPComplexMult_v2_12_3_io_in_a_Im = io_in_a_Im; // @[FPComplex.scala 1219:30]
  assign FPComplexMult_v2_12_3_io_in_b_Re = io_in_b_3_Re; // @[FPComplex.scala 1220:30]
  assign FPComplexMult_v2_12_3_io_in_b_Im = io_in_b_3_Im; // @[FPComplex.scala 1220:30]
  assign FPComplexMult_v2_12_4_clock = clock;
  assign FPComplexMult_v2_12_4_reset = reset;
  assign FPComplexMult_v2_12_4_io_in_a_Re = io_in_a_Re; // @[FPComplex.scala 1219:30]
  assign FPComplexMult_v2_12_4_io_in_a_Im = io_in_a_Im; // @[FPComplex.scala 1219:30]
  assign FPComplexMult_v2_12_4_io_in_b_Re = io_in_b_4_Re; // @[FPComplex.scala 1220:30]
  assign FPComplexMult_v2_12_4_io_in_b_Im = io_in_b_4_Im; // @[FPComplex.scala 1220:30]
  assign FPComplexMult_v2_12_5_clock = clock;
  assign FPComplexMult_v2_12_5_reset = reset;
  assign FPComplexMult_v2_12_5_io_in_a_Re = io_in_a_Re; // @[FPComplex.scala 1219:30]
  assign FPComplexMult_v2_12_5_io_in_a_Im = io_in_a_Im; // @[FPComplex.scala 1219:30]
  assign FPComplexMult_v2_12_5_io_in_b_Re = io_in_b_5_Re; // @[FPComplex.scala 1220:30]
  assign FPComplexMult_v2_12_5_io_in_b_Im = io_in_b_5_Im; // @[FPComplex.scala 1220:30]
  assign FPComplexMult_v2_12_6_clock = clock;
  assign FPComplexMult_v2_12_6_reset = reset;
  assign FPComplexMult_v2_12_6_io_in_a_Re = io_in_a_Re; // @[FPComplex.scala 1219:30]
  assign FPComplexMult_v2_12_6_io_in_a_Im = io_in_a_Im; // @[FPComplex.scala 1219:30]
  assign FPComplexMult_v2_12_6_io_in_b_Re = io_in_b_6_Re; // @[FPComplex.scala 1220:30]
  assign FPComplexMult_v2_12_6_io_in_b_Im = io_in_b_6_Im; // @[FPComplex.scala 1220:30]
  assign FPComplexMult_v2_12_7_clock = clock;
  assign FPComplexMult_v2_12_7_reset = reset;
  assign FPComplexMult_v2_12_7_io_in_a_Re = io_in_a_Re; // @[FPComplex.scala 1219:30]
  assign FPComplexMult_v2_12_7_io_in_a_Im = io_in_a_Im; // @[FPComplex.scala 1219:30]
  assign FPComplexMult_v2_12_7_io_in_b_Re = io_in_b_7_Re; // @[FPComplex.scala 1220:30]
  assign FPComplexMult_v2_12_7_io_in_b_Im = io_in_b_7_Im; // @[FPComplex.scala 1220:30]
  assign FPComplexMult_v2_12_8_clock = clock;
  assign FPComplexMult_v2_12_8_reset = reset;
  assign FPComplexMult_v2_12_8_io_in_a_Re = io_in_a_Re; // @[FPComplex.scala 1219:30]
  assign FPComplexMult_v2_12_8_io_in_a_Im = io_in_a_Im; // @[FPComplex.scala 1219:30]
  assign FPComplexMult_v2_12_8_io_in_b_Re = io_in_b_8_Re; // @[FPComplex.scala 1220:30]
  assign FPComplexMult_v2_12_8_io_in_b_Im = io_in_b_8_Im; // @[FPComplex.scala 1220:30]
  assign FPComplexMult_v2_12_9_clock = clock;
  assign FPComplexMult_v2_12_9_reset = reset;
  assign FPComplexMult_v2_12_9_io_in_a_Re = io_in_a_Re; // @[FPComplex.scala 1219:30]
  assign FPComplexMult_v2_12_9_io_in_a_Im = io_in_a_Im; // @[FPComplex.scala 1219:30]
  assign FPComplexMult_v2_12_9_io_in_b_Re = io_in_b_9_Re; // @[FPComplex.scala 1220:30]
  assign FPComplexMult_v2_12_9_io_in_b_Im = io_in_b_9_Im; // @[FPComplex.scala 1220:30]
  assign FPComplexMult_v2_12_10_clock = clock;
  assign FPComplexMult_v2_12_10_reset = reset;
  assign FPComplexMult_v2_12_10_io_in_a_Re = io_in_a_Re; // @[FPComplex.scala 1219:30]
  assign FPComplexMult_v2_12_10_io_in_a_Im = io_in_a_Im; // @[FPComplex.scala 1219:30]
  assign FPComplexMult_v2_12_10_io_in_b_Re = io_in_b_10_Re; // @[FPComplex.scala 1220:30]
  assign FPComplexMult_v2_12_10_io_in_b_Im = io_in_b_10_Im; // @[FPComplex.scala 1220:30]
  assign FPComplexMult_v2_12_11_clock = clock;
  assign FPComplexMult_v2_12_11_reset = reset;
  assign FPComplexMult_v2_12_11_io_in_a_Re = io_in_a_Re; // @[FPComplex.scala 1219:30]
  assign FPComplexMult_v2_12_11_io_in_a_Im = io_in_a_Im; // @[FPComplex.scala 1219:30]
  assign FPComplexMult_v2_12_11_io_in_b_Re = io_in_b_11_Re; // @[FPComplex.scala 1220:30]
  assign FPComplexMult_v2_12_11_io_in_b_Im = io_in_b_11_Im; // @[FPComplex.scala 1220:30]
  assign FPComplexMult_v2_12_12_clock = clock;
  assign FPComplexMult_v2_12_12_reset = reset;
  assign FPComplexMult_v2_12_12_io_in_a_Re = io_in_a_Re; // @[FPComplex.scala 1219:30]
  assign FPComplexMult_v2_12_12_io_in_a_Im = io_in_a_Im; // @[FPComplex.scala 1219:30]
  assign FPComplexMult_v2_12_12_io_in_b_Re = io_in_b_12_Re; // @[FPComplex.scala 1220:30]
  assign FPComplexMult_v2_12_12_io_in_b_Im = io_in_b_12_Im; // @[FPComplex.scala 1220:30]
  assign FPComplexMult_v2_12_13_clock = clock;
  assign FPComplexMult_v2_12_13_reset = reset;
  assign FPComplexMult_v2_12_13_io_in_a_Re = io_in_a_Re; // @[FPComplex.scala 1219:30]
  assign FPComplexMult_v2_12_13_io_in_a_Im = io_in_a_Im; // @[FPComplex.scala 1219:30]
  assign FPComplexMult_v2_12_13_io_in_b_Re = io_in_b_13_Re; // @[FPComplex.scala 1220:30]
  assign FPComplexMult_v2_12_13_io_in_b_Im = io_in_b_13_Im; // @[FPComplex.scala 1220:30]
  assign FPComplexMult_v2_12_14_clock = clock;
  assign FPComplexMult_v2_12_14_reset = reset;
  assign FPComplexMult_v2_12_14_io_in_a_Re = io_in_a_Re; // @[FPComplex.scala 1219:30]
  assign FPComplexMult_v2_12_14_io_in_a_Im = io_in_a_Im; // @[FPComplex.scala 1219:30]
  assign FPComplexMult_v2_12_14_io_in_b_Re = io_in_b_14_Re; // @[FPComplex.scala 1220:30]
  assign FPComplexMult_v2_12_14_io_in_b_Im = io_in_b_14_Im; // @[FPComplex.scala 1220:30]
  assign FPComplexMult_v2_12_15_clock = clock;
  assign FPComplexMult_v2_12_15_reset = reset;
  assign FPComplexMult_v2_12_15_io_in_a_Re = io_in_a_Re; // @[FPComplex.scala 1219:30]
  assign FPComplexMult_v2_12_15_io_in_a_Im = io_in_a_Im; // @[FPComplex.scala 1219:30]
  assign FPComplexMult_v2_12_15_io_in_b_Re = io_in_b_15_Re; // @[FPComplex.scala 1220:30]
  assign FPComplexMult_v2_12_15_io_in_b_Im = io_in_b_15_Im; // @[FPComplex.scala 1220:30]
  assign FPComplexAdder_v2_12_clock = clock;
  assign FPComplexAdder_v2_12_reset = reset;
  assign FPComplexAdder_v2_12_io_in_a_Re = FPComplexMult_v2_12_io_out_s_Re; // @[FPComplex.scala 1222:27]
  assign FPComplexAdder_v2_12_io_in_a_Im = FPComplexMult_v2_12_io_out_s_Im; // @[FPComplex.scala 1222:27]
  assign FPComplexAdder_v2_12_io_in_b_Re = FPReg_12_io_out_Re; // @[FPComplex.scala 1223:27]
  assign FPComplexAdder_v2_12_io_in_b_Im = FPReg_12_io_out_Im; // @[FPComplex.scala 1223:27]
  assign FPComplexAdder_v2_12_1_clock = clock;
  assign FPComplexAdder_v2_12_1_reset = reset;
  assign FPComplexAdder_v2_12_1_io_in_a_Re = FPComplexMult_v2_12_1_io_out_s_Re; // @[FPComplex.scala 1222:27]
  assign FPComplexAdder_v2_12_1_io_in_a_Im = FPComplexMult_v2_12_1_io_out_s_Im; // @[FPComplex.scala 1222:27]
  assign FPComplexAdder_v2_12_1_io_in_b_Re = FPReg_12_1_io_out_Re; // @[FPComplex.scala 1223:27]
  assign FPComplexAdder_v2_12_1_io_in_b_Im = FPReg_12_1_io_out_Im; // @[FPComplex.scala 1223:27]
  assign FPComplexAdder_v2_12_2_clock = clock;
  assign FPComplexAdder_v2_12_2_reset = reset;
  assign FPComplexAdder_v2_12_2_io_in_a_Re = FPComplexMult_v2_12_2_io_out_s_Re; // @[FPComplex.scala 1222:27]
  assign FPComplexAdder_v2_12_2_io_in_a_Im = FPComplexMult_v2_12_2_io_out_s_Im; // @[FPComplex.scala 1222:27]
  assign FPComplexAdder_v2_12_2_io_in_b_Re = FPReg_12_2_io_out_Re; // @[FPComplex.scala 1223:27]
  assign FPComplexAdder_v2_12_2_io_in_b_Im = FPReg_12_2_io_out_Im; // @[FPComplex.scala 1223:27]
  assign FPComplexAdder_v2_12_3_clock = clock;
  assign FPComplexAdder_v2_12_3_reset = reset;
  assign FPComplexAdder_v2_12_3_io_in_a_Re = FPComplexMult_v2_12_3_io_out_s_Re; // @[FPComplex.scala 1222:27]
  assign FPComplexAdder_v2_12_3_io_in_a_Im = FPComplexMult_v2_12_3_io_out_s_Im; // @[FPComplex.scala 1222:27]
  assign FPComplexAdder_v2_12_3_io_in_b_Re = FPReg_12_3_io_out_Re; // @[FPComplex.scala 1223:27]
  assign FPComplexAdder_v2_12_3_io_in_b_Im = FPReg_12_3_io_out_Im; // @[FPComplex.scala 1223:27]
  assign FPComplexAdder_v2_12_4_clock = clock;
  assign FPComplexAdder_v2_12_4_reset = reset;
  assign FPComplexAdder_v2_12_4_io_in_a_Re = FPComplexMult_v2_12_4_io_out_s_Re; // @[FPComplex.scala 1222:27]
  assign FPComplexAdder_v2_12_4_io_in_a_Im = FPComplexMult_v2_12_4_io_out_s_Im; // @[FPComplex.scala 1222:27]
  assign FPComplexAdder_v2_12_4_io_in_b_Re = FPReg_12_4_io_out_Re; // @[FPComplex.scala 1223:27]
  assign FPComplexAdder_v2_12_4_io_in_b_Im = FPReg_12_4_io_out_Im; // @[FPComplex.scala 1223:27]
  assign FPComplexAdder_v2_12_5_clock = clock;
  assign FPComplexAdder_v2_12_5_reset = reset;
  assign FPComplexAdder_v2_12_5_io_in_a_Re = FPComplexMult_v2_12_5_io_out_s_Re; // @[FPComplex.scala 1222:27]
  assign FPComplexAdder_v2_12_5_io_in_a_Im = FPComplexMult_v2_12_5_io_out_s_Im; // @[FPComplex.scala 1222:27]
  assign FPComplexAdder_v2_12_5_io_in_b_Re = FPReg_12_5_io_out_Re; // @[FPComplex.scala 1223:27]
  assign FPComplexAdder_v2_12_5_io_in_b_Im = FPReg_12_5_io_out_Im; // @[FPComplex.scala 1223:27]
  assign FPComplexAdder_v2_12_6_clock = clock;
  assign FPComplexAdder_v2_12_6_reset = reset;
  assign FPComplexAdder_v2_12_6_io_in_a_Re = FPComplexMult_v2_12_6_io_out_s_Re; // @[FPComplex.scala 1222:27]
  assign FPComplexAdder_v2_12_6_io_in_a_Im = FPComplexMult_v2_12_6_io_out_s_Im; // @[FPComplex.scala 1222:27]
  assign FPComplexAdder_v2_12_6_io_in_b_Re = FPReg_12_6_io_out_Re; // @[FPComplex.scala 1223:27]
  assign FPComplexAdder_v2_12_6_io_in_b_Im = FPReg_12_6_io_out_Im; // @[FPComplex.scala 1223:27]
  assign FPComplexAdder_v2_12_7_clock = clock;
  assign FPComplexAdder_v2_12_7_reset = reset;
  assign FPComplexAdder_v2_12_7_io_in_a_Re = FPComplexMult_v2_12_7_io_out_s_Re; // @[FPComplex.scala 1222:27]
  assign FPComplexAdder_v2_12_7_io_in_a_Im = FPComplexMult_v2_12_7_io_out_s_Im; // @[FPComplex.scala 1222:27]
  assign FPComplexAdder_v2_12_7_io_in_b_Re = FPReg_12_7_io_out_Re; // @[FPComplex.scala 1223:27]
  assign FPComplexAdder_v2_12_7_io_in_b_Im = FPReg_12_7_io_out_Im; // @[FPComplex.scala 1223:27]
  assign FPComplexAdder_v2_12_8_clock = clock;
  assign FPComplexAdder_v2_12_8_reset = reset;
  assign FPComplexAdder_v2_12_8_io_in_a_Re = FPComplexMult_v2_12_8_io_out_s_Re; // @[FPComplex.scala 1222:27]
  assign FPComplexAdder_v2_12_8_io_in_a_Im = FPComplexMult_v2_12_8_io_out_s_Im; // @[FPComplex.scala 1222:27]
  assign FPComplexAdder_v2_12_8_io_in_b_Re = FPReg_12_8_io_out_Re; // @[FPComplex.scala 1223:27]
  assign FPComplexAdder_v2_12_8_io_in_b_Im = FPReg_12_8_io_out_Im; // @[FPComplex.scala 1223:27]
  assign FPComplexAdder_v2_12_9_clock = clock;
  assign FPComplexAdder_v2_12_9_reset = reset;
  assign FPComplexAdder_v2_12_9_io_in_a_Re = FPComplexMult_v2_12_9_io_out_s_Re; // @[FPComplex.scala 1222:27]
  assign FPComplexAdder_v2_12_9_io_in_a_Im = FPComplexMult_v2_12_9_io_out_s_Im; // @[FPComplex.scala 1222:27]
  assign FPComplexAdder_v2_12_9_io_in_b_Re = FPReg_12_9_io_out_Re; // @[FPComplex.scala 1223:27]
  assign FPComplexAdder_v2_12_9_io_in_b_Im = FPReg_12_9_io_out_Im; // @[FPComplex.scala 1223:27]
  assign FPComplexAdder_v2_12_10_clock = clock;
  assign FPComplexAdder_v2_12_10_reset = reset;
  assign FPComplexAdder_v2_12_10_io_in_a_Re = FPComplexMult_v2_12_10_io_out_s_Re; // @[FPComplex.scala 1222:27]
  assign FPComplexAdder_v2_12_10_io_in_a_Im = FPComplexMult_v2_12_10_io_out_s_Im; // @[FPComplex.scala 1222:27]
  assign FPComplexAdder_v2_12_10_io_in_b_Re = FPReg_12_10_io_out_Re; // @[FPComplex.scala 1223:27]
  assign FPComplexAdder_v2_12_10_io_in_b_Im = FPReg_12_10_io_out_Im; // @[FPComplex.scala 1223:27]
  assign FPComplexAdder_v2_12_11_clock = clock;
  assign FPComplexAdder_v2_12_11_reset = reset;
  assign FPComplexAdder_v2_12_11_io_in_a_Re = FPComplexMult_v2_12_11_io_out_s_Re; // @[FPComplex.scala 1222:27]
  assign FPComplexAdder_v2_12_11_io_in_a_Im = FPComplexMult_v2_12_11_io_out_s_Im; // @[FPComplex.scala 1222:27]
  assign FPComplexAdder_v2_12_11_io_in_b_Re = FPReg_12_11_io_out_Re; // @[FPComplex.scala 1223:27]
  assign FPComplexAdder_v2_12_11_io_in_b_Im = FPReg_12_11_io_out_Im; // @[FPComplex.scala 1223:27]
  assign FPComplexAdder_v2_12_12_clock = clock;
  assign FPComplexAdder_v2_12_12_reset = reset;
  assign FPComplexAdder_v2_12_12_io_in_a_Re = FPComplexMult_v2_12_12_io_out_s_Re; // @[FPComplex.scala 1222:27]
  assign FPComplexAdder_v2_12_12_io_in_a_Im = FPComplexMult_v2_12_12_io_out_s_Im; // @[FPComplex.scala 1222:27]
  assign FPComplexAdder_v2_12_12_io_in_b_Re = FPReg_12_12_io_out_Re; // @[FPComplex.scala 1223:27]
  assign FPComplexAdder_v2_12_12_io_in_b_Im = FPReg_12_12_io_out_Im; // @[FPComplex.scala 1223:27]
  assign FPComplexAdder_v2_12_13_clock = clock;
  assign FPComplexAdder_v2_12_13_reset = reset;
  assign FPComplexAdder_v2_12_13_io_in_a_Re = FPComplexMult_v2_12_13_io_out_s_Re; // @[FPComplex.scala 1222:27]
  assign FPComplexAdder_v2_12_13_io_in_a_Im = FPComplexMult_v2_12_13_io_out_s_Im; // @[FPComplex.scala 1222:27]
  assign FPComplexAdder_v2_12_13_io_in_b_Re = FPReg_12_13_io_out_Re; // @[FPComplex.scala 1223:27]
  assign FPComplexAdder_v2_12_13_io_in_b_Im = FPReg_12_13_io_out_Im; // @[FPComplex.scala 1223:27]
  assign FPComplexAdder_v2_12_14_clock = clock;
  assign FPComplexAdder_v2_12_14_reset = reset;
  assign FPComplexAdder_v2_12_14_io_in_a_Re = FPComplexMult_v2_12_14_io_out_s_Re; // @[FPComplex.scala 1222:27]
  assign FPComplexAdder_v2_12_14_io_in_a_Im = FPComplexMult_v2_12_14_io_out_s_Im; // @[FPComplex.scala 1222:27]
  assign FPComplexAdder_v2_12_14_io_in_b_Re = FPReg_12_14_io_out_Re; // @[FPComplex.scala 1223:27]
  assign FPComplexAdder_v2_12_14_io_in_b_Im = FPReg_12_14_io_out_Im; // @[FPComplex.scala 1223:27]
  assign FPComplexAdder_v2_12_15_clock = clock;
  assign FPComplexAdder_v2_12_15_reset = reset;
  assign FPComplexAdder_v2_12_15_io_in_a_Re = FPComplexMult_v2_12_15_io_out_s_Re; // @[FPComplex.scala 1222:27]
  assign FPComplexAdder_v2_12_15_io_in_a_Im = FPComplexMult_v2_12_15_io_out_s_Im; // @[FPComplex.scala 1222:27]
  assign FPComplexAdder_v2_12_15_io_in_b_Re = FPReg_12_15_io_out_Re; // @[FPComplex.scala 1223:27]
  assign FPComplexAdder_v2_12_15_io_in_b_Im = FPReg_12_15_io_out_Im; // @[FPComplex.scala 1223:27]
  assign FPReg_12_clock = clock;
  assign FPReg_12_reset = reset;
  assign FPReg_12_io_in_Re = io_in_c_0_Re; // @[FPComplex.scala 1221:25]
  assign FPReg_12_io_in_Im = io_in_c_0_Im; // @[FPComplex.scala 1221:25]
  assign FPReg_12_1_clock = clock;
  assign FPReg_12_1_reset = reset;
  assign FPReg_12_1_io_in_Re = io_in_c_1_Re; // @[FPComplex.scala 1221:25]
  assign FPReg_12_1_io_in_Im = io_in_c_1_Im; // @[FPComplex.scala 1221:25]
  assign FPReg_12_2_clock = clock;
  assign FPReg_12_2_reset = reset;
  assign FPReg_12_2_io_in_Re = io_in_c_2_Re; // @[FPComplex.scala 1221:25]
  assign FPReg_12_2_io_in_Im = io_in_c_2_Im; // @[FPComplex.scala 1221:25]
  assign FPReg_12_3_clock = clock;
  assign FPReg_12_3_reset = reset;
  assign FPReg_12_3_io_in_Re = io_in_c_3_Re; // @[FPComplex.scala 1221:25]
  assign FPReg_12_3_io_in_Im = io_in_c_3_Im; // @[FPComplex.scala 1221:25]
  assign FPReg_12_4_clock = clock;
  assign FPReg_12_4_reset = reset;
  assign FPReg_12_4_io_in_Re = io_in_c_4_Re; // @[FPComplex.scala 1221:25]
  assign FPReg_12_4_io_in_Im = io_in_c_4_Im; // @[FPComplex.scala 1221:25]
  assign FPReg_12_5_clock = clock;
  assign FPReg_12_5_reset = reset;
  assign FPReg_12_5_io_in_Re = io_in_c_5_Re; // @[FPComplex.scala 1221:25]
  assign FPReg_12_5_io_in_Im = io_in_c_5_Im; // @[FPComplex.scala 1221:25]
  assign FPReg_12_6_clock = clock;
  assign FPReg_12_6_reset = reset;
  assign FPReg_12_6_io_in_Re = io_in_c_6_Re; // @[FPComplex.scala 1221:25]
  assign FPReg_12_6_io_in_Im = io_in_c_6_Im; // @[FPComplex.scala 1221:25]
  assign FPReg_12_7_clock = clock;
  assign FPReg_12_7_reset = reset;
  assign FPReg_12_7_io_in_Re = io_in_c_7_Re; // @[FPComplex.scala 1221:25]
  assign FPReg_12_7_io_in_Im = io_in_c_7_Im; // @[FPComplex.scala 1221:25]
  assign FPReg_12_8_clock = clock;
  assign FPReg_12_8_reset = reset;
  assign FPReg_12_8_io_in_Re = io_in_c_8_Re; // @[FPComplex.scala 1221:25]
  assign FPReg_12_8_io_in_Im = io_in_c_8_Im; // @[FPComplex.scala 1221:25]
  assign FPReg_12_9_clock = clock;
  assign FPReg_12_9_reset = reset;
  assign FPReg_12_9_io_in_Re = io_in_c_9_Re; // @[FPComplex.scala 1221:25]
  assign FPReg_12_9_io_in_Im = io_in_c_9_Im; // @[FPComplex.scala 1221:25]
  assign FPReg_12_10_clock = clock;
  assign FPReg_12_10_reset = reset;
  assign FPReg_12_10_io_in_Re = io_in_c_10_Re; // @[FPComplex.scala 1221:25]
  assign FPReg_12_10_io_in_Im = io_in_c_10_Im; // @[FPComplex.scala 1221:25]
  assign FPReg_12_11_clock = clock;
  assign FPReg_12_11_reset = reset;
  assign FPReg_12_11_io_in_Re = io_in_c_11_Re; // @[FPComplex.scala 1221:25]
  assign FPReg_12_11_io_in_Im = io_in_c_11_Im; // @[FPComplex.scala 1221:25]
  assign FPReg_12_12_clock = clock;
  assign FPReg_12_12_reset = reset;
  assign FPReg_12_12_io_in_Re = io_in_c_12_Re; // @[FPComplex.scala 1221:25]
  assign FPReg_12_12_io_in_Im = io_in_c_12_Im; // @[FPComplex.scala 1221:25]
  assign FPReg_12_13_clock = clock;
  assign FPReg_12_13_reset = reset;
  assign FPReg_12_13_io_in_Re = io_in_c_13_Re; // @[FPComplex.scala 1221:25]
  assign FPReg_12_13_io_in_Im = io_in_c_13_Im; // @[FPComplex.scala 1221:25]
  assign FPReg_12_14_clock = clock;
  assign FPReg_12_14_reset = reset;
  assign FPReg_12_14_io_in_Re = io_in_c_14_Re; // @[FPComplex.scala 1221:25]
  assign FPReg_12_14_io_in_Im = io_in_c_14_Im; // @[FPComplex.scala 1221:25]
  assign FPReg_12_15_clock = clock;
  assign FPReg_12_15_reset = reset;
  assign FPReg_12_15_io_in_Re = io_in_c_15_Re; // @[FPComplex.scala 1221:25]
  assign FPReg_12_15_io_in_Im = io_in_c_15_Im; // @[FPComplex.scala 1221:25]
endmodule
module hh_datapath_1(
  input          io_clk,
  input          io_rst,
  input  [15:0]  io_hh_cnt,
  input          io_d1_rdy,
  input          io_d1_vld,
  input          io_d2_vld,
  input          io_vk1_vld,
  input          io_d3_rdy,
  input          io_d3_vld,
  input          io_tk_vld,
  input          io_d4_rdy,
  input          io_d5_rdy,
  input          io_d5_vld,
  input          io_yj_sft,
  input          io_d4_sft,
  input  [511:0] io_hh_din,
  output [511:0] io_hh_dout
);
`ifdef RANDOMIZE_REG_INIT
  reg [14527:0] _RAND_0;
  reg [14527:0] _RAND_1;
  reg [14527:0] _RAND_2;
  reg [14527:0] _RAND_3;
  reg [14527:0] _RAND_4;
  reg [14527:0] _RAND_5;
  reg [14527:0] _RAND_6;
  reg [14527:0] _RAND_7;
  reg [511:0] _RAND_8;
  reg [511:0] _RAND_9;
  reg [511:0] _RAND_10;
  reg [511:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [4031:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
`endif // RANDOMIZE_REG_INIT
  wire  FP_DDOT_dp_complex_12_clock; // @[hh_datapath_chisel.scala 313:21]
  wire  FP_DDOT_dp_complex_12_reset; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_a_0_Re; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_a_0_Im; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_a_1_Re; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_a_1_Im; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_a_2_Re; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_a_2_Im; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_a_3_Re; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_a_3_Im; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_a_4_Re; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_a_4_Im; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_a_5_Re; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_a_5_Im; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_a_6_Re; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_a_6_Im; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_a_7_Re; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_a_7_Im; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_a_8_Re; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_a_8_Im; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_a_9_Re; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_a_9_Im; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_a_10_Re; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_a_10_Im; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_a_11_Re; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_a_11_Im; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_a_12_Re; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_a_12_Im; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_a_13_Re; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_a_13_Im; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_a_14_Re; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_a_14_Im; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_a_15_Re; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_a_15_Im; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_b_0_Re; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_b_0_Im; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_b_1_Re; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_b_1_Im; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_b_2_Re; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_b_2_Im; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_b_3_Re; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_b_3_Im; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_b_4_Re; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_b_4_Im; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_b_5_Re; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_b_5_Im; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_b_6_Re; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_b_6_Im; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_b_7_Re; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_b_7_Im; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_b_8_Re; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_b_8_Im; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_b_9_Re; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_b_9_Im; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_b_10_Re; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_b_10_Im; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_b_11_Re; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_b_11_Im; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_b_12_Re; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_b_12_Im; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_b_13_Re; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_b_13_Im; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_b_14_Re; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_b_14_Im; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_b_15_Re; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_in_b_15_Im; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_out_s_Re; // @[hh_datapath_chisel.scala 313:21]
  wire [15:0] FP_DDOT_dp_complex_12_io_out_s_Im; // @[hh_datapath_chisel.scala 313:21]
  wire  FP_square_root_newfpu_12_clock; // @[hh_datapath_chisel.scala 326:22]
  wire  FP_square_root_newfpu_12_reset; // @[hh_datapath_chisel.scala 326:22]
  wire [15:0] FP_square_root_newfpu_12_io_in_a; // @[hh_datapath_chisel.scala 326:22]
  wire [15:0] FP_square_root_newfpu_12_io_out_s; // @[hh_datapath_chisel.scala 326:22]
  wire  hqr5_complex_12_clock; // @[hh_datapath_chisel.scala 360:20]
  wire  hqr5_complex_12_reset; // @[hh_datapath_chisel.scala 360:20]
  wire [15:0] hqr5_complex_12_io_in_a_Re; // @[hh_datapath_chisel.scala 360:20]
  wire [15:0] hqr5_complex_12_io_in_a_Im; // @[hh_datapath_chisel.scala 360:20]
  wire [15:0] hqr5_complex_12_io_in_b_Re; // @[hh_datapath_chisel.scala 360:20]
  wire [15:0] hqr5_complex_12_io_out_s_Re; // @[hh_datapath_chisel.scala 360:20]
  wire [15:0] hqr5_complex_12_io_out_s_Im; // @[hh_datapath_chisel.scala 360:20]
  wire  hqr7_12_clock; // @[hh_datapath_chisel.scala 369:20]
  wire  hqr7_12_reset; // @[hh_datapath_chisel.scala 369:20]
  wire [15:0] hqr7_12_io_in_a; // @[hh_datapath_chisel.scala 369:20]
  wire [15:0] hqr7_12_io_out_s; // @[hh_datapath_chisel.scala 369:20]
  wire  FPComplexMult_v2_12_clock; // @[hh_datapath_chisel.scala 406:21]
  wire  FPComplexMult_v2_12_reset; // @[hh_datapath_chisel.scala 406:21]
  wire [15:0] FPComplexMult_v2_12_io_in_a_Re; // @[hh_datapath_chisel.scala 406:21]
  wire [15:0] FPComplexMult_v2_12_io_in_a_Im; // @[hh_datapath_chisel.scala 406:21]
  wire [15:0] FPComplexMult_v2_12_io_in_b_Re; // @[hh_datapath_chisel.scala 406:21]
  wire [15:0] FPComplexMult_v2_12_io_in_b_Im; // @[hh_datapath_chisel.scala 406:21]
  wire [15:0] FPComplexMult_v2_12_io_out_s_Re; // @[hh_datapath_chisel.scala 406:21]
  wire [15:0] FPComplexMult_v2_12_io_out_s_Im; // @[hh_datapath_chisel.scala 406:21]
  wire  axpy_dp_complex_12_clock; // @[hh_datapath_chisel.scala 433:20]
  wire  axpy_dp_complex_12_reset; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_a_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_a_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_b_0_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_b_0_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_b_1_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_b_1_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_b_2_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_b_2_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_b_3_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_b_3_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_b_4_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_b_4_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_b_5_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_b_5_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_b_6_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_b_6_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_b_7_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_b_7_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_b_8_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_b_8_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_b_9_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_b_9_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_b_10_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_b_10_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_b_11_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_b_11_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_b_12_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_b_12_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_b_13_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_b_13_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_b_14_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_b_14_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_b_15_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_b_15_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_c_0_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_c_0_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_c_1_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_c_1_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_c_2_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_c_2_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_c_3_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_c_3_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_c_4_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_c_4_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_c_5_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_c_5_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_c_6_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_c_6_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_c_7_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_c_7_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_c_8_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_c_8_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_c_9_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_c_9_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_c_10_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_c_10_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_c_11_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_c_11_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_c_12_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_c_12_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_c_13_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_c_13_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_c_14_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_c_14_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_c_15_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_in_c_15_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_out_s_0_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_out_s_0_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_out_s_1_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_out_s_1_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_out_s_2_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_out_s_2_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_out_s_3_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_out_s_3_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_out_s_4_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_out_s_4_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_out_s_5_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_out_s_5_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_out_s_6_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_out_s_6_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_out_s_7_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_out_s_7_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_out_s_8_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_out_s_8_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_out_s_9_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_out_s_9_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_out_s_10_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_out_s_10_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_out_s_11_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_out_s_11_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_out_s_12_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_out_s_12_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_out_s_13_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_out_s_13_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_out_s_14_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_out_s_14_Im; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_out_s_15_Re; // @[hh_datapath_chisel.scala 433:20]
  wire [15:0] axpy_dp_complex_12_io_out_s_15_Im; // @[hh_datapath_chisel.scala 433:20]
  reg [14527:0] yj_reg_vec_0; // @[hh_datapath_chisel.scala 72:25]
  reg [14527:0] yj_reg_vec_1; // @[hh_datapath_chisel.scala 72:25]
  reg [14527:0] yj_reg_vec_2; // @[hh_datapath_chisel.scala 72:25]
  reg [14527:0] yj_reg_vec_3; // @[hh_datapath_chisel.scala 72:25]
  reg [14527:0] yj_reg_vec_4; // @[hh_datapath_chisel.scala 72:25]
  reg [14527:0] yj_reg_vec_5; // @[hh_datapath_chisel.scala 72:25]
  reg [14527:0] yj_reg_vec_6; // @[hh_datapath_chisel.scala 72:25]
  reg [14527:0] yj_reg_vec_7; // @[hh_datapath_chisel.scala 72:25]
  reg [511:0] yj0; // @[hh_datapath_chisel.scala 73:18]
  wire [14527:0] _yj_reg_vec_0_T_1 = {io_hh_din,yj_reg_vec_0[14527:512]}; // @[Cat.scala 31:58]
  wire [14527:0] _yj_reg_vec_1_T_2 = {yj_reg_vec_0[511:0],yj_reg_vec_1[14527:512]}; // @[Cat.scala 31:58]
  wire [14527:0] _yj_reg_vec_2_T_2 = {yj_reg_vec_1[511:0],yj_reg_vec_2[14527:512]}; // @[Cat.scala 31:58]
  wire [14527:0] _yj_reg_vec_3_T_2 = {yj_reg_vec_2[511:0],yj_reg_vec_3[14527:512]}; // @[Cat.scala 31:58]
  wire [14527:0] _yj_reg_vec_4_T_2 = {yj_reg_vec_3[511:0],yj_reg_vec_4[14527:512]}; // @[Cat.scala 31:58]
  wire [14527:0] _yj_reg_vec_5_T_2 = {yj_reg_vec_4[511:0],yj_reg_vec_5[14527:512]}; // @[Cat.scala 31:58]
  wire [14527:0] _yj_reg_vec_6_T_2 = {yj_reg_vec_5[511:0],yj_reg_vec_6[14527:512]}; // @[Cat.scala 31:58]
  wire [14527:0] _yj_reg_vec_7_T_2 = {yj_reg_vec_6[511:0],yj_reg_vec_7[14527:512]}; // @[Cat.scala 31:58]
  reg [511:0] ddot_din_a_reg; // @[hh_datapath_chisel.scala 136:29]
  reg [511:0] ddot_din_b_reg; // @[hh_datapath_chisel.scala 137:29]
  reg [511:0] vk_reg; // @[hh_datapath_chisel.scala 138:21]
  reg [15:0] d1_reg; // @[hh_datapath_chisel.scala 139:21]
  reg [15:0] d3_reg; // @[hh_datapath_chisel.scala 140:21]
  reg [31:0] d4_update; // @[hh_datapath_chisel.scala 145:24]
  reg [31:0] x1_reg; // @[hh_datapath_chisel.scala 152:21]
  reg [15:0] d2_reg; // @[hh_datapath_chisel.scala 153:21]
  reg [31:0] vk1_reg; // @[hh_datapath_chisel.scala 154:22]
  reg [15:0] tk_reg; // @[hh_datapath_chisel.scala 155:21]
  reg [31:0] d4_reg; // @[hh_datapath_chisel.scala 156:21]
  reg [31:0] d5_reg; // @[hh_datapath_chisel.scala 157:21]
  wire [31:0] vk1_update = {hqr5_complex_12_io_out_s_Re,hqr5_complex_12_io_out_s_Im}; // @[Cat.scala 31:58]
  wire [31:0] vk1 = io_vk1_vld ? vk1_update : vk1_reg; // @[hh_datapath_chisel.scala 248:21 249:11 251:11]
  wire [15:0] _myNewVec_15_T_1 = io_hh_cnt + 16'h1; // @[hh_datapath_chisel.scala 287:55]
  wire [16:0] _myNewVec_15_T_2 = {{1'd0}, _myNewVec_15_T_1}; // @[hh_datapath_chisel.scala 287:60]
  wire [31:0] myVec_15 = io_hh_din[31:0]; // @[hh_datapath_chisel.scala 274:28]
  wire [31:0] myVec_14 = io_hh_din[63:32]; // @[hh_datapath_chisel.scala 274:28]
  wire [31:0] myVec_13 = io_hh_din[95:64]; // @[hh_datapath_chisel.scala 274:28]
  wire [31:0] myVec_12 = io_hh_din[127:96]; // @[hh_datapath_chisel.scala 274:28]
  wire [31:0] myVec_11 = io_hh_din[159:128]; // @[hh_datapath_chisel.scala 274:28]
  wire [31:0] myVec_10 = io_hh_din[191:160]; // @[hh_datapath_chisel.scala 274:28]
  wire [31:0] myVec_9 = io_hh_din[223:192]; // @[hh_datapath_chisel.scala 274:28]
  wire [31:0] myVec_8 = io_hh_din[255:224]; // @[hh_datapath_chisel.scala 274:28]
  wire [31:0] myVec_7 = io_hh_din[287:256]; // @[hh_datapath_chisel.scala 274:28]
  wire [31:0] myVec_6 = io_hh_din[319:288]; // @[hh_datapath_chisel.scala 274:28]
  wire [31:0] myVec_5 = io_hh_din[351:320]; // @[hh_datapath_chisel.scala 274:28]
  wire [31:0] myVec_4 = io_hh_din[383:352]; // @[hh_datapath_chisel.scala 274:28]
  wire [31:0] myVec_3 = io_hh_din[415:384]; // @[hh_datapath_chisel.scala 274:28]
  wire [31:0] myVec_2 = io_hh_din[447:416]; // @[hh_datapath_chisel.scala 274:28]
  wire [31:0] myVec_1 = io_hh_din[479:448]; // @[hh_datapath_chisel.scala 274:28]
  wire [31:0] myVec_0 = io_hh_din[511:480]; // @[hh_datapath_chisel.scala 274:28]
  wire [31:0] _GEN_67 = 4'h1 == _myNewVec_15_T_2[3:0] ? myVec_1 : myVec_0; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_68 = 4'h2 == _myNewVec_15_T_2[3:0] ? myVec_2 : _GEN_67; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_69 = 4'h3 == _myNewVec_15_T_2[3:0] ? myVec_3 : _GEN_68; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_70 = 4'h4 == _myNewVec_15_T_2[3:0] ? myVec_4 : _GEN_69; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_71 = 4'h5 == _myNewVec_15_T_2[3:0] ? myVec_5 : _GEN_70; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_72 = 4'h6 == _myNewVec_15_T_2[3:0] ? myVec_6 : _GEN_71; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_73 = 4'h7 == _myNewVec_15_T_2[3:0] ? myVec_7 : _GEN_72; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_74 = 4'h8 == _myNewVec_15_T_2[3:0] ? myVec_8 : _GEN_73; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_75 = 4'h9 == _myNewVec_15_T_2[3:0] ? myVec_9 : _GEN_74; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_76 = 4'ha == _myNewVec_15_T_2[3:0] ? myVec_10 : _GEN_75; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_77 = 4'hb == _myNewVec_15_T_2[3:0] ? myVec_11 : _GEN_76; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_78 = 4'hc == _myNewVec_15_T_2[3:0] ? myVec_12 : _GEN_77; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_79 = 4'hd == _myNewVec_15_T_2[3:0] ? myVec_13 : _GEN_78; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_80 = 4'he == _myNewVec_15_T_2[3:0] ? myVec_14 : _GEN_79; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] myNewVec_15 = 4'hf == _myNewVec_15_T_2[3:0] ? myVec_15 : _GEN_80; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [15:0] _myNewVec_14_T_3 = _myNewVec_15_T_1 + 16'h1; // @[hh_datapath_chisel.scala 287:60]
  wire [31:0] _GEN_83 = 4'h1 == _myNewVec_14_T_3[3:0] ? myVec_1 : myVec_0; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_84 = 4'h2 == _myNewVec_14_T_3[3:0] ? myVec_2 : _GEN_83; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_85 = 4'h3 == _myNewVec_14_T_3[3:0] ? myVec_3 : _GEN_84; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_86 = 4'h4 == _myNewVec_14_T_3[3:0] ? myVec_4 : _GEN_85; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_87 = 4'h5 == _myNewVec_14_T_3[3:0] ? myVec_5 : _GEN_86; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_88 = 4'h6 == _myNewVec_14_T_3[3:0] ? myVec_6 : _GEN_87; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_89 = 4'h7 == _myNewVec_14_T_3[3:0] ? myVec_7 : _GEN_88; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_90 = 4'h8 == _myNewVec_14_T_3[3:0] ? myVec_8 : _GEN_89; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_91 = 4'h9 == _myNewVec_14_T_3[3:0] ? myVec_9 : _GEN_90; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_92 = 4'ha == _myNewVec_14_T_3[3:0] ? myVec_10 : _GEN_91; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_93 = 4'hb == _myNewVec_14_T_3[3:0] ? myVec_11 : _GEN_92; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_94 = 4'hc == _myNewVec_14_T_3[3:0] ? myVec_12 : _GEN_93; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_95 = 4'hd == _myNewVec_14_T_3[3:0] ? myVec_13 : _GEN_94; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_96 = 4'he == _myNewVec_14_T_3[3:0] ? myVec_14 : _GEN_95; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] myNewVec_14 = 4'hf == _myNewVec_14_T_3[3:0] ? myVec_15 : _GEN_96; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [15:0] _myNewVec_13_T_3 = _myNewVec_15_T_1 + 16'h2; // @[hh_datapath_chisel.scala 287:60]
  wire [31:0] _GEN_99 = 4'h1 == _myNewVec_13_T_3[3:0] ? myVec_1 : myVec_0; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_100 = 4'h2 == _myNewVec_13_T_3[3:0] ? myVec_2 : _GEN_99; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_101 = 4'h3 == _myNewVec_13_T_3[3:0] ? myVec_3 : _GEN_100; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_102 = 4'h4 == _myNewVec_13_T_3[3:0] ? myVec_4 : _GEN_101; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_103 = 4'h5 == _myNewVec_13_T_3[3:0] ? myVec_5 : _GEN_102; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_104 = 4'h6 == _myNewVec_13_T_3[3:0] ? myVec_6 : _GEN_103; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_105 = 4'h7 == _myNewVec_13_T_3[3:0] ? myVec_7 : _GEN_104; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_106 = 4'h8 == _myNewVec_13_T_3[3:0] ? myVec_8 : _GEN_105; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_107 = 4'h9 == _myNewVec_13_T_3[3:0] ? myVec_9 : _GEN_106; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_108 = 4'ha == _myNewVec_13_T_3[3:0] ? myVec_10 : _GEN_107; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_109 = 4'hb == _myNewVec_13_T_3[3:0] ? myVec_11 : _GEN_108; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_110 = 4'hc == _myNewVec_13_T_3[3:0] ? myVec_12 : _GEN_109; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_111 = 4'hd == _myNewVec_13_T_3[3:0] ? myVec_13 : _GEN_110; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_112 = 4'he == _myNewVec_13_T_3[3:0] ? myVec_14 : _GEN_111; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] myNewVec_13 = 4'hf == _myNewVec_13_T_3[3:0] ? myVec_15 : _GEN_112; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [15:0] _myNewVec_12_T_3 = _myNewVec_15_T_1 + 16'h3; // @[hh_datapath_chisel.scala 287:60]
  wire [31:0] _GEN_115 = 4'h1 == _myNewVec_12_T_3[3:0] ? myVec_1 : myVec_0; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_116 = 4'h2 == _myNewVec_12_T_3[3:0] ? myVec_2 : _GEN_115; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_117 = 4'h3 == _myNewVec_12_T_3[3:0] ? myVec_3 : _GEN_116; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_118 = 4'h4 == _myNewVec_12_T_3[3:0] ? myVec_4 : _GEN_117; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_119 = 4'h5 == _myNewVec_12_T_3[3:0] ? myVec_5 : _GEN_118; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_120 = 4'h6 == _myNewVec_12_T_3[3:0] ? myVec_6 : _GEN_119; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_121 = 4'h7 == _myNewVec_12_T_3[3:0] ? myVec_7 : _GEN_120; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_122 = 4'h8 == _myNewVec_12_T_3[3:0] ? myVec_8 : _GEN_121; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_123 = 4'h9 == _myNewVec_12_T_3[3:0] ? myVec_9 : _GEN_122; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_124 = 4'ha == _myNewVec_12_T_3[3:0] ? myVec_10 : _GEN_123; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_125 = 4'hb == _myNewVec_12_T_3[3:0] ? myVec_11 : _GEN_124; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_126 = 4'hc == _myNewVec_12_T_3[3:0] ? myVec_12 : _GEN_125; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_127 = 4'hd == _myNewVec_12_T_3[3:0] ? myVec_13 : _GEN_126; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_128 = 4'he == _myNewVec_12_T_3[3:0] ? myVec_14 : _GEN_127; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] myNewVec_12 = 4'hf == _myNewVec_12_T_3[3:0] ? myVec_15 : _GEN_128; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [15:0] _myNewVec_11_T_3 = _myNewVec_15_T_1 + 16'h4; // @[hh_datapath_chisel.scala 287:60]
  wire [31:0] _GEN_131 = 4'h1 == _myNewVec_11_T_3[3:0] ? myVec_1 : myVec_0; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_132 = 4'h2 == _myNewVec_11_T_3[3:0] ? myVec_2 : _GEN_131; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_133 = 4'h3 == _myNewVec_11_T_3[3:0] ? myVec_3 : _GEN_132; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_134 = 4'h4 == _myNewVec_11_T_3[3:0] ? myVec_4 : _GEN_133; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_135 = 4'h5 == _myNewVec_11_T_3[3:0] ? myVec_5 : _GEN_134; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_136 = 4'h6 == _myNewVec_11_T_3[3:0] ? myVec_6 : _GEN_135; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_137 = 4'h7 == _myNewVec_11_T_3[3:0] ? myVec_7 : _GEN_136; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_138 = 4'h8 == _myNewVec_11_T_3[3:0] ? myVec_8 : _GEN_137; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_139 = 4'h9 == _myNewVec_11_T_3[3:0] ? myVec_9 : _GEN_138; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_140 = 4'ha == _myNewVec_11_T_3[3:0] ? myVec_10 : _GEN_139; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_141 = 4'hb == _myNewVec_11_T_3[3:0] ? myVec_11 : _GEN_140; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_142 = 4'hc == _myNewVec_11_T_3[3:0] ? myVec_12 : _GEN_141; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_143 = 4'hd == _myNewVec_11_T_3[3:0] ? myVec_13 : _GEN_142; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_144 = 4'he == _myNewVec_11_T_3[3:0] ? myVec_14 : _GEN_143; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] myNewVec_11 = 4'hf == _myNewVec_11_T_3[3:0] ? myVec_15 : _GEN_144; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [15:0] _myNewVec_10_T_3 = _myNewVec_15_T_1 + 16'h5; // @[hh_datapath_chisel.scala 287:60]
  wire [31:0] _GEN_147 = 4'h1 == _myNewVec_10_T_3[3:0] ? myVec_1 : myVec_0; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_148 = 4'h2 == _myNewVec_10_T_3[3:0] ? myVec_2 : _GEN_147; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_149 = 4'h3 == _myNewVec_10_T_3[3:0] ? myVec_3 : _GEN_148; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_150 = 4'h4 == _myNewVec_10_T_3[3:0] ? myVec_4 : _GEN_149; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_151 = 4'h5 == _myNewVec_10_T_3[3:0] ? myVec_5 : _GEN_150; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_152 = 4'h6 == _myNewVec_10_T_3[3:0] ? myVec_6 : _GEN_151; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_153 = 4'h7 == _myNewVec_10_T_3[3:0] ? myVec_7 : _GEN_152; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_154 = 4'h8 == _myNewVec_10_T_3[3:0] ? myVec_8 : _GEN_153; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_155 = 4'h9 == _myNewVec_10_T_3[3:0] ? myVec_9 : _GEN_154; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_156 = 4'ha == _myNewVec_10_T_3[3:0] ? myVec_10 : _GEN_155; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_157 = 4'hb == _myNewVec_10_T_3[3:0] ? myVec_11 : _GEN_156; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_158 = 4'hc == _myNewVec_10_T_3[3:0] ? myVec_12 : _GEN_157; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_159 = 4'hd == _myNewVec_10_T_3[3:0] ? myVec_13 : _GEN_158; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_160 = 4'he == _myNewVec_10_T_3[3:0] ? myVec_14 : _GEN_159; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] myNewVec_10 = 4'hf == _myNewVec_10_T_3[3:0] ? myVec_15 : _GEN_160; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [15:0] _myNewVec_9_T_3 = _myNewVec_15_T_1 + 16'h6; // @[hh_datapath_chisel.scala 287:60]
  wire [31:0] _GEN_163 = 4'h1 == _myNewVec_9_T_3[3:0] ? myVec_1 : myVec_0; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_164 = 4'h2 == _myNewVec_9_T_3[3:0] ? myVec_2 : _GEN_163; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_165 = 4'h3 == _myNewVec_9_T_3[3:0] ? myVec_3 : _GEN_164; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_166 = 4'h4 == _myNewVec_9_T_3[3:0] ? myVec_4 : _GEN_165; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_167 = 4'h5 == _myNewVec_9_T_3[3:0] ? myVec_5 : _GEN_166; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_168 = 4'h6 == _myNewVec_9_T_3[3:0] ? myVec_6 : _GEN_167; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_169 = 4'h7 == _myNewVec_9_T_3[3:0] ? myVec_7 : _GEN_168; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_170 = 4'h8 == _myNewVec_9_T_3[3:0] ? myVec_8 : _GEN_169; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_171 = 4'h9 == _myNewVec_9_T_3[3:0] ? myVec_9 : _GEN_170; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_172 = 4'ha == _myNewVec_9_T_3[3:0] ? myVec_10 : _GEN_171; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_173 = 4'hb == _myNewVec_9_T_3[3:0] ? myVec_11 : _GEN_172; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_174 = 4'hc == _myNewVec_9_T_3[3:0] ? myVec_12 : _GEN_173; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_175 = 4'hd == _myNewVec_9_T_3[3:0] ? myVec_13 : _GEN_174; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_176 = 4'he == _myNewVec_9_T_3[3:0] ? myVec_14 : _GEN_175; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] myNewVec_9 = 4'hf == _myNewVec_9_T_3[3:0] ? myVec_15 : _GEN_176; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [15:0] _myNewVec_8_T_3 = _myNewVec_15_T_1 + 16'h7; // @[hh_datapath_chisel.scala 287:60]
  wire [31:0] _GEN_179 = 4'h1 == _myNewVec_8_T_3[3:0] ? myVec_1 : myVec_0; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_180 = 4'h2 == _myNewVec_8_T_3[3:0] ? myVec_2 : _GEN_179; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_181 = 4'h3 == _myNewVec_8_T_3[3:0] ? myVec_3 : _GEN_180; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_182 = 4'h4 == _myNewVec_8_T_3[3:0] ? myVec_4 : _GEN_181; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_183 = 4'h5 == _myNewVec_8_T_3[3:0] ? myVec_5 : _GEN_182; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_184 = 4'h6 == _myNewVec_8_T_3[3:0] ? myVec_6 : _GEN_183; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_185 = 4'h7 == _myNewVec_8_T_3[3:0] ? myVec_7 : _GEN_184; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_186 = 4'h8 == _myNewVec_8_T_3[3:0] ? myVec_8 : _GEN_185; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_187 = 4'h9 == _myNewVec_8_T_3[3:0] ? myVec_9 : _GEN_186; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_188 = 4'ha == _myNewVec_8_T_3[3:0] ? myVec_10 : _GEN_187; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_189 = 4'hb == _myNewVec_8_T_3[3:0] ? myVec_11 : _GEN_188; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_190 = 4'hc == _myNewVec_8_T_3[3:0] ? myVec_12 : _GEN_189; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_191 = 4'hd == _myNewVec_8_T_3[3:0] ? myVec_13 : _GEN_190; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_192 = 4'he == _myNewVec_8_T_3[3:0] ? myVec_14 : _GEN_191; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] myNewVec_8 = 4'hf == _myNewVec_8_T_3[3:0] ? myVec_15 : _GEN_192; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [15:0] _myNewVec_7_T_3 = _myNewVec_15_T_1 + 16'h8; // @[hh_datapath_chisel.scala 287:60]
  wire [31:0] _GEN_195 = 4'h1 == _myNewVec_7_T_3[3:0] ? myVec_1 : myVec_0; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_196 = 4'h2 == _myNewVec_7_T_3[3:0] ? myVec_2 : _GEN_195; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_197 = 4'h3 == _myNewVec_7_T_3[3:0] ? myVec_3 : _GEN_196; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_198 = 4'h4 == _myNewVec_7_T_3[3:0] ? myVec_4 : _GEN_197; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_199 = 4'h5 == _myNewVec_7_T_3[3:0] ? myVec_5 : _GEN_198; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_200 = 4'h6 == _myNewVec_7_T_3[3:0] ? myVec_6 : _GEN_199; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_201 = 4'h7 == _myNewVec_7_T_3[3:0] ? myVec_7 : _GEN_200; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_202 = 4'h8 == _myNewVec_7_T_3[3:0] ? myVec_8 : _GEN_201; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_203 = 4'h9 == _myNewVec_7_T_3[3:0] ? myVec_9 : _GEN_202; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_204 = 4'ha == _myNewVec_7_T_3[3:0] ? myVec_10 : _GEN_203; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_205 = 4'hb == _myNewVec_7_T_3[3:0] ? myVec_11 : _GEN_204; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_206 = 4'hc == _myNewVec_7_T_3[3:0] ? myVec_12 : _GEN_205; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_207 = 4'hd == _myNewVec_7_T_3[3:0] ? myVec_13 : _GEN_206; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_208 = 4'he == _myNewVec_7_T_3[3:0] ? myVec_14 : _GEN_207; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] myNewVec_7 = 4'hf == _myNewVec_7_T_3[3:0] ? myVec_15 : _GEN_208; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [15:0] _myNewVec_6_T_3 = _myNewVec_15_T_1 + 16'h9; // @[hh_datapath_chisel.scala 287:60]
  wire [31:0] _GEN_211 = 4'h1 == _myNewVec_6_T_3[3:0] ? myVec_1 : myVec_0; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_212 = 4'h2 == _myNewVec_6_T_3[3:0] ? myVec_2 : _GEN_211; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_213 = 4'h3 == _myNewVec_6_T_3[3:0] ? myVec_3 : _GEN_212; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_214 = 4'h4 == _myNewVec_6_T_3[3:0] ? myVec_4 : _GEN_213; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_215 = 4'h5 == _myNewVec_6_T_3[3:0] ? myVec_5 : _GEN_214; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_216 = 4'h6 == _myNewVec_6_T_3[3:0] ? myVec_6 : _GEN_215; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_217 = 4'h7 == _myNewVec_6_T_3[3:0] ? myVec_7 : _GEN_216; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_218 = 4'h8 == _myNewVec_6_T_3[3:0] ? myVec_8 : _GEN_217; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_219 = 4'h9 == _myNewVec_6_T_3[3:0] ? myVec_9 : _GEN_218; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_220 = 4'ha == _myNewVec_6_T_3[3:0] ? myVec_10 : _GEN_219; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_221 = 4'hb == _myNewVec_6_T_3[3:0] ? myVec_11 : _GEN_220; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_222 = 4'hc == _myNewVec_6_T_3[3:0] ? myVec_12 : _GEN_221; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_223 = 4'hd == _myNewVec_6_T_3[3:0] ? myVec_13 : _GEN_222; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_224 = 4'he == _myNewVec_6_T_3[3:0] ? myVec_14 : _GEN_223; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] myNewVec_6 = 4'hf == _myNewVec_6_T_3[3:0] ? myVec_15 : _GEN_224; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [15:0] _myNewVec_5_T_3 = _myNewVec_15_T_1 + 16'ha; // @[hh_datapath_chisel.scala 287:60]
  wire [31:0] _GEN_227 = 4'h1 == _myNewVec_5_T_3[3:0] ? myVec_1 : myVec_0; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_228 = 4'h2 == _myNewVec_5_T_3[3:0] ? myVec_2 : _GEN_227; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_229 = 4'h3 == _myNewVec_5_T_3[3:0] ? myVec_3 : _GEN_228; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_230 = 4'h4 == _myNewVec_5_T_3[3:0] ? myVec_4 : _GEN_229; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_231 = 4'h5 == _myNewVec_5_T_3[3:0] ? myVec_5 : _GEN_230; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_232 = 4'h6 == _myNewVec_5_T_3[3:0] ? myVec_6 : _GEN_231; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_233 = 4'h7 == _myNewVec_5_T_3[3:0] ? myVec_7 : _GEN_232; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_234 = 4'h8 == _myNewVec_5_T_3[3:0] ? myVec_8 : _GEN_233; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_235 = 4'h9 == _myNewVec_5_T_3[3:0] ? myVec_9 : _GEN_234; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_236 = 4'ha == _myNewVec_5_T_3[3:0] ? myVec_10 : _GEN_235; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_237 = 4'hb == _myNewVec_5_T_3[3:0] ? myVec_11 : _GEN_236; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_238 = 4'hc == _myNewVec_5_T_3[3:0] ? myVec_12 : _GEN_237; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_239 = 4'hd == _myNewVec_5_T_3[3:0] ? myVec_13 : _GEN_238; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_240 = 4'he == _myNewVec_5_T_3[3:0] ? myVec_14 : _GEN_239; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] myNewVec_5 = 4'hf == _myNewVec_5_T_3[3:0] ? myVec_15 : _GEN_240; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [15:0] _myNewVec_4_T_3 = _myNewVec_15_T_1 + 16'hb; // @[hh_datapath_chisel.scala 287:60]
  wire [31:0] _GEN_243 = 4'h1 == _myNewVec_4_T_3[3:0] ? myVec_1 : myVec_0; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_244 = 4'h2 == _myNewVec_4_T_3[3:0] ? myVec_2 : _GEN_243; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_245 = 4'h3 == _myNewVec_4_T_3[3:0] ? myVec_3 : _GEN_244; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_246 = 4'h4 == _myNewVec_4_T_3[3:0] ? myVec_4 : _GEN_245; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_247 = 4'h5 == _myNewVec_4_T_3[3:0] ? myVec_5 : _GEN_246; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_248 = 4'h6 == _myNewVec_4_T_3[3:0] ? myVec_6 : _GEN_247; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_249 = 4'h7 == _myNewVec_4_T_3[3:0] ? myVec_7 : _GEN_248; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_250 = 4'h8 == _myNewVec_4_T_3[3:0] ? myVec_8 : _GEN_249; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_251 = 4'h9 == _myNewVec_4_T_3[3:0] ? myVec_9 : _GEN_250; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_252 = 4'ha == _myNewVec_4_T_3[3:0] ? myVec_10 : _GEN_251; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_253 = 4'hb == _myNewVec_4_T_3[3:0] ? myVec_11 : _GEN_252; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_254 = 4'hc == _myNewVec_4_T_3[3:0] ? myVec_12 : _GEN_253; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_255 = 4'hd == _myNewVec_4_T_3[3:0] ? myVec_13 : _GEN_254; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_256 = 4'he == _myNewVec_4_T_3[3:0] ? myVec_14 : _GEN_255; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] myNewVec_4 = 4'hf == _myNewVec_4_T_3[3:0] ? myVec_15 : _GEN_256; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [15:0] _myNewVec_3_T_3 = _myNewVec_15_T_1 + 16'hc; // @[hh_datapath_chisel.scala 287:60]
  wire [31:0] _GEN_259 = 4'h1 == _myNewVec_3_T_3[3:0] ? myVec_1 : myVec_0; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_260 = 4'h2 == _myNewVec_3_T_3[3:0] ? myVec_2 : _GEN_259; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_261 = 4'h3 == _myNewVec_3_T_3[3:0] ? myVec_3 : _GEN_260; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_262 = 4'h4 == _myNewVec_3_T_3[3:0] ? myVec_4 : _GEN_261; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_263 = 4'h5 == _myNewVec_3_T_3[3:0] ? myVec_5 : _GEN_262; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_264 = 4'h6 == _myNewVec_3_T_3[3:0] ? myVec_6 : _GEN_263; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_265 = 4'h7 == _myNewVec_3_T_3[3:0] ? myVec_7 : _GEN_264; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_266 = 4'h8 == _myNewVec_3_T_3[3:0] ? myVec_8 : _GEN_265; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_267 = 4'h9 == _myNewVec_3_T_3[3:0] ? myVec_9 : _GEN_266; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_268 = 4'ha == _myNewVec_3_T_3[3:0] ? myVec_10 : _GEN_267; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_269 = 4'hb == _myNewVec_3_T_3[3:0] ? myVec_11 : _GEN_268; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_270 = 4'hc == _myNewVec_3_T_3[3:0] ? myVec_12 : _GEN_269; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_271 = 4'hd == _myNewVec_3_T_3[3:0] ? myVec_13 : _GEN_270; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_272 = 4'he == _myNewVec_3_T_3[3:0] ? myVec_14 : _GEN_271; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] myNewVec_3 = 4'hf == _myNewVec_3_T_3[3:0] ? myVec_15 : _GEN_272; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [15:0] _myNewVec_2_T_3 = _myNewVec_15_T_1 + 16'hd; // @[hh_datapath_chisel.scala 287:60]
  wire [31:0] _GEN_275 = 4'h1 == _myNewVec_2_T_3[3:0] ? myVec_1 : myVec_0; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_276 = 4'h2 == _myNewVec_2_T_3[3:0] ? myVec_2 : _GEN_275; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_277 = 4'h3 == _myNewVec_2_T_3[3:0] ? myVec_3 : _GEN_276; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_278 = 4'h4 == _myNewVec_2_T_3[3:0] ? myVec_4 : _GEN_277; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_279 = 4'h5 == _myNewVec_2_T_3[3:0] ? myVec_5 : _GEN_278; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_280 = 4'h6 == _myNewVec_2_T_3[3:0] ? myVec_6 : _GEN_279; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_281 = 4'h7 == _myNewVec_2_T_3[3:0] ? myVec_7 : _GEN_280; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_282 = 4'h8 == _myNewVec_2_T_3[3:0] ? myVec_8 : _GEN_281; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_283 = 4'h9 == _myNewVec_2_T_3[3:0] ? myVec_9 : _GEN_282; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_284 = 4'ha == _myNewVec_2_T_3[3:0] ? myVec_10 : _GEN_283; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_285 = 4'hb == _myNewVec_2_T_3[3:0] ? myVec_11 : _GEN_284; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_286 = 4'hc == _myNewVec_2_T_3[3:0] ? myVec_12 : _GEN_285; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_287 = 4'hd == _myNewVec_2_T_3[3:0] ? myVec_13 : _GEN_286; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_288 = 4'he == _myNewVec_2_T_3[3:0] ? myVec_14 : _GEN_287; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] myNewVec_2 = 4'hf == _myNewVec_2_T_3[3:0] ? myVec_15 : _GEN_288; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [15:0] _myNewVec_1_T_3 = _myNewVec_15_T_1 + 16'he; // @[hh_datapath_chisel.scala 287:60]
  wire [31:0] _GEN_291 = 4'h1 == _myNewVec_1_T_3[3:0] ? myVec_1 : myVec_0; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_292 = 4'h2 == _myNewVec_1_T_3[3:0] ? myVec_2 : _GEN_291; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_293 = 4'h3 == _myNewVec_1_T_3[3:0] ? myVec_3 : _GEN_292; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_294 = 4'h4 == _myNewVec_1_T_3[3:0] ? myVec_4 : _GEN_293; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_295 = 4'h5 == _myNewVec_1_T_3[3:0] ? myVec_5 : _GEN_294; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_296 = 4'h6 == _myNewVec_1_T_3[3:0] ? myVec_6 : _GEN_295; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_297 = 4'h7 == _myNewVec_1_T_3[3:0] ? myVec_7 : _GEN_296; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_298 = 4'h8 == _myNewVec_1_T_3[3:0] ? myVec_8 : _GEN_297; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_299 = 4'h9 == _myNewVec_1_T_3[3:0] ? myVec_9 : _GEN_298; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_300 = 4'ha == _myNewVec_1_T_3[3:0] ? myVec_10 : _GEN_299; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_301 = 4'hb == _myNewVec_1_T_3[3:0] ? myVec_11 : _GEN_300; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_302 = 4'hc == _myNewVec_1_T_3[3:0] ? myVec_12 : _GEN_301; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_303 = 4'hd == _myNewVec_1_T_3[3:0] ? myVec_13 : _GEN_302; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_304 = 4'he == _myNewVec_1_T_3[3:0] ? myVec_14 : _GEN_303; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] myNewVec_1 = 4'hf == _myNewVec_1_T_3[3:0] ? myVec_15 : _GEN_304; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [15:0] _myNewVec_0_T_3 = _myNewVec_15_T_1 + 16'hf; // @[hh_datapath_chisel.scala 287:60]
  wire [31:0] _GEN_307 = 4'h1 == _myNewVec_0_T_3[3:0] ? myVec_1 : myVec_0; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_308 = 4'h2 == _myNewVec_0_T_3[3:0] ? myVec_2 : _GEN_307; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_309 = 4'h3 == _myNewVec_0_T_3[3:0] ? myVec_3 : _GEN_308; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_310 = 4'h4 == _myNewVec_0_T_3[3:0] ? myVec_4 : _GEN_309; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_311 = 4'h5 == _myNewVec_0_T_3[3:0] ? myVec_5 : _GEN_310; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_312 = 4'h6 == _myNewVec_0_T_3[3:0] ? myVec_6 : _GEN_311; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_313 = 4'h7 == _myNewVec_0_T_3[3:0] ? myVec_7 : _GEN_312; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_314 = 4'h8 == _myNewVec_0_T_3[3:0] ? myVec_8 : _GEN_313; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_315 = 4'h9 == _myNewVec_0_T_3[3:0] ? myVec_9 : _GEN_314; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_316 = 4'ha == _myNewVec_0_T_3[3:0] ? myVec_10 : _GEN_315; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_317 = 4'hb == _myNewVec_0_T_3[3:0] ? myVec_11 : _GEN_316; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_318 = 4'hc == _myNewVec_0_T_3[3:0] ? myVec_12 : _GEN_317; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_319 = 4'hd == _myNewVec_0_T_3[3:0] ? myVec_13 : _GEN_318; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] _GEN_320 = 4'he == _myNewVec_0_T_3[3:0] ? myVec_14 : _GEN_319; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [31:0] myNewVec_0 = 4'hf == _myNewVec_0_T_3[3:0] ? myVec_15 : _GEN_320; // @[hh_datapath_chisel.scala 287:{37,37}]
  wire [255:0] myNewWire_lo = {myNewVec_7,myNewVec_6,myNewVec_5,myNewVec_4,myNewVec_3,myNewVec_2,myNewVec_1,myNewVec_0}; // @[hh_datapath_chisel.scala 291:27]
  wire [543:0] _vk_update_T = {vk1,myNewVec_15,myNewVec_14,myNewVec_13,myNewVec_12,myNewVec_11,myNewVec_10,myNewVec_9,
    myNewVec_8,myNewWire_lo}; // @[Cat.scala 31:58]
  wire [21:0] _vk_update_T_3 = _myNewVec_15_T_1 * 6'h20; // @[hh_datapath_chisel.scala 295:57]
  wire [543:0] _vk_update_T_4 = _vk_update_T >> _vk_update_T_3; // @[hh_datapath_chisel.scala 295:39]
  wire [543:0] _GEN_322 = io_vk1_vld ? _vk_update_T_4 : 544'h0; // @[hh_datapath_chisel.scala 294:27 295:17 298:17]
  wire [543:0] _GEN_323 = io_rst ? 544'h0 : _GEN_322; // @[hh_datapath_chisel.scala 292:17 293:17]
  wire [511:0] vk_update = _GEN_323[511:0]; // @[hh_datapath_chisel.scala 135:25]
  wire [511:0] vk = io_vk1_vld ? vk_update : vk_reg; // @[hh_datapath_chisel.scala 207:21 208:10 210:10]
  wire [31:0] ddot_dout = {FP_DDOT_dp_complex_12_io_out_s_Re,FP_DDOT_dp_complex_12_io_out_s_Im}; // @[Cat.scala 31:58]
  wire [31:0] _GEN_49 = 4'h1 == io_hh_cnt[3:0] ? myVec_1 : myVec_0; // @[hh_datapath_chisel.scala 279:{17,17}]
  wire [31:0] _GEN_50 = 4'h2 == io_hh_cnt[3:0] ? myVec_2 : _GEN_49; // @[hh_datapath_chisel.scala 279:{17,17}]
  wire [31:0] _GEN_51 = 4'h3 == io_hh_cnt[3:0] ? myVec_3 : _GEN_50; // @[hh_datapath_chisel.scala 279:{17,17}]
  wire [31:0] _GEN_52 = 4'h4 == io_hh_cnt[3:0] ? myVec_4 : _GEN_51; // @[hh_datapath_chisel.scala 279:{17,17}]
  wire [31:0] _GEN_53 = 4'h5 == io_hh_cnt[3:0] ? myVec_5 : _GEN_52; // @[hh_datapath_chisel.scala 279:{17,17}]
  wire [31:0] _GEN_54 = 4'h6 == io_hh_cnt[3:0] ? myVec_6 : _GEN_53; // @[hh_datapath_chisel.scala 279:{17,17}]
  wire [31:0] _GEN_55 = 4'h7 == io_hh_cnt[3:0] ? myVec_7 : _GEN_54; // @[hh_datapath_chisel.scala 279:{17,17}]
  wire [31:0] _GEN_56 = 4'h8 == io_hh_cnt[3:0] ? myVec_8 : _GEN_55; // @[hh_datapath_chisel.scala 279:{17,17}]
  wire [31:0] _GEN_57 = 4'h9 == io_hh_cnt[3:0] ? myVec_9 : _GEN_56; // @[hh_datapath_chisel.scala 279:{17,17}]
  wire [31:0] _GEN_58 = 4'ha == io_hh_cnt[3:0] ? myVec_10 : _GEN_57; // @[hh_datapath_chisel.scala 279:{17,17}]
  wire [31:0] _GEN_59 = 4'hb == io_hh_cnt[3:0] ? myVec_11 : _GEN_58; // @[hh_datapath_chisel.scala 279:{17,17}]
  wire [31:0] _GEN_60 = 4'hc == io_hh_cnt[3:0] ? myVec_12 : _GEN_59; // @[hh_datapath_chisel.scala 279:{17,17}]
  wire [31:0] _GEN_61 = 4'hd == io_hh_cnt[3:0] ? myVec_13 : _GEN_60; // @[hh_datapath_chisel.scala 279:{17,17}]
  wire [31:0] _GEN_62 = 4'he == io_hh_cnt[3:0] ? myVec_14 : _GEN_61; // @[hh_datapath_chisel.scala 279:{17,17}]
  wire [31:0] _GEN_63 = 4'hf == io_hh_cnt[3:0] ? myVec_15 : _GEN_62; // @[hh_datapath_chisel.scala 279:{17,17}]
  wire [31:0] _GEN_64 = io_d1_rdy ? _GEN_63 : 32'h0; // @[hh_datapath_chisel.scala 278:26 279:17 281:17]
  wire [31:0] x1_update = io_rst ? 32'h0 : _GEN_64; // @[hh_datapath_chisel.scala 276:17 277:17]
  wire [31:0] x1 = io_d1_rdy ? x1_update : x1_reg; // @[hh_datapath_chisel.scala 236:20 237:10 239:10]
  wire [15:0] d2_update = FP_square_root_newfpu_12_io_out_s; // @[hh_datapath_chisel.scala 142:25 329:15]
  wire [31:0] tk_update = {{16'd0}, hqr7_12_io_out_s}; // @[hh_datapath_chisel.scala 144:25 371:14]
  wire [31:0] _GEN_45 = io_tk_vld ? tk_update : {{16'd0}, tk_reg}; // @[hh_datapath_chisel.scala 254:20 255:10 257:10]
  wire [15:0] tk = _GEN_45[15:0]; // @[hh_datapath_chisel.scala 150:18]
  wire [31:0] d4 = io_d5_rdy ? d4_update : d4_reg; // @[hh_datapath_chisel.scala 260:20 261:10 263:10]
  wire [31:0] d5_update = {FPComplexMult_v2_12_io_out_s_Re,FPComplexMult_v2_12_io_out_s_Im}; // @[Cat.scala 31:58]
  reg [4031:0] d4_update_reg; // @[hh_datapath_chisel.scala 214:27]
  wire [4031:0] _d4_update_reg_T_1 = {FP_DDOT_dp_complex_12_io_out_s_Re,FP_DDOT_dp_complex_12_io_out_s_Im,d4_update_reg[
    4031:32]}; // @[Cat.scala 31:58]
  wire [31:0] _GEN_340 = {{16'd0}, ddot_din_a_reg[495:480]}; // @[hh_datapath_chisel.scala 318:117]
  wire [31:0] _T_6 = _GEN_340 ^ 32'h80000000; // @[hh_datapath_chisel.scala 318:117]
  wire [31:0] _GEN_341 = {{16'd0}, ddot_din_a_reg[463:448]}; // @[hh_datapath_chisel.scala 318:117]
  wire [31:0] _T_15 = _GEN_341 ^ 32'h80000000; // @[hh_datapath_chisel.scala 318:117]
  wire [31:0] _GEN_342 = {{16'd0}, ddot_din_a_reg[431:416]}; // @[hh_datapath_chisel.scala 318:117]
  wire [31:0] _T_24 = _GEN_342 ^ 32'h80000000; // @[hh_datapath_chisel.scala 318:117]
  wire [31:0] _GEN_343 = {{16'd0}, ddot_din_a_reg[399:384]}; // @[hh_datapath_chisel.scala 318:117]
  wire [31:0] _T_33 = _GEN_343 ^ 32'h80000000; // @[hh_datapath_chisel.scala 318:117]
  wire [31:0] _GEN_344 = {{16'd0}, ddot_din_a_reg[367:352]}; // @[hh_datapath_chisel.scala 318:117]
  wire [31:0] _T_42 = _GEN_344 ^ 32'h80000000; // @[hh_datapath_chisel.scala 318:117]
  wire [31:0] _GEN_345 = {{16'd0}, ddot_din_a_reg[335:320]}; // @[hh_datapath_chisel.scala 318:117]
  wire [31:0] _T_51 = _GEN_345 ^ 32'h80000000; // @[hh_datapath_chisel.scala 318:117]
  wire [31:0] _GEN_346 = {{16'd0}, ddot_din_a_reg[303:288]}; // @[hh_datapath_chisel.scala 318:117]
  wire [31:0] _T_60 = _GEN_346 ^ 32'h80000000; // @[hh_datapath_chisel.scala 318:117]
  wire [31:0] _GEN_347 = {{16'd0}, ddot_din_a_reg[271:256]}; // @[hh_datapath_chisel.scala 318:117]
  wire [31:0] _T_69 = _GEN_347 ^ 32'h80000000; // @[hh_datapath_chisel.scala 318:117]
  wire [31:0] _GEN_348 = {{16'd0}, ddot_din_a_reg[239:224]}; // @[hh_datapath_chisel.scala 318:117]
  wire [31:0] _T_78 = _GEN_348 ^ 32'h80000000; // @[hh_datapath_chisel.scala 318:117]
  wire [31:0] _GEN_349 = {{16'd0}, ddot_din_a_reg[207:192]}; // @[hh_datapath_chisel.scala 318:117]
  wire [31:0] _T_87 = _GEN_349 ^ 32'h80000000; // @[hh_datapath_chisel.scala 318:117]
  wire [31:0] _GEN_350 = {{16'd0}, ddot_din_a_reg[175:160]}; // @[hh_datapath_chisel.scala 318:117]
  wire [31:0] _T_96 = _GEN_350 ^ 32'h80000000; // @[hh_datapath_chisel.scala 318:117]
  wire [31:0] _GEN_351 = {{16'd0}, ddot_din_a_reg[143:128]}; // @[hh_datapath_chisel.scala 318:117]
  wire [31:0] _T_105 = _GEN_351 ^ 32'h80000000; // @[hh_datapath_chisel.scala 318:117]
  wire [31:0] _GEN_352 = {{16'd0}, ddot_din_a_reg[111:96]}; // @[hh_datapath_chisel.scala 318:117]
  wire [31:0] _T_114 = _GEN_352 ^ 32'h80000000; // @[hh_datapath_chisel.scala 318:117]
  wire [31:0] _GEN_353 = {{16'd0}, ddot_din_a_reg[79:64]}; // @[hh_datapath_chisel.scala 318:117]
  wire [31:0] _T_123 = _GEN_353 ^ 32'h80000000; // @[hh_datapath_chisel.scala 318:117]
  wire [31:0] _GEN_354 = {{16'd0}, ddot_din_a_reg[47:32]}; // @[hh_datapath_chisel.scala 318:117]
  wire [31:0] _T_132 = _GEN_354 ^ 32'h80000000; // @[hh_datapath_chisel.scala 318:117]
  wire [31:0] _GEN_355 = {{16'd0}, ddot_din_a_reg[15:0]}; // @[hh_datapath_chisel.scala 318:117]
  wire [31:0] _T_141 = _GEN_355 ^ 32'h80000000; // @[hh_datapath_chisel.scala 318:117]
  reg [31:0] myAxpyVec_0; // @[hh_datapath_chisel.scala 444:23]
  reg [31:0] myAxpyVec_1; // @[hh_datapath_chisel.scala 444:23]
  reg [31:0] myAxpyVec_2; // @[hh_datapath_chisel.scala 444:23]
  reg [31:0] myAxpyVec_3; // @[hh_datapath_chisel.scala 444:23]
  reg [31:0] myAxpyVec_4; // @[hh_datapath_chisel.scala 444:23]
  reg [31:0] myAxpyVec_5; // @[hh_datapath_chisel.scala 444:23]
  reg [31:0] myAxpyVec_6; // @[hh_datapath_chisel.scala 444:23]
  reg [31:0] myAxpyVec_7; // @[hh_datapath_chisel.scala 444:23]
  reg [31:0] myAxpyVec_8; // @[hh_datapath_chisel.scala 444:23]
  reg [31:0] myAxpyVec_9; // @[hh_datapath_chisel.scala 444:23]
  reg [31:0] myAxpyVec_10; // @[hh_datapath_chisel.scala 444:23]
  reg [31:0] myAxpyVec_11; // @[hh_datapath_chisel.scala 444:23]
  reg [31:0] myAxpyVec_12; // @[hh_datapath_chisel.scala 444:23]
  reg [31:0] myAxpyVec_13; // @[hh_datapath_chisel.scala 444:23]
  reg [31:0] myAxpyVec_14; // @[hh_datapath_chisel.scala 444:23]
  reg [31:0] myAxpyVec_15; // @[hh_datapath_chisel.scala 444:23]
  wire [31:0] _myAxpyVec_15_T = {axpy_dp_complex_12_io_out_s_0_Re,axpy_dp_complex_12_io_out_s_0_Im}; // @[Cat.scala 31:58]
  wire [31:0] _myAxpyVec_14_T = {axpy_dp_complex_12_io_out_s_1_Re,axpy_dp_complex_12_io_out_s_1_Im}; // @[Cat.scala 31:58]
  wire [31:0] _myAxpyVec_13_T = {axpy_dp_complex_12_io_out_s_2_Re,axpy_dp_complex_12_io_out_s_2_Im}; // @[Cat.scala 31:58]
  wire [31:0] _myAxpyVec_12_T = {axpy_dp_complex_12_io_out_s_3_Re,axpy_dp_complex_12_io_out_s_3_Im}; // @[Cat.scala 31:58]
  wire [31:0] _myAxpyVec_11_T = {axpy_dp_complex_12_io_out_s_4_Re,axpy_dp_complex_12_io_out_s_4_Im}; // @[Cat.scala 31:58]
  wire [31:0] _myAxpyVec_10_T = {axpy_dp_complex_12_io_out_s_5_Re,axpy_dp_complex_12_io_out_s_5_Im}; // @[Cat.scala 31:58]
  wire [31:0] _myAxpyVec_9_T = {axpy_dp_complex_12_io_out_s_6_Re,axpy_dp_complex_12_io_out_s_6_Im}; // @[Cat.scala 31:58]
  wire [31:0] _myAxpyVec_8_T = {axpy_dp_complex_12_io_out_s_7_Re,axpy_dp_complex_12_io_out_s_7_Im}; // @[Cat.scala 31:58]
  wire [31:0] _myAxpyVec_7_T = {axpy_dp_complex_12_io_out_s_8_Re,axpy_dp_complex_12_io_out_s_8_Im}; // @[Cat.scala 31:58]
  wire [31:0] _myAxpyVec_6_T = {axpy_dp_complex_12_io_out_s_9_Re,axpy_dp_complex_12_io_out_s_9_Im}; // @[Cat.scala 31:58]
  wire [31:0] _myAxpyVec_5_T = {axpy_dp_complex_12_io_out_s_10_Re,axpy_dp_complex_12_io_out_s_10_Im}; // @[Cat.scala 31:58]
  wire [31:0] _myAxpyVec_4_T = {axpy_dp_complex_12_io_out_s_11_Re,axpy_dp_complex_12_io_out_s_11_Im}; // @[Cat.scala 31:58]
  wire [31:0] _myAxpyVec_3_T = {axpy_dp_complex_12_io_out_s_12_Re,axpy_dp_complex_12_io_out_s_12_Im}; // @[Cat.scala 31:58]
  wire [31:0] _myAxpyVec_2_T = {axpy_dp_complex_12_io_out_s_13_Re,axpy_dp_complex_12_io_out_s_13_Im}; // @[Cat.scala 31:58]
  wire [31:0] _myAxpyVec_1_T = {axpy_dp_complex_12_io_out_s_14_Re,axpy_dp_complex_12_io_out_s_14_Im}; // @[Cat.scala 31:58]
  wire [31:0] _myAxpyVec_0_T = {axpy_dp_complex_12_io_out_s_15_Re,axpy_dp_complex_12_io_out_s_15_Im}; // @[Cat.scala 31:58]
  wire [255:0] io_hh_dout_lo = {myAxpyVec_7,myAxpyVec_6,myAxpyVec_5,myAxpyVec_4,myAxpyVec_3,myAxpyVec_2,myAxpyVec_1,
    myAxpyVec_0}; // @[hh_datapath_chisel.scala 453:29]
  wire [255:0] io_hh_dout_hi = {myAxpyVec_15,myAxpyVec_14,myAxpyVec_13,myAxpyVec_12,myAxpyVec_11,myAxpyVec_10,
    myAxpyVec_9,myAxpyVec_8}; // @[hh_datapath_chisel.scala 453:29]
  FP_DDOT_dp_complex_12 FP_DDOT_dp_complex_12 ( // @[hh_datapath_chisel.scala 313:21]
    .clock(FP_DDOT_dp_complex_12_clock),
    .reset(FP_DDOT_dp_complex_12_reset),
    .io_in_a_0_Re(FP_DDOT_dp_complex_12_io_in_a_0_Re),
    .io_in_a_0_Im(FP_DDOT_dp_complex_12_io_in_a_0_Im),
    .io_in_a_1_Re(FP_DDOT_dp_complex_12_io_in_a_1_Re),
    .io_in_a_1_Im(FP_DDOT_dp_complex_12_io_in_a_1_Im),
    .io_in_a_2_Re(FP_DDOT_dp_complex_12_io_in_a_2_Re),
    .io_in_a_2_Im(FP_DDOT_dp_complex_12_io_in_a_2_Im),
    .io_in_a_3_Re(FP_DDOT_dp_complex_12_io_in_a_3_Re),
    .io_in_a_3_Im(FP_DDOT_dp_complex_12_io_in_a_3_Im),
    .io_in_a_4_Re(FP_DDOT_dp_complex_12_io_in_a_4_Re),
    .io_in_a_4_Im(FP_DDOT_dp_complex_12_io_in_a_4_Im),
    .io_in_a_5_Re(FP_DDOT_dp_complex_12_io_in_a_5_Re),
    .io_in_a_5_Im(FP_DDOT_dp_complex_12_io_in_a_5_Im),
    .io_in_a_6_Re(FP_DDOT_dp_complex_12_io_in_a_6_Re),
    .io_in_a_6_Im(FP_DDOT_dp_complex_12_io_in_a_6_Im),
    .io_in_a_7_Re(FP_DDOT_dp_complex_12_io_in_a_7_Re),
    .io_in_a_7_Im(FP_DDOT_dp_complex_12_io_in_a_7_Im),
    .io_in_a_8_Re(FP_DDOT_dp_complex_12_io_in_a_8_Re),
    .io_in_a_8_Im(FP_DDOT_dp_complex_12_io_in_a_8_Im),
    .io_in_a_9_Re(FP_DDOT_dp_complex_12_io_in_a_9_Re),
    .io_in_a_9_Im(FP_DDOT_dp_complex_12_io_in_a_9_Im),
    .io_in_a_10_Re(FP_DDOT_dp_complex_12_io_in_a_10_Re),
    .io_in_a_10_Im(FP_DDOT_dp_complex_12_io_in_a_10_Im),
    .io_in_a_11_Re(FP_DDOT_dp_complex_12_io_in_a_11_Re),
    .io_in_a_11_Im(FP_DDOT_dp_complex_12_io_in_a_11_Im),
    .io_in_a_12_Re(FP_DDOT_dp_complex_12_io_in_a_12_Re),
    .io_in_a_12_Im(FP_DDOT_dp_complex_12_io_in_a_12_Im),
    .io_in_a_13_Re(FP_DDOT_dp_complex_12_io_in_a_13_Re),
    .io_in_a_13_Im(FP_DDOT_dp_complex_12_io_in_a_13_Im),
    .io_in_a_14_Re(FP_DDOT_dp_complex_12_io_in_a_14_Re),
    .io_in_a_14_Im(FP_DDOT_dp_complex_12_io_in_a_14_Im),
    .io_in_a_15_Re(FP_DDOT_dp_complex_12_io_in_a_15_Re),
    .io_in_a_15_Im(FP_DDOT_dp_complex_12_io_in_a_15_Im),
    .io_in_b_0_Re(FP_DDOT_dp_complex_12_io_in_b_0_Re),
    .io_in_b_0_Im(FP_DDOT_dp_complex_12_io_in_b_0_Im),
    .io_in_b_1_Re(FP_DDOT_dp_complex_12_io_in_b_1_Re),
    .io_in_b_1_Im(FP_DDOT_dp_complex_12_io_in_b_1_Im),
    .io_in_b_2_Re(FP_DDOT_dp_complex_12_io_in_b_2_Re),
    .io_in_b_2_Im(FP_DDOT_dp_complex_12_io_in_b_2_Im),
    .io_in_b_3_Re(FP_DDOT_dp_complex_12_io_in_b_3_Re),
    .io_in_b_3_Im(FP_DDOT_dp_complex_12_io_in_b_3_Im),
    .io_in_b_4_Re(FP_DDOT_dp_complex_12_io_in_b_4_Re),
    .io_in_b_4_Im(FP_DDOT_dp_complex_12_io_in_b_4_Im),
    .io_in_b_5_Re(FP_DDOT_dp_complex_12_io_in_b_5_Re),
    .io_in_b_5_Im(FP_DDOT_dp_complex_12_io_in_b_5_Im),
    .io_in_b_6_Re(FP_DDOT_dp_complex_12_io_in_b_6_Re),
    .io_in_b_6_Im(FP_DDOT_dp_complex_12_io_in_b_6_Im),
    .io_in_b_7_Re(FP_DDOT_dp_complex_12_io_in_b_7_Re),
    .io_in_b_7_Im(FP_DDOT_dp_complex_12_io_in_b_7_Im),
    .io_in_b_8_Re(FP_DDOT_dp_complex_12_io_in_b_8_Re),
    .io_in_b_8_Im(FP_DDOT_dp_complex_12_io_in_b_8_Im),
    .io_in_b_9_Re(FP_DDOT_dp_complex_12_io_in_b_9_Re),
    .io_in_b_9_Im(FP_DDOT_dp_complex_12_io_in_b_9_Im),
    .io_in_b_10_Re(FP_DDOT_dp_complex_12_io_in_b_10_Re),
    .io_in_b_10_Im(FP_DDOT_dp_complex_12_io_in_b_10_Im),
    .io_in_b_11_Re(FP_DDOT_dp_complex_12_io_in_b_11_Re),
    .io_in_b_11_Im(FP_DDOT_dp_complex_12_io_in_b_11_Im),
    .io_in_b_12_Re(FP_DDOT_dp_complex_12_io_in_b_12_Re),
    .io_in_b_12_Im(FP_DDOT_dp_complex_12_io_in_b_12_Im),
    .io_in_b_13_Re(FP_DDOT_dp_complex_12_io_in_b_13_Re),
    .io_in_b_13_Im(FP_DDOT_dp_complex_12_io_in_b_13_Im),
    .io_in_b_14_Re(FP_DDOT_dp_complex_12_io_in_b_14_Re),
    .io_in_b_14_Im(FP_DDOT_dp_complex_12_io_in_b_14_Im),
    .io_in_b_15_Re(FP_DDOT_dp_complex_12_io_in_b_15_Re),
    .io_in_b_15_Im(FP_DDOT_dp_complex_12_io_in_b_15_Im),
    .io_out_s_Re(FP_DDOT_dp_complex_12_io_out_s_Re),
    .io_out_s_Im(FP_DDOT_dp_complex_12_io_out_s_Im)
  );
  FP_square_root_newfpu_12 FP_square_root_newfpu_12 ( // @[hh_datapath_chisel.scala 326:22]
    .clock(FP_square_root_newfpu_12_clock),
    .reset(FP_square_root_newfpu_12_reset),
    .io_in_a(FP_square_root_newfpu_12_io_in_a),
    .io_out_s(FP_square_root_newfpu_12_io_out_s)
  );
  hqr5_complex_12 hqr5_complex_12 ( // @[hh_datapath_chisel.scala 360:20]
    .clock(hqr5_complex_12_clock),
    .reset(hqr5_complex_12_reset),
    .io_in_a_Re(hqr5_complex_12_io_in_a_Re),
    .io_in_a_Im(hqr5_complex_12_io_in_a_Im),
    .io_in_b_Re(hqr5_complex_12_io_in_b_Re),
    .io_out_s_Re(hqr5_complex_12_io_out_s_Re),
    .io_out_s_Im(hqr5_complex_12_io_out_s_Im)
  );
  hqr7_12 hqr7_12 ( // @[hh_datapath_chisel.scala 369:20]
    .clock(hqr7_12_clock),
    .reset(hqr7_12_reset),
    .io_in_a(hqr7_12_io_in_a),
    .io_out_s(hqr7_12_io_out_s)
  );
  FPComplexMult_v2_12 FPComplexMult_v2_12 ( // @[hh_datapath_chisel.scala 406:21]
    .clock(FPComplexMult_v2_12_clock),
    .reset(FPComplexMult_v2_12_reset),
    .io_in_a_Re(FPComplexMult_v2_12_io_in_a_Re),
    .io_in_a_Im(FPComplexMult_v2_12_io_in_a_Im),
    .io_in_b_Re(FPComplexMult_v2_12_io_in_b_Re),
    .io_in_b_Im(FPComplexMult_v2_12_io_in_b_Im),
    .io_out_s_Re(FPComplexMult_v2_12_io_out_s_Re),
    .io_out_s_Im(FPComplexMult_v2_12_io_out_s_Im)
  );
  axpy_dp_complex_12 axpy_dp_complex_12 ( // @[hh_datapath_chisel.scala 433:20]
    .clock(axpy_dp_complex_12_clock),
    .reset(axpy_dp_complex_12_reset),
    .io_in_a_Re(axpy_dp_complex_12_io_in_a_Re),
    .io_in_a_Im(axpy_dp_complex_12_io_in_a_Im),
    .io_in_b_0_Re(axpy_dp_complex_12_io_in_b_0_Re),
    .io_in_b_0_Im(axpy_dp_complex_12_io_in_b_0_Im),
    .io_in_b_1_Re(axpy_dp_complex_12_io_in_b_1_Re),
    .io_in_b_1_Im(axpy_dp_complex_12_io_in_b_1_Im),
    .io_in_b_2_Re(axpy_dp_complex_12_io_in_b_2_Re),
    .io_in_b_2_Im(axpy_dp_complex_12_io_in_b_2_Im),
    .io_in_b_3_Re(axpy_dp_complex_12_io_in_b_3_Re),
    .io_in_b_3_Im(axpy_dp_complex_12_io_in_b_3_Im),
    .io_in_b_4_Re(axpy_dp_complex_12_io_in_b_4_Re),
    .io_in_b_4_Im(axpy_dp_complex_12_io_in_b_4_Im),
    .io_in_b_5_Re(axpy_dp_complex_12_io_in_b_5_Re),
    .io_in_b_5_Im(axpy_dp_complex_12_io_in_b_5_Im),
    .io_in_b_6_Re(axpy_dp_complex_12_io_in_b_6_Re),
    .io_in_b_6_Im(axpy_dp_complex_12_io_in_b_6_Im),
    .io_in_b_7_Re(axpy_dp_complex_12_io_in_b_7_Re),
    .io_in_b_7_Im(axpy_dp_complex_12_io_in_b_7_Im),
    .io_in_b_8_Re(axpy_dp_complex_12_io_in_b_8_Re),
    .io_in_b_8_Im(axpy_dp_complex_12_io_in_b_8_Im),
    .io_in_b_9_Re(axpy_dp_complex_12_io_in_b_9_Re),
    .io_in_b_9_Im(axpy_dp_complex_12_io_in_b_9_Im),
    .io_in_b_10_Re(axpy_dp_complex_12_io_in_b_10_Re),
    .io_in_b_10_Im(axpy_dp_complex_12_io_in_b_10_Im),
    .io_in_b_11_Re(axpy_dp_complex_12_io_in_b_11_Re),
    .io_in_b_11_Im(axpy_dp_complex_12_io_in_b_11_Im),
    .io_in_b_12_Re(axpy_dp_complex_12_io_in_b_12_Re),
    .io_in_b_12_Im(axpy_dp_complex_12_io_in_b_12_Im),
    .io_in_b_13_Re(axpy_dp_complex_12_io_in_b_13_Re),
    .io_in_b_13_Im(axpy_dp_complex_12_io_in_b_13_Im),
    .io_in_b_14_Re(axpy_dp_complex_12_io_in_b_14_Re),
    .io_in_b_14_Im(axpy_dp_complex_12_io_in_b_14_Im),
    .io_in_b_15_Re(axpy_dp_complex_12_io_in_b_15_Re),
    .io_in_b_15_Im(axpy_dp_complex_12_io_in_b_15_Im),
    .io_in_c_0_Re(axpy_dp_complex_12_io_in_c_0_Re),
    .io_in_c_0_Im(axpy_dp_complex_12_io_in_c_0_Im),
    .io_in_c_1_Re(axpy_dp_complex_12_io_in_c_1_Re),
    .io_in_c_1_Im(axpy_dp_complex_12_io_in_c_1_Im),
    .io_in_c_2_Re(axpy_dp_complex_12_io_in_c_2_Re),
    .io_in_c_2_Im(axpy_dp_complex_12_io_in_c_2_Im),
    .io_in_c_3_Re(axpy_dp_complex_12_io_in_c_3_Re),
    .io_in_c_3_Im(axpy_dp_complex_12_io_in_c_3_Im),
    .io_in_c_4_Re(axpy_dp_complex_12_io_in_c_4_Re),
    .io_in_c_4_Im(axpy_dp_complex_12_io_in_c_4_Im),
    .io_in_c_5_Re(axpy_dp_complex_12_io_in_c_5_Re),
    .io_in_c_5_Im(axpy_dp_complex_12_io_in_c_5_Im),
    .io_in_c_6_Re(axpy_dp_complex_12_io_in_c_6_Re),
    .io_in_c_6_Im(axpy_dp_complex_12_io_in_c_6_Im),
    .io_in_c_7_Re(axpy_dp_complex_12_io_in_c_7_Re),
    .io_in_c_7_Im(axpy_dp_complex_12_io_in_c_7_Im),
    .io_in_c_8_Re(axpy_dp_complex_12_io_in_c_8_Re),
    .io_in_c_8_Im(axpy_dp_complex_12_io_in_c_8_Im),
    .io_in_c_9_Re(axpy_dp_complex_12_io_in_c_9_Re),
    .io_in_c_9_Im(axpy_dp_complex_12_io_in_c_9_Im),
    .io_in_c_10_Re(axpy_dp_complex_12_io_in_c_10_Re),
    .io_in_c_10_Im(axpy_dp_complex_12_io_in_c_10_Im),
    .io_in_c_11_Re(axpy_dp_complex_12_io_in_c_11_Re),
    .io_in_c_11_Im(axpy_dp_complex_12_io_in_c_11_Im),
    .io_in_c_12_Re(axpy_dp_complex_12_io_in_c_12_Re),
    .io_in_c_12_Im(axpy_dp_complex_12_io_in_c_12_Im),
    .io_in_c_13_Re(axpy_dp_complex_12_io_in_c_13_Re),
    .io_in_c_13_Im(axpy_dp_complex_12_io_in_c_13_Im),
    .io_in_c_14_Re(axpy_dp_complex_12_io_in_c_14_Re),
    .io_in_c_14_Im(axpy_dp_complex_12_io_in_c_14_Im),
    .io_in_c_15_Re(axpy_dp_complex_12_io_in_c_15_Re),
    .io_in_c_15_Im(axpy_dp_complex_12_io_in_c_15_Im),
    .io_out_s_0_Re(axpy_dp_complex_12_io_out_s_0_Re),
    .io_out_s_0_Im(axpy_dp_complex_12_io_out_s_0_Im),
    .io_out_s_1_Re(axpy_dp_complex_12_io_out_s_1_Re),
    .io_out_s_1_Im(axpy_dp_complex_12_io_out_s_1_Im),
    .io_out_s_2_Re(axpy_dp_complex_12_io_out_s_2_Re),
    .io_out_s_2_Im(axpy_dp_complex_12_io_out_s_2_Im),
    .io_out_s_3_Re(axpy_dp_complex_12_io_out_s_3_Re),
    .io_out_s_3_Im(axpy_dp_complex_12_io_out_s_3_Im),
    .io_out_s_4_Re(axpy_dp_complex_12_io_out_s_4_Re),
    .io_out_s_4_Im(axpy_dp_complex_12_io_out_s_4_Im),
    .io_out_s_5_Re(axpy_dp_complex_12_io_out_s_5_Re),
    .io_out_s_5_Im(axpy_dp_complex_12_io_out_s_5_Im),
    .io_out_s_6_Re(axpy_dp_complex_12_io_out_s_6_Re),
    .io_out_s_6_Im(axpy_dp_complex_12_io_out_s_6_Im),
    .io_out_s_7_Re(axpy_dp_complex_12_io_out_s_7_Re),
    .io_out_s_7_Im(axpy_dp_complex_12_io_out_s_7_Im),
    .io_out_s_8_Re(axpy_dp_complex_12_io_out_s_8_Re),
    .io_out_s_8_Im(axpy_dp_complex_12_io_out_s_8_Im),
    .io_out_s_9_Re(axpy_dp_complex_12_io_out_s_9_Re),
    .io_out_s_9_Im(axpy_dp_complex_12_io_out_s_9_Im),
    .io_out_s_10_Re(axpy_dp_complex_12_io_out_s_10_Re),
    .io_out_s_10_Im(axpy_dp_complex_12_io_out_s_10_Im),
    .io_out_s_11_Re(axpy_dp_complex_12_io_out_s_11_Re),
    .io_out_s_11_Im(axpy_dp_complex_12_io_out_s_11_Im),
    .io_out_s_12_Re(axpy_dp_complex_12_io_out_s_12_Re),
    .io_out_s_12_Im(axpy_dp_complex_12_io_out_s_12_Im),
    .io_out_s_13_Re(axpy_dp_complex_12_io_out_s_13_Re),
    .io_out_s_13_Im(axpy_dp_complex_12_io_out_s_13_Im),
    .io_out_s_14_Re(axpy_dp_complex_12_io_out_s_14_Re),
    .io_out_s_14_Im(axpy_dp_complex_12_io_out_s_14_Im),
    .io_out_s_15_Re(axpy_dp_complex_12_io_out_s_15_Re),
    .io_out_s_15_Im(axpy_dp_complex_12_io_out_s_15_Im)
  );
  assign io_hh_dout = {io_hh_dout_hi,io_hh_dout_lo}; // @[hh_datapath_chisel.scala 453:29]
  assign FP_DDOT_dp_complex_12_clock = io_clk;
  assign FP_DDOT_dp_complex_12_reset = io_rst;
  assign FP_DDOT_dp_complex_12_io_in_a_0_Re = ddot_din_a_reg[511:496]; // @[hh_datapath_chisel.scala 316:103]
  assign FP_DDOT_dp_complex_12_io_in_a_0_Im = _T_6[15:0]; // @[hh_datapath_chisel.scala 318:23]
  assign FP_DDOT_dp_complex_12_io_in_a_1_Re = ddot_din_a_reg[479:464]; // @[hh_datapath_chisel.scala 316:103]
  assign FP_DDOT_dp_complex_12_io_in_a_1_Im = _T_15[15:0]; // @[hh_datapath_chisel.scala 318:23]
  assign FP_DDOT_dp_complex_12_io_in_a_2_Re = ddot_din_a_reg[447:432]; // @[hh_datapath_chisel.scala 316:103]
  assign FP_DDOT_dp_complex_12_io_in_a_2_Im = _T_24[15:0]; // @[hh_datapath_chisel.scala 318:23]
  assign FP_DDOT_dp_complex_12_io_in_a_3_Re = ddot_din_a_reg[415:400]; // @[hh_datapath_chisel.scala 316:103]
  assign FP_DDOT_dp_complex_12_io_in_a_3_Im = _T_33[15:0]; // @[hh_datapath_chisel.scala 318:23]
  assign FP_DDOT_dp_complex_12_io_in_a_4_Re = ddot_din_a_reg[383:368]; // @[hh_datapath_chisel.scala 316:103]
  assign FP_DDOT_dp_complex_12_io_in_a_4_Im = _T_42[15:0]; // @[hh_datapath_chisel.scala 318:23]
  assign FP_DDOT_dp_complex_12_io_in_a_5_Re = ddot_din_a_reg[351:336]; // @[hh_datapath_chisel.scala 316:103]
  assign FP_DDOT_dp_complex_12_io_in_a_5_Im = _T_51[15:0]; // @[hh_datapath_chisel.scala 318:23]
  assign FP_DDOT_dp_complex_12_io_in_a_6_Re = ddot_din_a_reg[319:304]; // @[hh_datapath_chisel.scala 316:103]
  assign FP_DDOT_dp_complex_12_io_in_a_6_Im = _T_60[15:0]; // @[hh_datapath_chisel.scala 318:23]
  assign FP_DDOT_dp_complex_12_io_in_a_7_Re = ddot_din_a_reg[287:272]; // @[hh_datapath_chisel.scala 316:103]
  assign FP_DDOT_dp_complex_12_io_in_a_7_Im = _T_69[15:0]; // @[hh_datapath_chisel.scala 318:23]
  assign FP_DDOT_dp_complex_12_io_in_a_8_Re = ddot_din_a_reg[255:240]; // @[hh_datapath_chisel.scala 316:103]
  assign FP_DDOT_dp_complex_12_io_in_a_8_Im = _T_78[15:0]; // @[hh_datapath_chisel.scala 318:23]
  assign FP_DDOT_dp_complex_12_io_in_a_9_Re = ddot_din_a_reg[223:208]; // @[hh_datapath_chisel.scala 316:103]
  assign FP_DDOT_dp_complex_12_io_in_a_9_Im = _T_87[15:0]; // @[hh_datapath_chisel.scala 318:23]
  assign FP_DDOT_dp_complex_12_io_in_a_10_Re = ddot_din_a_reg[191:176]; // @[hh_datapath_chisel.scala 316:103]
  assign FP_DDOT_dp_complex_12_io_in_a_10_Im = _T_96[15:0]; // @[hh_datapath_chisel.scala 318:23]
  assign FP_DDOT_dp_complex_12_io_in_a_11_Re = ddot_din_a_reg[159:144]; // @[hh_datapath_chisel.scala 316:103]
  assign FP_DDOT_dp_complex_12_io_in_a_11_Im = _T_105[15:0]; // @[hh_datapath_chisel.scala 318:23]
  assign FP_DDOT_dp_complex_12_io_in_a_12_Re = ddot_din_a_reg[127:112]; // @[hh_datapath_chisel.scala 316:103]
  assign FP_DDOT_dp_complex_12_io_in_a_12_Im = _T_114[15:0]; // @[hh_datapath_chisel.scala 318:23]
  assign FP_DDOT_dp_complex_12_io_in_a_13_Re = ddot_din_a_reg[95:80]; // @[hh_datapath_chisel.scala 316:103]
  assign FP_DDOT_dp_complex_12_io_in_a_13_Im = _T_123[15:0]; // @[hh_datapath_chisel.scala 318:23]
  assign FP_DDOT_dp_complex_12_io_in_a_14_Re = ddot_din_a_reg[63:48]; // @[hh_datapath_chisel.scala 316:103]
  assign FP_DDOT_dp_complex_12_io_in_a_14_Im = _T_132[15:0]; // @[hh_datapath_chisel.scala 318:23]
  assign FP_DDOT_dp_complex_12_io_in_a_15_Re = ddot_din_a_reg[31:16]; // @[hh_datapath_chisel.scala 316:103]
  assign FP_DDOT_dp_complex_12_io_in_a_15_Im = _T_141[15:0]; // @[hh_datapath_chisel.scala 318:23]
  assign FP_DDOT_dp_complex_12_io_in_b_0_Re = ddot_din_b_reg[511:496]; // @[hh_datapath_chisel.scala 317:103]
  assign FP_DDOT_dp_complex_12_io_in_b_0_Im = ddot_din_b_reg[495:480]; // @[hh_datapath_chisel.scala 319:103]
  assign FP_DDOT_dp_complex_12_io_in_b_1_Re = ddot_din_b_reg[479:464]; // @[hh_datapath_chisel.scala 317:103]
  assign FP_DDOT_dp_complex_12_io_in_b_1_Im = ddot_din_b_reg[463:448]; // @[hh_datapath_chisel.scala 319:103]
  assign FP_DDOT_dp_complex_12_io_in_b_2_Re = ddot_din_b_reg[447:432]; // @[hh_datapath_chisel.scala 317:103]
  assign FP_DDOT_dp_complex_12_io_in_b_2_Im = ddot_din_b_reg[431:416]; // @[hh_datapath_chisel.scala 319:103]
  assign FP_DDOT_dp_complex_12_io_in_b_3_Re = ddot_din_b_reg[415:400]; // @[hh_datapath_chisel.scala 317:103]
  assign FP_DDOT_dp_complex_12_io_in_b_3_Im = ddot_din_b_reg[399:384]; // @[hh_datapath_chisel.scala 319:103]
  assign FP_DDOT_dp_complex_12_io_in_b_4_Re = ddot_din_b_reg[383:368]; // @[hh_datapath_chisel.scala 317:103]
  assign FP_DDOT_dp_complex_12_io_in_b_4_Im = ddot_din_b_reg[367:352]; // @[hh_datapath_chisel.scala 319:103]
  assign FP_DDOT_dp_complex_12_io_in_b_5_Re = ddot_din_b_reg[351:336]; // @[hh_datapath_chisel.scala 317:103]
  assign FP_DDOT_dp_complex_12_io_in_b_5_Im = ddot_din_b_reg[335:320]; // @[hh_datapath_chisel.scala 319:103]
  assign FP_DDOT_dp_complex_12_io_in_b_6_Re = ddot_din_b_reg[319:304]; // @[hh_datapath_chisel.scala 317:103]
  assign FP_DDOT_dp_complex_12_io_in_b_6_Im = ddot_din_b_reg[303:288]; // @[hh_datapath_chisel.scala 319:103]
  assign FP_DDOT_dp_complex_12_io_in_b_7_Re = ddot_din_b_reg[287:272]; // @[hh_datapath_chisel.scala 317:103]
  assign FP_DDOT_dp_complex_12_io_in_b_7_Im = ddot_din_b_reg[271:256]; // @[hh_datapath_chisel.scala 319:103]
  assign FP_DDOT_dp_complex_12_io_in_b_8_Re = ddot_din_b_reg[255:240]; // @[hh_datapath_chisel.scala 317:103]
  assign FP_DDOT_dp_complex_12_io_in_b_8_Im = ddot_din_b_reg[239:224]; // @[hh_datapath_chisel.scala 319:103]
  assign FP_DDOT_dp_complex_12_io_in_b_9_Re = ddot_din_b_reg[223:208]; // @[hh_datapath_chisel.scala 317:103]
  assign FP_DDOT_dp_complex_12_io_in_b_9_Im = ddot_din_b_reg[207:192]; // @[hh_datapath_chisel.scala 319:103]
  assign FP_DDOT_dp_complex_12_io_in_b_10_Re = ddot_din_b_reg[191:176]; // @[hh_datapath_chisel.scala 317:103]
  assign FP_DDOT_dp_complex_12_io_in_b_10_Im = ddot_din_b_reg[175:160]; // @[hh_datapath_chisel.scala 319:103]
  assign FP_DDOT_dp_complex_12_io_in_b_11_Re = ddot_din_b_reg[159:144]; // @[hh_datapath_chisel.scala 317:103]
  assign FP_DDOT_dp_complex_12_io_in_b_11_Im = ddot_din_b_reg[143:128]; // @[hh_datapath_chisel.scala 319:103]
  assign FP_DDOT_dp_complex_12_io_in_b_12_Re = ddot_din_b_reg[127:112]; // @[hh_datapath_chisel.scala 317:103]
  assign FP_DDOT_dp_complex_12_io_in_b_12_Im = ddot_din_b_reg[111:96]; // @[hh_datapath_chisel.scala 319:103]
  assign FP_DDOT_dp_complex_12_io_in_b_13_Re = ddot_din_b_reg[95:80]; // @[hh_datapath_chisel.scala 317:103]
  assign FP_DDOT_dp_complex_12_io_in_b_13_Im = ddot_din_b_reg[79:64]; // @[hh_datapath_chisel.scala 319:103]
  assign FP_DDOT_dp_complex_12_io_in_b_14_Re = ddot_din_b_reg[63:48]; // @[hh_datapath_chisel.scala 317:103]
  assign FP_DDOT_dp_complex_12_io_in_b_14_Im = ddot_din_b_reg[47:32]; // @[hh_datapath_chisel.scala 319:103]
  assign FP_DDOT_dp_complex_12_io_in_b_15_Re = ddot_din_b_reg[31:16]; // @[hh_datapath_chisel.scala 317:103]
  assign FP_DDOT_dp_complex_12_io_in_b_15_Im = ddot_din_b_reg[15:0]; // @[hh_datapath_chisel.scala 319:103]
  assign FP_square_root_newfpu_12_clock = io_clk;
  assign FP_square_root_newfpu_12_reset = io_rst;
  assign FP_square_root_newfpu_12_io_in_a = io_d1_vld ? ddot_dout[31:16] : d1_reg; // @[hh_datapath_chisel.scala 224:20 225:10 227:10]
  assign hqr5_complex_12_clock = io_clk;
  assign hqr5_complex_12_reset = io_rst;
  assign hqr5_complex_12_io_in_a_Re = x1[31:16]; // @[hh_datapath_chisel.scala 361:22]
  assign hqr5_complex_12_io_in_a_Im = x1[15:0]; // @[hh_datapath_chisel.scala 362:22]
  assign hqr5_complex_12_io_in_b_Re = io_d2_vld ? d2_update : d2_reg; // @[hh_datapath_chisel.scala 242:20 243:10 245:10]
  assign hqr7_12_clock = io_clk;
  assign hqr7_12_reset = io_rst;
  assign hqr7_12_io_in_a = io_d3_vld ? ddot_dout[31:16] : d3_reg; // @[hh_datapath_chisel.scala 230:20 231:10 233:10]
  assign FPComplexMult_v2_12_clock = io_clk;
  assign FPComplexMult_v2_12_reset = io_rst;
  assign FPComplexMult_v2_12_io_in_a_Re = d4[31:16]; // @[hh_datapath_chisel.scala 408:23]
  assign FPComplexMult_v2_12_io_in_a_Im = d4[15:0]; // @[hh_datapath_chisel.scala 409:23]
  assign FPComplexMult_v2_12_io_in_b_Re = _GEN_45[15:0]; // @[hh_datapath_chisel.scala 150:18]
  assign FPComplexMult_v2_12_io_in_b_Im = 16'h0; // @[hh_datapath_chisel.scala 411:18]
  assign axpy_dp_complex_12_clock = io_clk;
  assign axpy_dp_complex_12_reset = io_rst;
  assign axpy_dp_complex_12_io_in_a_Re = d5_reg[31:16]; // @[hh_datapath_chisel.scala 434:26]
  assign axpy_dp_complex_12_io_in_a_Im = d5_reg[15:0]; // @[hh_datapath_chisel.scala 435:26]
  assign axpy_dp_complex_12_io_in_b_0_Re = vk[511:496]; // @[hh_datapath_chisel.scala 437:89]
  assign axpy_dp_complex_12_io_in_b_0_Im = vk[495:480]; // @[hh_datapath_chisel.scala 438:89]
  assign axpy_dp_complex_12_io_in_b_1_Re = vk[479:464]; // @[hh_datapath_chisel.scala 437:89]
  assign axpy_dp_complex_12_io_in_b_1_Im = vk[463:448]; // @[hh_datapath_chisel.scala 438:89]
  assign axpy_dp_complex_12_io_in_b_2_Re = vk[447:432]; // @[hh_datapath_chisel.scala 437:89]
  assign axpy_dp_complex_12_io_in_b_2_Im = vk[431:416]; // @[hh_datapath_chisel.scala 438:89]
  assign axpy_dp_complex_12_io_in_b_3_Re = vk[415:400]; // @[hh_datapath_chisel.scala 437:89]
  assign axpy_dp_complex_12_io_in_b_3_Im = vk[399:384]; // @[hh_datapath_chisel.scala 438:89]
  assign axpy_dp_complex_12_io_in_b_4_Re = vk[383:368]; // @[hh_datapath_chisel.scala 437:89]
  assign axpy_dp_complex_12_io_in_b_4_Im = vk[367:352]; // @[hh_datapath_chisel.scala 438:89]
  assign axpy_dp_complex_12_io_in_b_5_Re = vk[351:336]; // @[hh_datapath_chisel.scala 437:89]
  assign axpy_dp_complex_12_io_in_b_5_Im = vk[335:320]; // @[hh_datapath_chisel.scala 438:89]
  assign axpy_dp_complex_12_io_in_b_6_Re = vk[319:304]; // @[hh_datapath_chisel.scala 437:89]
  assign axpy_dp_complex_12_io_in_b_6_Im = vk[303:288]; // @[hh_datapath_chisel.scala 438:89]
  assign axpy_dp_complex_12_io_in_b_7_Re = vk[287:272]; // @[hh_datapath_chisel.scala 437:89]
  assign axpy_dp_complex_12_io_in_b_7_Im = vk[271:256]; // @[hh_datapath_chisel.scala 438:89]
  assign axpy_dp_complex_12_io_in_b_8_Re = vk[255:240]; // @[hh_datapath_chisel.scala 437:89]
  assign axpy_dp_complex_12_io_in_b_8_Im = vk[239:224]; // @[hh_datapath_chisel.scala 438:89]
  assign axpy_dp_complex_12_io_in_b_9_Re = vk[223:208]; // @[hh_datapath_chisel.scala 437:89]
  assign axpy_dp_complex_12_io_in_b_9_Im = vk[207:192]; // @[hh_datapath_chisel.scala 438:89]
  assign axpy_dp_complex_12_io_in_b_10_Re = vk[191:176]; // @[hh_datapath_chisel.scala 437:89]
  assign axpy_dp_complex_12_io_in_b_10_Im = vk[175:160]; // @[hh_datapath_chisel.scala 438:89]
  assign axpy_dp_complex_12_io_in_b_11_Re = vk[159:144]; // @[hh_datapath_chisel.scala 437:89]
  assign axpy_dp_complex_12_io_in_b_11_Im = vk[143:128]; // @[hh_datapath_chisel.scala 438:89]
  assign axpy_dp_complex_12_io_in_b_12_Re = vk[127:112]; // @[hh_datapath_chisel.scala 437:89]
  assign axpy_dp_complex_12_io_in_b_12_Im = vk[111:96]; // @[hh_datapath_chisel.scala 438:89]
  assign axpy_dp_complex_12_io_in_b_13_Re = vk[95:80]; // @[hh_datapath_chisel.scala 437:89]
  assign axpy_dp_complex_12_io_in_b_13_Im = vk[79:64]; // @[hh_datapath_chisel.scala 438:89]
  assign axpy_dp_complex_12_io_in_b_14_Re = vk[63:48]; // @[hh_datapath_chisel.scala 437:89]
  assign axpy_dp_complex_12_io_in_b_14_Im = vk[47:32]; // @[hh_datapath_chisel.scala 438:89]
  assign axpy_dp_complex_12_io_in_b_15_Re = vk[31:16]; // @[hh_datapath_chisel.scala 437:89]
  assign axpy_dp_complex_12_io_in_b_15_Im = vk[15:0]; // @[hh_datapath_chisel.scala 438:89]
  assign axpy_dp_complex_12_io_in_c_0_Re = yj0[511:496]; // @[hh_datapath_chisel.scala 440:90]
  assign axpy_dp_complex_12_io_in_c_0_Im = yj0[495:480]; // @[hh_datapath_chisel.scala 441:90]
  assign axpy_dp_complex_12_io_in_c_1_Re = yj0[479:464]; // @[hh_datapath_chisel.scala 440:90]
  assign axpy_dp_complex_12_io_in_c_1_Im = yj0[463:448]; // @[hh_datapath_chisel.scala 441:90]
  assign axpy_dp_complex_12_io_in_c_2_Re = yj0[447:432]; // @[hh_datapath_chisel.scala 440:90]
  assign axpy_dp_complex_12_io_in_c_2_Im = yj0[431:416]; // @[hh_datapath_chisel.scala 441:90]
  assign axpy_dp_complex_12_io_in_c_3_Re = yj0[415:400]; // @[hh_datapath_chisel.scala 440:90]
  assign axpy_dp_complex_12_io_in_c_3_Im = yj0[399:384]; // @[hh_datapath_chisel.scala 441:90]
  assign axpy_dp_complex_12_io_in_c_4_Re = yj0[383:368]; // @[hh_datapath_chisel.scala 440:90]
  assign axpy_dp_complex_12_io_in_c_4_Im = yj0[367:352]; // @[hh_datapath_chisel.scala 441:90]
  assign axpy_dp_complex_12_io_in_c_5_Re = yj0[351:336]; // @[hh_datapath_chisel.scala 440:90]
  assign axpy_dp_complex_12_io_in_c_5_Im = yj0[335:320]; // @[hh_datapath_chisel.scala 441:90]
  assign axpy_dp_complex_12_io_in_c_6_Re = yj0[319:304]; // @[hh_datapath_chisel.scala 440:90]
  assign axpy_dp_complex_12_io_in_c_6_Im = yj0[303:288]; // @[hh_datapath_chisel.scala 441:90]
  assign axpy_dp_complex_12_io_in_c_7_Re = yj0[287:272]; // @[hh_datapath_chisel.scala 440:90]
  assign axpy_dp_complex_12_io_in_c_7_Im = yj0[271:256]; // @[hh_datapath_chisel.scala 441:90]
  assign axpy_dp_complex_12_io_in_c_8_Re = yj0[255:240]; // @[hh_datapath_chisel.scala 440:90]
  assign axpy_dp_complex_12_io_in_c_8_Im = yj0[239:224]; // @[hh_datapath_chisel.scala 441:90]
  assign axpy_dp_complex_12_io_in_c_9_Re = yj0[223:208]; // @[hh_datapath_chisel.scala 440:90]
  assign axpy_dp_complex_12_io_in_c_9_Im = yj0[207:192]; // @[hh_datapath_chisel.scala 441:90]
  assign axpy_dp_complex_12_io_in_c_10_Re = yj0[191:176]; // @[hh_datapath_chisel.scala 440:90]
  assign axpy_dp_complex_12_io_in_c_10_Im = yj0[175:160]; // @[hh_datapath_chisel.scala 441:90]
  assign axpy_dp_complex_12_io_in_c_11_Re = yj0[159:144]; // @[hh_datapath_chisel.scala 440:90]
  assign axpy_dp_complex_12_io_in_c_11_Im = yj0[143:128]; // @[hh_datapath_chisel.scala 441:90]
  assign axpy_dp_complex_12_io_in_c_12_Re = yj0[127:112]; // @[hh_datapath_chisel.scala 440:90]
  assign axpy_dp_complex_12_io_in_c_12_Im = yj0[111:96]; // @[hh_datapath_chisel.scala 441:90]
  assign axpy_dp_complex_12_io_in_c_13_Re = yj0[95:80]; // @[hh_datapath_chisel.scala 440:90]
  assign axpy_dp_complex_12_io_in_c_13_Im = yj0[79:64]; // @[hh_datapath_chisel.scala 441:90]
  assign axpy_dp_complex_12_io_in_c_14_Re = yj0[63:48]; // @[hh_datapath_chisel.scala 440:90]
  assign axpy_dp_complex_12_io_in_c_14_Im = yj0[47:32]; // @[hh_datapath_chisel.scala 441:90]
  assign axpy_dp_complex_12_io_in_c_15_Re = yj0[31:16]; // @[hh_datapath_chisel.scala 440:90]
  assign axpy_dp_complex_12_io_in_c_15_Im = yj0[15:0]; // @[hh_datapath_chisel.scala 441:90]
  always @(posedge io_clk) begin
    if (io_rst) begin // @[hh_datapath_chisel.scala 75:17]
      yj_reg_vec_0 <= 14528'h0; // @[hh_datapath_chisel.scala 78:22]
    end else if (io_yj_sft) begin // @[hh_datapath_chisel.scala 79:25]
      yj_reg_vec_0 <= _yj_reg_vec_0_T_1; // @[hh_datapath_chisel.scala 82:21]
    end
    if (io_rst) begin // @[hh_datapath_chisel.scala 75:17]
      yj_reg_vec_1 <= 14528'h0; // @[hh_datapath_chisel.scala 78:22]
    end else if (io_yj_sft) begin // @[hh_datapath_chisel.scala 79:25]
      yj_reg_vec_1 <= _yj_reg_vec_1_T_2; // @[hh_datapath_chisel.scala 85:20]
    end
    if (io_rst) begin // @[hh_datapath_chisel.scala 75:17]
      yj_reg_vec_2 <= 14528'h0; // @[hh_datapath_chisel.scala 78:22]
    end else if (io_yj_sft) begin // @[hh_datapath_chisel.scala 79:25]
      yj_reg_vec_2 <= _yj_reg_vec_2_T_2; // @[hh_datapath_chisel.scala 85:20]
    end
    if (io_rst) begin // @[hh_datapath_chisel.scala 75:17]
      yj_reg_vec_3 <= 14528'h0; // @[hh_datapath_chisel.scala 78:22]
    end else if (io_yj_sft) begin // @[hh_datapath_chisel.scala 79:25]
      yj_reg_vec_3 <= _yj_reg_vec_3_T_2; // @[hh_datapath_chisel.scala 85:20]
    end
    if (io_rst) begin // @[hh_datapath_chisel.scala 75:17]
      yj_reg_vec_4 <= 14528'h0; // @[hh_datapath_chisel.scala 78:22]
    end else if (io_yj_sft) begin // @[hh_datapath_chisel.scala 79:25]
      yj_reg_vec_4 <= _yj_reg_vec_4_T_2; // @[hh_datapath_chisel.scala 85:20]
    end
    if (io_rst) begin // @[hh_datapath_chisel.scala 75:17]
      yj_reg_vec_5 <= 14528'h0; // @[hh_datapath_chisel.scala 78:22]
    end else if (io_yj_sft) begin // @[hh_datapath_chisel.scala 79:25]
      yj_reg_vec_5 <= _yj_reg_vec_5_T_2; // @[hh_datapath_chisel.scala 85:20]
    end
    if (io_rst) begin // @[hh_datapath_chisel.scala 75:17]
      yj_reg_vec_6 <= 14528'h0; // @[hh_datapath_chisel.scala 78:22]
    end else if (io_yj_sft) begin // @[hh_datapath_chisel.scala 79:25]
      yj_reg_vec_6 <= _yj_reg_vec_6_T_2; // @[hh_datapath_chisel.scala 85:20]
    end
    if (io_rst) begin // @[hh_datapath_chisel.scala 75:17]
      yj_reg_vec_7 <= 14528'h0; // @[hh_datapath_chisel.scala 78:22]
    end else if (io_yj_sft) begin // @[hh_datapath_chisel.scala 79:25]
      yj_reg_vec_7 <= _yj_reg_vec_7_T_2; // @[hh_datapath_chisel.scala 85:20]
    end
    if (io_rst) begin // @[hh_datapath_chisel.scala 75:17]
      yj0 <= 512'h0; // @[hh_datapath_chisel.scala 76:11]
    end else if (io_yj_sft) begin // @[hh_datapath_chisel.scala 79:25]
      yj0 <= yj_reg_vec_7[511:0]; // @[hh_datapath_chisel.scala 80:11]
    end
    if (io_rst) begin // @[hh_datapath_chisel.scala 161:18]
      ddot_din_a_reg <= 512'h0; // @[hh_datapath_chisel.scala 162:22]
    end else if (io_d1_rdy) begin // @[hh_datapath_chisel.scala 187:20]
      ddot_din_a_reg <= io_hh_din; // @[hh_datapath_chisel.scala 188:18]
    end else if (io_d3_rdy) begin // @[hh_datapath_chisel.scala 189:26]
      ddot_din_a_reg <= vk; // @[hh_datapath_chisel.scala 190:18]
    end else if (io_d4_rdy) begin // @[hh_datapath_chisel.scala 191:26]
      ddot_din_a_reg <= vk; // @[hh_datapath_chisel.scala 192:18]
    end
    if (io_rst) begin // @[hh_datapath_chisel.scala 161:18]
      ddot_din_b_reg <= 512'h0; // @[hh_datapath_chisel.scala 163:22]
    end else if (io_d1_rdy) begin // @[hh_datapath_chisel.scala 197:20]
      ddot_din_b_reg <= io_hh_din; // @[hh_datapath_chisel.scala 198:18]
    end else if (io_d3_rdy) begin // @[hh_datapath_chisel.scala 199:26]
      if (io_vk1_vld) begin // @[hh_datapath_chisel.scala 207:21]
        ddot_din_b_reg <= vk_update; // @[hh_datapath_chisel.scala 208:10]
      end else begin
        ddot_din_b_reg <= vk_reg; // @[hh_datapath_chisel.scala 210:10]
      end
    end else if (io_d4_rdy) begin // @[hh_datapath_chisel.scala 201:26]
      ddot_din_b_reg <= io_hh_din; // @[hh_datapath_chisel.scala 202:18]
    end
    if (io_rst) begin // @[hh_datapath_chisel.scala 161:18]
      vk_reg <= 512'h0; // @[hh_datapath_chisel.scala 164:14]
    end else if (io_vk1_vld) begin // @[hh_datapath_chisel.scala 207:21]
      vk_reg <= vk_update; // @[hh_datapath_chisel.scala 208:10]
    end
    if (io_rst) begin // @[hh_datapath_chisel.scala 161:18]
      d1_reg <= 16'h0; // @[hh_datapath_chisel.scala 165:14]
    end else if (io_d1_vld) begin // @[hh_datapath_chisel.scala 224:20]
      d1_reg <= ddot_dout[31:16]; // @[hh_datapath_chisel.scala 225:10]
    end
    if (io_rst) begin // @[hh_datapath_chisel.scala 161:18]
      d3_reg <= 16'h0; // @[hh_datapath_chisel.scala 166:14]
    end else if (io_d3_vld) begin // @[hh_datapath_chisel.scala 230:20]
      d3_reg <= ddot_dout[31:16]; // @[hh_datapath_chisel.scala 231:10]
    end
    if (io_rst) begin // @[hh_datapath_chisel.scala 215:17]
      d4_update <= 32'h0; // @[hh_datapath_chisel.scala 216:17]
    end else if (io_d4_sft) begin // @[hh_datapath_chisel.scala 218:26]
      d4_update <= d4_update_reg[31:0]; // @[hh_datapath_chisel.scala 219:17]
    end
    if (io_rst) begin // @[hh_datapath_chisel.scala 161:18]
      x1_reg <= 32'h0; // @[hh_datapath_chisel.scala 167:14]
    end else if (io_d1_rdy) begin // @[hh_datapath_chisel.scala 236:20]
      if (io_rst) begin // @[hh_datapath_chisel.scala 276:17]
        x1_reg <= 32'h0; // @[hh_datapath_chisel.scala 277:17]
      end else if (io_d1_rdy) begin // @[hh_datapath_chisel.scala 278:26]
        x1_reg <= _GEN_63; // @[hh_datapath_chisel.scala 279:17]
      end else begin
        x1_reg <= 32'h0; // @[hh_datapath_chisel.scala 281:17]
      end
    end
    if (io_rst) begin // @[hh_datapath_chisel.scala 161:18]
      d2_reg <= 16'h0; // @[hh_datapath_chisel.scala 168:14]
    end else if (io_d2_vld) begin // @[hh_datapath_chisel.scala 242:20]
      d2_reg <= d2_update; // @[hh_datapath_chisel.scala 243:10]
    end
    if (io_rst) begin // @[hh_datapath_chisel.scala 161:18]
      vk1_reg <= 32'h0; // @[hh_datapath_chisel.scala 169:15]
    end else if (io_vk1_vld) begin // @[hh_datapath_chisel.scala 248:21]
      vk1_reg <= vk1_update; // @[hh_datapath_chisel.scala 249:11]
    end
    if (io_rst) begin // @[hh_datapath_chisel.scala 161:18]
      tk_reg <= 16'h0; // @[hh_datapath_chisel.scala 170:14]
    end else begin
      tk_reg <= tk; // @[hh_datapath_chisel.scala 182:14]
    end
    if (io_rst) begin // @[hh_datapath_chisel.scala 161:18]
      d4_reg <= 32'h0; // @[hh_datapath_chisel.scala 171:14]
    end else if (io_d5_rdy) begin // @[hh_datapath_chisel.scala 260:20]
      d4_reg <= d4_update; // @[hh_datapath_chisel.scala 261:10]
    end
    if (io_rst) begin // @[hh_datapath_chisel.scala 161:18]
      d5_reg <= 32'h0; // @[hh_datapath_chisel.scala 172:14]
    end else if (io_d5_vld) begin // @[hh_datapath_chisel.scala 266:20]
      d5_reg <= d5_update; // @[hh_datapath_chisel.scala 267:10]
    end
    if (io_rst) begin // @[hh_datapath_chisel.scala 215:17]
      d4_update_reg <= 4032'h0; // @[hh_datapath_chisel.scala 217:21]
    end else if (io_d4_sft) begin // @[hh_datapath_chisel.scala 218:26]
      d4_update_reg <= _d4_update_reg_T_1; // @[hh_datapath_chisel.scala 221:21]
    end
    if (io_rst) begin // @[hh_datapath_chisel.scala 445:16]
      myAxpyVec_0 <= 32'h0; // @[hh_datapath_chisel.scala 447:38]
    end else begin
      myAxpyVec_0 <= _myAxpyVec_0_T; // @[hh_datapath_chisel.scala 450:40]
    end
    if (io_rst) begin // @[hh_datapath_chisel.scala 445:16]
      myAxpyVec_1 <= 32'h0; // @[hh_datapath_chisel.scala 447:38]
    end else begin
      myAxpyVec_1 <= _myAxpyVec_1_T; // @[hh_datapath_chisel.scala 450:40]
    end
    if (io_rst) begin // @[hh_datapath_chisel.scala 445:16]
      myAxpyVec_2 <= 32'h0; // @[hh_datapath_chisel.scala 447:38]
    end else begin
      myAxpyVec_2 <= _myAxpyVec_2_T; // @[hh_datapath_chisel.scala 450:40]
    end
    if (io_rst) begin // @[hh_datapath_chisel.scala 445:16]
      myAxpyVec_3 <= 32'h0; // @[hh_datapath_chisel.scala 447:38]
    end else begin
      myAxpyVec_3 <= _myAxpyVec_3_T; // @[hh_datapath_chisel.scala 450:40]
    end
    if (io_rst) begin // @[hh_datapath_chisel.scala 445:16]
      myAxpyVec_4 <= 32'h0; // @[hh_datapath_chisel.scala 447:38]
    end else begin
      myAxpyVec_4 <= _myAxpyVec_4_T; // @[hh_datapath_chisel.scala 450:40]
    end
    if (io_rst) begin // @[hh_datapath_chisel.scala 445:16]
      myAxpyVec_5 <= 32'h0; // @[hh_datapath_chisel.scala 447:38]
    end else begin
      myAxpyVec_5 <= _myAxpyVec_5_T; // @[hh_datapath_chisel.scala 450:40]
    end
    if (io_rst) begin // @[hh_datapath_chisel.scala 445:16]
      myAxpyVec_6 <= 32'h0; // @[hh_datapath_chisel.scala 447:38]
    end else begin
      myAxpyVec_6 <= _myAxpyVec_6_T; // @[hh_datapath_chisel.scala 450:40]
    end
    if (io_rst) begin // @[hh_datapath_chisel.scala 445:16]
      myAxpyVec_7 <= 32'h0; // @[hh_datapath_chisel.scala 447:38]
    end else begin
      myAxpyVec_7 <= _myAxpyVec_7_T; // @[hh_datapath_chisel.scala 450:40]
    end
    if (io_rst) begin // @[hh_datapath_chisel.scala 445:16]
      myAxpyVec_8 <= 32'h0; // @[hh_datapath_chisel.scala 447:38]
    end else begin
      myAxpyVec_8 <= _myAxpyVec_8_T; // @[hh_datapath_chisel.scala 450:40]
    end
    if (io_rst) begin // @[hh_datapath_chisel.scala 445:16]
      myAxpyVec_9 <= 32'h0; // @[hh_datapath_chisel.scala 447:38]
    end else begin
      myAxpyVec_9 <= _myAxpyVec_9_T; // @[hh_datapath_chisel.scala 450:40]
    end
    if (io_rst) begin // @[hh_datapath_chisel.scala 445:16]
      myAxpyVec_10 <= 32'h0; // @[hh_datapath_chisel.scala 447:38]
    end else begin
      myAxpyVec_10 <= _myAxpyVec_10_T; // @[hh_datapath_chisel.scala 450:40]
    end
    if (io_rst) begin // @[hh_datapath_chisel.scala 445:16]
      myAxpyVec_11 <= 32'h0; // @[hh_datapath_chisel.scala 447:38]
    end else begin
      myAxpyVec_11 <= _myAxpyVec_11_T; // @[hh_datapath_chisel.scala 450:40]
    end
    if (io_rst) begin // @[hh_datapath_chisel.scala 445:16]
      myAxpyVec_12 <= 32'h0; // @[hh_datapath_chisel.scala 447:38]
    end else begin
      myAxpyVec_12 <= _myAxpyVec_12_T; // @[hh_datapath_chisel.scala 450:40]
    end
    if (io_rst) begin // @[hh_datapath_chisel.scala 445:16]
      myAxpyVec_13 <= 32'h0; // @[hh_datapath_chisel.scala 447:38]
    end else begin
      myAxpyVec_13 <= _myAxpyVec_13_T; // @[hh_datapath_chisel.scala 450:40]
    end
    if (io_rst) begin // @[hh_datapath_chisel.scala 445:16]
      myAxpyVec_14 <= 32'h0; // @[hh_datapath_chisel.scala 447:38]
    end else begin
      myAxpyVec_14 <= _myAxpyVec_14_T; // @[hh_datapath_chisel.scala 450:40]
    end
    if (io_rst) begin // @[hh_datapath_chisel.scala 445:16]
      myAxpyVec_15 <= 32'h0; // @[hh_datapath_chisel.scala 447:38]
    end else begin
      myAxpyVec_15 <= _myAxpyVec_15_T; // @[hh_datapath_chisel.scala 450:40]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {454{`RANDOM}};
  yj_reg_vec_0 = _RAND_0[14527:0];
  _RAND_1 = {454{`RANDOM}};
  yj_reg_vec_1 = _RAND_1[14527:0];
  _RAND_2 = {454{`RANDOM}};
  yj_reg_vec_2 = _RAND_2[14527:0];
  _RAND_3 = {454{`RANDOM}};
  yj_reg_vec_3 = _RAND_3[14527:0];
  _RAND_4 = {454{`RANDOM}};
  yj_reg_vec_4 = _RAND_4[14527:0];
  _RAND_5 = {454{`RANDOM}};
  yj_reg_vec_5 = _RAND_5[14527:0];
  _RAND_6 = {454{`RANDOM}};
  yj_reg_vec_6 = _RAND_6[14527:0];
  _RAND_7 = {454{`RANDOM}};
  yj_reg_vec_7 = _RAND_7[14527:0];
  _RAND_8 = {16{`RANDOM}};
  yj0 = _RAND_8[511:0];
  _RAND_9 = {16{`RANDOM}};
  ddot_din_a_reg = _RAND_9[511:0];
  _RAND_10 = {16{`RANDOM}};
  ddot_din_b_reg = _RAND_10[511:0];
  _RAND_11 = {16{`RANDOM}};
  vk_reg = _RAND_11[511:0];
  _RAND_12 = {1{`RANDOM}};
  d1_reg = _RAND_12[15:0];
  _RAND_13 = {1{`RANDOM}};
  d3_reg = _RAND_13[15:0];
  _RAND_14 = {1{`RANDOM}};
  d4_update = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  x1_reg = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  d2_reg = _RAND_16[15:0];
  _RAND_17 = {1{`RANDOM}};
  vk1_reg = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  tk_reg = _RAND_18[15:0];
  _RAND_19 = {1{`RANDOM}};
  d4_reg = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  d5_reg = _RAND_20[31:0];
  _RAND_21 = {126{`RANDOM}};
  d4_update_reg = _RAND_21[4031:0];
  _RAND_22 = {1{`RANDOM}};
  myAxpyVec_0 = _RAND_22[31:0];
  _RAND_23 = {1{`RANDOM}};
  myAxpyVec_1 = _RAND_23[31:0];
  _RAND_24 = {1{`RANDOM}};
  myAxpyVec_2 = _RAND_24[31:0];
  _RAND_25 = {1{`RANDOM}};
  myAxpyVec_3 = _RAND_25[31:0];
  _RAND_26 = {1{`RANDOM}};
  myAxpyVec_4 = _RAND_26[31:0];
  _RAND_27 = {1{`RANDOM}};
  myAxpyVec_5 = _RAND_27[31:0];
  _RAND_28 = {1{`RANDOM}};
  myAxpyVec_6 = _RAND_28[31:0];
  _RAND_29 = {1{`RANDOM}};
  myAxpyVec_7 = _RAND_29[31:0];
  _RAND_30 = {1{`RANDOM}};
  myAxpyVec_8 = _RAND_30[31:0];
  _RAND_31 = {1{`RANDOM}};
  myAxpyVec_9 = _RAND_31[31:0];
  _RAND_32 = {1{`RANDOM}};
  myAxpyVec_10 = _RAND_32[31:0];
  _RAND_33 = {1{`RANDOM}};
  myAxpyVec_11 = _RAND_33[31:0];
  _RAND_34 = {1{`RANDOM}};
  myAxpyVec_12 = _RAND_34[31:0];
  _RAND_35 = {1{`RANDOM}};
  myAxpyVec_13 = _RAND_35[31:0];
  _RAND_36 = {1{`RANDOM}};
  myAxpyVec_14 = _RAND_36[31:0];
  _RAND_37 = {1{`RANDOM}};
  myAxpyVec_15 = _RAND_37[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module hh_datapath(
  input          clk,
  input          rst,
  input  [15:0]  hh_cnt,
  input          d1_rdy,
  input          d1_vld,
  input          d2_rdy,
  input          d2_vld,
  input          vk1_rdy,
  input          vk1_vld,
  input          d3_rdy,
  input          d3_vld,
  input          tk_rdy,
  input          tk_vld,
  input          d4_rdy,
  input          d4_vld,
  input          d5_rdy,
  input          d5_vld,
  input          yjp_rdy,
  input          yjp_vld,
  input          yj_sft,
  input          d4_sft,
  input  [511:0] hh_din,
  output [511:0] hh_dout
);
  wire  hh_datapath_1_io_clk; // @[hh_datapath_chisel.scala 484:62]
  wire  hh_datapath_1_io_rst; // @[hh_datapath_chisel.scala 484:62]
  wire [15:0] hh_datapath_1_io_hh_cnt; // @[hh_datapath_chisel.scala 484:62]
  wire  hh_datapath_1_io_d1_rdy; // @[hh_datapath_chisel.scala 484:62]
  wire  hh_datapath_1_io_d1_vld; // @[hh_datapath_chisel.scala 484:62]
  wire  hh_datapath_1_io_d2_vld; // @[hh_datapath_chisel.scala 484:62]
  wire  hh_datapath_1_io_vk1_vld; // @[hh_datapath_chisel.scala 484:62]
  wire  hh_datapath_1_io_d3_rdy; // @[hh_datapath_chisel.scala 484:62]
  wire  hh_datapath_1_io_d3_vld; // @[hh_datapath_chisel.scala 484:62]
  wire  hh_datapath_1_io_tk_vld; // @[hh_datapath_chisel.scala 484:62]
  wire  hh_datapath_1_io_d4_rdy; // @[hh_datapath_chisel.scala 484:62]
  wire  hh_datapath_1_io_d5_rdy; // @[hh_datapath_chisel.scala 484:62]
  wire  hh_datapath_1_io_d5_vld; // @[hh_datapath_chisel.scala 484:62]
  wire  hh_datapath_1_io_yj_sft; // @[hh_datapath_chisel.scala 484:62]
  wire  hh_datapath_1_io_d4_sft; // @[hh_datapath_chisel.scala 484:62]
  wire [511:0] hh_datapath_1_io_hh_din; // @[hh_datapath_chisel.scala 484:62]
  wire [511:0] hh_datapath_1_io_hh_dout; // @[hh_datapath_chisel.scala 484:62]
  hh_datapath_1 hh_datapath_1 ( // @[hh_datapath_chisel.scala 484:62]
    .io_clk(hh_datapath_1_io_clk),
    .io_rst(hh_datapath_1_io_rst),
    .io_hh_cnt(hh_datapath_1_io_hh_cnt),
    .io_d1_rdy(hh_datapath_1_io_d1_rdy),
    .io_d1_vld(hh_datapath_1_io_d1_vld),
    .io_d2_vld(hh_datapath_1_io_d2_vld),
    .io_vk1_vld(hh_datapath_1_io_vk1_vld),
    .io_d3_rdy(hh_datapath_1_io_d3_rdy),
    .io_d3_vld(hh_datapath_1_io_d3_vld),
    .io_tk_vld(hh_datapath_1_io_tk_vld),
    .io_d4_rdy(hh_datapath_1_io_d4_rdy),
    .io_d5_rdy(hh_datapath_1_io_d5_rdy),
    .io_d5_vld(hh_datapath_1_io_d5_vld),
    .io_yj_sft(hh_datapath_1_io_yj_sft),
    .io_d4_sft(hh_datapath_1_io_d4_sft),
    .io_hh_din(hh_datapath_1_io_hh_din),
    .io_hh_dout(hh_datapath_1_io_hh_dout)
  );
  assign hh_dout = hh_datapath_1_io_hh_dout; // @[hh_datapath_chisel.scala 507:17]
  assign hh_datapath_1_io_clk = clk; // @[hh_datapath_chisel.scala 485:30]
  assign hh_datapath_1_io_rst = rst; // @[hh_datapath_chisel.scala 486:30]
  assign hh_datapath_1_io_hh_cnt = hh_cnt; // @[hh_datapath_chisel.scala 487:33]
  assign hh_datapath_1_io_d1_rdy = d1_rdy; // @[hh_datapath_chisel.scala 488:33]
  assign hh_datapath_1_io_d1_vld = d1_vld; // @[hh_datapath_chisel.scala 489:33]
  assign hh_datapath_1_io_d2_vld = d2_vld; // @[hh_datapath_chisel.scala 491:33]
  assign hh_datapath_1_io_vk1_vld = vk1_vld; // @[hh_datapath_chisel.scala 493:34]
  assign hh_datapath_1_io_d3_rdy = d3_rdy; // @[hh_datapath_chisel.scala 494:33]
  assign hh_datapath_1_io_d3_vld = d3_vld; // @[hh_datapath_chisel.scala 495:33]
  assign hh_datapath_1_io_tk_vld = tk_vld; // @[hh_datapath_chisel.scala 497:33]
  assign hh_datapath_1_io_d4_rdy = d4_rdy; // @[hh_datapath_chisel.scala 498:33]
  assign hh_datapath_1_io_d5_rdy = d5_rdy; // @[hh_datapath_chisel.scala 500:33]
  assign hh_datapath_1_io_d5_vld = d5_vld; // @[hh_datapath_chisel.scala 501:33]
  assign hh_datapath_1_io_yj_sft = yj_sft; // @[hh_datapath_chisel.scala 504:33]
  assign hh_datapath_1_io_d4_sft = d4_sft; // @[hh_datapath_chisel.scala 505:33]
  assign hh_datapath_1_io_hh_din = hh_din; // @[hh_datapath_chisel.scala 506:33]
endmodule

