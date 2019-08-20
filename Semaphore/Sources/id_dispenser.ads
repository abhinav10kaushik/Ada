generic
   type Element is mod <>;

package Id_Dispenser is
      protected Dispenser is procedure Draw_Id (Id : in out Element);
      private Uni_id : Element := Element'First;
      end Dispenser;
end Id_Dispenser;
