
// Módulo Elevador en Verilog
`timescale 1ns/1ps
 
module tt_um_Elevador(
    input [1:0] boton,
    input clock_hz,
    output reg motorsubir,
    output reg motorbajar,
    input [3:0] dato,
    output reg [6:0] display
);
    
 parameter PISO1 = 2'b00, PISO2 = 2'b01, PISO3 = 2'b10;
    reg [1:0] presente, futuro;    

//typedef enum logic [1:0] {PISO1, PISO2, PISO3} state_type;
    //state_type presente, futuro;
    
    // Lógica para el display 7 segmentos
    always @(*) begin
        case (dato)
            4'b0001: display = 7'b1001111;
            4'b0010: display = 7'b0010010;
            4'b0011: display = 7'b0000110;
            default: display = 7'b1111111;
        endcase
    end
    
    // Actualización de estado en flanco de reloj
    always @(posedge clk) begin
        presente <= futuro;
    end
    
    // Lógica de transición de estados
    always @(*) begin
        case (presente)
            PISO1: begin
                if (boton == 2'b10) begin
                    futuro = PISO2;
                    motorsubir = 1;
                    motorbajar = 0;
                end else begin
                    futuro = PISO1;
                    motorsubir = 0;
                    motorbajar = 0;
                end
            end
            PISO2: begin
                if (boton == 2'b10) begin
                    futuro = PISO3;
                    motorsubir = 1;
                    motorbajar = 0;
                end else begin
                    futuro = PISO1;
                    motorsubir = 0;
                    motorbajar = 1;
                end
            end
            PISO3: begin
                if (boton == 2'b01) begin
                    futuro = PISO2;
                    motorsubir = 0;
                    motorbajar = 1;
                end else begin
                    futuro = PISO3;
                    motorsubir = 0;
                    motorbajar = 0;
                end
            end
            default: begin
                futuro = PISO1;
                motorsubir = 0;
                motorbajar = 0;
            end
        endcase
    end
endmodule
 
// Testbench para el módulo Elevador
module tb_Elevador;
    reg [1:0] boton;
    reg clk;
    reg [3:0] dato;
    wire motorsubir, motorbajar;
    wire [6:0] display;
    
    Elevador uut (
        .boton(boton),
        .clk(clk),
        .motorsubir(motorsubir),
        .motorbajar(motorbajar),
        .dato(dato),
        .display(display)
    );
    
    always #5 clk = ~clk; // Generador de reloj
    
    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0, tb_Elevador);
        
        clk = 0;
        boton = 2'b00;
        dato = 4'b0001;
        
        #10 boton = 2'b10; // Subir a PISO2
        #10 boton = 2'b10; // Subir a PISO3
        #10 boton = 2'b01; // Bajar a PISO2
        #10 boton = 2'b01; // Bajar a PISO1
        #20;
        
        $finish;
    end
endmodule
