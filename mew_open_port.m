function mew_open_port(obj)

if ~isa(obj,'serial'),
    error('OBJ is not a serial object!');
end;
if (strcmp(obj.Status,'open')),
    fprintf('Port is already open!\n'); 
else    
    fprintf('Opening Port...');
    fopen(obj);
    fprintf('OK!\n');
end;

end

