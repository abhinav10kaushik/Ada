package body Id_Dispenser is
   protected body Dispenser is
      procedure Draw_Id (Id : in out Element) is
      begin
         Id := Uni_id;
         Uni_id := Element'Succ (Uni_id);
      end Draw_Id;
   end Dispenser;
end Id_Dispenser;
