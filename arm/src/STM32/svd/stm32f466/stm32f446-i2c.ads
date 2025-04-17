pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32F446.svd

pragma Restrictions (No_Elaboration_Code);

with System;

package STM32F446.I2C is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CR1_PE_Field is STM32F446.Bit;
   subtype CR1_TXIE_Field is STM32F446.Bit;
   subtype CR1_RXIE_Field is STM32F446.Bit;
   subtype CR1_ADDRIE_Field is STM32F446.Bit;
   subtype CR1_NACKIE_Field is STM32F446.Bit;
   subtype CR1_STOPIE_Field is STM32F446.Bit;
   subtype CR1_TCIE_Field is STM32F446.Bit;
   subtype CR1_ERRIE_Field is STM32F446.Bit;
   subtype CR1_DNF_Field is STM32F446.UInt4;
   subtype CR1_ANFOFF_Field is STM32F446.Bit;
   subtype CR1_TXDMAEN_Field is STM32F446.Bit;
   subtype CR1_RXDMAEN_Field is STM32F446.Bit;
   subtype CR1_SBC_Field is STM32F446.Bit;
   subtype CR1_NOSTRETCH_Field is STM32F446.Bit;
   subtype CR1_GCEN_Field is STM32F446.Bit;
   subtype CR1_SMBHEN_Field is STM32F446.Bit;
   subtype CR1_SMBDEN_Field is STM32F446.Bit;
   subtype CR1_ALERTEN_Field is STM32F446.Bit;
   subtype CR1_PECEN_Field is STM32F446.Bit;

   --  Control register 1
   type CR1_Register is record
      --  Peripheral enable
      PE             : CR1_PE_Field := 16#0#;
      --  TX Interrupt enable
      TXIE           : CR1_TXIE_Field := 16#0#;
      --  RX Interrupt enable
      RXIE           : CR1_RXIE_Field := 16#0#;
      --  Address match Interrupt enable (slave only)
      ADDRIE         : CR1_ADDRIE_Field := 16#0#;
      --  Not acknowledge received Interrupt enable
      NACKIE         : CR1_NACKIE_Field := 16#0#;
      --  STOP detection Interrupt enable
      STOPIE         : CR1_STOPIE_Field := 16#0#;
      --  Transfer Complete interrupt enable
      TCIE           : CR1_TCIE_Field := 16#0#;
      --  Error interrupts enable
      ERRIE          : CR1_ERRIE_Field := 16#0#;
      --  Digital noise filter
      DNF            : CR1_DNF_Field := 16#0#;
      --  Analog noise filter OFF
      ANFOFF         : CR1_ANFOFF_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : STM32F446.Bit := 16#0#;
      --  DMA transmission requests enable
      TXDMAEN        : CR1_TXDMAEN_Field := 16#0#;
      --  DMA reception requests enable
      RXDMAEN        : CR1_RXDMAEN_Field := 16#0#;
      --  Slave byte control
      SBC            : CR1_SBC_Field := 16#0#;
      --  Clock stretching disable
      NOSTRETCH      : CR1_NOSTRETCH_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : STM32F446.Bit := 16#0#;
      --  General call enable
      GCEN           : CR1_GCEN_Field := 16#0#;
      --  SMBus Host address enable
      SMBHEN         : CR1_SMBHEN_Field := 16#0#;
      --  SMBus Device Default address enable
      SMBDEN         : CR1_SMBDEN_Field := 16#0#;
      --  SMBus alert enable
      ALERTEN        : CR1_ALERTEN_Field := 16#0#;
      --  PEC enable
      PECEN          : CR1_PECEN_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : STM32F446.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR1_Register use record
      PE             at 0 range 0 .. 0;
      TXIE           at 0 range 1 .. 1;
      RXIE           at 0 range 2 .. 2;
      ADDRIE         at 0 range 3 .. 3;
      NACKIE         at 0 range 4 .. 4;
      STOPIE         at 0 range 5 .. 5;
      TCIE           at 0 range 6 .. 6;
      ERRIE          at 0 range 7 .. 7;
      DNF            at 0 range 8 .. 11;
      ANFOFF         at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TXDMAEN        at 0 range 14 .. 14;
      RXDMAEN        at 0 range 15 .. 15;
      SBC            at 0 range 16 .. 16;
      NOSTRETCH      at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      GCEN           at 0 range 19 .. 19;
      SMBHEN         at 0 range 20 .. 20;
      SMBDEN         at 0 range 21 .. 21;
      ALERTEN        at 0 range 22 .. 22;
      PECEN          at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CR2_SADD0_Field is STM32F446.Bit;
   subtype CR2_SADD7_1_Field is STM32F446.UInt7;
   subtype CR2_SADD9_8_Field is STM32F446.UInt2;
   subtype CR2_RD_WRN_Field is STM32F446.Bit;
   subtype CR2_ADD10_Field is STM32F446.Bit;
   subtype CR2_HEAD10R_Field is STM32F446.Bit;
   subtype CR2_START_Field is STM32F446.Bit;
   subtype CR2_STOP_Field is STM32F446.Bit;
   subtype CR2_NACK_Field is STM32F446.Bit;
   subtype CR2_NBYTES_Field is STM32F446.Byte;
   subtype CR2_RELOAD_Field is STM32F446.Bit;
   subtype CR2_AUTOEND_Field is STM32F446.Bit;
   subtype CR2_PECBYTE_Field is STM32F446.Bit;

   --  Control register 1
   type CR2_Register is record
      --  Slave address bit 0 (master mode)
      SADD0          : CR2_SADD0_Field := 16#0#;
      --  Slave address bit 7:1 (master mode)
      SADD7_1        : CR2_SADD7_1_Field := 16#0#;
      --  Slave address bit 9:8 (master mode)
      SADD9_8        : CR2_SADD9_8_Field := 16#0#;
      --  Transfer direction (master mode)
      RD_WRN         : CR2_RD_WRN_Field := 16#0#;
      --  10-bit addressing mode (master mode)
      ADD10          : CR2_ADD10_Field := 16#0#;
      --  10-bit address header only read direction (master receiver mode)
      HEAD10R        : CR2_HEAD10R_Field := 16#0#;
      --  Start generation
      START          : CR2_START_Field := 16#0#;
      --  Stop generation (master mode)
      STOP           : CR2_STOP_Field := 16#0#;
      --  NACK generation (slave mode)
      NACK           : CR2_NACK_Field := 16#0#;
      --  Number of bytes
      NBYTES         : CR2_NBYTES_Field := 16#0#;
      --  NBYTES reload mode
      RELOAD         : CR2_RELOAD_Field := 16#0#;
      --  Automatic end mode (master mode)
      AUTOEND        : CR2_AUTOEND_Field := 16#0#;
      --  Packet error checking byte
      PECBYTE        : CR2_PECBYTE_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : STM32F446.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR2_Register use record
      SADD0          at 0 range 0 .. 0;
      SADD7_1        at 0 range 1 .. 7;
      SADD9_8        at 0 range 8 .. 9;
      RD_WRN         at 0 range 10 .. 10;
      ADD10          at 0 range 11 .. 11;
      HEAD10R        at 0 range 12 .. 12;
      START          at 0 range 13 .. 13;
      STOP           at 0 range 14 .. 14;
      NACK           at 0 range 15 .. 15;
      NBYTES         at 0 range 16 .. 23;
      RELOAD         at 0 range 24 .. 24;
      AUTOEND        at 0 range 25 .. 25;
      PECBYTE        at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype OAR1_OA1_0_Field is STM32F446.Bit;
   subtype OAR1_OA1_7_1_Field is STM32F446.UInt7;
   subtype OAR1_OA1_9_8_Field is STM32F446.UInt2;
   subtype OAR1_OA1MODE_Field is STM32F446.Bit;
   subtype OAR1_OA1EN_Field is STM32F446.Bit;

   --  Own address 1 register
   type OAR1_Register is record
      --  Interface address
      OA1_0          : OAR1_OA1_0_Field := 16#0#;
      --  Interface address
      OA1_7_1        : OAR1_OA1_7_1_Field := 16#0#;
      --  Interface address
      OA1_9_8        : OAR1_OA1_9_8_Field := 16#0#;
      --  Own Address 1 10-bit mode
      OA1MODE        : OAR1_OA1MODE_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : STM32F446.UInt4 := 16#0#;
      --  Own Address 1 enable
      OA1EN          : OAR1_OA1EN_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32F446.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OAR1_Register use record
      OA1_0          at 0 range 0 .. 0;
      OA1_7_1        at 0 range 1 .. 7;
      OA1_9_8        at 0 range 8 .. 9;
      OA1MODE        at 0 range 10 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      OA1EN          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype OAR2_OA2_Field is STM32F446.UInt7;
   subtype OAR2_OA2MSK_Field is STM32F446.UInt3;
   subtype OAR2_OA2EN_Field is STM32F446.Bit;

   --  Own address 2 register
   type OAR2_Register is record
      --  unspecified
      Reserved_0_0   : STM32F446.Bit := 16#0#;
      --  Interface address
      OA2            : OAR2_OA2_Field := 16#0#;
      --  Own Address 2 masks
      OA2MSK         : OAR2_OA2MSK_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : STM32F446.UInt4 := 16#0#;
      --  Own Address 2 enable
      OA2EN          : OAR2_OA2EN_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32F446.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OAR2_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      OA2            at 0 range 1 .. 7;
      OA2MSK         at 0 range 8 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      OA2EN          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TIMINGR_SCLL_Field is STM32F446.Byte;
   subtype TIMINGR_SCLH_Field is STM32F446.Byte;
   subtype TIMINGR_SDADEL_Field is STM32F446.UInt4;
   subtype TIMINGR_SCLDEL_Field is STM32F446.UInt4;
   subtype TIMINGR_PRESC_Field is STM32F446.UInt4;

   --  Timing register
   type TIMINGR_Register is record
      --  SCL low period (master mode)
      SCLL           : TIMINGR_SCLL_Field := 16#0#;
      --  SCL high period (master mode)
      SCLH           : TIMINGR_SCLH_Field := 16#0#;
      --  Data hold time
      SDADEL         : TIMINGR_SDADEL_Field := 16#0#;
      --  Data setup time
      SCLDEL         : TIMINGR_SCLDEL_Field := 16#0#;
      --  unspecified
      Reserved_24_27 : STM32F446.UInt4 := 16#0#;
      --  Timing prescaler
      PRESC          : TIMINGR_PRESC_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMINGR_Register use record
      SCLL           at 0 range 0 .. 7;
      SCLH           at 0 range 8 .. 15;
      SDADEL         at 0 range 16 .. 19;
      SCLDEL         at 0 range 20 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      PRESC          at 0 range 28 .. 31;
   end record;

   subtype TIMEOUTR_TIMEOUTA_Field is STM32F446.UInt12;
   subtype TIMEOUTR_TIDLE_Field is STM32F446.Bit;
   subtype TIMEOUTR_TIMOUTEN_Field is STM32F446.Bit;
   subtype TIMEOUTR_TIMEOUTB_Field is STM32F446.UInt12;
   subtype TIMEOUTR_TEXTEN_Field is STM32F446.Bit;

   --  Timeout register
   type TIMEOUTR_Register is record
      --  Bus Timeout A
      TIMEOUTA       : TIMEOUTR_TIMEOUTA_Field := 16#0#;
      --  Idle clock timeout detection
      TIDLE          : TIMEOUTR_TIDLE_Field := 16#0#;
      --  unspecified
      Reserved_13_14 : STM32F446.UInt2 := 16#0#;
      --  Clock timeout enable
      TIMOUTEN       : TIMEOUTR_TIMOUTEN_Field := 16#0#;
      --  Bus timeout B
      TIMEOUTB       : TIMEOUTR_TIMEOUTB_Field := 16#0#;
      --  unspecified
      Reserved_28_30 : STM32F446.UInt3 := 16#0#;
      --  Extended clock timeout enable
      TEXTEN         : TIMEOUTR_TEXTEN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMEOUTR_Register use record
      TIMEOUTA       at 0 range 0 .. 11;
      TIDLE          at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      TIMOUTEN       at 0 range 15 .. 15;
      TIMEOUTB       at 0 range 16 .. 27;
      Reserved_28_30 at 0 range 28 .. 30;
      TEXTEN         at 0 range 31 .. 31;
   end record;

   subtype ISR_TXE_Field is STM32F446.Bit;
   subtype ISR_TXIS_Field is STM32F446.Bit;
   subtype ISR_RXNE_Field is STM32F446.Bit;
   subtype ISR_ADDR_Field is STM32F446.Bit;
   subtype ISR_NACKF_Field is STM32F446.Bit;
   subtype ISR_STOPF_Field is STM32F446.Bit;
   subtype ISR_TC_Field is STM32F446.Bit;
   subtype ISR_TCR_Field is STM32F446.Bit;
   subtype ISR_BERR_Field is STM32F446.Bit;
   subtype ISR_ARLO_Field is STM32F446.Bit;
   subtype ISR_OVR_Field is STM32F446.Bit;
   subtype ISR_PECERR_Field is STM32F446.Bit;
   subtype ISR_TIMEOUT_Field is STM32F446.Bit;
   subtype ISR_ALERT_Field is STM32F446.Bit;
   subtype ISR_BUSY_Field is STM32F446.Bit;
   subtype ISR_DIR_Field is STM32F446.Bit;
   subtype ISR_ADDCODE_Field is STM32F446.UInt7;

   --  Interrupt and status register
   type ISR_Register is record
      --  Read-only. Transmit data register empty (transmitters)
      TXE            : ISR_TXE_Field;
      --  Read-only. Transmit interrupt status (transmitters)
      TXIS           : ISR_TXIS_Field;
      --  Read-only. Receive data register not empty (receivers)
      RXNE           : ISR_RXNE_Field;
      --  Read-only. Address matched (slave mode)
      ADDR           : ISR_ADDR_Field;
      --  Read-only. Not Acknowledge received flag
      NACKF          : ISR_NACKF_Field;
      --  Read-only. Stop detection flag
      STOPF          : ISR_STOPF_Field;
      --  Read-only. Transfer Complete (master mode)
      TC             : ISR_TC_Field;
      --  Read-only. Transfer Complete Reload
      TCR            : ISR_TCR_Field;
      --  Read-only. Bus error
      BERR           : ISR_BERR_Field;
      --  Read-only. Arbitration lost
      ARLO           : ISR_ARLO_Field;
      --  Read-only. Overrun/Underrun (slave mode)
      OVR            : ISR_OVR_Field;
      --  Read-only. PEC Error in reception
      PECERR         : ISR_PECERR_Field;
      --  Read-only. Timeout or tLOW detection flag
      TIMEOUT        : ISR_TIMEOUT_Field;
      --  Read-only. SMBus alert
      ALERT          : ISR_ALERT_Field;
      --  unspecified
      Reserved_14_14 : STM32F446.Bit;
      --  Read-only. Bus busy
      BUSY           : ISR_BUSY_Field;
      --  Read-only. Transfer direction (Slave mode)
      DIR            : ISR_DIR_Field;
      --  Read-only. Address match code (Slave mode)
      ADDCODE        : ISR_ADDCODE_Field;
      --  unspecified
      Reserved_24_31 : STM32F446.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISR_Register use record
      TXE            at 0 range 0 .. 0;
      TXIS           at 0 range 1 .. 1;
      RXNE           at 0 range 2 .. 2;
      ADDR           at 0 range 3 .. 3;
      NACKF          at 0 range 4 .. 4;
      STOPF          at 0 range 5 .. 5;
      TC             at 0 range 6 .. 6;
      TCR            at 0 range 7 .. 7;
      BERR           at 0 range 8 .. 8;
      ARLO           at 0 range 9 .. 9;
      OVR            at 0 range 10 .. 10;
      PECERR         at 0 range 11 .. 11;
      TIMEOUT        at 0 range 12 .. 12;
      ALERT          at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      BUSY           at 0 range 15 .. 15;
      DIR            at 0 range 16 .. 16;
      ADDCODE        at 0 range 17 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype ICR_ADDRCF_Field is STM32F446.Bit;
   subtype ICR_NACKCF_Field is STM32F446.Bit;
   subtype ICR_STOPCF_Field is STM32F446.Bit;
   subtype ICR_BERRCF_Field is STM32F446.Bit;
   subtype ICR_ARLOCF_Field is STM32F446.Bit;
   subtype ICR_OVRCF_Field is STM32F446.Bit;
   subtype ICR_PECCF_Field is STM32F446.Bit;
   subtype ICR_TIMOUTCF_Field is STM32F446.Bit;
   subtype ICR_ALERTCF_Field is STM32F446.Bit;

   --  Interrupt clear register
   type ICR_Register is record
      --  unspecified
      Reserved_0_2   : STM32F446.UInt3 := 16#0#;
      --  Write-only. Address matched flag clear
      ADDRCF         : ICR_ADDRCF_Field := 16#0#;
      --  Write-only. Not Acknowledge flag clear
      NACKCF         : ICR_NACKCF_Field := 16#0#;
      --  Write-only. Stop detection flag clear
      STOPCF         : ICR_STOPCF_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : STM32F446.UInt2 := 16#0#;
      --  Write-only. Bus error flag clear
      BERRCF         : ICR_BERRCF_Field := 16#0#;
      --  Write-only. Arbitration Lost flag clear
      ARLOCF         : ICR_ARLOCF_Field := 16#0#;
      --  Write-only. Overrun/Underrun flag clear
      OVRCF          : ICR_OVRCF_Field := 16#0#;
      --  Write-only. PEC Error flag clear
      PECCF          : ICR_PECCF_Field := 16#0#;
      --  Write-only. Timeout detection flag clear
      TIMOUTCF       : ICR_TIMOUTCF_Field := 16#0#;
      --  Write-only. Alert flag clear
      ALERTCF        : ICR_ALERTCF_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : STM32F446.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICR_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      ADDRCF         at 0 range 3 .. 3;
      NACKCF         at 0 range 4 .. 4;
      STOPCF         at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      BERRCF         at 0 range 8 .. 8;
      ARLOCF         at 0 range 9 .. 9;
      OVRCF          at 0 range 10 .. 10;
      PECCF          at 0 range 11 .. 11;
      TIMOUTCF       at 0 range 12 .. 12;
      ALERTCF        at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype PECR_PEC_Field is STM32F446.Byte;

   --  PEC register
   type PECR_Register is record
      --  Read-only. Packet error checking register
      PEC           : PECR_PEC_Field;
      --  unspecified
      Reserved_8_31 : STM32F446.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PECR_Register use record
      PEC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RXDR_RXDATA_Field is STM32F446.Byte;

   --  Receive data register
   type RXDR_Register is record
      --  Read-only. 8-bit receive data
      RXDATA        : RXDR_RXDATA_Field;
      --  unspecified
      Reserved_8_31 : STM32F446.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXDR_Register use record
      RXDATA        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TXDR_TXDATA_Field is STM32F446.Byte;

   --  Transmit data register
   type TXDR_Register is record
      --  Read-only. 8-bit transmit data
      TXDATA        : TXDR_TXDATA_Field;
      --  unspecified
      Reserved_8_31 : STM32F446.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXDR_Register use record
      TXDATA        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CR1_SMBUS_Field is STM32F446.Bit;
   subtype CR1_SMBTYPE_Field is STM32F446.Bit;
   subtype CR1_ENARP_Field is STM32F446.Bit;
   subtype CR1_ENPEC_Field is STM32F446.Bit;
   subtype CR1_ENGC_Field is STM32F446.Bit;
   subtype CR1_START_Field is STM32F446.Bit;
   subtype CR1_STOP_Field is STM32F446.Bit;
   subtype CR1_ACK_Field is STM32F446.Bit;
   subtype CR1_POS_Field is STM32F446.Bit;
   subtype CR1_PEC_Field is STM32F446.Bit;
   subtype CR1_ALERT_Field is STM32F446.Bit;
   subtype CR1_SWRST_Field is STM32F446.Bit;

   --  Control register 1
   type CR1_Register_1 is record
      --  Peripheral enable
      PE             : CR1_PE_Field := 16#0#;
      --  SMBus mode
      SMBUS          : CR1_SMBUS_Field := 16#0#;
      --  unspecified
      Reserved_2_2   : STM32F446.Bit := 16#0#;
      --  SMBus type
      SMBTYPE        : CR1_SMBTYPE_Field := 16#0#;
      --  ARP enable
      ENARP          : CR1_ENARP_Field := 16#0#;
      --  PEC enable
      ENPEC          : CR1_ENPEC_Field := 16#0#;
      --  General call enable
      ENGC           : CR1_ENGC_Field := 16#0#;
      --  Clock stretching disable (Slave mode)
      NOSTRETCH      : CR1_NOSTRETCH_Field := 16#0#;
      --  Start generation
      START          : CR1_START_Field := 16#0#;
      --  Stop generation
      STOP           : CR1_STOP_Field := 16#0#;
      --  Acknowledge enable
      ACK            : CR1_ACK_Field := 16#0#;
      --  Acknowledge/PEC Position (for data reception)
      POS            : CR1_POS_Field := 16#0#;
      --  Packet error checking
      PEC            : CR1_PEC_Field := 16#0#;
      --  SMBus alert
      ALERT          : CR1_ALERT_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : STM32F446.Bit := 16#0#;
      --  Software reset
      SWRST          : CR1_SWRST_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32F446.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR1_Register_1 use record
      PE             at 0 range 0 .. 0;
      SMBUS          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      SMBTYPE        at 0 range 3 .. 3;
      ENARP          at 0 range 4 .. 4;
      ENPEC          at 0 range 5 .. 5;
      ENGC           at 0 range 6 .. 6;
      NOSTRETCH      at 0 range 7 .. 7;
      START          at 0 range 8 .. 8;
      STOP           at 0 range 9 .. 9;
      ACK            at 0 range 10 .. 10;
      POS            at 0 range 11 .. 11;
      PEC            at 0 range 12 .. 12;
      ALERT          at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      SWRST          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CR2_FREQ_Field is STM32F446.UInt6;
   subtype CR2_ITERREN_Field is STM32F446.Bit;
   subtype CR2_ITEVTEN_Field is STM32F446.Bit;
   subtype CR2_ITBUFEN_Field is STM32F446.Bit;
   subtype CR2_DMAEN_Field is STM32F446.Bit;
   subtype CR2_LAST_Field is STM32F446.Bit;

   --  Control register 2
   type CR2_Register_1 is record
      --  Peripheral clock frequency
      FREQ           : CR2_FREQ_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : STM32F446.UInt2 := 16#0#;
      --  Error interrupt enable
      ITERREN        : CR2_ITERREN_Field := 16#0#;
      --  Event interrupt enable
      ITEVTEN        : CR2_ITEVTEN_Field := 16#0#;
      --  Buffer interrupt enable
      ITBUFEN        : CR2_ITBUFEN_Field := 16#0#;
      --  DMA requests enable
      DMAEN          : CR2_DMAEN_Field := 16#0#;
      --  DMA last transfer
      LAST           : CR2_LAST_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : STM32F446.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR2_Register_1 use record
      FREQ           at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      ITERREN        at 0 range 8 .. 8;
      ITEVTEN        at 0 range 9 .. 9;
      ITBUFEN        at 0 range 10 .. 10;
      DMAEN          at 0 range 11 .. 11;
      LAST           at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype OAR1_ADD0_Field is STM32F446.Bit;
   subtype OAR1_ADD7_Field is STM32F446.UInt7;
   subtype OAR1_ADD10_Field is STM32F446.UInt2;
   subtype OAR1_ADDMODE_Field is STM32F446.Bit;

   --  Own address register 1
   type OAR1_Register_1 is record
      --  Interface address
      ADD0           : OAR1_ADD0_Field := 16#0#;
      --  Interface address
      ADD7           : OAR1_ADD7_Field := 16#0#;
      --  Interface address
      ADD10          : OAR1_ADD10_Field := 16#0#;
      --  unspecified
      Reserved_10_14 : STM32F446.UInt5 := 16#0#;
      --  Addressing mode (slave mode)
      ADDMODE        : OAR1_ADDMODE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32F446.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OAR1_Register_1 use record
      ADD0           at 0 range 0 .. 0;
      ADD7           at 0 range 1 .. 7;
      ADD10          at 0 range 8 .. 9;
      Reserved_10_14 at 0 range 10 .. 14;
      ADDMODE        at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype OAR2_ENDUAL_Field is STM32F446.Bit;
   subtype OAR2_ADD2_Field is STM32F446.UInt7;

   --  Own address register 2
   type OAR2_Register_1 is record
      --  Dual addressing mode enable
      ENDUAL        : OAR2_ENDUAL_Field := 16#0#;
      --  Interface address
      ADD2          : OAR2_ADD2_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : STM32F446.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OAR2_Register_1 use record
      ENDUAL        at 0 range 0 .. 0;
      ADD2          at 0 range 1 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DR_DR_Field is STM32F446.Byte;

   --  Data register
   type DR_Register is record
      --  8-bit data register
      DR            : DR_DR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : STM32F446.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DR_Register use record
      DR            at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype SR1_SB_Field is STM32F446.Bit;
   subtype SR1_ADDR_Field is STM32F446.Bit;
   subtype SR1_BTF_Field is STM32F446.Bit;
   subtype SR1_ADD10_Field is STM32F446.Bit;
   subtype SR1_STOPF_Field is STM32F446.Bit;
   subtype SR1_RxNE_Field is STM32F446.Bit;
   subtype SR1_TxE_Field is STM32F446.Bit;
   subtype SR1_BERR_Field is STM32F446.Bit;
   subtype SR1_ARLO_Field is STM32F446.Bit;
   subtype SR1_AF_Field is STM32F446.Bit;
   subtype SR1_OVR_Field is STM32F446.Bit;
   subtype SR1_PECERR_Field is STM32F446.Bit;
   subtype SR1_TIMEOUT_Field is STM32F446.Bit;
   subtype SR1_SMBALERT_Field is STM32F446.Bit;

   --  Status register 1
   type SR1_Register is record
      --  Read-only. Start bit (Master mode)
      SB             : SR1_SB_Field := 16#0#;
      --  Read-only. Address sent (master mode)/matched (slave mode)
      ADDR           : SR1_ADDR_Field := 16#0#;
      --  Read-only. Byte transfer finished
      BTF            : SR1_BTF_Field := 16#0#;
      --  Read-only. 10-bit header sent (Master mode)
      ADD10          : SR1_ADD10_Field := 16#0#;
      --  Read-only. Stop detection (slave mode)
      STOPF          : SR1_STOPF_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : STM32F446.Bit := 16#0#;
      --  Read-only. Data register not empty (receivers)
      RxNE           : SR1_RxNE_Field := 16#0#;
      --  Read-only. Data register empty (transmitters)
      TxE            : SR1_TxE_Field := 16#0#;
      --  Bus error
      BERR           : SR1_BERR_Field := 16#0#;
      --  Arbitration lost (master mode)
      ARLO           : SR1_ARLO_Field := 16#0#;
      --  Acknowledge failure
      AF             : SR1_AF_Field := 16#0#;
      --  Overrun/Underrun
      OVR            : SR1_OVR_Field := 16#0#;
      --  PEC Error in reception
      PECERR         : SR1_PECERR_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : STM32F446.Bit := 16#0#;
      --  Timeout or Tlow error
      TIMEOUT        : SR1_TIMEOUT_Field := 16#0#;
      --  SMBus alert
      SMBALERT       : SR1_SMBALERT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32F446.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR1_Register use record
      SB             at 0 range 0 .. 0;
      ADDR           at 0 range 1 .. 1;
      BTF            at 0 range 2 .. 2;
      ADD10          at 0 range 3 .. 3;
      STOPF          at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      RxNE           at 0 range 6 .. 6;
      TxE            at 0 range 7 .. 7;
      BERR           at 0 range 8 .. 8;
      ARLO           at 0 range 9 .. 9;
      AF             at 0 range 10 .. 10;
      OVR            at 0 range 11 .. 11;
      PECERR         at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TIMEOUT        at 0 range 14 .. 14;
      SMBALERT       at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SR2_MSL_Field is STM32F446.Bit;
   subtype SR2_BUSY_Field is STM32F446.Bit;
   subtype SR2_TRA_Field is STM32F446.Bit;
   subtype SR2_GENCALL_Field is STM32F446.Bit;
   subtype SR2_SMBDEFAULT_Field is STM32F446.Bit;
   subtype SR2_SMBHOST_Field is STM32F446.Bit;
   subtype SR2_DUALF_Field is STM32F446.Bit;
   subtype SR2_PEC_Field is STM32F446.Byte;

   --  Status register 2
   type SR2_Register is record
      --  Read-only. Master/slave
      MSL            : SR2_MSL_Field;
      --  Read-only. Bus busy
      BUSY           : SR2_BUSY_Field;
      --  Read-only. Transmitter/receiver
      TRA            : SR2_TRA_Field;
      --  unspecified
      Reserved_3_3   : STM32F446.Bit;
      --  Read-only. General call address (Slave mode)
      GENCALL        : SR2_GENCALL_Field;
      --  Read-only. SMBus device default address (Slave mode)
      SMBDEFAULT     : SR2_SMBDEFAULT_Field;
      --  Read-only. SMBus host header (Slave mode)
      SMBHOST        : SR2_SMBHOST_Field;
      --  Read-only. Dual flag (Slave mode)
      DUALF          : SR2_DUALF_Field;
      --  Read-only. acket error checking register
      PEC            : SR2_PEC_Field;
      --  unspecified
      Reserved_16_31 : STM32F446.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR2_Register use record
      MSL            at 0 range 0 .. 0;
      BUSY           at 0 range 1 .. 1;
      TRA            at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      GENCALL        at 0 range 4 .. 4;
      SMBDEFAULT     at 0 range 5 .. 5;
      SMBHOST        at 0 range 6 .. 6;
      DUALF          at 0 range 7 .. 7;
      PEC            at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CCR_CCR_Field is STM32F446.UInt12;
   subtype CCR_DUTY_Field is STM32F446.Bit;
   subtype CCR_F_S_Field is STM32F446.Bit;

   --  Clock control register
   type CCR_Register is record
      --  Clock control register in Fast/Standard mode (Master mode)
      CCR            : CCR_CCR_Field := 16#0#;
      --  unspecified
      Reserved_12_13 : STM32F446.UInt2 := 16#0#;
      --  Fast mode duty cycle
      DUTY           : CCR_DUTY_Field := 16#0#;
      --  I2C master mode selection
      F_S            : CCR_F_S_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32F446.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCR_Register use record
      CCR            at 0 range 0 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      DUTY           at 0 range 14 .. 14;
      F_S            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TRISE_TRISE_Field is STM32F446.UInt6;

   --  TRISE register
   type TRISE_Register is record
      --  Maximum rise time in Fast/Standard mode (Master mode)
      TRISE         : TRISE_TRISE_Field := 16#2#;
      --  unspecified
      Reserved_6_31 : STM32F446.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRISE_Register use record
      TRISE         at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype FLTR_DNF_Field is STM32F446.UInt4;
   subtype FLTR_ANOFF_Field is STM32F446.Bit;

   --  I2C FLTR register
   type FLTR_Register is record
      --  Digital noise filter
      DNF           : FLTR_DNF_Field := 16#0#;
      --  Analog noise filter OFF
      ANOFF         : FLTR_ANOFF_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : STM32F446.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLTR_Register use record
      DNF           at 0 range 0 .. 3;
      ANOFF         at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Fast-mode Plus Inter-integrated circuit interface
   type FMPI2C_Peripheral is record
      --  Control register 1
      CR1      : aliased CR1_Register;
      --  Control register 1
      CR2      : aliased CR2_Register;
      --  Own address 1 register
      OAR1     : aliased OAR1_Register;
      --  Own address 2 register
      OAR2     : aliased OAR2_Register;
      --  Timing register
      TIMINGR  : aliased TIMINGR_Register;
      --  Timeout register
      TIMEOUTR : aliased TIMEOUTR_Register;
      --  Interrupt and status register
      ISR      : aliased ISR_Register;
      --  Interrupt clear register
      ICR      : aliased ICR_Register;
      --  PEC register
      PECR     : aliased PECR_Register;
      --  Receive data register
      RXDR     : aliased RXDR_Register;
      --  Transmit data register
      TXDR     : aliased TXDR_Register;
   end record
     with Volatile;

   for FMPI2C_Peripheral use record
      CR1      at 16#0# range 0 .. 31;
      CR2      at 16#4# range 0 .. 31;
      OAR1     at 16#8# range 0 .. 31;
      OAR2     at 16#C# range 0 .. 31;
      TIMINGR  at 16#10# range 0 .. 31;
      TIMEOUTR at 16#14# range 0 .. 31;
      ISR      at 16#18# range 0 .. 31;
      ICR      at 16#1C# range 0 .. 31;
      PECR     at 16#20# range 0 .. 31;
      RXDR     at 16#24# range 0 .. 31;
      TXDR     at 16#28# range 0 .. 31;
   end record;

   --  Fast-mode Plus Inter-integrated circuit interface
   FMPI2C_Periph : aliased FMPI2C_Peripheral
     with Import, Address => FMPI2C_Base;

   --  Inter-integrated circuit
   type I2C_Peripheral is record
      --  Control register 1
      CR1   : aliased CR1_Register_1;
      --  Control register 2
      CR2   : aliased CR2_Register_1;
      --  Own address register 1
      OAR1  : aliased OAR1_Register_1;
      --  Own address register 2
      OAR2  : aliased OAR2_Register_1;
      --  Data register
      DR    : aliased DR_Register;
      --  Status register 1
      SR1   : aliased SR1_Register;
      --  Status register 2
      SR2   : aliased SR2_Register;
      --  Clock control register
      CCR   : aliased CCR_Register;
      --  TRISE register
      TRISE : aliased TRISE_Register;
      --  I2C FLTR register
      FLTR  : aliased FLTR_Register;
   end record
     with Volatile;

   for I2C_Peripheral use record
      CR1   at 16#0# range 0 .. 31;
      CR2   at 16#4# range 0 .. 31;
      OAR1  at 16#8# range 0 .. 31;
      OAR2  at 16#C# range 0 .. 31;
      DR    at 16#10# range 0 .. 31;
      SR1   at 16#14# range 0 .. 31;
      SR2   at 16#18# range 0 .. 31;
      CCR   at 16#1C# range 0 .. 31;
      TRISE at 16#20# range 0 .. 31;
      FLTR  at 16#24# range 0 .. 31;
   end record;

   --  Inter-integrated circuit
   I2C1_Periph : aliased I2C_Peripheral
     with Import, Address => I2C1_Base;

   --  Inter-integrated circuit
   I2C2_Periph : aliased I2C_Peripheral
     with Import, Address => I2C2_Base;

   --  Inter-integrated circuit
   I2C3_Periph : aliased I2C_Peripheral
     with Import, Address => I2C3_Base;

end STM32F446.I2C;
