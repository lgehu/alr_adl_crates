pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32F446.svd

pragma Restrictions (No_Elaboration_Code);

with System;

package STM32F446.WWDG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CR_T_Field is STM32F446.UInt7;
   subtype CR_WDGA_Field is STM32F446.Bit;

   --  Control register
   type CR_Register is record
      --  7-bit counter (MSB to LSB)
      T             : CR_T_Field := 16#7F#;
      --  Activation bit
      WDGA          : CR_WDGA_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : STM32F446.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      T             at 0 range 0 .. 6;
      WDGA          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CFR_W_Field is STM32F446.UInt7;
   --  CFR_WDGTB array element
   subtype CFR_WDGTB_Element is STM32F446.Bit;

   --  CFR_WDGTB array
   type CFR_WDGTB_Field_Array is array (0 .. 1) of CFR_WDGTB_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CFR_WDGTB
   type CFR_WDGTB_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WDGTB as a value
            Val : STM32F446.UInt2;
         when True =>
            --  WDGTB as an array
            Arr : CFR_WDGTB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CFR_WDGTB_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CFR_EWI_Field is STM32F446.Bit;

   --  Configuration register
   type CFR_Register is record
      --  7-bit window value
      W              : CFR_W_Field := 16#7F#;
      --  Timer base
      WDGTB          : CFR_WDGTB_Field := (As_Array => False, Val => 16#0#);
      --  Early wakeup interrupt
      EWI            : CFR_EWI_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : STM32F446.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFR_Register use record
      W              at 0 range 0 .. 6;
      WDGTB          at 0 range 7 .. 8;
      EWI            at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype SR_EWIF_Field is STM32F446.Bit;

   --  Status register
   type SR_Register is record
      --  Early wakeup interrupt flag
      EWIF          : SR_EWIF_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : STM32F446.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      EWIF          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Window watchdog
   type WWDG_Peripheral is record
      --  Control register
      CR  : aliased CR_Register;
      --  Configuration register
      CFR : aliased CFR_Register;
      --  Status register
      SR  : aliased SR_Register;
   end record
     with Volatile;

   for WWDG_Peripheral use record
      CR  at 16#0# range 0 .. 31;
      CFR at 16#4# range 0 .. 31;
      SR  at 16#8# range 0 .. 31;
   end record;

   --  Window watchdog
   WWDG_Periph : aliased WWDG_Peripheral
     with Import, Address => WWDG_Base;

end STM32F446.WWDG;
