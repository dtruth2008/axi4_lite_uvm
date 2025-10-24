// AXI4 Spec obtained here on 2025/10/22 https://developer.arm.com/documentation/ihi0022/latest/
// There's AXI5 now, so this will be AXI5-Lite


// "AXI5-Lite is a subset of AXI5 where all transactions have one data transfer. It is intended for communication with
// register-based components and simple memories when bursts of data transfer are not advantageous."

//  B2.2 Signal matrix defines ports for the AXI5-Lite Slave
module axi5_lite_slave(
    // Ports

 
 ACLK- Y Y Y Y Y
 ARESETn- Y Y Y Y Y
 AWVALID- Y Y Y Y Y
 AWREADY AXI_Transport==Ready O Y Y Y Y
  AWID ID_W_WIDTH>0 YS YS YS YS YS
 AWADDR- Y Y Y Y Y
 AWSIZE SIZE_Present YS YS YS N O
 AWUSER USER_REQ_WIDTH>0 O O O O O
AWTRACE Trace_Signals O O O O O
 AWSUBSYSID SUBSYSID_WIDTH>0 O O O N O
 AWIDUNQ Unique_ID_Support O O O O O
 
 WVALID- Y Y Y Y Y
 WREADY AXI_Transport==Ready O Y Y Y Y
 WDATA- Y Y Y Y Y
 WSTRB WSTRB_Present YS YS YS YS YS
  WUSER USER_DATA_WIDTH>0 O O O O O
 WPOISON Poison O O O O O
 WTRACE Trace_Signals O O O O O
 BVALID- Y Y Y Y Y
 BREADY AXI_Transport==Ready O Y Y Y Y
  BID ID_W_WIDTH>0 YS YS YS YS YS
 BIDUNQ Unique_ID_Support O O O O O
 BRESP BRESP_WIDTH>0 O O O O O
  BUSER USER_RESP_WIDTH>0 O O O O O
 BTRACE Trace_Signals O O O O O
 
  ARVALID- Y Y Y Y Y
 ARREADY AXI_Transport==Ready O Y Y Y Y
  ARID ID_R_WIDTH>0 YS YS YS YS YS
  ARADDR- Y Y Y Y Y
 ARSIZE SIZE_Present YS YS YS N O
 
 
 ARPROT PROT_Present O YM YM YM YM
  ARUSER USER_REQ_WIDTH>0 O O O O O
  ARTRACE Trace_Signals O O O O O
  ARSUBSYSID SUBSYSID_WIDTH>0 O O O N O
  ARIDUNQ Unique_ID_Support O O O O O
 
  RVALID- Y Y Y Y Y
 RREADY AXI_Transport==Ready O Y Y Y Y
  RID ID_R_WIDTH>0 YS YS YS YS YS
   RIDUNQ Unique_ID_Support O O O O O
 RDATA- Y Y Y Y Y
  RRESP RRESP_WIDTH>0 O O O O O RUSER USER_DATA_WIDTH>0orUSER_RESP_WIDTH>0O O O O O
  RPOISON Poison O O O O O
   RTRACE Trace_Signals O O O O O
   AWAKEUP Wakeup_Signals O O O O O
   
   // parity check
   
   
  
);


    // Regs/Wires
    
    
    
endmodule