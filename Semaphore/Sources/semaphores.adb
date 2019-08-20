package body Semaphores is
   protected body Binary_Semaphore is
      entry Wait when Available is
      begin
         Available := False;
      end Wait;
      entry Signal when Available = False is
      begin
         Available := True;
      end Signal;
   end Binary_Semaphore;
end Semaphores;
