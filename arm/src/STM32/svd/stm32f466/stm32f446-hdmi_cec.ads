pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32F446.svd

pragma Restrictions (No_Elaboration_Code);

with System;

package STM32F446.HDMI_CEC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CEC_CR_CECEN_Field is STM32F446.Bit;
   subtype CEC_CR_TXSOM_Field is STM32F446.Bit;
   subtype CEC_CR_TXEOM_Field is STM32F446.Bit;

   --  CEC control register
   type CEC_CR_Register is record
      --  CEC Enable
      CECEN         : CEC_CR_CECEN_Field := 16#0#;
      --  Read-only. Tx Start Of Message
      TXSOM         : CEC_CR_TXSOM_Field := 16#0#;
      --  Read-only. Tx End Of Message
      TXEOM         : CEC_CR_TXEOM_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : STM32F446.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CEC_CR_Register use record
      CECEN         at 0 range 0 .. 0;
      TXSOM         at 0 range 1 .. 1;
      TXEOM         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype CEC_CFGR_SFT_Field is STM32F446.UInt3;
   subtype CEC_CFGR_RXTOL_Field is STM32F446.Bit;
   subtype CEC_CFGR_BRESTP_Field is STM32F446.Bit;
   subtype CEC_CFGR_BREGEN_Field is STM32F446.Bit;
   subtype CEC_CFGR_LBPEGEN_Field is STM32F446.Bit;
   subtype CEC_CFGR_BRDNOGEN_Field is STM32F446.Bit;
   subtype CEC_CFGR_SFTOP_Field is STM32F446.Bit;
   subtype CEC_CFGR_OAR_Field is STM32F446.UInt15;
   subtype CEC_CFGR_LSTN_Field is STM32F446.Bit;

   --  CEC configuration register
   type CEC_CFGR_Register is record
      --  Signal Free Time
      SFT           : CEC_CFGR_SFT_Field := 16#0#;
      --  Rx-Tolerance
      RXTOL         : CEC_CFGR_RXTOL_Field := 16#0#;
      --  Rx-Stop on Bit Rising Error
      BRESTP        : CEC_CFGR_BRESTP_Field := 16#0#;
      --  Generate Error-Bit on Bit Rising Error
      BREGEN        : CEC_CFGR_BREGEN_Field := 16#0#;
      --  Generate Error-Bit on Long Bit Period Error
      LBPEGEN       : CEC_CFGR_LBPEGEN_Field := 16#0#;
      --  Avoid Error-Bit Generation in Broadcast
      BRDNOGEN      : CEC_CFGR_BRDNOGEN_Field := 16#0#;
      --  SFT Option Bit
      SFTOP         : CEC_CFGR_SFTOP_Field := 16#0#;
      --  unspecified
      Reserved_9_15 : STM32F446.UInt7 := 16#0#;
      --  Own addresses configuration
      OAR           : CEC_CFGR_OAR_Field := 16#0#;
      --  Listen mode
      LSTN          : CEC_CFGR_LSTN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CEC_CFGR_Register use record
      SFT           at 0 range 0 .. 2;
      RXTOL         at 0 range 3 .. 3;
      BRESTP        at 0 range 4 .. 4;
      BREGEN        at 0 range 5 .. 5;
      LBPEGEN       at 0 range 6 .. 6;
      BRDNOGEN      at 0 range 7 .. 7;
      SFTOP         at 0 range 8 .. 8;
      Reserved_9_15 at 0 range 9 .. 15;
      OAR           at 0 range 16 .. 30;
      LSTN          at 0 range 31 .. 31;
   end record;

   subtype CEC_TXDR_TXD_Field is STM32F446.Byte;

   --  CEC Tx data register
   type CEC_TXDR_Register is record
      --  Write-only. Tx Data register
      TXD           : CEC_TXDR_TXD_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : STM32F446.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CEC_TXDR_Register use record
      TXD           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CEC_RXDR_RXD_Field is STM32F446.Byte;

   --  CEC Rx Data Register
   type CEC_RXDR_Register is record
      --  Read-only. Rx Data register
      RXD           : CEC_RXDR_RXD_Field;
      --  unspecified
      Reserved_8_31 : STM32F446.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CEC_RXDR_Register use record
      RXD           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CEC_ISR_RXBR_Field is STM32F446.Bit;
   subtype CEC_ISR_RXEND_Field is STM32F446.Bit;
   subtype CEC_ISR_RXOVR_Field is STM32F446.Bit;
   subtype CEC_ISR_BRE_Field is STM32F446.Bit;
   subtype CEC_ISR_SBPE_Field is STM32F446.Bit;
   subtype CEC_ISR_LBPE_Field is STM32F446.Bit;
   subtype CEC_ISR_RXACKE_Field is STM32F446.Bit;
   subtype CEC_ISR_ARBLST_Field is STM32F446.Bit;
   subtype CEC_ISR_TXBR_Field is STM32F446.Bit;
   subtype CEC_ISR_TXEND_Field is STM32F446.Bit;
   subtype CEC_ISR_TXUDR_Field is STM32F446.Bit;
   subtype CEC_ISR_TXERR_Field is STM32F446.Bit;
   subtype CEC_ISR_TXACKE_Field is STM32F446.Bit;

   --  CEC Interrupt and Status Register
   type CEC_ISR_Register is record
      --  Rx-Byte Received
      RXBR           : CEC_ISR_RXBR_Field := 16#0#;
      --  End Of Reception
      RXEND          : CEC_ISR_RXEND_Field := 16#0#;
      --  Rx-Overrun
      RXOVR          : CEC_ISR_RXOVR_Field := 16#0#;
      --  Rx-Bit Rising Error
      BRE            : CEC_ISR_BRE_Field := 16#0#;
      --  Rx-Short Bit Period Error
      SBPE           : CEC_ISR_SBPE_Field := 16#0#;
      --  Rx-Long Bit Period Error
      LBPE           : CEC_ISR_LBPE_Field := 16#0#;
      --  Rx-Missing Acknowledge
      RXACKE         : CEC_ISR_RXACKE_Field := 16#0#;
      --  Arbitration Lost
      ARBLST         : CEC_ISR_ARBLST_Field := 16#0#;
      --  Tx-Byte Request
      TXBR           : CEC_ISR_TXBR_Field := 16#0#;
      --  End of Transmission
      TXEND          : CEC_ISR_TXEND_Field := 16#0#;
      --  Tx-Buffer Underrun
      TXUDR          : CEC_ISR_TXUDR_Field := 16#0#;
      --  Tx-Error
      TXERR          : CEC_ISR_TXERR_Field := 16#0#;
      --  Tx-Missing Acknowledge Error
      TXACKE         : CEC_ISR_TXACKE_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : STM32F446.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CEC_ISR_Register use record
      RXBR           at 0 range 0 .. 0;
      RXEND          at 0 range 1 .. 1;
      RXOVR          at 0 range 2 .. 2;
      BRE            at 0 range 3 .. 3;
      SBPE           at 0 range 4 .. 4;
      LBPE           at 0 range 5 .. 5;
      RXACKE         at 0 range 6 .. 6;
      ARBLST         at 0 range 7 .. 7;
      TXBR           at 0 range 8 .. 8;
      TXEND          at 0 range 9 .. 9;
      TXUDR          at 0 range 10 .. 10;
      TXERR          at 0 range 11 .. 11;
      TXACKE         at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype CEC_IER_RXBRIE_Field is STM32F446.Bit;
   subtype CEC_IER_RXENDIE_Field is STM32F446.Bit;
   subtype CEC_IER_RXOVRIE_Field is STM32F446.Bit;
   subtype CEC_IER_BREIE_Field is STM32F446.Bit;
   subtype CEC_IER_SBPEIE_Field is STM32F446.Bit;
   subtype CEC_IER_LBPEIE_Field is STM32F446.Bit;
   subtype CEC_IER_RXACKIE_Field is STM32F446.Bit;
   subtype CEC_IER_ARBLSTIE_Field is STM32F446.Bit;
   subtype CEC_IER_TXBRIE_Field is STM32F446.Bit;
   subtype CEC_IER_TXENDIE_Field is STM32F446.Bit;
   subtype CEC_IER_TXUDRIE_Field is STM32F446.Bit;
   subtype CEC_IER_TXERRIE_Field is STM32F446.Bit;
   subtype CEC_IER_TXACKIE_Field is STM32F446.Bit;

   --  CEC interrupt enable register
   type CEC_IER_Register is record
      --  Rx-Byte Received Interrupt Enable
      RXBRIE         : CEC_IER_RXBRIE_Field := 16#0#;
      --  End Of Reception Interrupt Enable
      RXENDIE        : CEC_IER_RXENDIE_Field := 16#0#;
      --  Rx-Buffer Overrun Interrupt Enable
      RXOVRIE        : CEC_IER_RXOVRIE_Field := 16#0#;
      --  Bit Rising Error Interrupt Enable
      BREIE          : CEC_IER_BREIE_Field := 16#0#;
      --  Short Bit Period Error Interrupt Enable
      SBPEIE         : CEC_IER_SBPEIE_Field := 16#0#;
      --  Long Bit Period Error Interrupt Enable
      LBPEIE         : CEC_IER_LBPEIE_Field := 16#0#;
      --  Rx-Missing Acknowledge Error Interrupt Enable
      RXACKIE        : CEC_IER_RXACKIE_Field := 16#0#;
      --  Arbitration Lost Interrupt Enable
      ARBLSTIE       : CEC_IER_ARBLSTIE_Field := 16#0#;
      --  Tx-Byte Request Interrupt Enable
      TXBRIE         : CEC_IER_TXBRIE_Field := 16#0#;
      --  Tx-End Of Message Interrupt Enable
      TXENDIE        : CEC_IER_TXENDIE_Field := 16#0#;
      --  Tx-Underrun Interrupt Enable
      TXUDRIE        : CEC_IER_TXUDRIE_Field := 16#0#;
      --  Tx-Error Interrupt Enable
      TXERRIE        : CEC_IER_TXERRIE_Field := 16#0#;
      --  Tx-Missing Acknowledge Error Interrupt Enable
      TXACKIE        : CEC_IER_TXACKIE_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : STM32F446.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CEC_IER_Register use record
      RXBRIE         at 0 range 0 .. 0;
      RXENDIE        at 0 range 1 .. 1;
      RXOVRIE        at 0 range 2 .. 2;
      BREIE          at 0 range 3 .. 3;
      SBPEIE         at 0 range 4 .. 4;
      LBPEIE         at 0 range 5 .. 5;
      RXACKIE        at 0 range 6 .. 6;
      ARBLSTIE       at 0 range 7 .. 7;
      TXBRIE         at 0 range 8 .. 8;
      TXENDIE        at 0 range 9 .. 9;
      TXUDRIE        at 0 range 10 .. 10;
      TXERRIE        at 0 range 11 .. 11;
      TXACKIE        at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  HDMI-CEC controller
   type HDMI_CEC_Peripheral is record
      --  CEC control register
      CEC_CR   : aliased CEC_CR_Register;
      --  CEC configuration register
      CEC_CFGR : aliased CEC_CFGR_Register;
      --  CEC Tx data register
      CEC_TXDR : aliased CEC_TXDR_Register;
      --  CEC Rx Data Register
      CEC_RXDR : aliased CEC_RXDR_Register;
      --  CEC Interrupt and Status Register
      CEC_ISR  : aliased CEC_ISR_Register;
      --  CEC interrupt enable register
      CEC_IER  : aliased CEC_IER_Register;
   end record
     with Volatile;

   for HDMI_CEC_Peripheral use record
      CEC_CR   at 16#0# range 0 .. 31;
      CEC_CFGR at 16#4# range 0 .. 31;
      CEC_TXDR at 16#8# range 0 .. 31;
      CEC_RXDR at 16#C# range 0 .. 31;
      CEC_ISR  at 16#10# range 0 .. 31;
      CEC_IER  at 16#14# range 0 .. 31;
   end record;

   --  HDMI-CEC controller
   HDMI_CEC_Periph : aliased HDMI_CEC_Peripheral
     with Import, Address => HDMI_CEC_Base;

end STM32F446.HDMI_CEC;
