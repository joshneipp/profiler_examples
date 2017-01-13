require 'profile'

def until_method
  u_counter = 1
  until u_counter == 87654321 do
    u_counter += 1
  end
end


def while_method
  w_counter = 1
  while w_counter <= 87654321 do
    w_counter += 1
  end
end


while_method

# start the profiler at the point in the program where you want to begin profiling (duh!)
Profiler__::start_profile

until_method

Profiler__::stop_profile
Profiler__::print_profile($stderr)


=begin
%   cumulative   self              self     total
time   seconds   seconds    calls  ms/call  ms/call  name
100.00     3.47      3.47        2  1735.00  3470.00  Object#until_method
0.00     3.47      0.00        3     0.00     0.00  TracePoint#enable
0.00     3.47      0.00        2     0.00     0.00  TracePoint#disable
0.00     3.47      0.00        1     0.00  3470.00  #toplevel
%   cumulative   self              self     total
time   seconds   seconds    calls  ms/call  ms/call  name
100.00     3.47      3.47        2  1735.00  3470.00  Object#until_method
0.00     3.47      0.00        3     0.00     0.00  TracePoint#enable
0.00     3.47      0.00        2     0.00     0.00  TracePoint#disable
0.00     3.47      0.00        1     0.00  3470.00  #toplevel
=end
