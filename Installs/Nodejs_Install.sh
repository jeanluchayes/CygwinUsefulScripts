#!/bin/bash

tee -a ~/.bashrc << END
alias npm="/mnt/j/PortableApps/NodeJSPortable/npm"
alias node="/mnt/j/PortableApps/NodeJSPortable/node.exe"
alias ng="/mnt/j/PortableApps/NodeJSPortable/ng"
PATH=$PATH:/mnt/j/PortableApss/NodeJSPortable/
END
