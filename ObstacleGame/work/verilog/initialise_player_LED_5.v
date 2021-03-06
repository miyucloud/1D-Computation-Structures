/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module initialise_player_LED_5 (
    input clk,
    input [15:0] player,
    output reg [143:0] playerled,
    output reg done
  );
  
  
  
  reg M_count_d, M_count_q = 1'h0;
  reg [143:0] M_player_dff_d, M_player_dff_q = 1'h0;
  localparam BINARYTOHEX_binarytohex = 1'd0;
  localparam IDLE_binarytohex = 1'd1;
  
  reg M_binarytohex_d, M_binarytohex_q = BINARYTOHEX_binarytohex;
  
  always @* begin
    M_binarytohex_d = M_binarytohex_q;
    M_player_dff_d = M_player_dff_q;
    M_count_d = M_count_q;
    
    done = 1'h0;
    M_count_d = 1'h0;
    playerled = M_player_dff_q;
    
    case (M_binarytohex_q)
      BINARYTOHEX_binarytohex: begin
        if (M_count_q == 3'h5) begin
          M_binarytohex_d = IDLE_binarytohex;
        end else begin
          if (player[(M_count_q)*1+0-:1]) begin
            M_player_dff_d[(M_count_q)*24+23-:24] = 24'hff0000;
            M_count_d = M_count_q + 1'h1;
            M_binarytohex_d = BINARYTOHEX_binarytohex;
          end else begin
            M_player_dff_d[(M_count_q)*24+23-:24] = 24'h000000;
            M_count_d = M_count_q + 1'h1;
            M_binarytohex_d = BINARYTOHEX_binarytohex;
          end
        end
      end
      IDLE_binarytohex: begin
        done = 1'h1;
      end
    endcase
  end
  
  always @(posedge clk) begin
    M_count_q <= M_count_d;
    M_player_dff_q <= M_player_dff_d;
    M_binarytohex_q <= M_binarytohex_d;
  end
  
endmodule
