// ==============================================================
// Generated by Vitis HLS v2023.1
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module top_tx_cp (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        nocp_M_real_address0,
        nocp_M_real_ce0,
        nocp_M_real_q0,
        nocp_M_real_offset,
        nocp_M_imag_address0,
        nocp_M_imag_ce0,
        nocp_M_imag_q0,
        cp_out_M_real_address0,
        cp_out_M_real_ce0,
        cp_out_M_real_we0,
        cp_out_M_real_d0,
        cp_out_M_imag_address0,
        cp_out_M_imag_ce0,
        cp_out_M_imag_we0,
        cp_out_M_imag_d0
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] nocp_M_real_address0;
output   nocp_M_real_ce0;
input  [15:0] nocp_M_real_q0;
input  [2:0] nocp_M_real_offset;
output  [12:0] nocp_M_imag_address0;
output   nocp_M_imag_ce0;
input  [15:0] nocp_M_imag_q0;
output  [12:0] cp_out_M_real_address0;
output   cp_out_M_real_ce0;
output   cp_out_M_real_we0;
output  [15:0] cp_out_M_real_d0;
output  [12:0] cp_out_M_imag_address0;
output   cp_out_M_imag_ce0;
output   cp_out_M_imag_we0;
output  [15:0] cp_out_M_imag_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [12:0] tmp_fu_82_p3;
reg   [12:0] tmp_reg_106;
wire   [12:0] mul_ln23_fu_94_p2;
reg   [12:0] mul_ln23_reg_111;
wire    ap_CS_fsm_state5;
reg   [7:0] ad_cp_M_real_address0;
reg    ad_cp_M_real_ce0;
reg    ad_cp_M_real_we0;
wire   [13:0] ad_cp_M_real_q0;
reg   [7:0] ad_cp_M_imag_address0;
reg    ad_cp_M_imag_ce0;
reg    ad_cp_M_imag_we0;
wire   [13:0] ad_cp_M_imag_q0;
reg   [9:0] ifft_data_M_real_address0;
reg    ifft_data_M_real_ce0;
reg    ifft_data_M_real_we0;
wire   [13:0] ifft_data_M_real_q0;
reg   [9:0] ifft_data_M_imag_address0;
reg    ifft_data_M_imag_ce0;
reg    ifft_data_M_imag_we0;
wire   [13:0] ifft_data_M_imag_q0;
wire    grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_ap_start;
wire    grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_ap_done;
wire    grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_ap_idle;
wire    grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_ap_ready;
wire   [12:0] grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_nocp_M_real_address0;
wire    grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_nocp_M_real_ce0;
wire   [12:0] grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_nocp_M_imag_address0;
wire    grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_nocp_M_imag_ce0;
wire   [9:0] grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_ifft_data_M_real_address0;
wire    grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_ifft_data_M_real_ce0;
wire    grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_ifft_data_M_real_we0;
wire   [13:0] grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_ifft_data_M_real_d0;
wire   [9:0] grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_ifft_data_M_imag_address0;
wire    grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_ifft_data_M_imag_ce0;
wire    grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_ifft_data_M_imag_we0;
wire   [13:0] grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_ifft_data_M_imag_d0;
wire    grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ap_start;
wire    grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ap_done;
wire    grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ap_idle;
wire    grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ap_ready;
wire   [9:0] grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ifft_data_M_real_address0;
wire    grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ifft_data_M_real_ce0;
wire   [9:0] grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ifft_data_M_imag_address0;
wire    grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ifft_data_M_imag_ce0;
wire   [7:0] grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ad_cp_M_real_address0;
wire    grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ad_cp_M_real_ce0;
wire    grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ad_cp_M_real_we0;
wire   [13:0] grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ad_cp_M_real_d0;
wire   [7:0] grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ad_cp_M_imag_address0;
wire    grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ad_cp_M_imag_ce0;
wire    grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ad_cp_M_imag_we0;
wire   [13:0] grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ad_cp_M_imag_d0;
wire    grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ap_start;
wire    grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ap_done;
wire    grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ap_idle;
wire    grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ap_ready;
wire   [12:0] grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_cp_out_M_real_address0;
wire    grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_cp_out_M_real_ce0;
wire    grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_cp_out_M_real_we0;
wire   [15:0] grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_cp_out_M_real_d0;
wire   [12:0] grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_cp_out_M_imag_address0;
wire    grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_cp_out_M_imag_ce0;
wire    grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_cp_out_M_imag_we0;
wire   [15:0] grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_cp_out_M_imag_d0;
wire   [7:0] grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ad_cp_M_real_address0;
wire    grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ad_cp_M_real_ce0;
wire   [7:0] grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ad_cp_M_imag_address0;
wire    grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ad_cp_M_imag_ce0;
wire   [9:0] grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ifft_data_M_real_address0;
wire    grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ifft_data_M_real_ce0;
wire   [9:0] grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ifft_data_M_imag_address0;
wire    grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ifft_data_M_imag_ce0;
reg    grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_ap_start_reg;
wire    ap_CS_fsm_state2;
reg    grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg    grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ap_start_reg;
wire    ap_CS_fsm_state6;
wire   [2:0] mul_ln23_fu_94_p0;
wire   [11:0] mul_ln23_fu_94_p1;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire   [12:0] mul_ln23_fu_94_p00;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_ap_start_reg = 1'b0;
#0 grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ap_start_reg = 1'b0;
#0 grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ap_start_reg = 1'b0;
end

