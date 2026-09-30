#!/bin/bash

name=$(whoami)
echo "Current user is $name"
exit $? #this will exit with the exit code of last executed command which is echo here


# Exit Code Meanings:
# Common Exit Codes:
# 0   - Success (command executed successfully)
# 1   - General errors (catchall for general errors)
# 2   - Misuse of shell command (missing keyword or command)
# 126 - Command cannot execute (permission problem or command is not executable)
# 127 - Command not found (possible typo or PATH issue)
# 130 - Script terminated by Ctrl+C (SIGINT)
# 
# All Standard Exit Codes:
# 3-125   - Custom/application-specific error codes
# 128     - Invalid exit argument
# 129     - SIGHUP (hangup)
# 131     - SIGQUIT (quit from keyboard)
# 132     - SIGILL (illegal instruction)
# 133     - SIGTRAP (trace/breakpoint trap)
# 134     - SIGABRT (abort signal)
# 135     - SIGBUS (bus error)
# 136     - SIGFPE (floating point exception)
# 137     - SIGKILL (killed - kill -9)
# 138     - SIGUSR1 (user-defined signal 1)
# 139     - SIGSEGV (segmentation fault - invalid memory reference)
# 140     - SIGUSR2 (user-defined signal 2)
# 141     - SIGPIPE (broken pipe)
# 142     - SIGALRM (alarm clock)
# 143     - SIGTERM (terminated - kill default)
# 144     - SIGSTKFLT (stack fault)
# 145     - SIGCHLD (child stopped or terminated)
# 146     - SIGCONT (continue if stopped)
# 147     - SIGSTOP (stop process)
# 148     - SIGTSTP (stop typed at terminal - Ctrl+Z)
# 149     - SIGTTIN (background read from terminal)
# 150     - SIGTTOU (background write to terminal)
# 151     - SIGURG (urgent condition on socket)
# 152     - SIGXCPU (CPU time limit exceeded)
# 153     - SIGXFSZ (file size limit exceeded)
# 154     - SIGVTALRM (virtual timer expired)
# 155     - SIGPROF (profiling timer expired)
# 156     - SIGWINCH (window resize signal)
# 157     - SIGIO/SIGPOLL (I/O now possible)
# 158     - SIGPWR (power failure)
# 159     - SIGSYS (bad system call)
# 255     - Exit status out of range (exit code should be 0-255)
