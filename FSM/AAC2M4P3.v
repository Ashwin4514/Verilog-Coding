module FSM(

input In1,
input RST,
input CLK,
output reg Out1

);

reg curr_state,next_state;
parameter A=2'b00,B=2'b01,C=2'b11;


always@(posedge CLK or negedge RST or curr_state or In1)
begin

if(!RST)
curr_state<= curr_state;
else
curr_state<= next_state;

case(curr_state)

A : if(In1==1'b1) next_state = B; else next_state = A;
B : if(In1==1'b1) next_state = B; else next_state = C;
C : if(In1==1'b1) next_state = A; else next_state = C;

endcase

case(curr_state)

A : Out1=1'b0;

B : Out1=1'b0;

C : Out1=1'b1;

endcase
end
endmodule