top_tx_cp_ad_cp_M_real_RAM_AUTO_1R1W #(
    .DataWidth( 14 ),
    .AddressRange( 144 ),
    .AddressWidth( 8 ))
ad_cp_M_real_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(ad_cp_M_real_address0),
    .ce0(ad_cp_M_real_ce0),
    .we0(ad_cp_M_real_we0),
    .d0(grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ad_cp_M_real_d0),
    .q0(ad_cp_M_real_q0)
);

top_tx_cp_ad_cp_M_real_RAM_AUTO_1R1W #(
    .DataWidth( 14 ),
    .AddressRange( 144 ),
    .AddressWidth( 8 ))
ad_cp_M_imag_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(ad_cp_M_imag_address0),
    .ce0(ad_cp_M_imag_ce0),
    .we0(ad_cp_M_imag_we0),
    .d0(grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ad_cp_M_imag_d0),
    .q0(ad_cp_M_imag_q0)
);

top_tx_cp_ifft_data_M_real_RAM_AUTO_1R1W #(
    .DataWidth( 14 ),
    .AddressRange( 1024 ),
    .AddressWidth( 10 ))
ifft_data_M_real_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(ifft_data_M_real_address0),
    .ce0(ifft_data_M_real_ce0),
    .we0(ifft_data_M_real_we0),
    .d0(grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_ifft_data_M_real_d0),
    .q0(ifft_data_M_real_q0)
);

top_tx_cp_ifft_data_M_real_RAM_AUTO_1R1W #(
    .DataWidth( 14 ),
    .AddressRange( 1024 ),
    .AddressWidth( 10 ))
ifft_data_M_imag_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(ifft_data_M_imag_address0),
    .ce0(ifft_data_M_imag_ce0),
    .we0(ifft_data_M_imag_we0),
    .d0(grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_ifft_data_M_imag_d0),
    .q0(ifft_data_M_imag_q0)
);

top_tx_cp_Pipeline_VITIS_LOOP_11_1 grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_ap_start),
    .ap_done(grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_ap_done),
    .ap_idle(grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_ap_idle),
    .ap_ready(grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_ap_ready),
    .zext_ln12(tmp_reg_106),
    .nocp_M_real_address0(grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_nocp_M_real_address0),
    .nocp_M_real_ce0(grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_nocp_M_real_ce0),
    .nocp_M_real_q0(nocp_M_real_q0),
    .nocp_M_imag_address0(grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_nocp_M_imag_address0),
    .nocp_M_imag_ce0(grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_nocp_M_imag_ce0),
    .nocp_M_imag_q0(nocp_M_imag_q0),
    .ifft_data_M_real_address0(grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_ifft_data_M_real_address0),
    .ifft_data_M_real_ce0(grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_ifft_data_M_real_ce0),
    .ifft_data_M_real_we0(grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_ifft_data_M_real_we0),
    .ifft_data_M_real_d0(grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_ifft_data_M_real_d0),
    .ifft_data_M_imag_address0(grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_ifft_data_M_imag_address0),
    .ifft_data_M_imag_ce0(grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_ifft_data_M_imag_ce0),
    .ifft_data_M_imag_we0(grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_ifft_data_M_imag_we0),
    .ifft_data_M_imag_d0(grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_ifft_data_M_imag_d0)
);

