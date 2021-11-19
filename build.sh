git clone --depth 1 https://github.com/quickfix/quickfix.git

cd quickfix

autoconf

./bootstrap

./configure --with-python3 && make && make check

cd ../

mkdir ./C++
mkdir ./spec

cp quickfix/src/python3/*.py ./
cp quickfix/src/C++/*.h ./C++
cp quickfix/src/C++/*.hpp ./C++
cp quickfix/src/C++/*.cpp ./C++
cp -R quickfix/src/C++/double-conversion ./C++
cp quickfix/src/python3/QuickfixPython.cpp ./C++
cp quickfix/src/python3/QuickfixPython.h ./C++

cp quickfix/spec/FIX*.xml ./spec

echo "List dir"
ls -l ./C++

touch ./C++/config.h
touch ./C++/config_windows.h

python setup.py sdist
python setup.py bdist