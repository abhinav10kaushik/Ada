--
-- Uwe R. Zimmer, Australia, 2015
--

with Stack_pack_private;
with Ada.Text_IO;

procedure Stack_test_private is
   Stack_1      : Stack_Type;
   Stack_2      : Stack_Type;
   Current_Item : Element;
begin
   Enqueue (Stack_1, 'A');
   Enqueue (Stack_1, 'B');
   Enqueue (Stack_1, 'C');
   
   for Index in 1..3 loop
      Dequeue (Stack_1, Current_Item);
      Put_Line ("Current_Item: " & Element'Image (Current_Item));
      Enqueue (Stack_2, Current_Item);
   end loop;
   
exception
   when Queue_underflow => Put ("Queue underflow");
   when Queue_overflow  => Put ("Queue overflow");

end Stack_test_private;
