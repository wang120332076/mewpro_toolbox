function mew_close_port(obj)

if ~isa(obj,'serial'),
    error('OBJ is not a serial object!');
end;

fprintf('Closing Port...');
fclose(obj);
fprintf('OK!\n');

end

