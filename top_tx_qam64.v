// ==============================================================
// Generated by Vitis HLS v2023.1
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module top_tx_qam64 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        input1_val,
        input2_val,
        input3_val,
        input4_val,
        input5_val,
        input6_val,
        temp1_re_din,
        temp1_re_full_n,
        temp1_re_write,
        temp1_im_din,
        temp1_im_full_n,
        temp1_im_write
);

parameter    ap_ST_fsm_state1 = 17'd1;
parameter    ap_ST_fsm_state2 = 17'd2;
parameter    ap_ST_fsm_state3 = 17'd4;
parameter    ap_ST_fsm_state4 = 17'd8;
parameter    ap_ST_fsm_state5 = 17'd16;
parameter    ap_ST_fsm_state6 = 17'd32;
parameter    ap_ST_fsm_state7 = 17'd64;
parameter    ap_ST_fsm_state8 = 17'd128;
parameter    ap_ST_fsm_state9 = 17'd256;
parameter    ap_ST_fsm_state10 = 17'd512;
parameter    ap_ST_fsm_state11 = 17'd1024;
parameter    ap_ST_fsm_state12 = 17'd2048;
parameter    ap_ST_fsm_state13 = 17'd4096;
parameter    ap_ST_fsm_state14 = 17'd8192;
parameter    ap_ST_fsm_state15 = 17'd16384;
parameter    ap_ST_fsm_state16 = 17'd32768;
parameter    ap_ST_fsm_state17 = 17'd65536;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [0:0] input1_val;
input  [0:0] input2_val;
input  [0:0] input3_val;
input  [0:0] input4_val;
input  [0:0] input5_val;
input  [0:0] input6_val;
output  [15:0] temp1_re_din;
input   temp1_re_full_n;
output   temp1_re_write;
output  [15:0] temp1_im_din;
input   temp1_im_full_n;
output   temp1_im_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg temp1_re_write;
reg temp1_im_write;

