cd ./examples/button_test/
make
cd ./../led_test/
make
cd ./../random_numbers/
make
cd ./../../

mkdir bin

mv ./examples/button_test/button_test ./bin/button_test
mv ./examples/led_test/led_test ./bin/led_test
mv ./examples/random_numbers/random_numbers ./bin/random_numbers
