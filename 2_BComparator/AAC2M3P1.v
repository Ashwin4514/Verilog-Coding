                          		
module Comparator2(
   input[1:0] A, B,
   output reg Equals
);      		
                   	          	
// student code here
assign Equals = &( (A~^B));
endmodule // Comparator2 




    