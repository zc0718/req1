script_folder="/home/zc/Projects/others/req1/test_package/build/gcc-13-x86_64-17-debug/generators"
echo "echo Restoring environment" > "$script_folder/deactivate_conanbuildenv-debug-x86_64.sh"
for v in PATH
do
   is_defined="true"
   value=$(printenv $v) || is_defined="" || true
   if [ -n "$value" ] || [ -n "$is_defined" ]
   then
       echo export "$v='$value'" >> "$script_folder/deactivate_conanbuildenv-debug-x86_64.sh"
   else
       echo unset $v >> "$script_folder/deactivate_conanbuildenv-debug-x86_64.sh"
   fi
done

export PATH="/home/zc/.conan2/p/cmake5338cc4c58551/p/bin:$PATH"