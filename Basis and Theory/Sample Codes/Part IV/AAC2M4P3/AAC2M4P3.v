

module FSM(
  input In1,
  input RST,
  input CLK, 
  output reg Out1
);
reg [1:0] current_state, next_state;
parameter A=2'b00,
	  B = 2'b01,
	  C = 2'b10;

always@(posedge CLK or negedge RST)
begin: register_generation
	if (!RST) current_state = A;
	else current_state = next_state;
end

always@(current_state or In1)
begin: combinational
	case(current_state)
		A:begin
			if(In1 == 1'b0) next_state = A;
			else next_state = B;
			end
		B:begin
			if(In1 == 1'b0) next_state = C;
			else next_state = B;
			end
		C:begin
			if(In1 == 1'b0) next_state = C;
			else next_state = A;
			end
		default: next_state = A;
	endcase
end

always @(current_state) 
begin : output_logic
	case (current_state)
		A: Out1 = 1'b0;
		B: Out1 = 1'b0;
		C: Out1 = 1'b1;
		default: Out1 = 0;// default avoids latches
	endcase
end

endmodule



