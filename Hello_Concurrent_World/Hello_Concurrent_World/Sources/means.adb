with Ada.Text_IO;
use Ada.Text_IO;

procedure means is
   type Number is digits 5;
   type Numbers is array (Positive range <>) of Number;
   Test_Numbers : constant Numbers := (10.0, 30.0, 60.0, 70.0);
   task Arithmetic_Mean;
   task Harmonic_Mean;
   package Number_Float_IO is new Float_IO (Number);
   use Number_Float_IO;

   task body Arithmetic_Mean is
      Sum : Number := 0.0;
      A_mean : Number := 0.0;
   begin
         for I in Test_Numbers'Range loop
            Sum := Sum + Test_Numbers (I);
         end loop;
      A_mean := (Sum / Number (Test_Numbers'Length));
      Put ("Arithmetic Mean:");
      Put (A_mean, 2, Number'Digits - 3, 0);
      New_Line;
   end Arithmetic_Mean;

   task body Harmonic_Mean is
      Sum : Number := 0.0;
      H_mean : Number := 0.0;
   begin
      for I in Test_Numbers'Range loop
         Sum := Sum + (1.0 / (Test_Numbers (I)));
      end loop;
      H_mean := 1.0 / (Sum / Number (Test_Numbers'Length));
      Put ("Harmonic Mean:");
      Put (H_mean, 2, Number'Digits - 3, 0);
      New_Line;
   end Harmonic_Mean;

begin
  null;
end means;
