//--------------------------- Info ---------------------------//
    //Module Name :　 DMA
    //INFO        :   
    //                
//----------------------- Environment -----------------------//
    `include "DMA_Master.sv"
    `include "DMA_Slave.sv"    
//------------------------- Module -------------------------//
  module DMA (
    input clk, rst,
    input         DMAEN,
    input  [31:0] DMASRC,
    input  [31:0] DMADST,
    input  [31:0] DMALEN,
    output logic  DMA_interrupt
  );
    
//---------------------- Main code -------------------------//
//-------------------- Slave (CPU2DMA) ---------------------//
    DMA_Slave DMA_Slave_inst(

    );

//-------------------- Master (CPU2S) ----------------------//
  //--------------------- Arbiter -------------------------//
    DMA_Master DMA_Master_inst(
      
    );



  endmodule
