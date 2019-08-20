with Ada.Text_IO;  use Ada.Text_IO;
with Ada.Calendar; use Ada.Calendar;

procedure Two_Tasks_Timestamped is
   Start_Up_Time : constant Time := Clock;
   task Task_1;
   task Task_2;
   Now_1 : Duration;

   task body Task_1 is
      Current_Time : constant Time := Clock;
      Now : Duration;
   begin
      Put ("Hello .. task 1");
      Now := (Current_Time - Start_Up_Time);
      Put (Duration'Image (Now));
      Put_Line (" and goodbye world from task 1");
   end Task_1;

   task body Task_2 is
      Current_Time : constant Time := Clock;
      Now : Duration;
   begin
      Put ("Hello .. task 2");
      Now := Current_Time - Start_Up_Time;
      Put (Duration'Image (Now));
      Put_Line (" and goodbye world from task 2");
   end Task_2;
   Current_Time_1 : constant Time := Clock;
begin
   Put ("Hello .. Main");
   Now_1 := Current_Time_1 - Start_Up_Time;
   Put (Duration'Image (Now_1));
   Put_Line (" and goodbye world from Main");
end Two_Tasks_Timestamped;
