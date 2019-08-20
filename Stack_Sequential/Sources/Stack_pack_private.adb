--
-- Uwe R. Zimmer, Australia, 2015
--

package body Stack_pack_private is

   procedure Enqueue (Item : Element; Stack : in out Stack_Type) is

   begin
      if Is_Full (Stack) then
         raise Stack_overflow;
      end if;

      Stack.Elements (Stack.Free) := Item;
      Stack.Free     := Stack.Free + 1;
      Stack.Is_Empty := False;
   end Enqueue;

   procedure Dequeue (Item : out Element; Stack : in out Stack_Type) is
   begin
      if Is_Empty (Stack) then
         raise Stack_underflow;
      end if;
      Item := Stack.Elements (Stack.Top);
      Stack.Top := Stack.Top - 1;
      Stack.Is_Empty := Stack.Top = Stack.Free;
   end Dequeue;

   function Is_Full (Stack : Stack_Type) return Boolean is
     (not Stack.Is_Empty and then Stack.Top = Stack.Free);

   function Is_Empty (Stack : Stack_Type) return Boolean is
     (Stack.Is_Empty);

end Stack_pack_private;
