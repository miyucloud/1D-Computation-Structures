/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module au_top_0 (
    input clk,
    input rst_n,
    output reg [7:0] led,
    input usb_rx,
    output reg usb_tx,
    output reg [23:0] io_led,
    output reg [7:0] io_seg,
    output reg [3:0] io_sel,
    input [4:0] io_button,
    input [23:0] io_dip
  );
  
  
  
  reg rst;
  
  wire [1-1:0] M_reset_cond_out;
  reg [1-1:0] M_reset_cond_in;
  reset_conditioner_1 reset_cond (
    .clk(clk),
    .in(M_reset_cond_in),
    .out(M_reset_cond_out)
  );
  localparam START_states = 5'd0;
  localparam AUTO_states = 5'd1;
  localparam MANUAL_states = 5'd2;
  localparam ADD_states = 5'd3;
  localparam SUB_states = 5'd4;
  localparam AND_states = 5'd5;
  localparam OR_states = 5'd6;
  localparam XOR_states = 5'd7;
  localparam A_states = 5'd8;
  localparam SHL_states = 5'd9;
  localparam SHR_states = 5'd10;
  localparam SRA_states = 5'd11;
  localparam CPEQ_states = 5'd12;
  localparam CPLT_states = 5'd13;
  localparam CPLE_states = 5'd14;
  localparam MUL_states = 5'd15;
  localparam DIV_states = 5'd16;
  localparam MOD_states = 5'd17;
  localparam PASS_states = 5'd18;
  localparam FAIL_states = 5'd19;
  
  reg [4:0] M_states_d, M_states_q = START_states;
  wire [7-1:0] M_seg_seg;
  wire [4-1:0] M_seg_sel;
  reg [16-1:0] M_seg_values;
  multi_seven_seg_2 seg (
    .clk(clk),
    .rst(rst),
    .values(M_seg_values),
    .seg(M_seg_seg),
    .sel(M_seg_sel)
  );
  reg [26:0] M_counter_d, M_counter_q = 1'h0;
  
  wire [16-1:0] M_alu16b_out;
  wire [3-1:0] M_alu16b_zvn;
  reg [16-1:0] M_alu16b_a;
  reg [16-1:0] M_alu16b_b;
  reg [6-1:0] M_alu16b_alufn;
  alu_3 alu16b (
    .a(M_alu16b_a),
    .b(M_alu16b_b),
    .alufn(M_alu16b_alufn),
    .out(M_alu16b_out),
    .zvn(M_alu16b_zvn)
  );
  
  wire [16-1:0] M_store_getA;
  wire [16-1:0] M_store_getB;
  reg [1-1:0] M_store_btna;
  reg [1-1:0] M_store_btnb;
  reg [1-1:0] M_store_rst;
  reg [1-1:0] M_store_clk;
  reg [16-1:0] M_store_switch;
  store_value_4 store (
    .btna(M_store_btna),
    .btnb(M_store_btnb),
    .rst(M_store_rst),
    .clk(M_store_clk),
    .switch(M_store_switch),
    .getA(M_store_getA),
    .getB(M_store_getB)
  );
  
  localparam TEST1 = 4'h4;
  
  localparam TEST2 = 4'h8;
  
  always @* begin
    M_states_d = M_states_q;
    M_counter_d = M_counter_q;
    
    M_reset_cond_in = ~rst_n;
    rst = M_reset_cond_out;
    usb_tx = usb_rx;
    led = 8'h00;
    M_seg_values = 16'h0000;
    M_counter_d = M_counter_q + 1'h1;
    io_seg = ~M_seg_seg;
    io_sel = ~M_seg_sel;
    M_alu16b_a = 1'h0;
    M_alu16b_b = 1'h0;
    M_alu16b_alufn = 1'h0;
    M_alu16b_alufn = io_dip[16+0+5-:6];
    io_led[16+0+5-:6] = io_dip[16+0+5-:6];
    M_seg_values = 16'h0000;
    M_store_btna = io_button[0+0-:1];
    M_store_btnb = io_button[2+0-:1];
    M_store_switch[0+7-:8] = io_dip[0+7-:8];
    M_store_switch[8+7-:8] = io_dip[8+7-:8];
    M_store_rst = io_button[3+0-:1];
    M_store_clk = clk;
    
    case (M_states_q)
      START_states: begin
        M_seg_values = 16'h8495;
        M_alu16b_a = 1'h0;
        M_alu16b_b = 1'h0;
        if (io_button[1+0-:1]) begin
          M_states_d = MANUAL_states;
          M_alu16b_a = 1'h0;
          M_alu16b_b = 1'h0;
          io_led[0+7-:8] = 8'h00;
          io_led[8+7-:8] = 8'h00;
        end else begin
          if (io_button[4+0-:1]) begin
            M_states_d = AUTO_states;
          end
        end
      end
      MANUAL_states: begin
        M_seg_values = 16'ha1a9;
        M_alu16b_a = M_store_getA;
        M_alu16b_b = M_store_getB;
        io_led[0+7-:8] = M_alu16b_out[0+7-:8];
        io_led[8+7-:8] = M_alu16b_out[8+7-:8];
        if (io_dip[16+0+5-:6] != 6'h00 & io_dip[16+0+5-:6] != 6'h01 & io_dip[16+0+5-:6] != 6'h18 & io_dip[16+0+5-:6] != 6'h16 & io_dip[16+0+5-:6] != 6'h1a & io_dip[16+0+5-:6] != 6'h1e & io_dip[16+0+5-:6] != 6'h20 & io_dip[16+0+5-:6] != 6'h21 & io_dip[16+0+5-:6] != 6'h23 & io_dip[16+0+5-:6] != 6'h35 & io_dip[16+0+5-:6] != 6'h37 & io_dip[16+0+5-:6] != 6'h33 & io_dip[16+0+5-:6] != 6'h02 & io_dip[16+0+5-:6] != 6'h03) begin
          M_seg_values = 16'h6189;
        end
        if (io_button[3+0-:1]) begin
          M_states_d = START_states;
          io_led[0+7-:8] = 8'h00;
          io_led[8+7-:8] = 8'h00;
        end
      end
      AUTO_states: begin
        M_seg_values = 16'h1fe4;
        if (M_counter_q[26+0-:1] == 1'h1) begin
          M_states_d = ADD_states;
        end
      end
      ADD_states: begin
        M_alu16b_a = 4'h4;
        M_alu16b_b = 4'h8;
        M_alu16b_alufn = 6'h00;
        if (M_alu16b_out == 4'hc) begin
          M_seg_values = 16'h1440;
          io_led[0+7-:8] = M_alu16b_out[0+7-:8];
          io_led[8+7-:8] = M_alu16b_out[8+7-:8];
          io_led[16+0+5-:6] = 6'h00;
          if (M_counter_q == 1'h1) begin
            M_states_d = AND_states;
          end
        end else begin
          M_seg_values = 16'h6189;
          if (M_counter_q == 1'h1) begin
            M_states_d = FAIL_states;
          end
        end
      end
      SUB_states: begin
        M_alu16b_a = 4'h4;
        M_alu16b_b = 4'h8;
        M_alu16b_alufn = 6'h01;
        if (M_alu16b_out == 16'hfffc) begin
          M_seg_values = 16'h2fc0;
          io_led[0+7-:8] = M_alu16b_out[0+7-:8];
          io_led[8+7-:8] = M_alu16b_out[8+7-:8];
          io_led[16+0+5-:6] = 6'h01;
          if (M_counter_q == 1'h1) begin
            M_states_d = AND_states;
          end
        end else begin
          M_seg_values = 16'h6189;
          if (M_counter_q == 1'h1) begin
            M_states_d = FAIL_states;
          end
        end
      end
      AND_states: begin
        M_alu16b_a = 4'h4;
        M_alu16b_b = 4'h8;
        M_alu16b_alufn = 6'h18;
        if (M_alu16b_out == 4'h0) begin
          M_seg_values = 16'h1a40;
          io_led[0+7-:8] = M_alu16b_out[0+7-:8];
          io_led[8+7-:8] = M_alu16b_out[8+7-:8];
          io_led[16+0+5-:6] = 6'h18;
          if (M_counter_q == 1'h1) begin
            M_states_d = OR_states;
          end
        end else begin
          M_seg_values = 16'h6189;
          if (M_counter_q == 1'h1) begin
            M_states_d = FAIL_states;
          end
        end
      end
      OR_states: begin
        M_alu16b_a = 4'h4;
        M_alu16b_b = 4'h8;
        M_alu16b_alufn = 6'h1e;
        if (M_alu16b_out == 4'hc) begin
          M_seg_values = 16'h004d;
          io_led[0+7-:8] = M_alu16b_out[0+7-:8];
          io_led[8+7-:8] = M_alu16b_out[8+7-:8];
          io_led[16+0+5-:6] = 6'h1e;
          if (M_counter_q == 1'h1) begin
            M_states_d = XOR_states;
          end
        end else begin
          M_seg_values = 16'h6189;
          if (M_counter_q == 1'h1) begin
            M_states_d = FAIL_states;
          end
        end
      end
      XOR_states: begin
        M_alu16b_a = 4'h4;
        M_alu16b_b = 4'h8;
        M_alu16b_alufn = 6'h16;
        if (M_alu16b_out == 4'hc) begin
          M_seg_values = 16'h74d0;
          io_led[0+7-:8] = M_alu16b_out[0+7-:8];
          io_led[8+7-:8] = M_alu16b_out[8+7-:8];
          io_led[16+0+5-:6] = 6'h16;
          if (M_counter_q == 1'h1) begin
            M_states_d = A_states;
          end
        end else begin
          M_seg_values = 16'h6189;
          if (M_counter_q == 1'h1) begin
            M_states_d = FAIL_states;
          end
        end
      end
      A_states: begin
        M_alu16b_a = 4'h4;
        M_alu16b_b = 4'h8;
        M_alu16b_alufn = 6'h1a;
        if (M_alu16b_out == 4'h4) begin
          M_seg_values = 16'h1000;
          io_led[0+7-:8] = M_alu16b_out[0+7-:8];
          io_led[8+7-:8] = M_alu16b_out[8+7-:8];
          io_led[16+0+5-:6] = 6'h1a;
          if (M_counter_q == 1'h1) begin
            M_states_d = SHL_states;
          end
        end else begin
          M_seg_values = 16'h6189;
          if (M_counter_q == 1'h1) begin
            M_states_d = FAIL_states;
          end
        end
      end
      SHL_states: begin
        M_alu16b_a = 4'h4;
        M_alu16b_b = 4'h1;
        M_alu16b_alufn = 6'h20;
        if (M_alu16b_out == 4'h8) begin
          M_seg_values = 16'h2790;
          io_led[0+7-:8] = M_alu16b_out[0+7-:8];
          io_led[8+7-:8] = M_alu16b_out[8+7-:8];
          io_led[16+0+5-:6] = 6'h20;
          if (M_counter_q == 1'h1) begin
            M_states_d = SHR_states;
          end
        end else begin
          M_seg_values = 16'h6189;
          if (M_counter_q == 1'h1) begin
            M_states_d = FAIL_states;
          end
        end
      end
      SHR_states: begin
        M_alu16b_a = 4'h4;
        M_alu16b_b = 4'h1;
        M_alu16b_alufn = 6'h21;
        if (M_alu16b_out == 4'h2) begin
          M_seg_values = 16'h27d0;
          io_led[0+7-:8] = M_alu16b_out[0+7-:8];
          io_led[8+7-:8] = M_alu16b_out[8+7-:8];
          io_led[16+0+5-:6] = 6'h21;
          if (M_counter_q == 1'h1) begin
            M_states_d = SRA_states;
          end
        end else begin
          M_seg_values = 16'h6189;
          if (M_counter_q == 1'h1) begin
            M_states_d = FAIL_states;
          end
        end
      end
      SRA_states: begin
        M_alu16b_a = 4'h4;
        M_alu16b_b = 4'h1;
        M_alu16b_alufn = 6'h23;
        if (M_alu16b_out == 4'h2) begin
          M_seg_values = 16'h2d10;
          io_led[0+7-:8] = M_alu16b_out[0+7-:8];
          io_led[8+7-:8] = M_alu16b_out[8+7-:8];
          io_led[16+0+5-:6] = 6'h23;
          if (M_counter_q == 1'h1) begin
            M_states_d = CPEQ_states;
          end
        end else begin
          M_seg_values = 16'h6189;
          if (M_counter_q == 1'h1) begin
            M_states_d = FAIL_states;
          end
        end
      end
      CPEQ_states: begin
        M_alu16b_a = 4'h4;
        M_alu16b_b = 4'h8;
        M_alu16b_alufn = 6'h33;
        if (M_alu16b_out == 4'h0) begin
          M_seg_values = 16'h3c5b;
          io_led[0+7-:8] = M_alu16b_out[0+7-:8];
          io_led[8+7-:8] = M_alu16b_out[8+7-:8];
          io_led[16+0+5-:6] = 6'h33;
          if (M_counter_q == 1'h1) begin
            M_states_d = CPLT_states;
          end
        end else begin
          M_seg_values = 16'h6189;
          if (M_counter_q == 1'h1) begin
            M_states_d = FAIL_states;
          end
        end
      end
      CPLT_states: begin
        M_alu16b_a = 4'h4;
        M_alu16b_b = 4'h8;
        M_alu16b_alufn = 6'h35;
        if (M_alu16b_out == 4'h1) begin
          M_seg_values = 16'h3c9e;
          io_led[0+7-:8] = M_alu16b_out[0+7-:8];
          io_led[8+7-:8] = M_alu16b_out[8+7-:8];
          io_led[16+0+5-:6] = 6'h35;
          if (M_counter_q == 1'h1) begin
            M_states_d = CPLE_states;
          end
        end else begin
          M_seg_values = 16'h6189;
          if (M_counter_q == 1'h1) begin
            M_states_d = FAIL_states;
          end
        end
      end
      CPLE_states: begin
        M_alu16b_a = 4'h4;
        M_alu16b_b = 4'h8;
        M_alu16b_alufn = 6'h37;
        if (M_alu16b_out == 4'h1) begin
          M_seg_values = 16'h3c95;
          io_led[0+7-:8] = M_alu16b_out[0+7-:8];
          io_led[8+7-:8] = M_alu16b_out[8+7-:8];
          io_led[16+0+5-:6] = 6'h37;
          if (M_counter_q == 1'h1) begin
            M_states_d = MUL_states;
          end
        end else begin
          M_seg_values = 16'h6189;
          if (M_counter_q == 1'h1) begin
            M_states_d = FAIL_states;
          end
        end
      end
      MUL_states: begin
        M_alu16b_a = 4'h4;
        M_alu16b_b = 4'h8;
        M_alu16b_alufn = 6'h02;
        if (M_alu16b_out == 16'h0020) begin
          M_seg_values = 16'haf90;
          io_led[0+7-:8] = M_alu16b_out[0+7-:8];
          io_led[8+7-:8] = M_alu16b_out[8+7-:8];
          io_led[16+0+5-:6] = 6'h02;
          if (M_counter_q == 1'h1) begin
            M_states_d = DIV_states;
          end
        end else begin
          M_seg_values = 16'h6189;
          if (M_counter_q == 1'h1) begin
            M_states_d = FAIL_states;
          end
        end
      end
      DIV_states: begin
        M_alu16b_a = 16'h0008;
        M_alu16b_b = 16'h0004;
        M_alu16b_alufn = 6'h03;
        if (M_alu16b_out == 16'h0002) begin
          M_seg_values = 16'h48f0;
          io_led[0+7-:8] = M_alu16b_out[0+7-:8];
          io_led[8+7-:8] = M_alu16b_out[8+7-:8];
          io_led[16+0+5-:6] = 6'h02;
          if (M_counter_q == 1'h1) begin
            M_states_d = MOD_states;
          end
        end else begin
          M_seg_values = 16'h6189;
          if (M_counter_q == 1'h1) begin
            M_states_d = FAIL_states;
          end
        end
      end
      MOD_states: begin
        M_alu16b_a = 4'h4;
        M_alu16b_b = 4'h8;
        M_alu16b_alufn = 6'h07;
        if (M_alu16b_out == 4'h4) begin
          M_seg_values = 16'ha440;
          io_led[0+7-:8] = M_alu16b_out[0+7-:8];
          io_led[8+7-:8] = M_alu16b_out[8+7-:8];
          io_led[16+0+5-:6] = 6'h02;
          if (M_counter_q == 1'h1) begin
            M_states_d = PASS_states;
          end
        end else begin
          M_seg_values = 16'h6189;
          if (M_counter_q == 1'h1) begin
            M_states_d = FAIL_states;
          end
        end
      end
      PASS_states: begin
        led[0+2-:3] = 7'h6f;
        M_seg_values = 16'hc122;
        if (M_counter_q == 1'h1) begin
          M_states_d = START_states;
          io_led[0+7-:8] = 8'h00;
          io_led[8+7-:8] = 8'h00;
        end
      end
      FAIL_states: begin
        led[0+2-:3] = 1'h0;
        M_seg_values = 16'h6189;
        if (io_button[3+0-:1]) begin
          M_states_d = START_states;
          io_led[0+7-:8] = 8'h00;
          io_led[8+7-:8] = 8'h00;
        end
      end
    endcase
  end
  
  always @(posedge clk) begin
    M_counter_q <= M_counter_d;
    M_states_q <= M_states_d;
  end
  
endmodule
