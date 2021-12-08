function output = fade_out(input, time)
    % Creates a fade-out sound effect that lasts a given
    % time parameter of the input sound signal
    % By Yalu Ouyang
    
    % input: a 1D array that represents the sound signal in the time domain
    % time: how long the fade out effect should last
    % Shouldn't be longer than the input signal 
    % (in which case the function treats it as the duration of the signal)
    % Returns modified signal in the time domain (output).
    
    len = length(input);
    
    % if time parameter longer than signal, treat time as
    % the duration of original signal
    if time > len
        time = len
    end

    % set multiplier as 1D array

    multiplier = (1 : time) / time;

    % fade out effect: from full volume of signal to no volume
    multiplier = flip(multiplier)

    % the resulting fade-in output  
    output = input .* multiplier;
end


% This is useful for creating videos, specifically the outro part