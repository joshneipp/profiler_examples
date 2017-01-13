require 'profile'

def until_method
  u_counter = 1
  until u_counter == 7654321 do
    u_counter += 1
  end
end

def while_method
  w_counter = 1
  while w_counter <= 7654321 do
    w_counter += 1
  end
end

until_method
while_method



=begin
%   cumulative   self              self     total
time   seconds   seconds    calls  ms/call  ms/call  name
58.00     0.29      0.29        1   290.00   290.00  Object#until_method
40.00     0.49      0.20        1   200.00   200.00  Object#while_method
0.00     0.49      0.00        1     0.00     0.00  TracePoint#enable
0.00     0.49      0.00        2     0.00     0.00  Module#method_added
0.00     0.49      0.00        1     0.00     0.00  TracePoint#disable
0.00     0.50      0.00        1     0.00   500.00  #toplevel
=end
