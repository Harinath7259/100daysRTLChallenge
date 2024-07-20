
module vending_machine(
  input clk,
  input reset,
  input [1:0] select,
  input [5:0] money,
  
  output reg [5:0] balance,
  output reg Chocolate,
  output reg icecream,
  output reg cold_drink
);

  reg [2:0] pres_state, nxt_state;
  reg [5:0] total_money;
  
  parameter [5:0] money_10 = 6'd10;
  parameter [5:0] money_20 = 6'd20;
  parameter [5:0] money_50 = 6'd50;
  
  parameter select_Chocolate = 2'b00;
  parameter select_icecream  = 2'b01;
  parameter select_cold_drink = 2'b10;
  
  parameter [2:0] IDLE = 3'b000;
  parameter [2:0] TEN  = 3'b001;
  parameter [2:0] TWENTY = 3'b010;
  parameter [2:0] FORTY = 3'b011;

  // Sequential logic for state transition
  always @(posedge clk or posedge reset) begin
    if (reset)
      pres_state <= IDLE;
    else
      pres_state <= nxt_state;
  end

  // Combinational logic for next state and outputs
  always @(*) begin
    // Default values
    nxt_state = pres_state;
    Chocolate = 0;
    icecream = 0;
    cold_drink = 0;
    balance = 0;

    case (pres_state)
      IDLE: begin
        if (money > 0) begin
          total_money = money;
          if (select == select_Chocolate && total_money >= money_10) begin
            Chocolate = 1;
            balance = total_money - money_10;
            nxt_state = TEN;
          end else if (select == select_icecream && total_money >= money_20) begin
            icecream = 1;
            balance = total_money - money_20;
            nxt_state = TWENTY;
          end else if (select == select_cold_drink && total_money >= money_50) begin
            cold_drink = 1;
            balance = money_10;
            nxt_state = FORTY;
          end else begin
            nxt_state = IDLE;
          end
        end
      end

      TEN: begin
        if (select == select_Chocolate && total_money >= money_10) begin
          Chocolate = 1;
          balance = total_money - money_10;
          nxt_state = TEN;
        end else if (select == select_icecream && total_money >= money_20) begin
          icecream = 1;
          balance = total_money - money_20;
          nxt_state = TWENTY;
        end else if (select == select_cold_drink && total_money >= money_50) begin
          cold_drink = 1;
          balance = money_10;
          nxt_state = FORTY;
        end else begin
          nxt_state = TEN;
        end
      end

      TWENTY: begin
        if (select == select_Chocolate && total_money >= money_10) begin
          Chocolate = 1;
          balance = total_money - money_10;
          nxt_state = TEN;
        end else if (select == select_icecream && total_money >= money_20) begin
          icecream = 1;
          balance = total_money - money_20;
          nxt_state = TWENTY;
        end else if (select == select_cold_drink && total_money >= money_50) begin
          cold_drink = 1;
          balance = money_10;
          nxt_state = FORTY;
        end else begin
          nxt_state = TWENTY;
        end
      end

      FORTY: begin
        if (select == select_Chocolate && total_money >= money_10) begin
          Chocolate = 1;
          balance = total_money - money_10;
          nxt_state = TEN;
        end else if (select == select_icecream && total_money >= money_20) begin
          icecream = 1;
          balance = total_money - money_20;
          nxt_state = TWENTY;
        end else if (select == select_cold_drink && total_money >= money_50) begin
          cold_drink = 1;
          balance = money_10;
          nxt_state = FORTY;
        end else begin
          nxt_state = FORTY;
        end
      end

      default: nxt_state = IDLE;
    endcase
  end
endmodule
