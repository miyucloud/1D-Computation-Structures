/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module mapLED_6 (
    input clk,
    input rst,
    input [15:0] col0,
    input [15:0] col1,
    input [15:0] col2,
    input [15:0] col3,
    input [15:0] col4,
    input [15:0] col5,
    output reg [167:0] led_col0,
    output reg [167:0] led_col1,
    output reg [167:0] led_col2,
    output reg [167:0] led_col3,
    output reg [167:0] led_col4,
    output reg [167:0] led_col5
  );
  
  
  
  localparam B = 24'hff0000;
  
  localparam BLANK = 24'h000000;
  
  reg rst_n;
  
  wire [1-1:0] M_reset_cond_out;
  reg [1-1:0] M_reset_cond_in;
  reset_conditioner_1 reset_cond (
    .clk(clk),
    .in(M_reset_cond_in),
    .out(M_reset_cond_out)
  );
  
  always @* begin
    M_reset_cond_in = ~rst;
    rst_n = M_reset_cond_out;
    
    case (col0[0+0-:1])
      1'h0: begin
        led_col0[0+23-:24] = 24'h000000;
      end
      1'h1: begin
        led_col0[0+23-:24] = 24'hff0000;
      end
      default: begin
        led_col0[0+23-:24] = 24'h000000;
      end
    endcase
    
    case (col0[1+0-:1])
      1'h0: begin
        led_col0[24+23-:24] = 24'h000000;
      end
      1'h1: begin
        led_col0[24+23-:24] = 24'hff0000;
      end
      default: begin
        led_col0[24+23-:24] = 24'h000000;
      end
    endcase
    
    case (col0[2+0-:1])
      1'h0: begin
        led_col0[48+23-:24] = 24'h000000;
      end
      1'h1: begin
        led_col0[48+23-:24] = 24'hff0000;
      end
      default: begin
        led_col0[48+23-:24] = 24'h000000;
      end
    endcase
    
    case (col0[3+0-:1])
      1'h0: begin
        led_col0[72+23-:24] = 24'h000000;
      end
      1'h1: begin
        led_col0[72+23-:24] = 24'hff0000;
      end
      default: begin
        led_col0[72+23-:24] = 24'h000000;
      end
    endcase
    
    case (col0[4+0-:1])
      1'h0: begin
        led_col0[96+23-:24] = 24'h000000;
      end
      1'h1: begin
        led_col0[96+23-:24] = 24'hff0000;
      end
      default: begin
        led_col0[96+23-:24] = 24'h000000;
      end
    endcase
    
    case (col0[5+0-:1])
      1'h0: begin
        led_col0[120+23-:24] = 24'h000000;
      end
      1'h1: begin
        led_col0[120+23-:24] = 24'hff0000;
      end
      default: begin
        led_col0[120+23-:24] = 24'h000000;
      end
    endcase
    
    case (col0[6+0-:1])
      1'h0: begin
        led_col0[144+23-:24] = 24'h000000;
      end
      1'h1: begin
        led_col0[144+23-:24] = 24'hff0000;
      end
      default: begin
        led_col0[120+23-:24] = 24'h000000;
      end
    endcase
    
    case (col1[0+0-:1])
      1'h0: begin
        led_col1[0+23-:24] = 24'h000000;
      end
      1'h1: begin
        led_col1[0+23-:24] = 24'hff0000;
      end
      default: begin
        led_col1[0+23-:24] = 24'h000000;
      end
    endcase
    
    case (col1[1+0-:1])
      1'h0: begin
        led_col1[24+23-:24] = 24'h000000;
      end
      1'h1: begin
        led_col1[24+23-:24] = 24'hff0000;
      end
      default: begin
        led_col1[24+23-:24] = 24'h000000;
      end
    endcase
    
    case (col1[2+0-:1])
      1'h0: begin
        led_col1[48+23-:24] = 24'h000000;
      end
      1'h1: begin
        led_col1[48+23-:24] = 24'hff0000;
      end
      default: begin
        led_col1[48+23-:24] = 24'h000000;
      end
    endcase
    
    case (col1[3+0-:1])
      1'h0: begin
        led_col1[72+23-:24] = 24'h000000;
      end
      1'h1: begin
        led_col1[72+23-:24] = 24'hff0000;
      end
      default: begin
        led_col1[72+23-:24] = 24'h000000;
      end
    endcase
    
    case (col1[4+0-:1])
      1'h0: begin
        led_col1[96+23-:24] = 24'h000000;
      end
      1'h1: begin
        led_col1[96+23-:24] = 24'hff0000;
      end
      default: begin
        led_col1[96+23-:24] = 24'h000000;
      end
    endcase
    
    case (col1[5+0-:1])
      1'h0: begin
        led_col1[120+23-:24] = 24'h000000;
      end
      1'h1: begin
        led_col1[120+23-:24] = 24'hff0000;
      end
      default: begin
        led_col1[120+23-:24] = 24'h000000;
      end
    endcase
    
    case (col1[6+0-:1])
      1'h0: begin
        led_col1[144+23-:24] = 24'h000000;
      end
      1'h1: begin
        led_col1[144+23-:24] = 24'hff0000;
      end
      default: begin
        led_col1[120+23-:24] = 24'h000000;
      end
    endcase
    
    case (col2[0+0-:1])
      1'h0: begin
        led_col2[0+23-:24] = 24'h000000;
      end
      1'h1: begin
        led_col2[0+23-:24] = 24'hff0000;
      end
      default: begin
        led_col2[0+23-:24] = 24'h000000;
      end
    endcase
    
    case (col2[1+0-:1])
      1'h0: begin
        led_col2[24+23-:24] = 24'h000000;
      end
      1'h1: begin
        led_col2[24+23-:24] = 24'hff0000;
      end
      default: begin
        led_col2[24+23-:24] = 24'h000000;
      end
    endcase
    
    case (col2[2+0-:1])
      1'h0: begin
        led_col2[48+23-:24] = 24'h000000;
      end
      1'h1: begin
        led_col2[48+23-:24] = 24'hff0000;
      end
      default: begin
        led_col2[48+23-:24] = 24'h000000;
      end
    endcase
    
    case (col2[3+0-:1])
      1'h0: begin
        led_col2[72+23-:24] = 24'h000000;
      end
      1'h1: begin
        led_col2[72+23-:24] = 24'hff0000;
      end
      default: begin
        led_col2[72+23-:24] = 24'h000000;
      end
    endcase
    
    case (col2[4+0-:1])
      1'h0: begin
        led_col2[96+23-:24] = 24'h000000;
      end
      1'h1: begin
        led_col2[96+23-:24] = 24'hff0000;
      end
      default: begin
        led_col2[96+23-:24] = 24'h000000;
      end
    endcase
    
    case (col2[5+0-:1])
      1'h0: begin
        led_col2[120+23-:24] = 24'h000000;
      end
      1'h1: begin
        led_col2[120+23-:24] = 24'hff0000;
      end
      default: begin
        led_col2[120+23-:24] = 24'h000000;
      end
    endcase
    
    case (col2[6+0-:1])
      1'h0: begin
        led_col2[144+23-:24] = 24'h000000;
      end
      1'h1: begin
        led_col2[144+23-:24] = 24'hff0000;
      end
      default: begin
        led_col2[120+23-:24] = 24'h000000;
      end
    endcase
    
    case (col3[0+0-:1])
      1'h0: begin
        led_col3[0+23-:24] = 24'h000000;
      end
      1'h1: begin
        led_col3[0+23-:24] = 24'hff0000;
      end
      default: begin
        led_col3[0+23-:24] = 24'h000000;
      end
    endcase
    
    case (col3[1+0-:1])
      1'h0: begin
        led_col3[24+23-:24] = 24'h000000;
      end
      1'h1: begin
        led_col3[24+23-:24] = 24'hff0000;
      end
      default: begin
        led_col3[24+23-:24] = 24'h000000;
      end
    endcase
    
    case (col3[2+0-:1])
      1'h0: begin
        led_col3[48+23-:24] = 24'h000000;
      end
      1'h1: begin
        led_col3[48+23-:24] = 24'hff0000;
      end
      default: begin
        led_col3[48+23-:24] = 24'h000000;
      end
    endcase
    
    case (col3[3+0-:1])
      1'h0: begin
        led_col3[72+23-:24] = 24'h000000;
      end
      1'h1: begin
        led_col3[72+23-:24] = 24'hff0000;
      end
      default: begin
        led_col3[72+23-:24] = 24'h000000;
      end
    endcase
    
    case (col3[4+0-:1])
      1'h0: begin
        led_col3[96+23-:24] = 24'h000000;
      end
      1'h1: begin
        led_col3[96+23-:24] = 24'hff0000;
      end
      default: begin
        led_col3[96+23-:24] = 24'h000000;
      end
    endcase
    
    case (col3[5+0-:1])
      1'h0: begin
        led_col3[120+23-:24] = 24'h000000;
      end
      1'h1: begin
        led_col3[120+23-:24] = 24'hff0000;
      end
      default: begin
        led_col3[120+23-:24] = 24'h000000;
      end
    endcase
    
    case (col3[6+0-:1])
      1'h0: begin
        led_col3[144+23-:24] = 24'h000000;
      end
      1'h1: begin
        led_col3[144+23-:24] = 24'hff0000;
      end
      default: begin
        led_col3[120+23-:24] = 24'h000000;
      end
    endcase
    
    case (col4[0+0-:1])
      1'h0: begin
        led_col4[0+23-:24] = 24'h000000;
      end
      1'h1: begin
        led_col4[0+23-:24] = 24'hff0000;
      end
      default: begin
        led_col4[0+23-:24] = 24'h000000;
      end
    endcase
    
    case (col4[1+0-:1])
      1'h0: begin
        led_col4[24+23-:24] = 24'h000000;
      end
      1'h1: begin
        led_col4[24+23-:24] = 24'hff0000;
      end
      default: begin
        led_col4[24+23-:24] = 24'h000000;
      end
    endcase
    
    case (col4[2+0-:1])
      1'h0: begin
        led_col4[48+23-:24] = 24'h000000;
      end
      1'h1: begin
        led_col4[48+23-:24] = 24'hff0000;
      end
      default: begin
        led_col4[48+23-:24] = 24'h000000;
      end
    endcase
    
    case (col4[3+0-:1])
      1'h0: begin
        led_col4[72+23-:24] = 24'h000000;
      end
      1'h1: begin
        led_col4[72+23-:24] = 24'hff0000;
      end
      default: begin
        led_col4[72+23-:24] = 24'h000000;
      end
    endcase
    
    case (col4[4+0-:1])
      1'h0: begin
        led_col4[96+23-:24] = 24'h000000;
      end
      1'h1: begin
        led_col4[96+23-:24] = 24'hff0000;
      end
      default: begin
        led_col4[96+23-:24] = 24'h000000;
      end
    endcase
    
    case (col4[5+0-:1])
      1'h0: begin
        led_col4[120+23-:24] = 24'h000000;
      end
      1'h1: begin
        led_col4[120+23-:24] = 24'hff0000;
      end
      default: begin
        led_col4[120+23-:24] = 24'h000000;
      end
    endcase
    
    case (col4[6+0-:1])
      1'h0: begin
        led_col4[144+23-:24] = 24'h000000;
      end
      1'h1: begin
        led_col4[144+23-:24] = 24'hff0000;
      end
      default: begin
        led_col4[120+23-:24] = 24'h000000;
      end
    endcase
    
    case (col5[0+0-:1])
      1'h0: begin
        led_col5[0+23-:24] = 24'h000000;
      end
      1'h1: begin
        led_col5[0+23-:24] = 24'hff0000;
      end
      default: begin
        led_col5[0+23-:24] = 24'h000000;
      end
    endcase
    
    case (col5[1+0-:1])
      1'h0: begin
        led_col5[24+23-:24] = 24'h000000;
      end
      1'h1: begin
        led_col5[24+23-:24] = 24'hff0000;
      end
      default: begin
        led_col5[24+23-:24] = 24'h000000;
      end
    endcase
    
    case (col5[2+0-:1])
      1'h0: begin
        led_col5[48+23-:24] = 24'h000000;
      end
      1'h1: begin
        led_col5[48+23-:24] = 24'hff0000;
      end
      default: begin
        led_col5[48+23-:24] = 24'h000000;
      end
    endcase
    
    case (col5[3+0-:1])
      1'h0: begin
        led_col5[72+23-:24] = 24'h000000;
      end
      1'h1: begin
        led_col5[72+23-:24] = 24'hff0000;
      end
      default: begin
        led_col5[72+23-:24] = 24'h000000;
      end
    endcase
    
    case (col5[4+0-:1])
      1'h0: begin
        led_col5[96+23-:24] = 24'h000000;
      end
      1'h1: begin
        led_col5[96+23-:24] = 24'hff0000;
      end
      default: begin
        led_col5[96+23-:24] = 24'h000000;
      end
    endcase
    
    case (col5[5+0-:1])
      1'h0: begin
        led_col5[120+23-:24] = 24'h000000;
      end
      1'h1: begin
        led_col5[120+23-:24] = 24'hff0000;
      end
      default: begin
        led_col5[120+23-:24] = 24'h000000;
      end
    endcase
    
    case (col5[6+0-:1])
      1'h0: begin
        led_col5[144+23-:24] = 24'h000000;
      end
      1'h1: begin
        led_col5[144+23-:24] = 24'hff0000;
      end
      default: begin
        led_col5[120+23-:24] = 24'h000000;
      end
    endcase
  end
endmodule