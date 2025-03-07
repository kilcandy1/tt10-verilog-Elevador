/*
 * Copyright (c) 2024 Karina rosas
 * SPDX-License-Identifier: Apache-2.0
 */



`default_nettype none

module tt_um_Elevador (
    input  wire [1:0] boton,    // Dedicated inputs
    output wire  Motorsubir,   // Dedicated outputs
    output wire  Motorbajar,   // Dedicated outputs
    input  wire [7:0] dipslay,   // IOs: Input path
    
   input  wire       clk,      // clock
  
);

  // All output pins must be assigned. If not used, assign to 0.
  assign uo_out  = ui_in + uio_in;  // Example: ou_out is the sum of ui_in and uio_in
  assign uio_out = 0;
  assign uio_oe  = 0;

  // List all unused inputs to prevent warnings
  wire _unused = &{ena, clk, rst_n, 1'b0};

endmodule
