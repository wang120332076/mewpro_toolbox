function mew_send_sync(freq)

if ~exist('freq'),
    freq = 44100;
end;

soundMatrix = zeros(44100,2);
soundMatrix(22050:22050+4410,:) = 100;

sound(soundMatrix , freq);
fprintf('Sync signal sent!\n');

end