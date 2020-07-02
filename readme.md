# HostChecker

The porpose is to check a host status and log this status on a status.log file and if it's up then copy a log.txt file

## Prerequisites

- It's necessary to create a host ssh connection
- It's necessary to replace the destination path on the script.
  root@\$1:/var/media/Elements/test

### Installing

Follow these steps to install it;

`git clone https://github.com/jnk-beneyto/ipHostChecker_bash.git`
`cd ipHostChecker_bash/`
`chmod +x checkHost.sh`

### Running the script

You should be aware about IP, this is an example
`./checkHost.sh 192.168.1.135`

### Results

- Host UP
  -it shows the log.txt file copied
  -on status.log showing:
  2020-07-02 : 07:32:06 : 192.168.1.135 is UP

- Host DOWN
  -on status.log showing:
  2020-07-02 : 07:32:06 : 192.168.1.135 is DOWN
