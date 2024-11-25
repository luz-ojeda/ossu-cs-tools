# 1
# From what we have seen, we can use some ps aux | grep commands to get our
# jobs’ pids and then kill them, but there are better ways to do it.
# Start a sleep 10000 job in a terminal, background it with Ctrl-Z and 
# continue its execution with bg. Now use pgrep to find its pid and pkill 
# to kill it without ever typing the pid itself. (Hint: use the -af flags).

sleep 10000
# ^ Z
bg
pgrep sleep -a
pkill -f "sleep 1000" # what is inside quotes would be the result of using pgrep sleep -a

# 2
# Say you don’t want to start a process until another completes. How would you
# go about it? In this exercise, our limiting process will always be sleep 
# 60 &. One way to achieve this is to use the wait command. Try launching 
# the sleep command and having an ls wait until the background process finishes.

sleep 60 &
wait; ls

# However, this strategy will fail if we start in a different bash session, since wait only works for 
# child processes. One feature we did not discuss in the notes is that the kill command’s exit status
# will be zero on success and nonzero otherwise. kill -0 does not send a signal but will give a nonzero 
# exit status if the process does not exist. Write a bash function called pidwait that takes a pid and 
# waits until the given process completes. You should use sleep to avoid wasting CPU unnecessarily.

pidwait() {
	while true; do
		kill -0 $1 > /dev/null 2>&1

		if [[ $? -ne 0 ]]; then
			echo "process finished"
			break
		fi
		sleep 1
	done
}