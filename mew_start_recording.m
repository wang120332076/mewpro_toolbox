function mew_start_recording(obj)

if ~isa(obj,'serial'),
    error('OBJ is not a serial object!');
end;
if (strcmp(obj.Status,'closed')),
    error('Serial port is not open!');
end;

mew_send_com(obj,'SY1');

end

