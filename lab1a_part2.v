
module lab1a_part2 (u, v, w, x, y,  s,   m );
    input  [2:0] u, v, w, x, y; 
    input  [2:0] s;             
    output reg [2:0] m ;     

always @(*) begin
case (s)
3'b000: m = u; 
3'b001: m = v; 
3'b010: m = w; 
3'b011: m = x; 
3'b100: m = y; 
3'b101: m = y; 
3'b110: m = y; 
3'b111: m = y; 
default: m = y;
endcase
end

endmodule












