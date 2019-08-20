--
-- Uwe R. Zimmer, Australia, 2015
--

generic
   type Element is private;
   -- Stack_Size : Positive := 10;

package Stack_pack_private is
   type Stack_Type is limited private;
   procedure Enqueue (Item :     Element; Stack : in out Stack_Type);
   procedure Dequeue (Item : out Element; Stack : in out Stack_Type);

   function Is_Empty (Stack : Stack_Type) return Boolean;
   function Is_Full  (Stack : Stack_Type) return Boolean;

   Stack_overflow, Stack_underflow : exception;

private
   type Marker is range 0 .. 10;
   type List is array (Marker) of Element;
   type Stack_Type is record
      Top, Free : Marker  := Marker'First;
      Is_Empty  : Boolean := True;
      Elements  : List;
   end record;
end Stack_pack_private;
