with Ada.Text_IO;
with Ada.Command_Line;
with Ada.Strings.Unbounded;

use Ada.Text_IO;
use Ada.Command_Line;
use Ada.Strings.Unbounded;

procedure Main is
  Message : Unbounded_String := Null_Unbounded_String;
begin
    for I in 1 .. Argument_Count loop
      if I > 1 then
        Append (Message, " ");
      end if;

      Append (Message, Argument (I));
    end loop;
    Put_Line ("[:3]: " & To_String (Message));
end Main;