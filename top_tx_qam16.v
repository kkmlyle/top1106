// ==============================================================
// Generated by Vitis HLS v2023.1
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module top_tx_qam16 (
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
wire   [1:0] mappingi_address0;
reg    mappingi_ce0;
wire   [2:0] mappingi_q0;
wire   [1:0] mappingq_address0;
reg    mappingq_ce0;
wire   [2:0] mappingq_q0;
reg    temp1_re_blk_n;
wire    ap_CS_fsm_state17;
reg    temp1_im_blk_n;
wire    ap_CS_fsm_state2;
wire   [63:0] grp_fu_148_p1;
reg   [63:0] conv6_reg_698;
wire    ap_CS_fsm_state3;
wire   [63:0] grp_fu_151_p1;
reg   [63:0] conv_reg_703;
wire   [63:0] grp_fu_138_p2;
reg   [63:0] pf_reg_708;
wire    ap_CS_fsm_state16;
wire   [63:0] grp_fu_143_p2;
reg   [63:0] pf_3_reg_713;
wire   [63:0] zext_ln42_fu_170_p1;
wire   [63:0] zext_ln43_fu_175_p1;
reg    ap_block_state17;
wire    ap_CS_fsm_state4;
wire  signed [31:0] grp_fu_148_p0;
wire  signed [31:0] grp_fu_151_p0;
wire   [1:0] tmp_9_fu_154_p3;
wire   [1:0] tmp_1_fu_162_p3;
wire   [63:0] bitcast_ln724_fu_190_p1;
wire   [10:0] tmp16_fu_205_p4;
wire   [51:0] trunc_ln42_1_fu_219_p1;
wire   [52:0] zext_ln42_2_cast_fu_223_p3;
wire   [53:0] zext_ln42_2_fu_231_p1;
wire   [0:0] tmp_fu_197_p3;
wire   [53:0] sub_ln42_fu_235_p2;
wire   [62:0] trunc_ln42_fu_193_p1;
wire   [11:0] zext_ln42_1_fu_215_p1;
wire   [11:0] sub_ln42_1_fu_255_p2;
wire   [0:0] icmp_ln42_1_fu_261_p2;
wire   [11:0] add_ln42_fu_267_p2;
wire   [11:0] sub_ln42_2_fu_273_p2;
wire  signed [11:0] select_ln42_1_fu_279_p3;
wire   [53:0] select_ln42_fu_241_p3;
wire  signed [31:0] sext_ln42_fu_287_p1;
wire   [53:0] zext_ln42_3_fu_307_p1;
wire   [53:0] ashr_ln42_fu_311_p2;
wire   [0:0] tmp_17_fu_321_p3;
wire   [0:0] icmp_ln42_3_fu_301_p2;
wire   [15:0] trunc_ln42_3_fu_317_p1;
wire   [15:0] select_ln42_6_fu_329_p3;
wire   [7:0] tmp_18_fu_345_p4;
wire   [15:0] trunc_ln42_2_fu_297_p1;
wire   [15:0] sext_ln42cast_fu_361_p1;
wire   [0:0] icmp_ln42_4_fu_355_p2;
wire   [15:0] shl_ln42_fu_365_p2;
wire   [0:0] icmp_ln42_fu_249_p2;
wire   [15:0] select_ln42_3_fu_371_p3;
wire   [0:0] icmp_ln42_2_fu_291_p2;
wire   [0:0] xor_ln42_fu_387_p2;
wire   [0:0] and_ln42_fu_393_p2;
wire   [15:0] select_ln42_4_fu_379_p3;
wire   [0:0] or_ln42_fu_407_p2;
wire   [0:0] xor_ln42_1_fu_413_p2;
wire   [0:0] and_ln42_1_fu_419_p2;
wire   [15:0] select_ln42_2_fu_337_p3;
wire   [15:0] select_ln42_5_fu_399_p3;
wire   [63:0] bitcast_ln724_3_fu_434_p1;
wire   [10:0] tmp_s_fu_449_p4;
wire   [51:0] trunc_ln43_1_fu_463_p1;
wire   [52:0] zext_ln43_2_cast_fu_467_p3;
wire   [53:0] zext_ln43_2_fu_475_p1;
wire   [0:0] tmp_19_fu_441_p3;
wire   [53:0] sub_ln43_fu_479_p2;
wire   [62:0] trunc_ln43_fu_437_p1;
wire   [11:0] zext_ln43_1_fu_459_p1;
wire   [11:0] sub_ln43_1_fu_499_p2;
wire   [0:0] icmp_ln43_1_fu_505_p2;
wire   [11:0] add_ln43_fu_511_p2;
wire   [11:0] sub_ln43_2_fu_517_p2;
wire  signed [11:0] select_ln43_1_fu_523_p3;
wire   [53:0] select_ln43_fu_485_p3;
wire  signed [31:0] sext_ln43_fu_531_p1;
wire   [53:0] zext_ln43_3_fu_551_p1;
wire   [53:0] ashr_ln43_fu_555_p2;
wire   [0:0] tmp_20_fu_565_p3;
wire   [0:0] icmp_ln43_3_fu_545_p2;
wire   [15:0] trunc_ln43_3_fu_561_p1;
wire   [15:0] select_ln43_6_fu_573_p3;
wire   [7:0] tmp_21_fu_589_p4;
wire   [15:0] trunc_ln43_2_fu_541_p1;
wire   [15:0] sext_ln43cast_fu_605_p1;
wire   [0:0] icmp_ln43_4_fu_599_p2;
wire   [15:0] shl_ln43_fu_609_p2;
wire   [0:0] icmp_ln43_fu_493_p2;
wire   [15:0] select_ln43_3_fu_615_p3;
wire   [0:0] icmp_ln43_2_fu_535_p2;
wire   [0:0] xor_ln43_fu_631_p2;
wire   [0:0] and_ln43_fu_637_p2;
wire   [15:0] select_ln43_4_fu_623_p3;
wire   [0:0] or_ln43_fu_651_p2;
wire   [0:0] xor_ln43_1_fu_657_p2;
wire   [0:0] and_ln43_1_fu_663_p2;
wire   [15:0] select_ln43_2_fu_581_p3;
wire   [15:0] select_ln43_5_fu_643_p3;
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

top_tx_qam16_mappingi_ROM_AUTO_1R #(
    .DataWidth( 3 ),
    .AddressRange( 4 ),
    .AddressWidth( 2 ))
