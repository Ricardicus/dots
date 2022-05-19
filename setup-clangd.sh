#/bin/bash
echo "Generating ctags.."
ctags -R
echo "Generating cscope.."
find . |grep -E -i '(\.c|\.h|\.hpp|\.cpp)$' > cscope.files
cscope -b 
