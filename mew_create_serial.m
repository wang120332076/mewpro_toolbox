function s_obj = mew_create_serial(num)
%CREATE_SERIAL Summary of this function goes here
%   Detailed explanation goes here

if ~exist('num'),
    num = input('Input the COM number: ');
end;

temp_str = sprintf('COM%d',num);

s_obj = serial(temp_str);
s_obj.BaudRate = 57600;

fclose(s_obj);

end