top_tx_cp_Pipeline_VITIS_LOOP_13_2 grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ap_start),
    .ap_done(grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ap_done),
    .ap_idle(grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ap_idle),
    .ap_ready(grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ap_ready),
    .ifft_data_M_real_address0(grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ifft_data_M_real_address0),
    .ifft_data_M_real_ce0(grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ifft_data_M_real_ce0),
    .ifft_data_M_real_q0(ifft_data_M_real_q0),
    .ifft_data_M_imag_address0(grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ifft_data_M_imag_address0),
    .ifft_data_M_imag_ce0(grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ifft_data_M_imag_ce0),
    .ifft_data_M_imag_q0(ifft_data_M_imag_q0),
    .ad_cp_M_real_address0(grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ad_cp_M_real_address0),
    .ad_cp_M_real_ce0(grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ad_cp_M_real_ce0),
    .ad_cp_M_real_we0(grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ad_cp_M_real_we0),
    .ad_cp_M_real_d0(grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ad_cp_M_real_d0),
    .ad_cp_M_imag_address0(grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ad_cp_M_imag_address0),
    .ad_cp_M_imag_ce0(grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ad_cp_M_imag_ce0),
    .ad_cp_M_imag_we0(grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ad_cp_M_imag_we0),
    .ad_cp_M_imag_d0(grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ad_cp_M_imag_d0)
);

top_tx_cp_Pipeline_VITIS_LOOP_15_3 grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ap_start),
    .ap_done(grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ap_done),
    .ap_idle(grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ap_idle),
    .ap_ready(grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ap_ready),
    .mul_ln23(mul_ln23_reg_111),
    .cp_out_M_real_address0(grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_cp_out_M_real_address0),
    .cp_out_M_real_ce0(grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_cp_out_M_real_ce0),
    .cp_out_M_real_we0(grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_cp_out_M_real_we0),
    .cp_out_M_real_d0(grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_cp_out_M_real_d0),
    .cp_out_M_imag_address0(grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_cp_out_M_imag_address0),
    .cp_out_M_imag_ce0(grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_cp_out_M_imag_ce0),
    .cp_out_M_imag_we0(grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_cp_out_M_imag_we0),
    .cp_out_M_imag_d0(grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_cp_out_M_imag_d0),
    .ad_cp_M_real_address0(grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ad_cp_M_real_address0),
    .ad_cp_M_real_ce0(grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ad_cp_M_real_ce0),
    .ad_cp_M_real_q0(ad_cp_M_real_q0),
    .ad_cp_M_imag_address0(grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ad_cp_M_imag_address0),
    .ad_cp_M_imag_ce0(grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ad_cp_M_imag_ce0),
    .ad_cp_M_imag_q0(ad_cp_M_imag_q0),
    .ifft_data_M_real_address0(grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ifft_data_M_real_address0),
    .ifft_data_M_real_ce0(grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ifft_data_M_real_ce0),
    .ifft_data_M_real_q0(ifft_data_M_real_q0),
    .ifft_data_M_imag_address0(grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ifft_data_M_imag_address0),
    .ifft_data_M_imag_ce0(grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ifft_data_M_imag_ce0),
    .ifft_data_M_imag_q0(ifft_data_M_imag_q0)
);

top_tx_mul_3ns_12ns_13_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 3 ),
    .din1_WIDTH( 12 ),
    .dout_WIDTH( 13 ))
