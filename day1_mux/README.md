#Interface definition

The module should have the following interface as defined here

input     logic      clk,
input     logic      reset,

input     logic      d_in,         -> D input to the flop

output    logic      q_noreset_o,   -> Q output from non-resettable flop
output    logic      q_syncreset_o, -> Q output from flop using synchronous reset
output    logic      q_asyncreset_o -> Q output from flop using asynchrnoous reset