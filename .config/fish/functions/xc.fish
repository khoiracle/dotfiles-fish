function xc
  set -l xcode_proj (find . -maxdepth 1 -name '*.xcworkspace' -or -name '*.xcodeproj' | tail -n 1)
  if [ $xcode_proj ]
    echo $xcode_proj
    open $xcode_proj
  else
    echo "No xcworkspace/xcodeproj file found in the current directory."
  end
end

