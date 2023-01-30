<h1>Interface definition</h1>

<h5>The module should have the following interface as defined here</h5>

<strong>input</strong>     logic      clk, </br>
<strong>input</strong>     logic      reset,

<strong>input</strong>     logic      d_in,         -> D input to the flop

<strong>output</strong>    logic      q_noreset_o,   -> Q output from non-resettable flop
<strong>output</strong>    logic      q_syncreset_o, -> Q output from flop using synchronous reset
<strong>output</strong>    logic      q_asyncreset_o -> Q output from flop using asynchrnoous reset
