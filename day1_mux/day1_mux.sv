module day1_mux(
    input wire [7:0] a, b,          //why [7:0], cuz we are looking only for 8-bit data
    input wire sel, 
    output wire [7:0] y
);

assign y = sel?a:b;                 //usage of ternary operator, but valid only for 2:1 mux, for higher order mux, we use cases.
endmodule

module day1_mux_tb ();
    
    logic [7:0] a,b;
    logic sel;                      //declare logic , then instantiate, then do the initialization part and testing

    logic [7:0] y;

    day1_mux DAY1_MUX(.*);

    task automatic delay();
        #10;                        //always make the habit of adding a delay block as a task, it might be handy in the future
    endtask //automatic

    initial begin
        for(int i=0; i<9; i++) begin
            a = $urandom_range(0,8'hFF);
            b = $urandom_range(0,8'hFF);
            sel = $random % 2;
            delay;
        end
    end
endmodule