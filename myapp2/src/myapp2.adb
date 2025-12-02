with Ada.Text_IO;
--  with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with AUnit.Test_Suites;
with AUnit.Assertions;
-- with AUnit.Assertions.Assert;
with Libmy_Crate;
procedure Myapp2 is
   --  Array of integers
   type Int_Array is array (1 .. 5) of Integer;
   A : constant Int_Array := (10, 20, 30, 40, 50);
begin
   Ada.Text_IO.Put_Line (Libmy_Crate.Hello);
   Ada.Text_IO.Put_Line (Libmy_Crate.Add (-99, 0)'Image);
   --  Print array using 'Image in a loop
   Ada.Text_IO.Put_Line ("Array elements:");
   for I in A'Range loop
      --  Slice to remove leading space
      Ada.Text_IO.Put_Line ("  A(" & I'Image & ") = " & A(I)'Image(2..A(I)'Image'Length));
   end loop;
   Libmy_Crate.Joe;
   AUnit.Assertions.Assert (Libmy_Crate.Add(0, 0) = 0, "Add failed for zero");	
end Myapp2;
