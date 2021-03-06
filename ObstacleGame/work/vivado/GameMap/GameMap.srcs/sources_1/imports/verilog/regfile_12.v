/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module regfile_12 (
    input clk,
    input rst,
    input [3:0] write_address,
    input we,
    input [15:0] write_data,
    input [3:0] read_address_a,
    input [3:0] read_address_b,
    output reg [15:0] read_data_a,
    output reg [15:0] read_data_b,
    output reg [15:0] out_timer,
    output reg [15:0] out_score,
    output reg [15:0] map0,
    output reg [15:0] map1,
    output reg [15:0] map2,
    output reg [15:0] map3,
    output reg [15:0] map4,
    output reg [15:0] map5,
    output reg [15:0] player,
    output reg [15:0] playerpos,
    output reg [15:0] checkboundary
  );
  
  
  
  reg [15:0] M_column0_d, M_column0_q = 1'h0;
  reg [15:0] M_column1_d, M_column1_q = 1'h0;
  reg [15:0] M_column2_d, M_column2_q = 1'h0;
  reg [15:0] M_column3_d, M_column3_q = 1'h0;
  reg [15:0] M_column4_d, M_column4_q = 1'h0;
  reg [15:0] M_column5_d, M_column5_q = 1'h0;
  reg [15:0] M_timer_d, M_timer_q = 1'h0;
  reg [15:0] M_score_d, M_score_q = 1'h0;
  reg [15:0] M_player_led_d, M_player_led_q = 1'h0;
  reg [15:0] M_player_obs_d, M_player_obs_q = 1'h0;
  reg [15:0] M_pos_startLine_d, M_pos_startLine_q = 1'h0;
  reg [15:0] M_check_playerMovement_d, M_check_playerMovement_q = 1'h0;
  reg [15:0] M_temp_var_d, M_temp_var_q = 1'h0;
  reg [15:0] M_temp_var2_d, M_temp_var2_q = 1'h0;
  reg [15:0] M_temp_var3_d, M_temp_var3_q = 1'h0;
  
  always @* begin
    M_column1_d = M_column1_q;
    M_check_playerMovement_d = M_check_playerMovement_q;
    M_column0_d = M_column0_q;
    M_pos_startLine_d = M_pos_startLine_q;
    M_column5_d = M_column5_q;
    M_column4_d = M_column4_q;
    M_column3_d = M_column3_q;
    M_temp_var2_d = M_temp_var2_q;
    M_column2_d = M_column2_q;
    M_temp_var3_d = M_temp_var3_q;
    M_temp_var_d = M_temp_var_q;
    M_timer_d = M_timer_q;
    M_score_d = M_score_q;
    M_player_obs_d = M_player_obs_q;
    M_player_led_d = M_player_led_q;
    
    read_data_a = 1'h0;
    read_data_b = 1'h0;
    out_timer = M_timer_q;
    out_score = M_score_q;
    map0 = M_column0_q;
    map1 = M_column1_q;
    map2 = M_column2_q;
    map3 = M_column3_q;
    map4 = M_column4_q;
    map5 = M_column5_q;
    player = M_player_led_q;
    playerpos = M_player_led_q;
    checkboundary = M_check_playerMovement_q;
    if (we) begin
      
      case (write_address)
        4'h0: begin
          M_column0_d = write_data;
        end
        4'h1: begin
          M_column1_d = write_data;
        end
        4'h2: begin
          M_column2_d = write_data;
        end
        4'h3: begin
          M_column3_d = write_data;
        end
        4'h4: begin
          M_column4_d = write_data;
        end
        4'h5: begin
          M_column5_d = write_data;
        end
        4'h6: begin
          M_timer_d = write_data;
        end
        4'h7: begin
          M_score_d = write_data;
        end
        4'h8: begin
          M_player_led_d = write_data;
        end
        4'h9: begin
          M_pos_startLine_d = write_data;
        end
        4'ha: begin
          M_check_playerMovement_d = write_data;
        end
        4'hb: begin
          M_player_obs_d = write_data;
        end
        4'hf: begin
          M_temp_var_d = write_data;
        end
        4'hc: begin
          M_temp_var2_d = write_data;
        end
        4'he: begin
          M_temp_var3_d = write_data;
        end
      endcase
    end
    
    case (read_address_a)
      4'h0: begin
        read_data_a = M_column0_q;
      end
      4'h1: begin
        read_data_a = M_column1_q;
      end
      4'h2: begin
        read_data_a = M_column2_q;
      end
      4'h3: begin
        read_data_a = M_column3_q;
      end
      4'h4: begin
        read_data_a = M_column4_q;
      end
      4'h5: begin
        read_data_a = M_column5_q;
      end
      4'h6: begin
        read_data_a = M_timer_q;
      end
      4'h7: begin
        read_data_a = M_score_q;
      end
      4'h8: begin
        read_data_a = M_player_led_q;
      end
      4'h9: begin
        read_data_a = M_pos_startLine_q;
      end
      4'ha: begin
        read_data_a = M_check_playerMovement_q;
      end
      4'hf: begin
        read_data_a = M_temp_var_q;
      end
      4'hb: begin
        read_data_a = M_player_obs_q;
      end
      4'hc: begin
        read_data_a = M_temp_var2_q;
      end
      4'he: begin
        read_data_a = M_temp_var3_q;
      end
      default: begin
        read_data_a = 1'h0;
      end
    endcase
    
    case (read_address_b)
      4'h0: begin
        read_data_b = M_column0_q;
      end
      4'h1: begin
        read_data_b = M_column1_q;
      end
      4'h2: begin
        read_data_b = M_column2_q;
      end
      4'h3: begin
        read_data_b = M_column3_q;
      end
      4'h4: begin
        read_data_b = M_column4_q;
      end
      4'h5: begin
        read_data_b = M_column5_q;
      end
      4'h6: begin
        read_data_b = M_timer_q;
      end
      4'h7: begin
        read_data_b = M_score_q;
      end
      4'h8: begin
        read_data_b = M_player_led_q;
      end
      4'h9: begin
        read_data_b = M_pos_startLine_q;
      end
      4'ha: begin
        read_data_b = M_check_playerMovement_q;
      end
      4'hf: begin
        read_data_b = M_temp_var_q;
      end
      4'hc: begin
        read_data_b = M_temp_var2_q;
      end
      4'he: begin
        read_data_b = M_temp_var3_q;
      end
      4'hb: begin
        read_data_b = M_player_obs_q;
      end
      default: begin
        read_data_b = 1'h0;
      end
    endcase
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_column0_q <= 1'h0;
      M_column1_q <= 1'h0;
      M_column2_q <= 1'h0;
      M_column3_q <= 1'h0;
      M_column4_q <= 1'h0;
      M_column5_q <= 1'h0;
      M_timer_q <= 1'h0;
      M_score_q <= 1'h0;
      M_player_led_q <= 1'h0;
      M_player_obs_q <= 1'h0;
      M_pos_startLine_q <= 1'h0;
      M_check_playerMovement_q <= 1'h0;
      M_temp_var_q <= 1'h0;
      M_temp_var2_q <= 1'h0;
      M_temp_var3_q <= 1'h0;
    end else begin
      M_column0_q <= M_column0_d;
      M_column1_q <= M_column1_d;
      M_column2_q <= M_column2_d;
      M_column3_q <= M_column3_d;
      M_column4_q <= M_column4_d;
      M_column5_q <= M_column5_d;
      M_timer_q <= M_timer_d;
      M_score_q <= M_score_d;
      M_player_led_q <= M_player_led_d;
      M_player_obs_q <= M_player_obs_d;
      M_pos_startLine_q <= M_pos_startLine_d;
      M_check_playerMovement_q <= M_check_playerMovement_d;
      M_temp_var_q <= M_temp_var_d;
      M_temp_var2_q <= M_temp_var2_d;
      M_temp_var3_q <= M_temp_var3_d;
    end
  end
  
endmodule
