// ==============================================================
// Generated by Vitis HLS v2023.1
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module top_tx_top_tx_Pipeline_input_loop (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        temp2_re_address0,
        temp2_re_ce0,
        temp2_re_q0,
        temp2_im_address0,
        temp2_im_ce0,
        temp2_im_q0,
        temp_out_M_real_address0,
        temp_out_M_real_ce0,
        temp_out_M_real_we0,
        temp_out_M_real_d0,
        temp_out_M_imag_address0,
        temp_out_M_imag_ce0,
        temp_out_M_imag_we0,
        temp_out_M_imag_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] temp2_re_address0;
output   temp2_re_ce0;
input  [15:0] temp2_re_q0;
output  [12:0] temp2_im_address0;
output   temp2_im_ce0;
input  [15:0] temp2_im_q0;
output  [12:0] temp_out_M_real_address0;
output   temp_out_M_real_ce0;
output   temp_out_M_real_we0;
output  [15:0] temp_out_M_real_d0;
output  [12:0] temp_out_M_imag_address0;
output   temp_out_M_imag_ce0;
output   temp_out_M_imag_we0;
output  [15:0] temp_out_M_imag_d0;

reg ap_idle;
reg temp2_re_ce0;
reg temp2_im_ce0;
reg temp_out_M_real_ce0;
reg temp_out_M_real_we0;
reg temp_out_M_imag_ce0;
reg temp_out_M_imag_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln98_fu_112_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] i_cast8_fu_124_p1;
reg   [63:0] i_cast8_reg_259;
wire    ap_block_pp0_stage0_11001;
wire    ap_block_pp0_stage0;
reg   [12:0] i_fu_48;
wire   [12:0] add_ln98_fu_118_p2;
wire    ap_loop_init;
reg   [12:0] ap_sig_allocacmp_i_3;
wire   [15:0] sub_ln100_fu_143_p2;
wire   [14:0] trunc_ln100_1_fu_149_p4;
wire   [0:0] tmp_1_fu_135_p3;
wire   [14:0] sub_ln100_1_fu_159_p2;
wire   [14:0] tmp_fu_165_p4;
wire   [14:0] select_ln100_fu_175_p3;
wire   [15:0] sub_ln100_2_fu_200_p2;
wire   [14:0] trunc_ln100_4_fu_206_p4;
wire   [0:0] tmp_3_fu_192_p3;
wire   [14:0] sub_ln100_3_fu_216_p2;
wire   [14:0] tmp_2_fu_222_p4;
wire   [14:0] select_ln100_1_fu_232_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end

top_tx_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln98_fu_112_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_48 <= add_ln98_fu_118_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_48 <= 13'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln98_fu_112_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_cast8_reg_259[12 : 0] <= i_cast8_fu_124_p1[12 : 0];
    end
end

always @ (*) begin
    if (((icmp_ln98_fu_112_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_3 = 13'd0;
    end else begin
        ap_sig_allocacmp_i_3 = i_fu_48;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp2_im_ce0 = 1'b1;
    end else begin
        temp2_im_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp2_re_ce0 = 1'b1;
    end else begin
        temp2_re_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp_out_M_imag_ce0 = 1'b1;
    end else begin
        temp_out_M_imag_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp_out_M_imag_we0 = 1'b1;
    end else begin
        temp_out_M_imag_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp_out_M_real_ce0 = 1'b1;
    end else begin
        temp_out_M_real_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp_out_M_real_we0 = 1'b1;
    end else begin
        temp_out_M_real_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln98_fu_118_p2 = (ap_sig_allocacmp_i_3 + 13'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign i_cast8_fu_124_p1 = ap_sig_allocacmp_i_3;

assign icmp_ln98_fu_112_p2 = ((ap_sig_allocacmp_i_3 == 13'd7168) ? 1'b1 : 1'b0);

assign select_ln100_1_fu_232_p3 = ((tmp_3_fu_192_p3[0:0] == 1'b1) ? sub_ln100_3_fu_216_p2 : tmp_2_fu_222_p4);

assign select_ln100_fu_175_p3 = ((tmp_1_fu_135_p3[0:0] == 1'b1) ? sub_ln100_1_fu_159_p2 : tmp_fu_165_p4);

assign sub_ln100_1_fu_159_p2 = (15'd0 - trunc_ln100_1_fu_149_p4);

assign sub_ln100_2_fu_200_p2 = (16'd0 - temp2_im_q0);

assign sub_ln100_3_fu_216_p2 = (15'd0 - trunc_ln100_4_fu_206_p4);

assign sub_ln100_fu_143_p2 = (16'd0 - temp2_re_q0);

assign temp2_im_address0 = i_cast8_fu_124_p1;

assign temp2_re_address0 = i_cast8_fu_124_p1;

assign temp_out_M_imag_address0 = i_cast8_reg_259;

assign temp_out_M_imag_d0 = {{select_ln100_1_fu_232_p3}, {1'd0}};

assign temp_out_M_real_address0 = i_cast8_reg_259;

assign temp_out_M_real_d0 = {{select_ln100_fu_175_p3}, {1'd0}};

assign tmp_1_fu_135_p3 = temp2_re_q0[32'd15];

assign tmp_2_fu_222_p4 = {{temp2_im_q0[15:1]}};

assign tmp_3_fu_192_p3 = temp2_im_q0[32'd15];

assign tmp_fu_165_p4 = {{temp2_re_q0[15:1]}};

assign trunc_ln100_1_fu_149_p4 = {{sub_ln100_fu_143_p2[15:1]}};

assign trunc_ln100_4_fu_206_p4 = {{sub_ln100_2_fu_200_p2[15:1]}};

always @ (posedge ap_clk) begin
    i_cast8_reg_259[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
end

endmodule //top_tx_top_tx_Pipeline_input_loop
