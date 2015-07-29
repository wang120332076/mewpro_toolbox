%mewpro_control GUI for Mewpro control in MatLab

if exist('serial_Obj'),
    fclose(serial_Obj);
    delete(serial_Obj);
    clear serial_Obj;
end;
if exist('timer_Obj'),
    delete(timer_Obj);
    clear timer_Obj;
end;

cell_list = {};
fig_number = 1;
title_figure = 'Mewpro Controller';

cell_list{1,1} = {'Device Man.',['disp(''Rememeber the COM number and CLOSE the new window!'');dos(''devmgmt.msc'');']};
cell_list{1,2} = {'Config Port','serial_Obj = mew_create_serial;'};
cell_list{1,3} = {'Open Port','mew_open_port(serial_Obj);'};
cell_list{1,4} = {'Close Port','mew_close_port(serial_Obj);'};
cell_list{2,1} = {'Power On','mew_send_com(serial_Obj,''@'');'};
cell_list{2,2} = {'Power Off','mew_send_com(serial_Obj,''#'');'};
cell_list{2,3} = {'Start Recording','mew_start_recording(serial_Obj);'};
cell_list{2,4} = {'Stop Recording','mew_stop_recording(serial_Obj);'};
cell_list{3,1} = {'Sync Signal','mew_send_sync;'};
cell_list{3,2} = {'Setup Camera','mew_send_com(serial_Obj,''AI1'');'};
cell_list{3,3} = {'Custom Command','mew_send_com(serial_Obj,input(''Input command:\n'',''s''));'};
cell_list{3,4} = {'Exit', ['fclose(serial_Obj);delete(serial_Obj);clear(''serial_Obj'');disp(''Bye.''); close(' num2str(fig_number) ');']};

show_window(cell_list,fig_number,title_figure,115,18,0,'clean',13);
