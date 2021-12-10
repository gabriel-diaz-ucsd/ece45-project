%Written by Darell, edited by Arthur Lu

% CONTRIBUTORS:
% Person1: Darell
% Person2: Arthur Lu

% DOCUMENTATION:
%Pass-through function used by app

function output = SoundGeneratorSelect(amplitude, frequency, phase, fs, duration, duty,number)
    if(number == "Sine")
        output = generate_sine(amplitude, frequency, phase, fs, duration, duty);
    elseif(number == "Square")
        output = generate_square(amplitude, frequency, phase, fs, duration, duty);
    elseif(number == "Triangle")
        output = generate_triangle(amplitude, frequency, phase, fs, duration, duty);
    elseif(number == "Sawtooth")
        output = generate_sawtooth(amplitude, frequency, phase, fs, duration, duty);
    elseif(number == "WhiteNoise")
        output = generate_white(amplitude, fs, duration);
    elseif(number == "HalfCircle")
        output = generate_halfCircles(amplitude, frequency, phase, fs, duration, duty);
    elseif(number == "Trapezoid")
        output = generate_trapezoid(amplitude, frequency, phase, fs, duration, duty);
    elseif(number == "Pulse")
        output = generate_pulse(amplitude, frequency, phase, fs, duration, duty);
    elseif(number == "Cosine")
        output = generate_cosine(amplitude, frequency, phase, fs, duration, duty);
    elseif(number == "Heartbeat")
        output = generate_heartbeat(amplitude, frequency, phase, fs, duration, duty);
    else
        output = zeros(1, fs * duration);
    end
end