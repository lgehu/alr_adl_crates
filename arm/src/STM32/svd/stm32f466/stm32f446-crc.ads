pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32F446.svd

pragma Restrictions (No_Elaboration_Code);

with System;

package STM32F446.CRC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype IDR_IDR_Field is STM32F446.Byte;

   --  Independent Data register
   type IDR_Register is record
      --  Independent Data register
      IDR           : IDR_IDR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : STM32F446.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IDR_Register use record
      IDR           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CR_CR_Field is STM32F446.Bit;

   --  Control register
   type CR_Register is record
      --  Write-only. Control regidter
      CR            : CR_CR_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : STM32F446.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      CR            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Cryptographic processor
   type CRC_Peripheral is record
      --  Data register
      DR  : aliased STM32F446.UInt32;
      --  Independent Data register
      IDR : aliased IDR_Register;
      --  Control register
      CR  : aliased CR_Register;
   end record
     with Volatile;

   for CRC_Peripheral use record
      DR  at 16#0# range 0 .. 31;
      IDR at 16#4# range 0 .. 31;
      CR  at 16#8# range 0 .. 31;
   end record;

   --  Cryptographic processor
   CRC_Periph : aliased CRC_Peripheral
     with Import, Address => CRC_Base;

end STM32F446.CRC;
