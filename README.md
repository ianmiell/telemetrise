# telemetrise

Runs a process, and gives you the output along with other telemetry on the
process, all in one terminal window.

Here's me seeing what nmap does by looking at strace and tcpdump, with the command:

```
sudo telemetrise -c 'nmap meirionconsulting.com' -l 'strace -p PID' -r 'tcpdump -XXs 20000'
```

![Demo](https://raw.githubusercontent.com/ianmiell/telemetrise/master/demo.gif)

## Features:

- Pause program in-flight to see what's going on

- Supply PID to pane's command and it gets the main pid sub'd in (see strace in the example above)

- Colorised, multi-pane output

- Output of all commands captured to files (in `/tmp/tmptelemetrise/PID/*`)

- Raise PR if you want other features


## Install

```
# Requires:
# python (2 or 3)
# pip
pip install telemetrise
```


## Examples

Mac example:

```
$ sudo telemetrise -c 'find /' -l 'dtruss -f -p PID' -r 'iostat 1'
```

PID is replaced with the PID of the main (-c) command


Linux example with strace and vmstat:

```
$ sudo telemetrise -c 'find /' -l 'strace -p PID' -r 'vmstat 1'
```

Linux example with strace and tcpdump:

```
$ sudo telemetrise -c 'nmap localhost' -l 'strace -p PID' -r 'tcpdump -XXs 20000'
```
