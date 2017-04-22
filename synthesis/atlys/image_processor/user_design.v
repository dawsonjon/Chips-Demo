module user_design(clk, rst, exception, input_timer, input_rs232_rx, input_buttons, input_switches, input_eth_rx, input_ps2, input_timer_stb, input_rs232_rx_stb, input_buttons_stb, input_switches_stb, input_eth_rx_stb, input_ps2_stb, input_timer_ack, input_rs232_rx_ack, input_buttons_ack, input_switches_ack, input_eth_rx_ack, input_ps2_ack, output_eth_tx, output_rs232_tx, output_leds, output_eth_tx_stb, output_rs232_tx_stb, output_leds_stb, output_eth_tx_ack, output_rs232_tx_ack, output_leds_ack);
  input  clk;
  input  rst;
  output  exception;
  input  [31:0] input_timer;
  input  input_timer_stb;
  output input_timer_ack;
  input  [31:0] input_rs232_rx;
  input  input_rs232_rx_stb;
  output input_rs232_rx_ack;
  input  [31:0] input_buttons;
  input  input_buttons_stb;
  output input_buttons_ack;
  input  [31:0] input_switches;
  input  input_switches_stb;
  output input_switches_ack;
  input  [31:0] input_eth_rx;
  input  input_eth_rx_stb;
  output input_eth_rx_ack;
  input  [31:0] input_ps2;
  input  input_ps2_stb;
  output input_ps2_ack;
  output [31:0] output_eth_tx;
  output output_eth_tx_stb;
  input  output_eth_tx_ack;
  output [31:0] output_rs232_tx;
  output output_rs232_tx_stb;
  input  output_rs232_tx_ack;
  output [31:0] output_leds;
  output output_leds_stb;
  input  output_leds_ack;
  wire   exception_140292293449776;
  wire   exception_140292292520776;
  wire   exception_140292291707392;
  wire   exception_140292291794560;
  wire   exception_140292291718680;
  wire   exception_140292290886400;
  wire   exception_140292291068416;
  main_0 main_0_140292293449776(
    .clk(clk),
    .rst(rst),
    .exception(exception_140292293449776),
    .input_eth_in(input_eth_rx),
    .input_eth_in_stb(input_eth_rx_stb),
    .input_eth_in_ack(input_eth_rx_ack),
    .output_rs232_out(output_rs232_tx),
    .output_rs232_out_stb(output_rs232_tx_stb),
    .output_rs232_out_ack(output_rs232_tx_ack),
    .output_eth_out(output_eth_tx),
    .output_eth_out_stb(output_eth_tx_stb),
    .output_eth_out_ack(output_eth_tx_ack));
  main_1 main_1_140292292520776(
    .clk(clk),
    .rst(rst),
    .exception(exception_140292292520776),
    .input_in(input_timer),
    .input_in_stb(input_timer_stb),
    .input_in_ack(input_timer_ack));
  main_2 main_2_140292291707392(
    .clk(clk),
    .rst(rst),
    .exception(exception_140292291707392),
    .input_in(input_rs232_rx),
    .input_in_stb(input_rs232_rx_stb),
    .input_in_ack(input_rs232_rx_ack));
  main_3 main_3_140292291794560(
    .clk(clk),
    .rst(rst),
    .exception(exception_140292291794560),
    .input_in(input_buttons),
    .input_in_stb(input_buttons_stb),
    .input_in_ack(input_buttons_ack));
  main_4 main_4_140292291718680(
    .clk(clk),
    .rst(rst),
    .exception(exception_140292291718680),
    .input_in(input_switches),
    .input_in_stb(input_switches_stb),
    .input_in_ack(input_switches_ack));
  main_5 main_5_140292290886400(
    .clk(clk),
    .rst(rst),
    .exception(exception_140292290886400),
    .input_in(input_ps2),
    .input_in_stb(input_ps2_stb),
    .input_in_ack(input_ps2_ack));
  main_6 main_6_140292291068416(
    .clk(clk),
    .rst(rst),
    .exception(exception_140292291068416),
    .output_out(output_leds),
    .output_out_stb(output_leds_stb),
    .output_out_ack(output_leds_ack));
  assign exception = exception_140292293449776 || exception_140292292520776 || exception_140292291707392 || exception_140292291794560 || exception_140292291718680 || exception_140292290886400 || exception_140292291068416;
endmodule
