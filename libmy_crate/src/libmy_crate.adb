-- src/libmy_crate.adb, folder is libmy_crate, package is Libmy_Crate
with Ada.Text_IO;
package body Libmy_Crate is
   function Hello return String is
   begin
      return "Hello from MyLib!";
   end Hello;
   function Add (A, B : Integer) return Integer is
   begin
      return A + B;
   end Add;
   procedure Joe is
   begin
     Ada.Text_IO.Put_Line ("JOE");
   end Joe; 
end Libmy_Crate;