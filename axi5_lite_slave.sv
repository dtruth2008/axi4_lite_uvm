// AXI4 Spec obtained here on 2025/10/22 https://developer.arm.com/documentation/ihi0022/latest/
// There's AXI5 now, so this will be AXI5-Lite


// "AXI5-Lite is a subset of AXI5 where all transactions have one data transfer. It is intended for communication with
// register-based components and simple memories when bursts of data transfer are not advantageous."

//  B2.2 Signal matrix defines ports for the AXI5-Lite Slave
module axi5_lite_slave(
    // Ports
    
    // Clock/Reset
    input ACLK    ,
    input ARESETn ,
    
    // Write address channel
    input  AWVALID    , 
    output AWREADY    , 
    input  AWID       , 
    input  AWADDR     , 
    input  AWSIZE     , 
    input  AWUSER     , 
    input  AWTRACE    ,  //  Trace signal; implementation define signal for debug
    input  AWSUBSYSID ,  //  Subsystem identifier that indicates from which subsystem a request originates.
    input  AWIDUNQ    , 
 
    // Write data channel
    input  WVALID , 
    output WREADY ,
    input  WDATA  , 
    input  WSTRB  , 
    input  WUSER  , 
    input  WPOISON,       //  Asserted high to indicate that the data in this transfer is corrupted. There is one bit per 64-bits of data.
    input  WTRACE , 
  
    // Write response channel
    output BVALID  ,
    input  BREADY  ,
    output BID     ,
    input  BIDUNQ  ,
    output BRESP   ,
    output BUSER   ,       // User not recommended due to incompatibility between two compents that define these differently
    input  BTRACE  ,
 
    // Read address channel
    input  ARVALID ,
    output ARREADY ,
    input  ARID    ,
    input  ARADDR  ,
    input  ARSIZE  ,
 
 
    input  ARPROT     ,
    input  ARUSER     ,
    input  ARTRACE    ,
    input  ARSUBSYSID ,
    input  ARIDUNQ    ,
    
    // Read data channel
    input  RVALID  ,
    output RREADY  ,
    input  RID     ,
    input  RIDUNQ  ,
    input  RDATA   ,
    input  RRESP   ,
    input  RPOISON ,
    input  RTRACE  ,
    
   
    // Wakeup signals  
    input  AWAKEUP 
   
   // Parity check signals
   
   
  
);


    // Regs/Wires
    
    
    
endmodule
