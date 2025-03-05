
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
