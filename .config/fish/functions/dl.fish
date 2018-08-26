function dl
    aria2c -c -x 4 --seed-time=0 $argv[1] -d ~/Downloads
end
