//----------------------------------------------------------------------
//----------------------------------------------------------------------
// Created by      : giuseppe
// Creation Date   : 2019 Dec 05
// Created with uvmf_gen version 2019.1
//----------------------------------------------------------------------
//
//----------------------------------------------------------------------
// Project         : mnist_mlp_bench Simulation Bench 
// Unit            : HDL top level module
// File            : hdl_top.sv
//----------------------------------------------------------------------
//                                          
// Description: This top level module instantiates all synthesizable
//    static content.  This and tb_top.sv are the two top level modules
//    of the simulation.  
//
//    This module instantiates the following:
//        DUT: The Design Under Test
//        Interfaces:  Signal bundles that contain signals connected to DUT
//        Driver BFM's: BFM's that actively drive interface signals
//        Monitor BFM's: BFM's that passively monitor interface signals
//
//----------------------------------------------------------------------
//
//----------------------------------------------------------------------
//

import mnist_mlp_bench_parameters_pkg::*;
import uvmf_base_pkg_hdl::*;

module hdl_top;
  bit clk;
  // Instantiate a clk driver 
  initial begin
    clk = 0;
    #0ns;
    forever begin
      clk = ~clk;
      #5ns;
    end
  end

  bit rst;
  // Instantiate a rst driver
  initial begin
    rst = 1; 
    #25ns;
    rst =  0; 
  end

  // Instantiate the signal bundle, monitor bfm and driver bfm for each interface.
  // The signal bundle, _if, contains signals to be connected to the DUT.
  // The monitor, monitor_bfm, observes the bus, _if, and captures transactions.
  // The driver, driver_bfm, drives transactions onto the bus, _if.
  ccs_if #(.PROTOCOL_KIND(3),.WIDTH(14112),.RESET_POLARITY(1))  input1_rsc_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(3),.WIDTH(180),.RESET_POLARITY(1))  output1_rsc_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(2),.WIDTH(16),.RESET_POLARITY(1))  const_size_in_1_rsc_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(2),.WIDTH(16),.RESET_POLARITY(1))  const_size_out_1_rsc_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_0_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_1_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_2_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_3_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_4_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_5_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_6_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_7_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_8_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_9_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_10_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_11_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_12_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_13_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_14_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_15_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_16_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_17_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_18_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_19_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_20_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_21_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_22_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_23_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_24_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_25_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_26_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_27_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_28_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_29_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_30_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_31_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_32_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_33_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_34_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_35_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_36_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_37_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_38_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_39_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_40_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_41_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_42_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_43_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_44_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_45_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_46_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_47_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_48_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_49_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_50_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_51_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_52_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_53_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_54_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_55_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_56_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_57_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_58_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_59_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_60_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_61_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_62_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_63_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  b2_rsc_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_0_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_1_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_2_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_3_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_4_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_5_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_6_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_7_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_8_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_9_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_10_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_11_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_12_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_13_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_14_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_15_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_16_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_17_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_18_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_19_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_20_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_21_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_22_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_23_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_24_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_25_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_26_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_27_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_28_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_29_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_30_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_31_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_32_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_33_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_34_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_35_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_36_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_37_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_38_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_39_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_40_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_41_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_42_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_43_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_44_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_45_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_46_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_47_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_48_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_49_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_50_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_51_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_52_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_53_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_54_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_55_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_56_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_57_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_58_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_59_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_60_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_61_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_62_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_63_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  b4_rsc_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w6_rsc_0_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w6_rsc_1_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w6_rsc_2_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w6_rsc_3_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w6_rsc_4_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w6_rsc_5_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w6_rsc_6_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w6_rsc_7_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w6_rsc_8_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w6_rsc_9_0_bus(.clk(clk), .rst(rst));
  ccs_if #(.PROTOCOL_KIND(0),.WIDTH(180),.RESET_POLARITY(1))  b6_rsc_bus(.clk(clk), .rst(rst));
  ccs_monitor_bfm #(.PROTOCOL_KIND(3),.WIDTH(14112),.RESET_POLARITY(1))  input1_rsc_mon_bfm(input1_rsc_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(3),.WIDTH(180),.RESET_POLARITY(1))  output1_rsc_mon_bfm(output1_rsc_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(2),.WIDTH(16),.RESET_POLARITY(1))  const_size_in_1_rsc_mon_bfm(const_size_in_1_rsc_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(2),.WIDTH(16),.RESET_POLARITY(1))  const_size_out_1_rsc_mon_bfm(const_size_out_1_rsc_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_0_0_mon_bfm(w2_rsc_0_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_1_0_mon_bfm(w2_rsc_1_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_2_0_mon_bfm(w2_rsc_2_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_3_0_mon_bfm(w2_rsc_3_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_4_0_mon_bfm(w2_rsc_4_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_5_0_mon_bfm(w2_rsc_5_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_6_0_mon_bfm(w2_rsc_6_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_7_0_mon_bfm(w2_rsc_7_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_8_0_mon_bfm(w2_rsc_8_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_9_0_mon_bfm(w2_rsc_9_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_10_0_mon_bfm(w2_rsc_10_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_11_0_mon_bfm(w2_rsc_11_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_12_0_mon_bfm(w2_rsc_12_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_13_0_mon_bfm(w2_rsc_13_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_14_0_mon_bfm(w2_rsc_14_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_15_0_mon_bfm(w2_rsc_15_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_16_0_mon_bfm(w2_rsc_16_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_17_0_mon_bfm(w2_rsc_17_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_18_0_mon_bfm(w2_rsc_18_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_19_0_mon_bfm(w2_rsc_19_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_20_0_mon_bfm(w2_rsc_20_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_21_0_mon_bfm(w2_rsc_21_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_22_0_mon_bfm(w2_rsc_22_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_23_0_mon_bfm(w2_rsc_23_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_24_0_mon_bfm(w2_rsc_24_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_25_0_mon_bfm(w2_rsc_25_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_26_0_mon_bfm(w2_rsc_26_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_27_0_mon_bfm(w2_rsc_27_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_28_0_mon_bfm(w2_rsc_28_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_29_0_mon_bfm(w2_rsc_29_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_30_0_mon_bfm(w2_rsc_30_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_31_0_mon_bfm(w2_rsc_31_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_32_0_mon_bfm(w2_rsc_32_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_33_0_mon_bfm(w2_rsc_33_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_34_0_mon_bfm(w2_rsc_34_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_35_0_mon_bfm(w2_rsc_35_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_36_0_mon_bfm(w2_rsc_36_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_37_0_mon_bfm(w2_rsc_37_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_38_0_mon_bfm(w2_rsc_38_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_39_0_mon_bfm(w2_rsc_39_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_40_0_mon_bfm(w2_rsc_40_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_41_0_mon_bfm(w2_rsc_41_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_42_0_mon_bfm(w2_rsc_42_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_43_0_mon_bfm(w2_rsc_43_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_44_0_mon_bfm(w2_rsc_44_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_45_0_mon_bfm(w2_rsc_45_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_46_0_mon_bfm(w2_rsc_46_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_47_0_mon_bfm(w2_rsc_47_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_48_0_mon_bfm(w2_rsc_48_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_49_0_mon_bfm(w2_rsc_49_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_50_0_mon_bfm(w2_rsc_50_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_51_0_mon_bfm(w2_rsc_51_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_52_0_mon_bfm(w2_rsc_52_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_53_0_mon_bfm(w2_rsc_53_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_54_0_mon_bfm(w2_rsc_54_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_55_0_mon_bfm(w2_rsc_55_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_56_0_mon_bfm(w2_rsc_56_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_57_0_mon_bfm(w2_rsc_57_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_58_0_mon_bfm(w2_rsc_58_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_59_0_mon_bfm(w2_rsc_59_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_60_0_mon_bfm(w2_rsc_60_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_61_0_mon_bfm(w2_rsc_61_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_62_0_mon_bfm(w2_rsc_62_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_63_0_mon_bfm(w2_rsc_63_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  b2_rsc_mon_bfm(b2_rsc_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_0_0_mon_bfm(w4_rsc_0_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_1_0_mon_bfm(w4_rsc_1_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_2_0_mon_bfm(w4_rsc_2_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_3_0_mon_bfm(w4_rsc_3_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_4_0_mon_bfm(w4_rsc_4_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_5_0_mon_bfm(w4_rsc_5_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_6_0_mon_bfm(w4_rsc_6_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_7_0_mon_bfm(w4_rsc_7_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_8_0_mon_bfm(w4_rsc_8_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_9_0_mon_bfm(w4_rsc_9_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_10_0_mon_bfm(w4_rsc_10_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_11_0_mon_bfm(w4_rsc_11_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_12_0_mon_bfm(w4_rsc_12_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_13_0_mon_bfm(w4_rsc_13_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_14_0_mon_bfm(w4_rsc_14_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_15_0_mon_bfm(w4_rsc_15_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_16_0_mon_bfm(w4_rsc_16_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_17_0_mon_bfm(w4_rsc_17_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_18_0_mon_bfm(w4_rsc_18_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_19_0_mon_bfm(w4_rsc_19_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_20_0_mon_bfm(w4_rsc_20_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_21_0_mon_bfm(w4_rsc_21_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_22_0_mon_bfm(w4_rsc_22_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_23_0_mon_bfm(w4_rsc_23_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_24_0_mon_bfm(w4_rsc_24_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_25_0_mon_bfm(w4_rsc_25_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_26_0_mon_bfm(w4_rsc_26_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_27_0_mon_bfm(w4_rsc_27_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_28_0_mon_bfm(w4_rsc_28_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_29_0_mon_bfm(w4_rsc_29_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_30_0_mon_bfm(w4_rsc_30_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_31_0_mon_bfm(w4_rsc_31_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_32_0_mon_bfm(w4_rsc_32_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_33_0_mon_bfm(w4_rsc_33_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_34_0_mon_bfm(w4_rsc_34_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_35_0_mon_bfm(w4_rsc_35_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_36_0_mon_bfm(w4_rsc_36_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_37_0_mon_bfm(w4_rsc_37_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_38_0_mon_bfm(w4_rsc_38_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_39_0_mon_bfm(w4_rsc_39_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_40_0_mon_bfm(w4_rsc_40_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_41_0_mon_bfm(w4_rsc_41_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_42_0_mon_bfm(w4_rsc_42_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_43_0_mon_bfm(w4_rsc_43_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_44_0_mon_bfm(w4_rsc_44_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_45_0_mon_bfm(w4_rsc_45_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_46_0_mon_bfm(w4_rsc_46_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_47_0_mon_bfm(w4_rsc_47_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_48_0_mon_bfm(w4_rsc_48_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_49_0_mon_bfm(w4_rsc_49_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_50_0_mon_bfm(w4_rsc_50_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_51_0_mon_bfm(w4_rsc_51_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_52_0_mon_bfm(w4_rsc_52_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_53_0_mon_bfm(w4_rsc_53_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_54_0_mon_bfm(w4_rsc_54_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_55_0_mon_bfm(w4_rsc_55_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_56_0_mon_bfm(w4_rsc_56_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_57_0_mon_bfm(w4_rsc_57_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_58_0_mon_bfm(w4_rsc_58_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_59_0_mon_bfm(w4_rsc_59_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_60_0_mon_bfm(w4_rsc_60_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_61_0_mon_bfm(w4_rsc_61_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_62_0_mon_bfm(w4_rsc_62_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_63_0_mon_bfm(w4_rsc_63_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  b4_rsc_mon_bfm(b4_rsc_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w6_rsc_0_0_mon_bfm(w6_rsc_0_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w6_rsc_1_0_mon_bfm(w6_rsc_1_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w6_rsc_2_0_mon_bfm(w6_rsc_2_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w6_rsc_3_0_mon_bfm(w6_rsc_3_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w6_rsc_4_0_mon_bfm(w6_rsc_4_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w6_rsc_5_0_mon_bfm(w6_rsc_5_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w6_rsc_6_0_mon_bfm(w6_rsc_6_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w6_rsc_7_0_mon_bfm(w6_rsc_7_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w6_rsc_8_0_mon_bfm(w6_rsc_8_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w6_rsc_9_0_mon_bfm(w6_rsc_9_0_bus);
  ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(180),.RESET_POLARITY(1))  b6_rsc_mon_bfm(b6_rsc_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(3),.WIDTH(14112),.RESET_POLARITY(1))  input1_rsc_drv_bfm(input1_rsc_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(3),.WIDTH(180),.RESET_POLARITY(1))  output1_rsc_drv_bfm(output1_rsc_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(2),.WIDTH(16),.RESET_POLARITY(1))  const_size_in_1_rsc_drv_bfm(const_size_in_1_rsc_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(2),.WIDTH(16),.RESET_POLARITY(1))  const_size_out_1_rsc_drv_bfm(const_size_out_1_rsc_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_0_0_drv_bfm(w2_rsc_0_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_1_0_drv_bfm(w2_rsc_1_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_2_0_drv_bfm(w2_rsc_2_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_3_0_drv_bfm(w2_rsc_3_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_4_0_drv_bfm(w2_rsc_4_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_5_0_drv_bfm(w2_rsc_5_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_6_0_drv_bfm(w2_rsc_6_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_7_0_drv_bfm(w2_rsc_7_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_8_0_drv_bfm(w2_rsc_8_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_9_0_drv_bfm(w2_rsc_9_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_10_0_drv_bfm(w2_rsc_10_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_11_0_drv_bfm(w2_rsc_11_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_12_0_drv_bfm(w2_rsc_12_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_13_0_drv_bfm(w2_rsc_13_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_14_0_drv_bfm(w2_rsc_14_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_15_0_drv_bfm(w2_rsc_15_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_16_0_drv_bfm(w2_rsc_16_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_17_0_drv_bfm(w2_rsc_17_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_18_0_drv_bfm(w2_rsc_18_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_19_0_drv_bfm(w2_rsc_19_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_20_0_drv_bfm(w2_rsc_20_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_21_0_drv_bfm(w2_rsc_21_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_22_0_drv_bfm(w2_rsc_22_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_23_0_drv_bfm(w2_rsc_23_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_24_0_drv_bfm(w2_rsc_24_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_25_0_drv_bfm(w2_rsc_25_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_26_0_drv_bfm(w2_rsc_26_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_27_0_drv_bfm(w2_rsc_27_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_28_0_drv_bfm(w2_rsc_28_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_29_0_drv_bfm(w2_rsc_29_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_30_0_drv_bfm(w2_rsc_30_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_31_0_drv_bfm(w2_rsc_31_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_32_0_drv_bfm(w2_rsc_32_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_33_0_drv_bfm(w2_rsc_33_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_34_0_drv_bfm(w2_rsc_34_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_35_0_drv_bfm(w2_rsc_35_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_36_0_drv_bfm(w2_rsc_36_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_37_0_drv_bfm(w2_rsc_37_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_38_0_drv_bfm(w2_rsc_38_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_39_0_drv_bfm(w2_rsc_39_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_40_0_drv_bfm(w2_rsc_40_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_41_0_drv_bfm(w2_rsc_41_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_42_0_drv_bfm(w2_rsc_42_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_43_0_drv_bfm(w2_rsc_43_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_44_0_drv_bfm(w2_rsc_44_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_45_0_drv_bfm(w2_rsc_45_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_46_0_drv_bfm(w2_rsc_46_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_47_0_drv_bfm(w2_rsc_47_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_48_0_drv_bfm(w2_rsc_48_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_49_0_drv_bfm(w2_rsc_49_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_50_0_drv_bfm(w2_rsc_50_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_51_0_drv_bfm(w2_rsc_51_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_52_0_drv_bfm(w2_rsc_52_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_53_0_drv_bfm(w2_rsc_53_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_54_0_drv_bfm(w2_rsc_54_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_55_0_drv_bfm(w2_rsc_55_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_56_0_drv_bfm(w2_rsc_56_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_57_0_drv_bfm(w2_rsc_57_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_58_0_drv_bfm(w2_rsc_58_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_59_0_drv_bfm(w2_rsc_59_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_60_0_drv_bfm(w2_rsc_60_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_61_0_drv_bfm(w2_rsc_61_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_62_0_drv_bfm(w2_rsc_62_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  w2_rsc_63_0_drv_bfm(w2_rsc_63_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  b2_rsc_drv_bfm(b2_rsc_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_0_0_drv_bfm(w4_rsc_0_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_1_0_drv_bfm(w4_rsc_1_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_2_0_drv_bfm(w4_rsc_2_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_3_0_drv_bfm(w4_rsc_3_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_4_0_drv_bfm(w4_rsc_4_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_5_0_drv_bfm(w4_rsc_5_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_6_0_drv_bfm(w4_rsc_6_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_7_0_drv_bfm(w4_rsc_7_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_8_0_drv_bfm(w4_rsc_8_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_9_0_drv_bfm(w4_rsc_9_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_10_0_drv_bfm(w4_rsc_10_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_11_0_drv_bfm(w4_rsc_11_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_12_0_drv_bfm(w4_rsc_12_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_13_0_drv_bfm(w4_rsc_13_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_14_0_drv_bfm(w4_rsc_14_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_15_0_drv_bfm(w4_rsc_15_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_16_0_drv_bfm(w4_rsc_16_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_17_0_drv_bfm(w4_rsc_17_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_18_0_drv_bfm(w4_rsc_18_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_19_0_drv_bfm(w4_rsc_19_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_20_0_drv_bfm(w4_rsc_20_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_21_0_drv_bfm(w4_rsc_21_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_22_0_drv_bfm(w4_rsc_22_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_23_0_drv_bfm(w4_rsc_23_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_24_0_drv_bfm(w4_rsc_24_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_25_0_drv_bfm(w4_rsc_25_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_26_0_drv_bfm(w4_rsc_26_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_27_0_drv_bfm(w4_rsc_27_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_28_0_drv_bfm(w4_rsc_28_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_29_0_drv_bfm(w4_rsc_29_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_30_0_drv_bfm(w4_rsc_30_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_31_0_drv_bfm(w4_rsc_31_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_32_0_drv_bfm(w4_rsc_32_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_33_0_drv_bfm(w4_rsc_33_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_34_0_drv_bfm(w4_rsc_34_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_35_0_drv_bfm(w4_rsc_35_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_36_0_drv_bfm(w4_rsc_36_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_37_0_drv_bfm(w4_rsc_37_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_38_0_drv_bfm(w4_rsc_38_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_39_0_drv_bfm(w4_rsc_39_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_40_0_drv_bfm(w4_rsc_40_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_41_0_drv_bfm(w4_rsc_41_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_42_0_drv_bfm(w4_rsc_42_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_43_0_drv_bfm(w4_rsc_43_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_44_0_drv_bfm(w4_rsc_44_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_45_0_drv_bfm(w4_rsc_45_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_46_0_drv_bfm(w4_rsc_46_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_47_0_drv_bfm(w4_rsc_47_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_48_0_drv_bfm(w4_rsc_48_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_49_0_drv_bfm(w4_rsc_49_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_50_0_drv_bfm(w4_rsc_50_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_51_0_drv_bfm(w4_rsc_51_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_52_0_drv_bfm(w4_rsc_52_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_53_0_drv_bfm(w4_rsc_53_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_54_0_drv_bfm(w4_rsc_54_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_55_0_drv_bfm(w4_rsc_55_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_56_0_drv_bfm(w4_rsc_56_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_57_0_drv_bfm(w4_rsc_57_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_58_0_drv_bfm(w4_rsc_58_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_59_0_drv_bfm(w4_rsc_59_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_60_0_drv_bfm(w4_rsc_60_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_61_0_drv_bfm(w4_rsc_61_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_62_0_drv_bfm(w4_rsc_62_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w4_rsc_63_0_drv_bfm(w4_rsc_63_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  b4_rsc_drv_bfm(b4_rsc_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w6_rsc_0_0_drv_bfm(w6_rsc_0_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w6_rsc_1_0_drv_bfm(w6_rsc_1_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w6_rsc_2_0_drv_bfm(w6_rsc_2_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w6_rsc_3_0_drv_bfm(w6_rsc_3_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w6_rsc_4_0_drv_bfm(w6_rsc_4_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w6_rsc_5_0_drv_bfm(w6_rsc_5_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w6_rsc_6_0_drv_bfm(w6_rsc_6_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w6_rsc_7_0_drv_bfm(w6_rsc_7_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w6_rsc_8_0_drv_bfm(w6_rsc_8_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  w6_rsc_9_0_drv_bfm(w6_rsc_9_0_bus);
  ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(180),.RESET_POLARITY(1))  b6_rsc_drv_bfm(b6_rsc_bus);

  // UVMF_CHANGE_ME : Add DUT and connect to signals in _bus interfaces listed above
// Catapult RTL DUT -
   mnist_mlp mnist_mlp_INST(
      .clk(clk),
      .rst(rst),
      .input1_rsc_rdy(input1_rsc_bus.rdy),
      .input1_rsc_vld(input1_rsc_bus.vld),
      .input1_rsc_dat(input1_rsc_bus.dat),
      .output1_rsc_rdy(output1_rsc_bus.rdy),
      .output1_rsc_vld(output1_rsc_bus.vld),
      .output1_rsc_dat(output1_rsc_bus.dat),
      .const_size_in_1_rsc_vld(const_size_in_1_rsc_bus.vld),
      .const_size_in_1_rsc_dat(const_size_in_1_rsc_bus.dat),
      .const_size_out_1_rsc_vld(const_size_out_1_rsc_bus.vld),
      .const_size_out_1_rsc_dat(const_size_out_1_rsc_bus.dat),
      .w2_rsc_0_0_dat(w2_rsc_0_0_bus.dat),
      .w2_rsc_1_0_dat(w2_rsc_1_0_bus.dat),
      .w2_rsc_2_0_dat(w2_rsc_2_0_bus.dat),
      .w2_rsc_3_0_dat(w2_rsc_3_0_bus.dat),
      .w2_rsc_4_0_dat(w2_rsc_4_0_bus.dat),
      .w2_rsc_5_0_dat(w2_rsc_5_0_bus.dat),
      .w2_rsc_6_0_dat(w2_rsc_6_0_bus.dat),
      .w2_rsc_7_0_dat(w2_rsc_7_0_bus.dat),
      .w2_rsc_8_0_dat(w2_rsc_8_0_bus.dat),
      .w2_rsc_9_0_dat(w2_rsc_9_0_bus.dat),
      .w2_rsc_10_0_dat(w2_rsc_10_0_bus.dat),
      .w2_rsc_11_0_dat(w2_rsc_11_0_bus.dat),
      .w2_rsc_12_0_dat(w2_rsc_12_0_bus.dat),
      .w2_rsc_13_0_dat(w2_rsc_13_0_bus.dat),
      .w2_rsc_14_0_dat(w2_rsc_14_0_bus.dat),
      .w2_rsc_15_0_dat(w2_rsc_15_0_bus.dat),
      .w2_rsc_16_0_dat(w2_rsc_16_0_bus.dat),
      .w2_rsc_17_0_dat(w2_rsc_17_0_bus.dat),
      .w2_rsc_18_0_dat(w2_rsc_18_0_bus.dat),
      .w2_rsc_19_0_dat(w2_rsc_19_0_bus.dat),
      .w2_rsc_20_0_dat(w2_rsc_20_0_bus.dat),
      .w2_rsc_21_0_dat(w2_rsc_21_0_bus.dat),
      .w2_rsc_22_0_dat(w2_rsc_22_0_bus.dat),
      .w2_rsc_23_0_dat(w2_rsc_23_0_bus.dat),
      .w2_rsc_24_0_dat(w2_rsc_24_0_bus.dat),
      .w2_rsc_25_0_dat(w2_rsc_25_0_bus.dat),
      .w2_rsc_26_0_dat(w2_rsc_26_0_bus.dat),
      .w2_rsc_27_0_dat(w2_rsc_27_0_bus.dat),
      .w2_rsc_28_0_dat(w2_rsc_28_0_bus.dat),
      .w2_rsc_29_0_dat(w2_rsc_29_0_bus.dat),
      .w2_rsc_30_0_dat(w2_rsc_30_0_bus.dat),
      .w2_rsc_31_0_dat(w2_rsc_31_0_bus.dat),
      .w2_rsc_32_0_dat(w2_rsc_32_0_bus.dat),
      .w2_rsc_33_0_dat(w2_rsc_33_0_bus.dat),
      .w2_rsc_34_0_dat(w2_rsc_34_0_bus.dat),
      .w2_rsc_35_0_dat(w2_rsc_35_0_bus.dat),
      .w2_rsc_36_0_dat(w2_rsc_36_0_bus.dat),
      .w2_rsc_37_0_dat(w2_rsc_37_0_bus.dat),
      .w2_rsc_38_0_dat(w2_rsc_38_0_bus.dat),
      .w2_rsc_39_0_dat(w2_rsc_39_0_bus.dat),
      .w2_rsc_40_0_dat(w2_rsc_40_0_bus.dat),
      .w2_rsc_41_0_dat(w2_rsc_41_0_bus.dat),
      .w2_rsc_42_0_dat(w2_rsc_42_0_bus.dat),
      .w2_rsc_43_0_dat(w2_rsc_43_0_bus.dat),
      .w2_rsc_44_0_dat(w2_rsc_44_0_bus.dat),
      .w2_rsc_45_0_dat(w2_rsc_45_0_bus.dat),
      .w2_rsc_46_0_dat(w2_rsc_46_0_bus.dat),
      .w2_rsc_47_0_dat(w2_rsc_47_0_bus.dat),
      .w2_rsc_48_0_dat(w2_rsc_48_0_bus.dat),
      .w2_rsc_49_0_dat(w2_rsc_49_0_bus.dat),
      .w2_rsc_50_0_dat(w2_rsc_50_0_bus.dat),
      .w2_rsc_51_0_dat(w2_rsc_51_0_bus.dat),
      .w2_rsc_52_0_dat(w2_rsc_52_0_bus.dat),
      .w2_rsc_53_0_dat(w2_rsc_53_0_bus.dat),
      .w2_rsc_54_0_dat(w2_rsc_54_0_bus.dat),
      .w2_rsc_55_0_dat(w2_rsc_55_0_bus.dat),
      .w2_rsc_56_0_dat(w2_rsc_56_0_bus.dat),
      .w2_rsc_57_0_dat(w2_rsc_57_0_bus.dat),
      .w2_rsc_58_0_dat(w2_rsc_58_0_bus.dat),
      .w2_rsc_59_0_dat(w2_rsc_59_0_bus.dat),
      .w2_rsc_60_0_dat(w2_rsc_60_0_bus.dat),
      .w2_rsc_61_0_dat(w2_rsc_61_0_bus.dat),
      .w2_rsc_62_0_dat(w2_rsc_62_0_bus.dat),
      .w2_rsc_63_0_dat(w2_rsc_63_0_bus.dat),
      .b2_rsc_dat(b2_rsc_bus.dat),
      .w4_rsc_0_0_dat(w4_rsc_0_0_bus.dat),
      .w4_rsc_1_0_dat(w4_rsc_1_0_bus.dat),
      .w4_rsc_2_0_dat(w4_rsc_2_0_bus.dat),
      .w4_rsc_3_0_dat(w4_rsc_3_0_bus.dat),
      .w4_rsc_4_0_dat(w4_rsc_4_0_bus.dat),
      .w4_rsc_5_0_dat(w4_rsc_5_0_bus.dat),
      .w4_rsc_6_0_dat(w4_rsc_6_0_bus.dat),
      .w4_rsc_7_0_dat(w4_rsc_7_0_bus.dat),
      .w4_rsc_8_0_dat(w4_rsc_8_0_bus.dat),
      .w4_rsc_9_0_dat(w4_rsc_9_0_bus.dat),
      .w4_rsc_10_0_dat(w4_rsc_10_0_bus.dat),
      .w4_rsc_11_0_dat(w4_rsc_11_0_bus.dat),
      .w4_rsc_12_0_dat(w4_rsc_12_0_bus.dat),
      .w4_rsc_13_0_dat(w4_rsc_13_0_bus.dat),
      .w4_rsc_14_0_dat(w4_rsc_14_0_bus.dat),
      .w4_rsc_15_0_dat(w4_rsc_15_0_bus.dat),
      .w4_rsc_16_0_dat(w4_rsc_16_0_bus.dat),
      .w4_rsc_17_0_dat(w4_rsc_17_0_bus.dat),
      .w4_rsc_18_0_dat(w4_rsc_18_0_bus.dat),
      .w4_rsc_19_0_dat(w4_rsc_19_0_bus.dat),
      .w4_rsc_20_0_dat(w4_rsc_20_0_bus.dat),
      .w4_rsc_21_0_dat(w4_rsc_21_0_bus.dat),
      .w4_rsc_22_0_dat(w4_rsc_22_0_bus.dat),
      .w4_rsc_23_0_dat(w4_rsc_23_0_bus.dat),
      .w4_rsc_24_0_dat(w4_rsc_24_0_bus.dat),
      .w4_rsc_25_0_dat(w4_rsc_25_0_bus.dat),
      .w4_rsc_26_0_dat(w4_rsc_26_0_bus.dat),
      .w4_rsc_27_0_dat(w4_rsc_27_0_bus.dat),
      .w4_rsc_28_0_dat(w4_rsc_28_0_bus.dat),
      .w4_rsc_29_0_dat(w4_rsc_29_0_bus.dat),
      .w4_rsc_30_0_dat(w4_rsc_30_0_bus.dat),
      .w4_rsc_31_0_dat(w4_rsc_31_0_bus.dat),
      .w4_rsc_32_0_dat(w4_rsc_32_0_bus.dat),
      .w4_rsc_33_0_dat(w4_rsc_33_0_bus.dat),
      .w4_rsc_34_0_dat(w4_rsc_34_0_bus.dat),
      .w4_rsc_35_0_dat(w4_rsc_35_0_bus.dat),
      .w4_rsc_36_0_dat(w4_rsc_36_0_bus.dat),
      .w4_rsc_37_0_dat(w4_rsc_37_0_bus.dat),
      .w4_rsc_38_0_dat(w4_rsc_38_0_bus.dat),
      .w4_rsc_39_0_dat(w4_rsc_39_0_bus.dat),
      .w4_rsc_40_0_dat(w4_rsc_40_0_bus.dat),
      .w4_rsc_41_0_dat(w4_rsc_41_0_bus.dat),
      .w4_rsc_42_0_dat(w4_rsc_42_0_bus.dat),
      .w4_rsc_43_0_dat(w4_rsc_43_0_bus.dat),
      .w4_rsc_44_0_dat(w4_rsc_44_0_bus.dat),
      .w4_rsc_45_0_dat(w4_rsc_45_0_bus.dat),
      .w4_rsc_46_0_dat(w4_rsc_46_0_bus.dat),
      .w4_rsc_47_0_dat(w4_rsc_47_0_bus.dat),
      .w4_rsc_48_0_dat(w4_rsc_48_0_bus.dat),
      .w4_rsc_49_0_dat(w4_rsc_49_0_bus.dat),
      .w4_rsc_50_0_dat(w4_rsc_50_0_bus.dat),
      .w4_rsc_51_0_dat(w4_rsc_51_0_bus.dat),
      .w4_rsc_52_0_dat(w4_rsc_52_0_bus.dat),
      .w4_rsc_53_0_dat(w4_rsc_53_0_bus.dat),
      .w4_rsc_54_0_dat(w4_rsc_54_0_bus.dat),
      .w4_rsc_55_0_dat(w4_rsc_55_0_bus.dat),
      .w4_rsc_56_0_dat(w4_rsc_56_0_bus.dat),
      .w4_rsc_57_0_dat(w4_rsc_57_0_bus.dat),
      .w4_rsc_58_0_dat(w4_rsc_58_0_bus.dat),
      .w4_rsc_59_0_dat(w4_rsc_59_0_bus.dat),
      .w4_rsc_60_0_dat(w4_rsc_60_0_bus.dat),
      .w4_rsc_61_0_dat(w4_rsc_61_0_bus.dat),
      .w4_rsc_62_0_dat(w4_rsc_62_0_bus.dat),
      .w4_rsc_63_0_dat(w4_rsc_63_0_bus.dat),
      .b4_rsc_dat(b4_rsc_bus.dat),
      .w6_rsc_0_0_dat(w6_rsc_0_0_bus.dat),
      .w6_rsc_1_0_dat(w6_rsc_1_0_bus.dat),
      .w6_rsc_2_0_dat(w6_rsc_2_0_bus.dat),
      .w6_rsc_3_0_dat(w6_rsc_3_0_bus.dat),
      .w6_rsc_4_0_dat(w6_rsc_4_0_bus.dat),
      .w6_rsc_5_0_dat(w6_rsc_5_0_bus.dat),
      .w6_rsc_6_0_dat(w6_rsc_6_0_bus.dat),
      .w6_rsc_7_0_dat(w6_rsc_7_0_bus.dat),
      .w6_rsc_8_0_dat(w6_rsc_8_0_bus.dat),
      .w6_rsc_9_0_dat(w6_rsc_9_0_bus.dat),
      .b6_rsc_dat(b6_rsc_bus.dat)
      );

  initial begin      import uvm_pkg::uvm_config_db;
    // The monitor_bfm and driver_bfm for each interface is placed into the uvm_config_db.
    // They are placed into the uvm_config_db using the string names defined in the parameters package.
    // The string names are passed to the agent configurations by test_top through the top level configuration.
    // They are retrieved by the agents configuration class for use by the agent.
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(3),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , input1_rsc_BFM , input1_rsc_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(3),.WIDTH(180),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , output1_rsc_BFM , output1_rsc_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(2),.WIDTH(16),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , const_size_in_1_rsc_BFM , const_size_in_1_rsc_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(2),.WIDTH(16),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , const_size_out_1_rsc_BFM , const_size_out_1_rsc_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_0_0_BFM , w2_rsc_0_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_1_0_BFM , w2_rsc_1_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_2_0_BFM , w2_rsc_2_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_3_0_BFM , w2_rsc_3_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_4_0_BFM , w2_rsc_4_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_5_0_BFM , w2_rsc_5_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_6_0_BFM , w2_rsc_6_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_7_0_BFM , w2_rsc_7_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_8_0_BFM , w2_rsc_8_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_9_0_BFM , w2_rsc_9_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_10_0_BFM , w2_rsc_10_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_11_0_BFM , w2_rsc_11_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_12_0_BFM , w2_rsc_12_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_13_0_BFM , w2_rsc_13_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_14_0_BFM , w2_rsc_14_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_15_0_BFM , w2_rsc_15_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_16_0_BFM , w2_rsc_16_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_17_0_BFM , w2_rsc_17_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_18_0_BFM , w2_rsc_18_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_19_0_BFM , w2_rsc_19_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_20_0_BFM , w2_rsc_20_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_21_0_BFM , w2_rsc_21_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_22_0_BFM , w2_rsc_22_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_23_0_BFM , w2_rsc_23_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_24_0_BFM , w2_rsc_24_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_25_0_BFM , w2_rsc_25_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_26_0_BFM , w2_rsc_26_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_27_0_BFM , w2_rsc_27_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_28_0_BFM , w2_rsc_28_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_29_0_BFM , w2_rsc_29_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_30_0_BFM , w2_rsc_30_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_31_0_BFM , w2_rsc_31_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_32_0_BFM , w2_rsc_32_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_33_0_BFM , w2_rsc_33_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_34_0_BFM , w2_rsc_34_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_35_0_BFM , w2_rsc_35_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_36_0_BFM , w2_rsc_36_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_37_0_BFM , w2_rsc_37_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_38_0_BFM , w2_rsc_38_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_39_0_BFM , w2_rsc_39_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_40_0_BFM , w2_rsc_40_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_41_0_BFM , w2_rsc_41_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_42_0_BFM , w2_rsc_42_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_43_0_BFM , w2_rsc_43_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_44_0_BFM , w2_rsc_44_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_45_0_BFM , w2_rsc_45_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_46_0_BFM , w2_rsc_46_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_47_0_BFM , w2_rsc_47_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_48_0_BFM , w2_rsc_48_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_49_0_BFM , w2_rsc_49_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_50_0_BFM , w2_rsc_50_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_51_0_BFM , w2_rsc_51_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_52_0_BFM , w2_rsc_52_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_53_0_BFM , w2_rsc_53_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_54_0_BFM , w2_rsc_54_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_55_0_BFM , w2_rsc_55_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_56_0_BFM , w2_rsc_56_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_57_0_BFM , w2_rsc_57_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_58_0_BFM , w2_rsc_58_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_59_0_BFM , w2_rsc_59_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_60_0_BFM , w2_rsc_60_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_61_0_BFM , w2_rsc_61_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_62_0_BFM , w2_rsc_62_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_63_0_BFM , w2_rsc_63_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , b2_rsc_BFM , b2_rsc_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_0_0_BFM , w4_rsc_0_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_1_0_BFM , w4_rsc_1_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_2_0_BFM , w4_rsc_2_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_3_0_BFM , w4_rsc_3_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_4_0_BFM , w4_rsc_4_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_5_0_BFM , w4_rsc_5_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_6_0_BFM , w4_rsc_6_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_7_0_BFM , w4_rsc_7_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_8_0_BFM , w4_rsc_8_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_9_0_BFM , w4_rsc_9_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_10_0_BFM , w4_rsc_10_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_11_0_BFM , w4_rsc_11_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_12_0_BFM , w4_rsc_12_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_13_0_BFM , w4_rsc_13_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_14_0_BFM , w4_rsc_14_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_15_0_BFM , w4_rsc_15_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_16_0_BFM , w4_rsc_16_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_17_0_BFM , w4_rsc_17_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_18_0_BFM , w4_rsc_18_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_19_0_BFM , w4_rsc_19_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_20_0_BFM , w4_rsc_20_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_21_0_BFM , w4_rsc_21_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_22_0_BFM , w4_rsc_22_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_23_0_BFM , w4_rsc_23_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_24_0_BFM , w4_rsc_24_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_25_0_BFM , w4_rsc_25_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_26_0_BFM , w4_rsc_26_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_27_0_BFM , w4_rsc_27_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_28_0_BFM , w4_rsc_28_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_29_0_BFM , w4_rsc_29_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_30_0_BFM , w4_rsc_30_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_31_0_BFM , w4_rsc_31_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_32_0_BFM , w4_rsc_32_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_33_0_BFM , w4_rsc_33_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_34_0_BFM , w4_rsc_34_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_35_0_BFM , w4_rsc_35_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_36_0_BFM , w4_rsc_36_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_37_0_BFM , w4_rsc_37_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_38_0_BFM , w4_rsc_38_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_39_0_BFM , w4_rsc_39_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_40_0_BFM , w4_rsc_40_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_41_0_BFM , w4_rsc_41_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_42_0_BFM , w4_rsc_42_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_43_0_BFM , w4_rsc_43_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_44_0_BFM , w4_rsc_44_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_45_0_BFM , w4_rsc_45_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_46_0_BFM , w4_rsc_46_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_47_0_BFM , w4_rsc_47_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_48_0_BFM , w4_rsc_48_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_49_0_BFM , w4_rsc_49_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_50_0_BFM , w4_rsc_50_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_51_0_BFM , w4_rsc_51_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_52_0_BFM , w4_rsc_52_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_53_0_BFM , w4_rsc_53_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_54_0_BFM , w4_rsc_54_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_55_0_BFM , w4_rsc_55_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_56_0_BFM , w4_rsc_56_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_57_0_BFM , w4_rsc_57_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_58_0_BFM , w4_rsc_58_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_59_0_BFM , w4_rsc_59_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_60_0_BFM , w4_rsc_60_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_61_0_BFM , w4_rsc_61_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_62_0_BFM , w4_rsc_62_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_63_0_BFM , w4_rsc_63_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , b4_rsc_BFM , b4_rsc_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w6_rsc_0_0_BFM , w6_rsc_0_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w6_rsc_1_0_BFM , w6_rsc_1_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w6_rsc_2_0_BFM , w6_rsc_2_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w6_rsc_3_0_BFM , w6_rsc_3_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w6_rsc_4_0_BFM , w6_rsc_4_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w6_rsc_5_0_BFM , w6_rsc_5_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w6_rsc_6_0_BFM , w6_rsc_6_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w6_rsc_7_0_BFM , w6_rsc_7_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w6_rsc_8_0_BFM , w6_rsc_8_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w6_rsc_9_0_BFM , w6_rsc_9_0_mon_bfm ); 
    uvm_config_db #( virtual ccs_monitor_bfm #(.PROTOCOL_KIND(0),.WIDTH(180),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , b6_rsc_BFM , b6_rsc_mon_bfm ); 
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(3),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , input1_rsc_BFM , input1_rsc_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(3),.WIDTH(180),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , output1_rsc_BFM , output1_rsc_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(2),.WIDTH(16),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , const_size_in_1_rsc_BFM , const_size_in_1_rsc_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(2),.WIDTH(16),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , const_size_out_1_rsc_BFM , const_size_out_1_rsc_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_0_0_BFM , w2_rsc_0_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_1_0_BFM , w2_rsc_1_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_2_0_BFM , w2_rsc_2_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_3_0_BFM , w2_rsc_3_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_4_0_BFM , w2_rsc_4_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_5_0_BFM , w2_rsc_5_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_6_0_BFM , w2_rsc_6_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_7_0_BFM , w2_rsc_7_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_8_0_BFM , w2_rsc_8_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_9_0_BFM , w2_rsc_9_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_10_0_BFM , w2_rsc_10_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_11_0_BFM , w2_rsc_11_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_12_0_BFM , w2_rsc_12_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_13_0_BFM , w2_rsc_13_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_14_0_BFM , w2_rsc_14_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_15_0_BFM , w2_rsc_15_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_16_0_BFM , w2_rsc_16_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_17_0_BFM , w2_rsc_17_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_18_0_BFM , w2_rsc_18_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_19_0_BFM , w2_rsc_19_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_20_0_BFM , w2_rsc_20_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_21_0_BFM , w2_rsc_21_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_22_0_BFM , w2_rsc_22_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_23_0_BFM , w2_rsc_23_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_24_0_BFM , w2_rsc_24_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_25_0_BFM , w2_rsc_25_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_26_0_BFM , w2_rsc_26_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_27_0_BFM , w2_rsc_27_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_28_0_BFM , w2_rsc_28_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_29_0_BFM , w2_rsc_29_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_30_0_BFM , w2_rsc_30_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_31_0_BFM , w2_rsc_31_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_32_0_BFM , w2_rsc_32_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_33_0_BFM , w2_rsc_33_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_34_0_BFM , w2_rsc_34_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_35_0_BFM , w2_rsc_35_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_36_0_BFM , w2_rsc_36_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_37_0_BFM , w2_rsc_37_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_38_0_BFM , w2_rsc_38_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_39_0_BFM , w2_rsc_39_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_40_0_BFM , w2_rsc_40_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_41_0_BFM , w2_rsc_41_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_42_0_BFM , w2_rsc_42_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_43_0_BFM , w2_rsc_43_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_44_0_BFM , w2_rsc_44_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_45_0_BFM , w2_rsc_45_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_46_0_BFM , w2_rsc_46_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_47_0_BFM , w2_rsc_47_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_48_0_BFM , w2_rsc_48_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_49_0_BFM , w2_rsc_49_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_50_0_BFM , w2_rsc_50_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_51_0_BFM , w2_rsc_51_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_52_0_BFM , w2_rsc_52_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_53_0_BFM , w2_rsc_53_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_54_0_BFM , w2_rsc_54_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_55_0_BFM , w2_rsc_55_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_56_0_BFM , w2_rsc_56_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_57_0_BFM , w2_rsc_57_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_58_0_BFM , w2_rsc_58_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_59_0_BFM , w2_rsc_59_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_60_0_BFM , w2_rsc_60_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_61_0_BFM , w2_rsc_61_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_62_0_BFM , w2_rsc_62_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(14112),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w2_rsc_63_0_BFM , w2_rsc_63_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , b2_rsc_BFM , b2_rsc_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_0_0_BFM , w4_rsc_0_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_1_0_BFM , w4_rsc_1_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_2_0_BFM , w4_rsc_2_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_3_0_BFM , w4_rsc_3_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_4_0_BFM , w4_rsc_4_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_5_0_BFM , w4_rsc_5_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_6_0_BFM , w4_rsc_6_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_7_0_BFM , w4_rsc_7_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_8_0_BFM , w4_rsc_8_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_9_0_BFM , w4_rsc_9_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_10_0_BFM , w4_rsc_10_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_11_0_BFM , w4_rsc_11_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_12_0_BFM , w4_rsc_12_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_13_0_BFM , w4_rsc_13_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_14_0_BFM , w4_rsc_14_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_15_0_BFM , w4_rsc_15_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_16_0_BFM , w4_rsc_16_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_17_0_BFM , w4_rsc_17_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_18_0_BFM , w4_rsc_18_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_19_0_BFM , w4_rsc_19_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_20_0_BFM , w4_rsc_20_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_21_0_BFM , w4_rsc_21_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_22_0_BFM , w4_rsc_22_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_23_0_BFM , w4_rsc_23_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_24_0_BFM , w4_rsc_24_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_25_0_BFM , w4_rsc_25_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_26_0_BFM , w4_rsc_26_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_27_0_BFM , w4_rsc_27_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_28_0_BFM , w4_rsc_28_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_29_0_BFM , w4_rsc_29_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_30_0_BFM , w4_rsc_30_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_31_0_BFM , w4_rsc_31_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_32_0_BFM , w4_rsc_32_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_33_0_BFM , w4_rsc_33_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_34_0_BFM , w4_rsc_34_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_35_0_BFM , w4_rsc_35_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_36_0_BFM , w4_rsc_36_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_37_0_BFM , w4_rsc_37_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_38_0_BFM , w4_rsc_38_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_39_0_BFM , w4_rsc_39_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_40_0_BFM , w4_rsc_40_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_41_0_BFM , w4_rsc_41_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_42_0_BFM , w4_rsc_42_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_43_0_BFM , w4_rsc_43_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_44_0_BFM , w4_rsc_44_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_45_0_BFM , w4_rsc_45_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_46_0_BFM , w4_rsc_46_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_47_0_BFM , w4_rsc_47_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_48_0_BFM , w4_rsc_48_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_49_0_BFM , w4_rsc_49_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_50_0_BFM , w4_rsc_50_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_51_0_BFM , w4_rsc_51_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_52_0_BFM , w4_rsc_52_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_53_0_BFM , w4_rsc_53_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_54_0_BFM , w4_rsc_54_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_55_0_BFM , w4_rsc_55_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_56_0_BFM , w4_rsc_56_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_57_0_BFM , w4_rsc_57_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_58_0_BFM , w4_rsc_58_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_59_0_BFM , w4_rsc_59_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_60_0_BFM , w4_rsc_60_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_61_0_BFM , w4_rsc_61_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_62_0_BFM , w4_rsc_62_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w4_rsc_63_0_BFM , w4_rsc_63_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , b4_rsc_BFM , b4_rsc_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w6_rsc_0_0_BFM , w6_rsc_0_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w6_rsc_1_0_BFM , w6_rsc_1_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w6_rsc_2_0_BFM , w6_rsc_2_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w6_rsc_3_0_BFM , w6_rsc_3_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w6_rsc_4_0_BFM , w6_rsc_4_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w6_rsc_5_0_BFM , w6_rsc_5_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w6_rsc_6_0_BFM , w6_rsc_6_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w6_rsc_7_0_BFM , w6_rsc_7_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w6_rsc_8_0_BFM , w6_rsc_8_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(1152),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , w6_rsc_9_0_BFM , w6_rsc_9_0_drv_bfm  );
    uvm_config_db #( virtual ccs_driver_bfm #(.PROTOCOL_KIND(0),.WIDTH(180),.RESET_POLARITY(1))  )::set( null , UVMF_VIRTUAL_INTERFACES , b6_rsc_BFM , b6_rsc_drv_bfm  );
  end

endmodule