(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [2:0] mapping_1_address0;
reg    mapping_1_ce0;
wire   [3:0] mapping_1_q0;
wire   [2:0] mapping_1_address1;
reg    mapping_1_ce1;
wire   [3:0] mapping_1_q1;
reg    temp1_re_blk_n;
wire    ap_CS_fsm_state17;
reg    temp1_im_blk_n;
wire    ap_CS_fsm_state2;
wire   [63:0] grp_fu_161_p1;
reg   [63:0] conv_reg_715;
wire    ap_CS_fsm_state3;
wire   [63:0] grp_fu_164_p1;
reg   [63:0] conv1_reg_720;
wire   [63:0] grp_fu_151_p2;
reg   [63:0] pf_reg_725;
wire    ap_CS_fsm_state16;
wire   [63:0] grp_fu_156_p2;
reg   [63:0] pf_2_reg_730;
wire   [63:0] zext_ln70_fu_187_p1;
wire   [63:0] zext_ln71_fu_192_p1;
reg    ap_block_state17;
wire    ap_CS_fsm_state4;
wire  signed [31:0] grp_fu_161_p0;
wire  signed [31:0] grp_fu_164_p0;
wire   [2:0] tmp_4_fu_167_p4;
wire   [2:0] tmp_5_fu_177_p4;
wire   [63:0] bitcast_ln724_fu_207_p1;
wire   [10:0] tmp10_fu_222_p4;
wire   [51:0] trunc_ln70_1_fu_236_p1;
wire   [52:0] zext_ln70_2_cast_fu_240_p3;
wire   [53:0] zext_ln70_2_fu_248_p1;
wire   [0:0] tmp_fu_214_p3;
wire   [53:0] sub_ln70_fu_252_p2;
wire   [62:0] trunc_ln70_fu_210_p1;
wire   [11:0] zext_ln70_1_fu_232_p1;
wire   [11:0] sub_ln70_1_fu_272_p2;
wire   [0:0] icmp_ln70_1_fu_278_p2;
wire   [11:0] add_ln70_fu_284_p2;
wire   [11:0] sub_ln70_2_fu_290_p2;
wire  signed [11:0] select_ln70_1_fu_296_p3;
wire   [53:0] select_ln70_fu_258_p3;
wire  signed [31:0] sext_ln70_fu_304_p1;
wire   [53:0] zext_ln70_3_fu_324_p1;
wire   [53:0] ashr_ln70_fu_328_p2;
wire   [0:0] tmp_11_fu_338_p3;
wire   [0:0] icmp_ln70_3_fu_318_p2;
wire   [15:0] trunc_ln70_3_fu_334_p1;
wire   [15:0] select_ln70_6_fu_346_p3;
wire   [7:0] tmp_12_fu_362_p4;
wire   [15:0] trunc_ln70_2_fu_314_p1;
wire   [15:0] sext_ln70cast_fu_378_p1;
wire   [0:0] icmp_ln70_4_fu_372_p2;
wire   [15:0] shl_ln70_fu_382_p2;
wire   [0:0] icmp_ln70_fu_266_p2;
wire   [15:0] select_ln70_3_fu_388_p3;
wire   [0:0] icmp_ln70_2_fu_308_p2;
wire   [0:0] xor_ln70_fu_404_p2;
wire   [0:0] and_ln70_fu_410_p2;
wire   [15:0] select_ln70_4_fu_396_p3;
wire   [0:0] or_ln70_fu_424_p2;
wire   [0:0] xor_ln70_1_fu_430_p2;
wire   [0:0] and_ln70_1_fu_436_p2;
wire   [15:0] select_ln70_2_fu_354_p3;
wire   [15:0] select_ln70_5_fu_416_p3;
wire   [63:0] bitcast_ln724_2_fu_451_p1;
wire   [10:0] tmp_s_fu_466_p4;
wire   [51:0] trunc_ln71_1_fu_480_p1;
wire   [52:0] zext_ln71_2_cast_fu_484_p3;
wire   [53:0] zext_ln71_2_fu_492_p1;
wire   [0:0] tmp_13_fu_458_p3;
wire   [53:0] sub_ln71_fu_496_p2;
wire   [62:0] trunc_ln71_fu_454_p1;
wire   [11:0] zext_ln71_1_fu_476_p1;
wire   [11:0] sub_ln71_1_fu_516_p2;
wire   [0:0] icmp_ln71_1_fu_522_p2;
wire   [11:0] add_ln71_fu_528_p2;
wire   [11:0] sub_ln71_2_fu_534_p2;
wire  signed [11:0] select_ln71_1_fu_540_p3;
wire   [53:0] select_ln71_fu_502_p3;
wire  signed [31:0] sext_ln71_fu_548_p1;
wire   [53:0] zext_ln71_3_fu_568_p1;
wire   [53:0] ashr_ln71_fu_572_p2;
wire   [0:0] tmp_14_fu_582_p3;
wire   [0:0] icmp_ln71_3_fu_562_p2;
wire   [15:0] trunc_ln71_3_fu_578_p1;
wire   [15:0] select_ln71_6_fu_590_p3;
wire   [7:0] tmp_15_fu_606_p4;
wire   [15:0] trunc_ln71_2_fu_558_p1;
wire   [15:0] sext_ln71cast_fu_622_p1;
wire   [0:0] icmp_ln71_4_fu_616_p2;
wire   [15:0] shl_ln71_fu_626_p2;
wire   [0:0] icmp_ln71_fu_510_p2;
wire   [15:0] select_ln71_3_fu_632_p3;
wire   [0:0] icmp_ln71_2_fu_552_p2;
wire   [0:0] xor_ln71_fu_648_p2;
wire   [0:0] and_ln71_fu_654_p2;
wire   [15:0] select_ln71_4_fu_640_p3;
wire   [0:0] or_ln71_fu_668_p2;
wire   [0:0] xor_ln71_1_fu_674_p2;
wire   [0:0] and_ln71_1_fu_680_p2;
wire   [15:0] select_ln71_2_fu_598_p3;
wire   [15:0] select_ln71_5_fu_660_p3;
reg   [16:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
reg    ap_ST_fsm_state17_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 17'd1;
end

top_tx_qam64_mapping_1_ROM_AUTO_1R #(
    .DataWidth( 4 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
mapping_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(mapping_1_address0),
    .ce0(mapping_1_ce0),
    .q0(mapping_1_q0),
    .address1(mapping_1_address1),
    .ce1(mapping_1_ce1),
    .q1(mapping_1_q1)
);

top_tx_ddiv_64ns_64ns_64_13_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 13 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_13_no_dsp_1_U40(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(conv_reg_715),
    .din1(64'd4618982683775996516),
    .ce(1'b1),
    .dout(grp_fu_151_p2)
);

top_tx_ddiv_64ns_64ns_64_13_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 13 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_13_no_dsp_1_U41(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(conv1_reg_720),
    .din1(64'd4618982683775996516),
    .ce(1'b1),
    .dout(grp_fu_156_p2)
);

top_tx_sitodp_32s_64_2_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
sitodp_32s_64_2_no_dsp_1_U42(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_161_p0),
    .ce(1'b1),
    .dout(grp_fu_161_p1)
);

top_tx_sitodp_32s_64_2_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
sitodp_32s_64_2_no_dsp_1_U43(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_164_p0),
    .ce(1'b1),
    .dout(grp_fu_164_p1)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        conv1_reg_720 <= grp_fu_164_p1;
        conv_reg_715 <= grp_fu_161_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        pf_2_reg_730 <= grp_fu_156_p2;
        pf_reg_725 <= grp_fu_151_p2;
    end
end

assign ap_ST_fsm_state10_blk = 1'b0;

assign ap_ST_fsm_state11_blk = 1'b0;

assign ap_ST_fsm_state12_blk = 1'b0;

assign ap_ST_fsm_state13_blk = 1'b0;

assign ap_ST_fsm_state14_blk = 1'b0;

assign ap_ST_fsm_state15_blk = 1'b0;

assign ap_ST_fsm_state16_blk = 1'b0;

always @ (*) begin
    if (((temp1_im_full_n == 1'b0) | (temp1_re_full_n == 1'b0))) begin
        ap_ST_fsm_state17_blk = 1'b1;
    end else begin
        ap_ST_fsm_state17_blk = 1'b0;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

assign ap_ST_fsm_state6_blk = 1'b0;

assign ap_ST_fsm_state7_blk = 1'b0;

assign ap_ST_fsm_state8_blk = 1'b0;

assign ap_ST_fsm_state9_blk = 1'b0;

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | (~((temp1_im_full_n == 1'b0) | (temp1_re_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state17)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~((temp1_im_full_n == 1'b0) | (temp1_re_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state17))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        mapping_1_ce0 = 1'b1;
    end else begin
        mapping_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        mapping_1_ce1 = 1'b1;
    end else begin
        mapping_1_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        temp1_im_blk_n = temp1_im_full_n;
    end else begin
        temp1_im_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((temp1_im_full_n == 1'b0) | (temp1_re_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state17))) begin
        temp1_im_write = 1'b1;
    end else begin
        temp1_im_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        temp1_re_blk_n = temp1_re_full_n;
    end else begin
        temp1_re_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((temp1_im_full_n == 1'b0) | (temp1_re_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state17))) begin
        temp1_re_write = 1'b1;
    end else begin
        temp1_re_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            if ((~((temp1_im_full_n == 1'b0) | (temp1_re_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state17))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln70_fu_284_p2 = ($signed(sub_ln70_1_fu_272_p2) + $signed(12'd4082));

assign add_ln71_fu_528_p2 = ($signed(sub_ln71_1_fu_516_p2) + $signed(12'd4082));

assign and_ln70_1_fu_436_p2 = (xor_ln70_1_fu_430_p2 & icmp_ln70_1_fu_278_p2);

assign and_ln70_fu_410_p2 = (xor_ln70_fu_404_p2 & icmp_ln70_2_fu_308_p2);

assign and_ln71_1_fu_680_p2 = (xor_ln71_1_fu_674_p2 & icmp_ln71_1_fu_522_p2);

assign and_ln71_fu_654_p2 = (xor_ln71_fu_648_p2 & icmp_ln71_2_fu_552_p2);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

always @ (*) begin
    ap_block_state17 = ((temp1_im_full_n == 1'b0) | (temp1_re_full_n == 1'b0));
end

assign ashr_ln70_fu_328_p2 = $signed(select_ln70_fu_258_p3) >>> zext_ln70_3_fu_324_p1;

assign ashr_ln71_fu_572_p2 = $signed(select_ln71_fu_502_p3) >>> zext_ln71_3_fu_568_p1;

assign bitcast_ln724_2_fu_451_p1 = pf_2_reg_730;

assign bitcast_ln724_fu_207_p1 = pf_reg_725;

assign grp_fu_161_p0 = $signed(mapping_1_q1);

assign grp_fu_164_p0 = $signed(mapping_1_q0);

assign icmp_ln70_1_fu_278_p2 = (($signed(sub_ln70_1_fu_272_p2) > $signed(12'd14)) ? 1'b1 : 1'b0);

assign icmp_ln70_2_fu_308_p2 = ((sub_ln70_1_fu_272_p2 == 12'd14) ? 1'b1 : 1'b0);

assign icmp_ln70_3_fu_318_p2 = ((select_ln70_1_fu_296_p3 < 12'd54) ? 1'b1 : 1'b0);

assign icmp_ln70_4_fu_372_p2 = ((tmp_12_fu_362_p4 == 8'd0) ? 1'b1 : 1'b0);

assign icmp_ln70_fu_266_p2 = ((trunc_ln70_fu_210_p1 == 63'd0) ? 1'b1 : 1'b0);

assign icmp_ln71_1_fu_522_p2 = (($signed(sub_ln71_1_fu_516_p2) > $signed(12'd14)) ? 1'b1 : 1'b0);

assign icmp_ln71_2_fu_552_p2 = ((sub_ln71_1_fu_516_p2 == 12'd14) ? 1'b1 : 1'b0);

assign icmp_ln71_3_fu_562_p2 = ((select_ln71_1_fu_540_p3 < 12'd54) ? 1'b1 : 1'b0);

assign icmp_ln71_4_fu_616_p2 = ((tmp_15_fu_606_p4 == 8'd0) ? 1'b1 : 1'b0);

assign icmp_ln71_fu_510_p2 = ((trunc_ln71_fu_454_p1 == 63'd0) ? 1'b1 : 1'b0);

assign mapping_1_address0 = zext_ln71_fu_192_p1;

assign mapping_1_address1 = zext_ln70_fu_187_p1;

assign or_ln70_fu_424_p2 = (icmp_ln70_fu_266_p2 | icmp_ln70_2_fu_308_p2);

assign or_ln71_fu_668_p2 = (icmp_ln71_fu_510_p2 | icmp_ln71_2_fu_552_p2);

assign select_ln70_1_fu_296_p3 = ((icmp_ln70_1_fu_278_p2[0:0] == 1'b1) ? add_ln70_fu_284_p2 : sub_ln70_2_fu_290_p2);

assign select_ln70_2_fu_354_p3 = ((icmp_ln70_3_fu_318_p2[0:0] == 1'b1) ? trunc_ln70_3_fu_334_p1 : select_ln70_6_fu_346_p3);

assign select_ln70_3_fu_388_p3 = ((icmp_ln70_4_fu_372_p2[0:0] == 1'b1) ? shl_ln70_fu_382_p2 : 16'd0);

assign select_ln70_4_fu_396_p3 = ((icmp_ln70_fu_266_p2[0:0] == 1'b1) ? 16'd0 : select_ln70_3_fu_388_p3);

assign select_ln70_5_fu_416_p3 = ((and_ln70_fu_410_p2[0:0] == 1'b1) ? trunc_ln70_2_fu_314_p1 : select_ln70_4_fu_396_p3);

assign select_ln70_6_fu_346_p3 = ((tmp_11_fu_338_p3[0:0] == 1'b1) ? 16'd65535 : 16'd0);

assign select_ln70_fu_258_p3 = ((tmp_fu_214_p3[0:0] == 1'b1) ? sub_ln70_fu_252_p2 : zext_ln70_2_fu_248_p1);

assign select_ln71_1_fu_540_p3 = ((icmp_ln71_1_fu_522_p2[0:0] == 1'b1) ? add_ln71_fu_528_p2 : sub_ln71_2_fu_534_p2);

assign select_ln71_2_fu_598_p3 = ((icmp_ln71_3_fu_562_p2[0:0] == 1'b1) ? trunc_ln71_3_fu_578_p1 : select_ln71_6_fu_590_p3);

assign select_ln71_3_fu_632_p3 = ((icmp_ln71_4_fu_616_p2[0:0] == 1'b1) ? shl_ln71_fu_626_p2 : 16'd0);

assign select_ln71_4_fu_640_p3 = ((icmp_ln71_fu_510_p2[0:0] == 1'b1) ? 16'd0 : select_ln71_3_fu_632_p3);

assign select_ln71_5_fu_660_p3 = ((and_ln71_fu_654_p2[0:0] == 1'b1) ? trunc_ln71_2_fu_558_p1 : select_ln71_4_fu_640_p3);

assign select_ln71_6_fu_590_p3 = ((tmp_14_fu_582_p3[0:0] == 1'b1) ? 16'd65535 : 16'd0);

assign select_ln71_fu_502_p3 = ((tmp_13_fu_458_p3[0:0] == 1'b1) ? sub_ln71_fu_496_p2 : zext_ln71_2_fu_492_p1);

assign sext_ln70_fu_304_p1 = select_ln70_1_fu_296_p3;

assign sext_ln70cast_fu_378_p1 = sext_ln70_fu_304_p1[15:0];

assign sext_ln71_fu_548_p1 = select_ln71_1_fu_540_p3;

assign sext_ln71cast_fu_622_p1 = sext_ln71_fu_548_p1[15:0];

assign shl_ln70_fu_382_p2 = trunc_ln70_2_fu_314_p1 << sext_ln70cast_fu_378_p1;

assign shl_ln71_fu_626_p2 = trunc_ln71_2_fu_558_p1 << sext_ln71cast_fu_622_p1;

assign sub_ln70_1_fu_272_p2 = (12'd1075 - zext_ln70_1_fu_232_p1);

assign sub_ln70_2_fu_290_p2 = (12'd14 - sub_ln70_1_fu_272_p2);

assign sub_ln70_fu_252_p2 = (54'd0 - zext_ln70_2_fu_248_p1);

assign sub_ln71_1_fu_516_p2 = (12'd1075 - zext_ln71_1_fu_476_p1);

assign sub_ln71_2_fu_534_p2 = (12'd14 - sub_ln71_1_fu_516_p2);

assign sub_ln71_fu_496_p2 = (54'd0 - zext_ln71_2_fu_492_p1);

assign temp1_im_din = ((and_ln71_1_fu_680_p2[0:0] == 1'b1) ? select_ln71_2_fu_598_p3 : select_ln71_5_fu_660_p3);

assign temp1_re_din = ((and_ln70_1_fu_436_p2[0:0] == 1'b1) ? select_ln70_2_fu_354_p3 : select_ln70_5_fu_416_p3);

assign tmp10_fu_222_p4 = {{bitcast_ln724_fu_207_p1[62:52]}};

assign tmp_11_fu_338_p3 = bitcast_ln724_fu_207_p1[32'd63];

assign tmp_12_fu_362_p4 = {{select_ln70_1_fu_296_p3[11:4]}};

assign tmp_13_fu_458_p3 = bitcast_ln724_2_fu_451_p1[32'd63];

assign tmp_14_fu_582_p3 = bitcast_ln724_2_fu_451_p1[32'd63];

assign tmp_15_fu_606_p4 = {{select_ln71_1_fu_540_p3[11:4]}};

assign tmp_4_fu_167_p4 = {{{input6_val}, {input5_val}}, {input4_val}};

assign tmp_5_fu_177_p4 = {{{input3_val}, {input2_val}}, {input1_val}};

assign tmp_fu_214_p3 = bitcast_ln724_fu_207_p1[32'd63];

assign tmp_s_fu_466_p4 = {{bitcast_ln724_2_fu_451_p1[62:52]}};

assign trunc_ln70_1_fu_236_p1 = bitcast_ln724_fu_207_p1[51:0];

assign trunc_ln70_2_fu_314_p1 = select_ln70_fu_258_p3[15:0];

assign trunc_ln70_3_fu_334_p1 = ashr_ln70_fu_328_p2[15:0];

assign trunc_ln70_fu_210_p1 = bitcast_ln724_fu_207_p1[62:0];

assign trunc_ln71_1_fu_480_p1 = bitcast_ln724_2_fu_451_p1[51:0];

assign trunc_ln71_2_fu_558_p1 = select_ln71_fu_502_p3[15:0];

assign trunc_ln71_3_fu_578_p1 = ashr_ln71_fu_572_p2[15:0];

assign trunc_ln71_fu_454_p1 = bitcast_ln724_2_fu_451_p1[62:0];

assign xor_ln70_1_fu_430_p2 = (or_ln70_fu_424_p2 ^ 1'd1);

assign xor_ln70_fu_404_p2 = (icmp_ln70_fu_266_p2 ^ 1'd1);

assign xor_ln71_1_fu_674_p2 = (or_ln71_fu_668_p2 ^ 1'd1);

assign xor_ln71_fu_648_p2 = (icmp_ln71_fu_510_p2 ^ 1'd1);

assign zext_ln70_1_fu_232_p1 = tmp10_fu_222_p4;

assign zext_ln70_2_cast_fu_240_p3 = {{1'd1}, {trunc_ln70_1_fu_236_p1}};

assign zext_ln70_2_fu_248_p1 = zext_ln70_2_cast_fu_240_p3;

assign zext_ln70_3_fu_324_p1 = $unsigned(sext_ln70_fu_304_p1);

assign zext_ln70_fu_187_p1 = tmp_4_fu_167_p4;

assign zext_ln71_1_fu_476_p1 = tmp_s_fu_466_p4;

assign zext_ln71_2_cast_fu_484_p3 = {{1'd1}, {trunc_ln71_1_fu_480_p1}};

assign zext_ln71_2_fu_492_p1 = zext_ln71_2_cast_fu_484_p3;

assign zext_ln71_3_fu_568_p1 = $unsigned(sext_ln71_fu_548_p1);

assign zext_ln71_fu_192_p1 = tmp_5_fu_177_p4;

endmodule //top_tx_qam64
