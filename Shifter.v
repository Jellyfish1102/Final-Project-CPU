module Shifter( out, dataA, dataB, rst, signal );
  input rst;
  input [5:0] signal;
  input [31:0] dataA, dataB;
  output [31:0] out;
  
  wire [31:0] st1, st2, st3, st4, temp;
  
  // 1 bit shift left
  mux_2to1 mux0_0( .in1(1'b0), .in0(dataA[0]), .out(st1[0]), .sel(dataB[0]) ) ;
  mux_2to1 mux0_1( .in1(dataA[0]), .in0(dataA[1]), .out(st1[1]), .sel(dataB[0]) ) ;
  mux_2to1 mux0_2( .in1(dataA[1]), .in0(dataA[2]), .out(st1[2]), .sel(dataB[0]) ) ;
  mux_2to1 mux0_3( .in1(dataA[2]), .in0(dataA[3]), .out(st1[3]), .sel(dataB[0]) ) ;
  mux_2to1 mux0_4( .in1(dataA[3]), .in0(dataA[4]), .out(st1[4]), .sel(dataB[0]) ) ;
  mux_2to1 mux0_5( .in1(dataA[4]), .in0(dataA[5]), .out(st1[5]), .sel(dataB[0]) ) ;
  mux_2to1 mux0_6( .in1(dataA[5]), .in0(dataA[6]), .out(st1[6]), .sel(dataB[0]) ) ;
  mux_2to1 mux0_7( .in1(dataA[6]), .in0(dataA[7]), .out(st1[7]), .sel(dataB[0]) ) ;
  mux_2to1 mux0_8( .in1(dataA[7]), .in0(dataA[8]), .out(st1[8]), .sel(dataB[0]) ) ;
  mux_2to1 mux0_9( .in1(dataA[8]), .in0(dataA[9]), .out(st1[9]), .sel(dataB[0]) ) ;
  mux_2to1 mux0_10( .in1(dataA[9]), .in0(dataA[10]), .out(st1[10]), .sel(dataB[0]) ) ;
  mux_2to1 mux0_11( .in1(dataA[10]), .in0(dataA[11]), .out(st1[11]), .sel(dataB[0]) ) ;
  mux_2to1 mux0_12( .in1(dataA[11]), .in0(dataA[12]), .out(st1[12]), .sel(dataB[0]) ) ;
  mux_2to1 mux0_13( .in1(dataA[12]), .in0(dataA[13]), .out(st1[13]), .sel(dataB[0]) ) ;
  mux_2to1 mux0_14( .in1(dataA[13]), .in0(dataA[14]), .out(st1[14]), .sel(dataB[0]) ) ;
  mux_2to1 mux0_15( .in1(dataA[14]), .in0(dataA[15]), .out(st1[15]), .sel(dataB[0]) ) ;
  mux_2to1 mux0_16( .in1(dataA[15]), .in0(dataA[16]), .out(st1[16]), .sel(dataB[0]) ) ;
  mux_2to1 mux0_17( .in1(dataA[16]), .in0(dataA[17]), .out(st1[17]), .sel(dataB[0]) ) ;
  mux_2to1 mux0_18( .in1(dataA[17]), .in0(dataA[18]), .out(st1[18]), .sel(dataB[0]) ) ;
  mux_2to1 mux0_19( .in1(dataA[18]), .in0(dataA[19]), .out(st1[19]), .sel(dataB[0]) ) ;
  mux_2to1 mux0_20( .in1(dataA[19]), .in0(dataA[20]), .out(st1[20]), .sel(dataB[0]) ) ;
  mux_2to1 mux0_21( .in1(dataA[20]), .in0(dataA[21]), .out(st1[21]), .sel(dataB[0]) ) ;
  mux_2to1 mux0_22( .in1(dataA[21]), .in0(dataA[22]), .out(st1[22]), .sel(dataB[0]) ) ;
  mux_2to1 mux0_23( .in1(dataA[22]), .in0(dataA[23]), .out(st1[23]), .sel(dataB[0]) ) ;
  mux_2to1 mux0_24( .in1(dataA[23]), .in0(dataA[24]), .out(st1[24]), .sel(dataB[0]) ) ;
  mux_2to1 mux0_25( .in1(dataA[24]), .in0(dataA[25]), .out(st1[25]), .sel(dataB[0]) ) ;
  mux_2to1 mux0_26( .in1(dataA[25]), .in0(dataA[26]), .out(st1[26]), .sel(dataB[0]) ) ;
  mux_2to1 mux0_27( .in1(dataA[26]), .in0(dataA[27]), .out(st1[27]), .sel(dataB[0]) ) ;
  mux_2to1 mux0_28( .in1(dataA[27]), .in0(dataA[28]), .out(st1[28]), .sel(dataB[0]) ) ;
  mux_2to1 mux0_29( .in1(dataA[28]), .in0(dataA[29]), .out(st1[29]), .sel(dataB[0]) ) ;
  mux_2to1 mux0_30( .in1(dataA[29]), .in0(dataA[30]), .out(st1[30]), .sel(dataB[0]) ) ;
  mux_2to1 mux0_31( .in1(dataA[30]), .in0(dataA[31]), .out(st1[31]), .sel(dataB[0]) ) ;

  // 2 bit shift left
  mux_2to1 mux1_0( .in1(1'b0), .in0(st1[0]), .out(st2[0]), .sel(dataB[1]) ) ;
  mux_2to1 mux1_1( .in1(1'b0), .in0(st1[1]), .out(st2[1]), .sel(dataB[1]) ) ;
  mux_2to1 mux1_2( .in1(st1[0]), .in0(st1[2]), .out(st2[2]), .sel(dataB[1]) ) ;
  mux_2to1 mux1_3( .in1(st1[1]), .in0(st1[3]), .out(st2[3]), .sel(dataB[1]) ) ;
  mux_2to1 mux1_4( .in1(st1[2]), .in0(st1[4]), .out(st2[4]), .sel(dataB[1]) ) ;
  mux_2to1 mux1_5( .in1(st1[3]), .in0(st1[5]), .out(st2[5]), .sel(dataB[1]) ) ;
  mux_2to1 mux1_6( .in1(st1[4]), .in0(st1[6]), .out(st2[6]), .sel(dataB[1]) ) ;
  mux_2to1 mux1_7( .in1(st1[5]), .in0(st1[7]), .out(st2[7]), .sel(dataB[1]) ) ;
  mux_2to1 mux1_8( .in1(st1[6]), .in0(st1[8]), .out(st2[8]), .sel(dataB[1]) ) ;
  mux_2to1 mux1_9( .in1(st1[7]), .in0(st1[9]), .out(st2[9]), .sel(dataB[1]) ) ;
  mux_2to1 mux1_10( .in1(st1[8]), .in0(st1[10]), .out(st2[10]), .sel(dataB[1]) ) ;
  mux_2to1 mux1_11( .in1(st1[9]), .in0(st1[11]), .out(st2[11]), .sel(dataB[1]) ) ;
  mux_2to1 mux1_12( .in1(st1[10]), .in0(st1[12]), .out(st2[12]), .sel(dataB[1]) ) ;
  mux_2to1 mux1_13( .in1(st1[11]), .in0(st1[13]), .out(st2[13]), .sel(dataB[1]) ) ;
  mux_2to1 mux1_14( .in1(st1[12]), .in0(st1[14]), .out(st2[14]), .sel(dataB[1]) ) ;
  mux_2to1 mux1_15( .in1(st1[13]), .in0(st1[15]), .out(st2[15]), .sel(dataB[1]) ) ;
  mux_2to1 mux1_16( .in1(st1[14]), .in0(st1[16]), .out(st2[16]), .sel(dataB[1]) ) ;
  mux_2to1 mux1_17( .in1(st1[15]), .in0(st1[17]), .out(st2[17]), .sel(dataB[1]) ) ;
  mux_2to1 mux1_18( .in1(st1[16]), .in0(st1[18]), .out(st2[18]), .sel(dataB[1]) ) ;
  mux_2to1 mux1_19( .in1(st1[17]), .in0(st1[19]), .out(st2[19]), .sel(dataB[1]) ) ;
  mux_2to1 mux1_20( .in1(st1[18]), .in0(st1[20]), .out(st2[20]), .sel(dataB[1]) ) ;
  mux_2to1 mux1_21( .in1(st1[19]), .in0(st1[21]), .out(st2[21]), .sel(dataB[1]) ) ;
  mux_2to1 mux1_22( .in1(st1[20]), .in0(st1[22]), .out(st2[22]), .sel(dataB[1]) ) ;
  mux_2to1 mux1_23( .in1(st1[21]), .in0(st1[23]), .out(st2[23]), .sel(dataB[1]) ) ;
  mux_2to1 mux1_24( .in1(st1[22]), .in0(st1[24]), .out(st2[24]), .sel(dataB[1]) ) ;
  mux_2to1 mux1_25( .in1(st1[23]), .in0(st1[25]), .out(st2[25]), .sel(dataB[1]) ) ;
  mux_2to1 mux1_26( .in1(st1[24]), .in0(st1[26]), .out(st2[26]), .sel(dataB[1]) ) ;
  mux_2to1 mux1_27( .in1(st1[25]), .in0(st1[27]), .out(st2[27]), .sel(dataB[1]) ) ;
  mux_2to1 mux1_28( .in1(st1[26]), .in0(st1[28]), .out(st2[28]), .sel(dataB[1]) ) ;
  mux_2to1 mux1_29( .in1(st1[27]), .in0(st1[29]), .out(st2[29]), .sel(dataB[1]) ) ;
  mux_2to1 mux1_30( .in1(st1[28]), .in0(st1[30]), .out(st2[30]), .sel(dataB[1]) ) ;
  mux_2to1 mux1_31( .in1(st1[29]), .in0(st1[31]), .out(st2[31]), .sel(dataB[1]) ) ;

  // 4 bit shift left
  mux_2to1 mux2_0( .in1(1'b0), .in0(st2[0]), .out(st3[0]), .sel(dataB[2]) ) ;
  mux_2to1 mux2_1( .in1(1'b0), .in0(st2[1]), .out(st3[1]), .sel(dataB[2]) ) ;
  mux_2to1 mux2_2( .in1(1'b0), .in0(st2[2]), .out(st3[2]), .sel(dataB[2]) ) ;
  mux_2to1 mux2_3( .in1(1'b0), .in0(st2[3]), .out(st3[3]), .sel(dataB[2]) ) ;
  mux_2to1 mux2_4( .in1(st2[0]), .in0(st2[4]), .out(st3[4]), .sel(dataB[2]) ) ;
  mux_2to1 mux2_5( .in1(st2[1]), .in0(st2[5]), .out(st3[5]), .sel(dataB[2]) ) ;
  mux_2to1 mux2_6( .in1(st2[2]), .in0(st2[6]), .out(st3[6]), .sel(dataB[2]) ) ;
  mux_2to1 mux2_7( .in1(st2[3]), .in0(st2[7]), .out(st3[7]), .sel(dataB[2]) ) ;
  mux_2to1 mux2_8( .in1(st2[4]), .in0(st2[8]), .out(st3[8]), .sel(dataB[2]) ) ;
  mux_2to1 mux2_9( .in1(st2[5]), .in0(st2[9]), .out(st3[9]), .sel(dataB[2]) ) ;
  mux_2to1 mux2_10( .in1(st2[6]), .in0(st2[10]), .out(st3[10]), .sel(dataB[2]) ) ;
  mux_2to1 mux2_11( .in1(st2[7]), .in0(st2[11]), .out(st3[11]), .sel(dataB[2]) ) ;
  mux_2to1 mux2_12( .in1(st2[8]), .in0(st2[12]), .out(st3[12]), .sel(dataB[2]) ) ;
  mux_2to1 mux2_13( .in1(st2[9]), .in0(st2[13]), .out(st3[13]), .sel(dataB[2]) ) ;
  mux_2to1 mux2_14( .in1(st2[10]), .in0(st2[14]), .out(st3[14]), .sel(dataB[2]) ) ;
  mux_2to1 mux2_15( .in1(st2[11]), .in0(st2[15]), .out(st3[15]), .sel(dataB[2]) ) ;
  mux_2to1 mux2_16( .in1(st2[12]), .in0(st2[16]), .out(st3[16]), .sel(dataB[2]) ) ;
  mux_2to1 mux2_17( .in1(st2[13]), .in0(st2[17]), .out(st3[17]), .sel(dataB[2]) ) ;
  mux_2to1 mux2_18( .in1(st2[14]), .in0(st2[18]), .out(st3[18]), .sel(dataB[2]) ) ;
  mux_2to1 mux2_19( .in1(st2[15]), .in0(st2[19]), .out(st3[19]), .sel(dataB[2]) ) ;
  mux_2to1 mux2_20( .in1(st2[16]), .in0(st2[20]), .out(st3[20]), .sel(dataB[2]) ) ;
  mux_2to1 mux2_21( .in1(st2[17]), .in0(st2[21]), .out(st3[21]), .sel(dataB[2]) ) ;
  mux_2to1 mux2_22( .in1(st2[18]), .in0(st2[22]), .out(st3[22]), .sel(dataB[2]) ) ;
  mux_2to1 mux2_23( .in1(st2[19]), .in0(st2[23]), .out(st3[23]), .sel(dataB[2]) ) ;
  mux_2to1 mux2_24( .in1(st2[20]), .in0(st2[24]), .out(st3[24]), .sel(dataB[2]) ) ;
  mux_2to1 mux2_25( .in1(st2[21]), .in0(st2[25]), .out(st3[25]), .sel(dataB[2]) ) ;
  mux_2to1 mux2_26( .in1(st2[22]), .in0(st2[26]), .out(st3[26]), .sel(dataB[2]) ) ;
  mux_2to1 mux2_27( .in1(st2[23]), .in0(st2[27]), .out(st3[27]), .sel(dataB[2]) ) ;
  mux_2to1 mux2_28( .in1(st2[24]), .in0(st2[28]), .out(st3[28]), .sel(dataB[2]) ) ;
  mux_2to1 mux2_29( .in1(st2[25]), .in0(st2[29]), .out(st3[29]), .sel(dataB[2]) ) ;
  mux_2to1 mux2_30( .in1(st2[26]), .in0(st2[30]), .out(st3[30]), .sel(dataB[2]) ) ;
  mux_2to1 mux2_31( .in1(st2[27]), .in0(st2[31]), .out(st3[31]), .sel(dataB[2]) ) ;

  // 8 bit shift left
  mux_2to1 mux3_0( .in1(1'b0), .in0(st3[0]), .out(st4[0]), .sel(dataB[3]) ) ;
  mux_2to1 mux3_1( .in1(1'b0), .in0(st3[1]), .out(st4[1]), .sel(dataB[3]) ) ;
  mux_2to1 mux3_2( .in1(1'b0), .in0(st3[2]), .out(st4[2]), .sel(dataB[3]) ) ;
  mux_2to1 mux3_3( .in1(1'b0), .in0(st3[3]), .out(st4[3]), .sel(dataB[3]) ) ;
  mux_2to1 mux3_4( .in1(1'b0), .in0(st3[4]), .out(st4[4]), .sel(dataB[3]) ) ;
  mux_2to1 mux3_5( .in1(1'b0), .in0(st3[5]), .out(st4[5]), .sel(dataB[3]) ) ;
  mux_2to1 mux3_6( .in1(1'b0), .in0(st3[6]), .out(st4[6]), .sel(dataB[3]) ) ;
  mux_2to1 mux3_7( .in1(1'b0), .in0(st3[7]), .out(st4[7]), .sel(dataB[3]) ) ;
  mux_2to1 mux3_8( .in1(st3[0]), .in0(st3[8]), .out(st4[8]), .sel(dataB[3]) ) ;
  mux_2to1 mux3_9( .in1(st3[1]), .in0(st3[9]), .out(st4[9]), .sel(dataB[3]) ) ;
  mux_2to1 mux3_10( .in1(st3[2]), .in0(st3[10]), .out(st4[10]), .sel(dataB[3]) ) ;
  mux_2to1 mux3_11( .in1(st3[3]), .in0(st3[11]), .out(st4[11]), .sel(dataB[3]) ) ;
  mux_2to1 mux3_12( .in1(st3[4]), .in0(st3[12]), .out(st4[12]), .sel(dataB[3]) ) ;
  mux_2to1 mux3_13( .in1(st3[5]), .in0(st3[13]), .out(st4[13]), .sel(dataB[3]) ) ;
  mux_2to1 mux3_14( .in1(st3[6]), .in0(st3[14]), .out(st4[14]), .sel(dataB[3]) ) ;
  mux_2to1 mux3_15( .in1(st3[7]), .in0(st3[15]), .out(st4[15]), .sel(dataB[3]) ) ;
  mux_2to1 mux3_16( .in1(st3[8]), .in0(st3[16]), .out(st4[16]), .sel(dataB[3]) ) ;
  mux_2to1 mux3_17( .in1(st3[9]), .in0(st3[17]), .out(st4[17]), .sel(dataB[3]) ) ;
  mux_2to1 mux3_18( .in1(st3[10]), .in0(st3[18]), .out(st4[18]), .sel(dataB[3]) ) ;
  mux_2to1 mux3_19( .in1(st3[11]), .in0(st3[19]), .out(st4[19]), .sel(dataB[3]) ) ;
  mux_2to1 mux3_20( .in1(st3[12]), .in0(st3[20]), .out(st4[20]), .sel(dataB[3]) ) ;
  mux_2to1 mux3_21( .in1(st3[13]), .in0(st3[21]), .out(st4[21]), .sel(dataB[3]) ) ;
  mux_2to1 mux3_22( .in1(st3[14]), .in0(st3[22]), .out(st4[22]), .sel(dataB[3]) ) ;
  mux_2to1 mux3_23( .in1(st3[15]), .in0(st3[23]), .out(st4[23]), .sel(dataB[3]) ) ;
  mux_2to1 mux3_24( .in1(st3[16]), .in0(st3[24]), .out(st4[24]), .sel(dataB[3]) ) ;
  mux_2to1 mux3_25( .in1(st3[17]), .in0(st3[25]), .out(st4[25]), .sel(dataB[3]) ) ;
  mux_2to1 mux3_26( .in1(st3[18]), .in0(st3[26]), .out(st4[26]), .sel(dataB[3]) ) ;
  mux_2to1 mux3_27( .in1(st3[19]), .in0(st3[27]), .out(st4[27]), .sel(dataB[3]) ) ;
  mux_2to1 mux3_28( .in1(st3[20]), .in0(st3[28]), .out(st4[28]), .sel(dataB[3]) ) ;
  mux_2to1 mux3_29( .in1(st3[21]), .in0(st3[29]), .out(st4[29]), .sel(dataB[3]) ) ;
  mux_2to1 mux3_30( .in1(st3[22]), .in0(st3[30]), .out(st4[30]), .sel(dataB[3]) ) ;
  mux_2to1 mux3_31( .in1(st3[23]), .in0(st3[31]), .out(st4[31]), .sel(dataB[3]) ) ;

  // 16 bit shift left
  mux_2to1 mux4_0( .in1(1'b0), .in0(st4[0]), .out(temp[0]), .sel(dataB[4]) ) ;
  mux_2to1 mux4_1( .in1(1'b0), .in0(st4[1]), .out(temp[1]), .sel(dataB[4]) ) ;
  mux_2to1 mux4_2( .in1(1'b0), .in0(st4[2]), .out(temp[2]), .sel(dataB[4]) ) ;
  mux_2to1 mux4_3( .in1(1'b0), .in0(st4[3]), .out(temp[3]), .sel(dataB[4]) ) ;
  mux_2to1 mux4_4( .in1(1'b0), .in0(st4[4]), .out(temp[4]), .sel(dataB[4]) ) ;
  mux_2to1 mux4_5( .in1(1'b0), .in0(st4[5]), .out(temp[5]), .sel(dataB[4]) ) ;
  mux_2to1 mux4_6( .in1(1'b0), .in0(st4[6]), .out(temp[6]), .sel(dataB[4]) ) ;
  mux_2to1 mux4_7( .in1(1'b0), .in0(st4[7]), .out(temp[7]), .sel(dataB[4]) ) ;
  mux_2to1 mux4_8( .in1(1'b0), .in0(st4[8]), .out(temp[8]), .sel(dataB[4]) ) ;
  mux_2to1 mux4_9( .in1(1'b0), .in0(st4[9]), .out(temp[9]), .sel(dataB[4]) ) ;
  mux_2to1 mux4_10( .in1(1'b0), .in0(st4[10]), .out(temp[10]), .sel(dataB[4]) ) ;
  mux_2to1 mux4_11( .in1(1'b0), .in0(st4[11]), .out(temp[11]), .sel(dataB[4]) ) ;
  mux_2to1 mux4_12( .in1(1'b0), .in0(st4[12]), .out(temp[12]), .sel(dataB[4]) ) ;
  mux_2to1 mux4_13( .in1(1'b0), .in0(st4[13]), .out(temp[13]), .sel(dataB[4]) ) ;
  mux_2to1 mux4_14( .in1(1'b0), .in0(st4[14]), .out(temp[14]), .sel(dataB[4]) ) ;
  mux_2to1 mux4_15( .in1(1'b0), .in0(st4[15]), .out(temp[15]), .sel(dataB[4]) ) ;
  mux_2to1 mux4_16( .in1(st4[0]), .in0(st4[16]), .out(temp[16]), .sel(dataB[4]) ) ;
  mux_2to1 mux4_17( .in1(st4[1]), .in0(st4[17]), .out(temp[17]), .sel(dataB[4]) ) ;
  mux_2to1 mux4_18( .in1(st4[2]), .in0(st4[18]), .out(temp[18]), .sel(dataB[4]) ) ;
  mux_2to1 mux4_19( .in1(st4[3]), .in0(st4[19]), .out(temp[19]), .sel(dataB[4]) ) ;
  mux_2to1 mux4_20( .in1(st4[4]), .in0(st4[20]), .out(temp[20]), .sel(dataB[4]) ) ;
  mux_2to1 mux4_21( .in1(st4[5]), .in0(st4[21]), .out(temp[21]), .sel(dataB[4]) ) ;
  mux_2to1 mux4_22( .in1(st4[6]), .in0(st4[22]), .out(temp[22]), .sel(dataB[4]) ) ;
  mux_2to1 mux4_23( .in1(st4[7]), .in0(st4[23]), .out(temp[23]), .sel(dataB[4]) ) ;
  mux_2to1 mux4_24( .in1(st4[8]), .in0(st4[24]), .out(temp[24]), .sel(dataB[4]) ) ;
  mux_2to1 mux4_25( .in1(st4[9]), .in0(st4[25]), .out(temp[25]), .sel(dataB[4]) ) ;
  mux_2to1 mux4_26( .in1(st4[10]), .in0(st4[26]), .out(temp[26]), .sel(dataB[4]) ) ;
  mux_2to1 mux4_27( .in1(st4[11]), .in0(st4[27]), .out(temp[27]), .sel(dataB[4]) ) ;
  mux_2to1 mux4_28( .in1(st4[12]), .in0(st4[28]), .out(temp[28]), .sel(dataB[4]) ) ;
  mux_2to1 mux4_29( .in1(st4[13]), .in0(st4[29]), .out(temp[29]), .sel(dataB[4]) ) ;
  mux_2to1 mux4_30( .in1(st4[14]), .in0(st4[30]), .out(temp[30]), .sel(dataB[4]) ) ;
  mux_2to1 mux4_31( .in1(st4[15]), .in0(st4[31]), .out(temp[31]), .sel(dataB[4]) ) ;
  
  assign out = ( rst == 1'b1 )         ? 32'b0:
               ( signal == 6'b000000 ) ? temp :
                                         32'b0;
  
endmodule