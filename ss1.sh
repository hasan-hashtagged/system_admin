#!/bin/bash
#checking redirections
exec 3>&1
exec 1>tester
echo "this is a pen"
echo "this should be redirected to terminal" >&3
echo "after this everything should become normal"
exec 1>&3
echo "back to normal"
echo $?
