use bmwqemu;

waitinststage "xdm-loginscreen";
waitidle;
sleep 5;
do "inst/consoletest.pm";

sleep 5;
# log in
sendautotype $username."\n";
sleep 1;
sendautotype $password."\n";
waitidle;
sleep 3;

sendkey "alt-f4"; # close hint popup
waitidle;
sleep 2;

sendkey "alt-f2";
waitidle;
sleep 2;
sendautotype "xterm\n";
waitidle;
script_run "firefox&";
sendkey "alt-f4"; # default browser setting popup
sleep 3;
sendkey "alt-f4";
sleep 1;
sendkey "ret"; # save+quit


sleep 5;
qemusend "system_powerdown";

1;
