/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module alu_3 (
    input [15:0] a,
    input [15:0] b,
    input [5:0] alufn,
    output reg [15:0] out,
    output reg [2:0] zvn
  );
  
  
  
  wire [1-1:0] M_add_z;
  wire [1-1:0] M_add_v;
  wire [1-1:0] M_add_n;
  wire [16-1:0] M_add_out;
  reg [16-1:0] M_add_a;
  reg [16-1:0] M_add_b;
  reg [6-1:0] M_add_alufn;
  adder_8 add (
    .a(M_add_a),
    .b(M_add_b),
    .alufn(M_add_alufn),
    .z(M_add_z),
    .v(M_add_v),
    .n(M_add_n),
    .out(M_add_out)
  );
  
  wire [16-1:0] M_boole_out;
  reg [16-1:0] M_boole_a;
  reg [16-1:0] M_boole_b;
  reg [6-1:0] M_boole_alufn;
  boolean_9 boole (
    .a(M_boole_a),
    .b(M_boole_b),
    .alufn(M_boole_alufn),
    .out(M_boole_out)
  );
  
  wire [16-1:0] M_shift_out;
  reg [16-1:0] M_shift_a;
  reg [4-1:0] M_shift_b;
  reg [6-1:0] M_shift_alufn;
  shifter_10 shift (
    .a(M_shift_a),
    .b(M_shift_b),
    .alufn(M_shift_alufn),
    .out(M_shift_out)
  );
  
  wire [16-1:0] M_cmp_out;
  reg [1-1:0] M_cmp_z;
  reg [1-1:0] M_cmp_v;
  reg [1-1:0] M_cmp_n;
  reg [6-1:0] M_cmp_alufn;
  compare_11 cmp (
    .z(M_cmp_z),
    .v(M_cmp_v),
    .n(M_cmp_n),
    .alufn(M_cmp_alufn),
    .out(M_cmp_out)
  );
  
  wire [16-1:0] M_mdl_out;
  reg [16-1:0] M_mdl_a;
  reg [16-1:0] M_mdl_b;
  modulo_12 mdl (
    .a(M_mdl_a),
    .b(M_mdl_b),
    .out(M_mdl_out)
  );
  
  reg z;
  
  reg v;
  
  reg n;
  
  always @* begin
    M_add_alufn = alufn;
    M_add_a = a;
    M_add_b = b;
    z = M_add_z;
    v = M_add_v;
    n = M_add_n;
    zvn[0+0-:1] = z;
    zvn[1+0-:1] = v;
    zvn[2+0-:1] = n;
    M_cmp_alufn = alufn;
    M_cmp_z = z;
    M_cmp_v = v;
    M_cmp_n = n;
    M_boole_alufn = alufn;
    M_boole_a = a;
    M_boole_b = b;
    M_shift_alufn = alufn;
    M_shift_a = a;
    M_shift_b = b[0+3-:4];
    M_mdl_a = a;
    M_mdl_b = b;
    
    case (alufn[4+1-:2])
      2'h0: begin
        out = M_add_out;
      end
      2'h1: begin
        out = M_boole_out;
      end
      2'h2: begin
        out = M_shift_out;
      end
      2'h3: begin
        out = M_cmp_out;
      end
      default: begin
        out = 16'h0000;
      end
    endcase
    if (alufn == 6'h02) begin
      out = a * b;
    end
    if (alufn == 6'h03) begin
      out = a / b;
    end
    if (alufn == 6'h07) begin
      out = M_mdl_out;
    end
  end
endmodule
