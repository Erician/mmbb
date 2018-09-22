# mmbb
Multithread Memory Bandwidth Benchmark

## use makefile
compile:
 $ make 

clean:
 $ make clean

## run mmbb
example:
 $ ./mmbb 300

for help:
 $ ./mmbb -h

## NOTE
watch out for swap usage (or turn off swap)

## some discovery 
(1) the time elapsed by pthread_create is small, which is about 30~150us, and we ignore it.

(2) the time elapsed by free is growing with the size of memory, cant not be ignored.

(3) the time elapsed by make_array is never be small, so never be ignored.
