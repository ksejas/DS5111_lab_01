default:
	cat makefile
get_synthetic_data:
	wget -O synthetic_data.csv https://gist.github.com/Niarfe/25100a860cbb660150a3fec87378d8ac/raw/
square_wave: synthetic_data.csv
	gnuplot -e "set datafile separator ','; set term png; set output 'square_wave.png'; plot 'synthetic_data.csv' using 1:2 with lines"
fibonachi: synthetic_data.csv
	gnuplot -e "set datafile separator ','; set term png; set output 'fibonachi.png'; plot 'synthetic_data.csv' using 1:3 with lines"
clean:
	rm -f synthetic_data.csv square_wave.png fibonachi.png
.PHONY: all_images
all_images: square_wave.png fibonachi.png