mul_3ns_12ns_13_1_1_U180(
    .din0(mul_ln23_fu_94_p0),
    .din1(mul_ln23_fu_94_p1),
    .dout(mul_ln23_fu_94_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_ap_start_reg <= 1'b1;
        end else if ((grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_ap_ready == 1'b1)) begin
            grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ap_start_reg <= 1'b1;
        end else if ((grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ap_ready == 1'b1)) begin
            grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ap_start_reg <= 1'b1;
        end else if ((grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ap_ready == 1'b1)) begin
            grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        mul_ln23_reg_111 <= mul_ln23_fu_94_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        tmp_reg_106[12 : 10] <= tmp_fu_82_p3[12 : 10];
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ad_cp_M_imag_address0 = grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ad_cp_M_imag_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        ad_cp_M_imag_address0 = grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ad_cp_M_imag_address0;
    end else begin
        ad_cp_M_imag_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ad_cp_M_imag_ce0 = grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ad_cp_M_imag_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        ad_cp_M_imag_ce0 = grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ad_cp_M_imag_ce0;
    end else begin
        ad_cp_M_imag_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ad_cp_M_imag_we0 = grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ad_cp_M_imag_we0;
    end else begin
        ad_cp_M_imag_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ad_cp_M_real_address0 = grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ad_cp_M_real_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        ad_cp_M_real_address0 = grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ad_cp_M_real_address0;
    end else begin
        ad_cp_M_real_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ad_cp_M_real_ce0 = grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ad_cp_M_real_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        ad_cp_M_real_ce0 = grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ad_cp_M_real_ce0;
    end else begin
        ad_cp_M_real_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ad_cp_M_real_we0 = grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ad_cp_M_real_we0;
    end else begin
        ad_cp_M_real_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

assign ap_ST_fsm_state3_blk = 1'b0;

always @ (*) begin
    if ((grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end

assign ap_ST_fsm_state5_blk = 1'b0;

always @ (*) begin
    if ((grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) | ((1'b1 == ap_CS_fsm_state6) & (grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ap_done == 1'b1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & (grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ifft_data_M_imag_address0 = grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ifft_data_M_imag_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        ifft_data_M_imag_address0 = grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ifft_data_M_imag_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        ifft_data_M_imag_address0 = grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_ifft_data_M_imag_address0;
    end else begin
        ifft_data_M_imag_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ifft_data_M_imag_ce0 = grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ifft_data_M_imag_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        ifft_data_M_imag_ce0 = grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ifft_data_M_imag_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        ifft_data_M_imag_ce0 = grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_ifft_data_M_imag_ce0;
    end else begin
        ifft_data_M_imag_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        ifft_data_M_imag_we0 = grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_ifft_data_M_imag_we0;
    end else begin
        ifft_data_M_imag_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ifft_data_M_real_address0 = grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ifft_data_M_real_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        ifft_data_M_real_address0 = grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ifft_data_M_real_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        ifft_data_M_real_address0 = grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_ifft_data_M_real_address0;
    end else begin
        ifft_data_M_real_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ifft_data_M_real_ce0 = grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ifft_data_M_real_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        ifft_data_M_real_ce0 = grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ifft_data_M_real_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        ifft_data_M_real_ce0 = grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_ifft_data_M_real_ce0;
    end else begin
        ifft_data_M_real_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        ifft_data_M_real_we0 = grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_ifft_data_M_real_we0;
    end else begin
        ifft_data_M_real_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign cp_out_M_imag_address0 = grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_cp_out_M_imag_address0;

assign cp_out_M_imag_ce0 = grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_cp_out_M_imag_ce0;

assign cp_out_M_imag_d0 = grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_cp_out_M_imag_d0;

assign cp_out_M_imag_we0 = grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_cp_out_M_imag_we0;

assign cp_out_M_real_address0 = grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_cp_out_M_real_address0;

assign cp_out_M_real_ce0 = grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_cp_out_M_real_ce0;

assign cp_out_M_real_d0 = grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_cp_out_M_real_d0;

assign cp_out_M_real_we0 = grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_cp_out_M_real_we0;

assign grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_ap_start = grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_ap_start_reg;

assign grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ap_start = grp_cp_Pipeline_VITIS_LOOP_13_2_fu_61_ap_start_reg;

assign grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ap_start = grp_cp_Pipeline_VITIS_LOOP_15_3_fu_69_ap_start_reg;

assign mul_ln23_fu_94_p0 = mul_ln23_fu_94_p00;

assign mul_ln23_fu_94_p00 = nocp_M_real_offset;

assign mul_ln23_fu_94_p1 = 13'd1168;

assign nocp_M_imag_address0 = grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_nocp_M_imag_address0;

assign nocp_M_imag_ce0 = grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_nocp_M_imag_ce0;

assign nocp_M_real_address0 = grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_nocp_M_real_address0;

assign nocp_M_real_ce0 = grp_cp_Pipeline_VITIS_LOOP_11_1_fu_48_nocp_M_real_ce0;

assign tmp_fu_82_p3 = {{nocp_M_real_offset}, {10'd0}};

always @ (posedge ap_clk) begin
    tmp_reg_106[9:0] <= 10'b0000000000;
end

endmodule //top_tx_cp
