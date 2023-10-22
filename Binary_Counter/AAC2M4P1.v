module LS161a(
    input [3:0] D,        // Parallel Input
    input CLK,            // Clock
    input CLR_n,          // Active Low Asynchronous Reset
    input LOAD_n,         // Enable Parallel Input
    input ENP,            // Count Enable Parallel
    input ENT,            // Count Enable Trickle
    output [3:0]Q,        // Parallel Output    
    output RCO            // Ripple Carry Output (Terminal Count)
); 
//Enter your RTL here.

reg [3:0] counter_reg;

always @(posedge CLK) begin
  if (CLR_n == 0) begin
    counter_reg <= 0;
  end else if (LOAD_n == 0) begin
    counter_reg <= D;
  end else if (ENP==1 & ENT==1)
    counter_reg <= counter_reg + 1;
end 

assign Q = counter_reg;
assign RCO = counter_reg[3] & counter_reg[2] & counter_reg[1] & counter_reg[0] & ENT;
endmodule

