
MUNGO_BIN=./mungo_utils.py
INPUT_C0=./input/input_c0/
INPUT_C1=./input/input_c1/
INPUT_G0=./input/input_g0/
INPUT_G0v2=./input/input_g0v2/
INPUT_S0=./input/input_s0/
INPUT_W0=./input/input_w0/
OUTPUT=./output

c0:
	mkdir -p $(OUTPUT)
	python $(MUNGO_BIN) -I $(INPUT_C0) -O $(OUTPUT) -T C0 -n
c1:
	mkdir -p $(OUTPUT)
	python $(MUNGO_BIN) -I $(INPUT_C1) -O $(OUTPUT) -T C1 -n
g0: 
	mkdir -p $(OUTPUT)
	python $(MUNGO_BIN) -I $(INPUT_G0) -O $(OUTPUT) -T G0 -n
g0v2: 
	mkdir -p $(OUTPUT)
	python $(MUNGO_BIN) -I $(INPUT_G0v2) -O $(OUTPUT) -T G0V2 -n
s0:
	mkdir -p $(OUTPUT)
	python $(MUNGO_BIN) -I $(INPUT_S0) -O $(OUTPUT) -T S0 -n
w0:
	mkdir -p $(OUTPUT)
	python $(MUNGO_BIN) -I $(INPUT_W01) -O $(OUTPUT) -T W0 -n

clean:
	rm -rf ./output/*

inputs:
	mkdir -p ./input/input_c0/
	mkdir -p ./input/input_c1/
	mkdir -p ./input/input_g0v2/
	mkdir -p ./input/input_g0/
	mkdir -p ./input/input_s0/
	mkdir -p ./input/input_w0/