mappingi_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(mappingi_address0),
    .ce0(mappingi_ce0),
    .q0(mappingi_q0)
);

top_tx_qam16_mappingq_ROM_AUTO_1R #(
    .DataWidth( 3 ),
    .AddressRange( 4 ),
    .AddressWidth( 2 ))
mappingq_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(mappingq_address0),
    .ce0(mappingq_ce0),
    .q0(mappingq_q0)
);

top_tx_ddiv_64ns_64ns_64_13_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 13 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_13_no_dsp_1_U28(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(conv6_reg_698),
    .din1(64'd4614303235046005587),
    .ce(1'b1),
    .dout(grp_fu_138_p2)
);

top_tx_ddiv_64ns_64ns_64_13_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 13 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_13_no_dsp_1_U29(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(conv_reg_703),
    .din1(64'd4614303235046005587),
    .ce(1'b1),
    .dout(grp_fu_143_p2)
);

top_tx_sitodp_32s_64_2_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
sitodp_32s_64_2_no_dsp_1_U30(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_148_p0),
    .ce(1'b1),
    .dout(grp_fu_148_p1)
);

top_tx_sitodp_32s_64_2_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
sitodp_32s_64_2_no_dsp_1_U31(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_151_p0),
    .ce(1'b1),
    .dout(grp_fu_151_p1)
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
        conv6_reg_698 <= grp_fu_148_p1;
        conv_reg_703 <= grp_fu_151_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        pf_3_reg_713 <= grp_fu_143_p2;
        pf_reg_708 <= grp_fu_138_p2;
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
        mappingi_ce0 = 1'b1;
    end else begin
        mappingi_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        mappingq_ce0 = 1'b1;
    end else begin
        mappingq_ce0 = 1'b0;
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

assign add_ln42_fu_267_p2 = ($signed(sub_ln42_1_fu_255_p2) + $signed(12'd4082));

assign add_ln43_fu_511_p2 = ($signed(sub_ln43_1_fu_499_p2) + $signed(12'd4082));

assign and_ln42_1_fu_419_p2 = (xor_ln42_1_fu_413_p2 & icmp_ln42_1_fu_261_p2);

assign and_ln42_fu_393_p2 = (xor_ln42_fu_387_p2 & icmp_ln42_2_fu_291_p2);

assign and_ln43_1_fu_663_p2 = (xor_ln43_1_fu_657_p2 & icmp_ln43_1_fu_505_p2);

assign and_ln43_fu_637_p2 = (xor_ln43_fu_631_p2 & icmp_ln43_2_fu_535_p2);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

always @ (*) begin
    ap_block_state17 = ((temp1_im_full_n == 1'b0) | (temp1_re_full_n == 1'b0));
end

assign ashr_ln42_fu_311_p2 = $signed(select_ln42_fu_241_p3) >>> zext_ln42_3_fu_307_p1;

assign ashr_ln43_fu_555_p2 = $signed(select_ln43_fu_485_p3) >>> zext_ln43_3_fu_551_p1;

assign bitcast_ln724_3_fu_434_p1 = pf_3_reg_713;

assign bitcast_ln724_fu_190_p1 = pf_reg_708;

assign grp_fu_148_p0 = $signed(mappingi_q0);

assign grp_fu_151_p0 = $signed(mappingq_q0);

assign icmp_ln42_1_fu_261_p2 = (($signed(sub_ln42_1_fu_255_p2) > $signed(12'd14)) ? 1'b1 : 1'b0);

assign icmp_ln42_2_fu_291_p2 = ((sub_ln42_1_fu_255_p2 == 12'd14) ? 1'b1 : 1'b0);

assign icmp_ln42_3_fu_301_p2 = ((select_ln42_1_fu_279_p3 < 12'd54) ? 1'b1 : 1'b0);

assign icmp_ln42_4_fu_355_p2 = ((tmp_18_fu_345_p4 == 8'd0) ? 1'b1 : 1'b0);

assign icmp_ln42_fu_249_p2 = ((trunc_ln42_fu_193_p1 == 63'd0) ? 1'b1 : 1'b0);

assign icmp_ln43_1_fu_505_p2 = (($signed(sub_ln43_1_fu_499_p2) > $signed(12'd14)) ? 1'b1 : 1'b0);

assign icmp_ln43_2_fu_535_p2 = ((sub_ln43_1_fu_499_p2 == 12'd14) ? 1'b1 : 1'b0);

assign icmp_ln43_3_fu_545_p2 = ((select_ln43_1_fu_523_p3 < 12'd54) ? 1'b1 : 1'b0);

assign icmp_ln43_4_fu_599_p2 = ((tmp_21_fu_589_p4 == 8'd0) ? 1'b1 : 1'b0);

assign icmp_ln43_fu_493_p2 = ((trunc_ln43_fu_437_p1 == 63'd0) ? 1'b1 : 1'b0);

assign mappingi_address0 = zext_ln42_fu_170_p1;

assign mappingq_address0 = zext_ln43_fu_175_p1;

assign or_ln42_fu_407_p2 = (icmp_ln42_fu_249_p2 | icmp_ln42_2_fu_291_p2);

assign or_ln43_fu_651_p2 = (icmp_ln43_fu_493_p2 | icmp_ln43_2_fu_535_p2);

assign select_ln42_1_fu_279_p3 = ((icmp_ln42_1_fu_261_p2[0:0] == 1'b1) ? add_ln42_fu_267_p2 : sub_ln42_2_fu_273_p2);

assign select_ln42_2_fu_337_p3 = ((icmp_ln42_3_fu_301_p2[0:0] == 1'b1) ? trunc_ln42_3_fu_317_p1 : select_ln42_6_fu_329_p3);

assign select_ln42_3_fu_371_p3 = ((icmp_ln42_4_fu_355_p2[0:0] == 1'b1) ? shl_ln42_fu_365_p2 : 16'd0);

assign select_ln42_4_fu_379_p3 = ((icmp_ln42_fu_249_p2[0:0] == 1'b1) ? 16'd0 : select_ln42_3_fu_371_p3);

assign select_ln42_5_fu_399_p3 = ((and_ln42_fu_393_p2[0:0] == 1'b1) ? trunc_ln42_2_fu_297_p1 : select_ln42_4_fu_379_p3);

assign select_ln42_6_fu_329_p3 = ((tmp_17_fu_321_p3[0:0] == 1'b1) ? 16'd65535 : 16'd0);

assign select_ln42_fu_241_p3 = ((tmp_fu_197_p3[0:0] == 1'b1) ? sub_ln42_fu_235_p2 : zext_ln42_2_fu_231_p1);

assign select_ln43_1_fu_523_p3 = ((icmp_ln43_1_fu_505_p2[0:0] == 1'b1) ? add_ln43_fu_511_p2 : sub_ln43_2_fu_517_p2);

assign select_ln43_2_fu_581_p3 = ((icmp_ln43_3_fu_545_p2[0:0] == 1'b1) ? trunc_ln43_3_fu_561_p1 : select_ln43_6_fu_573_p3);

assign select_ln43_3_fu_615_p3 = ((icmp_ln43_4_fu_599_p2[0:0] == 1'b1) ? shl_ln43_fu_609_p2 : 16'd0);

assign select_ln43_4_fu_623_p3 = ((icmp_ln43_fu_493_p2[0:0] == 1'b1) ? 16'd0 : select_ln43_3_fu_615_p3);

assign select_ln43_5_fu_643_p3 = ((and_ln43_fu_637_p2[0:0] == 1'b1) ? trunc_ln43_2_fu_541_p1 : select_ln43_4_fu_623_p3);

assign select_ln43_6_fu_573_p3 = ((tmp_20_fu_565_p3[0:0] == 1'b1) ? 16'd65535 : 16'd0);

assign select_ln43_fu_485_p3 = ((tmp_19_fu_441_p3[0:0] == 1'b1) ? sub_ln43_fu_479_p2 : zext_ln43_2_fu_475_p1);

assign sext_ln42_fu_287_p1 = select_ln42_1_fu_279_p3;

assign sext_ln42cast_fu_361_p1 = sext_ln42_fu_287_p1[15:0];

assign sext_ln43_fu_531_p1 = select_ln43_1_fu_523_p3;

assign sext_ln43cast_fu_605_p1 = sext_ln43_fu_531_p1[15:0];

assign shl_ln42_fu_365_p2 = trunc_ln42_2_fu_297_p1 << sext_ln42cast_fu_361_p1;

assign shl_ln43_fu_609_p2 = trunc_ln43_2_fu_541_p1 << sext_ln43cast_fu_605_p1;

assign sub_ln42_1_fu_255_p2 = (12'd1075 - zext_ln42_1_fu_215_p1);

assign sub_ln42_2_fu_273_p2 = (12'd14 - sub_ln42_1_fu_255_p2);

assign sub_ln42_fu_235_p2 = (54'd0 - zext_ln42_2_fu_231_p1);

assign sub_ln43_1_fu_499_p2 = (12'd1075 - zext_ln43_1_fu_459_p1);

assign sub_ln43_2_fu_517_p2 = (12'd14 - sub_ln43_1_fu_499_p2);

assign sub_ln43_fu_479_p2 = (54'd0 - zext_ln43_2_fu_475_p1);

assign temp1_im_din = ((and_ln43_1_fu_663_p2[0:0] == 1'b1) ? select_ln43_2_fu_581_p3 : select_ln43_5_fu_643_p3);

assign temp1_re_din = ((and_ln42_1_fu_419_p2[0:0] == 1'b1) ? select_ln42_2_fu_337_p3 : select_ln42_5_fu_399_p3);

assign tmp16_fu_205_p4 = {{bitcast_ln724_fu_190_p1[62:52]}};

assign tmp_17_fu_321_p3 = bitcast_ln724_fu_190_p1[32'd63];

assign tmp_18_fu_345_p4 = {{select_ln42_1_fu_279_p3[11:4]}};

assign tmp_19_fu_441_p3 = bitcast_ln724_3_fu_434_p1[32'd63];

assign tmp_1_fu_162_p3 = {{input2_val}, {input1_val}};

assign tmp_20_fu_565_p3 = bitcast_ln724_3_fu_434_p1[32'd63];

assign tmp_21_fu_589_p4 = {{select_ln43_1_fu_523_p3[11:4]}};

assign tmp_9_fu_154_p3 = {{input4_val}, {input3_val}};

assign tmp_fu_197_p3 = bitcast_ln724_fu_190_p1[32'd63];

assign tmp_s_fu_449_p4 = {{bitcast_ln724_3_fu_434_p1[62:52]}};

assign trunc_ln42_1_fu_219_p1 = bitcast_ln724_fu_190_p1[51:0];

assign trunc_ln42_2_fu_297_p1 = select_ln42_fu_241_p3[15:0];

assign trunc_ln42_3_fu_317_p1 = ashr_ln42_fu_311_p2[15:0];

assign trunc_ln42_fu_193_p1 = bitcast_ln724_fu_190_p1[62:0];

assign trunc_ln43_1_fu_463_p1 = bitcast_ln724_3_fu_434_p1[51:0];

assign trunc_ln43_2_fu_541_p1 = select_ln43_fu_485_p3[15:0];

assign trunc_ln43_3_fu_561_p1 = ashr_ln43_fu_555_p2[15:0];

assign trunc_ln43_fu_437_p1 = bitcast_ln724_3_fu_434_p1[62:0];

assign xor_ln42_1_fu_413_p2 = (or_ln42_fu_407_p2 ^ 1'd1);

assign xor_ln42_fu_387_p2 = (icmp_ln42_fu_249_p2 ^ 1'd1);

assign xor_ln43_1_fu_657_p2 = (or_ln43_fu_651_p2 ^ 1'd1);

assign xor_ln43_fu_631_p2 = (icmp_ln43_fu_493_p2 ^ 1'd1);

assign zext_ln42_1_fu_215_p1 = tmp16_fu_205_p4;

assign zext_ln42_2_cast_fu_223_p3 = {{1'd1}, {trunc_ln42_1_fu_219_p1}};

assign zext_ln42_2_fu_231_p1 = zext_ln42_2_cast_fu_223_p3;

assign zext_ln42_3_fu_307_p1 = $unsigned(sext_ln42_fu_287_p1);

assign zext_ln42_fu_170_p1 = tmp_9_fu_154_p3;

assign zext_ln43_1_fu_459_p1 = tmp_s_fu_449_p4;

assign zext_ln43_2_cast_fu_467_p3 = {{1'd1}, {trunc_ln43_1_fu_463_p1}};

assign zext_ln43_2_fu_475_p1 = zext_ln43_2_cast_fu_467_p3;

assign zext_ln43_3_fu_551_p1 = $unsigned(sext_ln43_fu_531_p1);

assign zext_ln43_fu_175_p1 = tmp_1_fu_162_p3;

endmodule //top_tx_qam16
