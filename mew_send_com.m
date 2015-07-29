function mew_send_com(obj,str)

if ~isa(obj,'serial'),
    error('OBJ is not a serial object!');
end;
if (strcmp(obj.Status,'closed')),
    error('Serial port is not open!');
end;

if ~exist('str'),
    str = '';
end;

fprintf(obj,'%s\n',str);
disp(fscanf(obj));

end

