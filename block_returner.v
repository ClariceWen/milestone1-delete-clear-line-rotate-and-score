
// This module takes a tetromino type, rotation, and the coordinates of its central block to return 
// the coordinates of each of its four blocks.

module block_returner (
input [4:0]y,
input [3:0]x,
input [2:0]block_type,
output reg[4:0]y1,
output reg[3:0]x1,
output reg[4:0]y2,
output reg[3:0]x2,
output reg[4:0]y3,
output reg[3:0]x3,
output reg[4:0]y4,
output reg[3:0]x4);

	localparam O_BLOCK = 3'd0,
	I_BLOCK = 3'd1,
	L_BLOCK = 3'd2,
	J_BLOCK = 3'd3,
	S_BLOCK = 3'd4,
	Z_BLOCK = 3'd5,
	T_BLOCK = 3'd6;



	always@(*) begin
		// block 1 (stays the same in all cases)
		y1 = y;
		x1 = x;
		case (block_type)
			O_BLOCK: begin
				// block 2 (up 1)
				y2 = y + 1;
				x2 = x;
				// block 3 (up 1 right 1)
				y3 = y + 1;
				x3 = x + 1;
				// block 4 (right 1)
				y4 = y;
				x4 = x + 1; 
			end
			I_BLOCK: begin
					// block 2 (left 1)
					y2 = y;
					x2 = x - 1;
					// block 3 (right 1)
					y3 = y;
					x3 = x + 1;
					// block 4 (right 2)
					y4 = y;
					x4 = x + 2; 
			end
			L_BLOCK: begin
					// block 2 (left 1)
					y2 = y;
					x2 = x - 1;
					// block 3 (right 1)
					y3 = y;
					x3 = x + 1;
					// block 4 (right 1 up 1)
					y4 = y + 1;
					x4 = x + 1;
			end
			J_BLOCK: begin
					// block 2 (left 1)
					y2 = y;
					x2 = x - 1;
					// block 3 (right 1)
					y3 = y;
					x3 = x + 1;
					// block 4 (left 1 up 1)
					y4 = y + 1;
					x4 = x - 1;
			end
			S_BLOCK: begin
					// block 2 (up 1)
					y2 = y + 1;
					x2 = x;
					// block 3 (up 1 right 1)
					y3 = y + 1;
					x3 = x + 1;
					// block 4 (left 1)
					y4 = y;
					x4 = x - 1; 
			end
			Z_BLOCK: begin
					// block 2 (up 1)
					y2 = y + 1;
					x2 = x;
					// block 3 (up 1 left 1)
					y3 = y + 1;
					x3 = x - 1;
					// block 4 (right 1)
					y4 = y;
					x4 = x + 1; 
			end
			T_BLOCK: begin
					// block 2 (up 1)
					y2 = y + 1;
					x2 = x;
					// block 3 (left 1)
					y3 = y;
					x3 = x - 1;
					// block 4 (right 1)
					y4 = y;
					x4 = x + 1; 
			end
			default: begin  // I block default
					// block 2 (left 1)
					y2 = y;
					x2 = x - 1;
					// block 3 (right 1)
					y3 = y;
					x3 = x + 1;
					// block 4 (right 2)
					y4 = y;
					x4 = x + 2;
			end
		endcase
	end
 
endmodule
