
PROPOSALS=serializable.mdk
DOCUMENTS=$(patsubst %.mdk,build/%.pdf,$(PROPOSALS))

build/%.pdf : %.mdk style.mdk p4.json
	madoko --pdf -vv --png --odir=build $<

all: $(DOCUMENTS)

clean:
	${RM} -rf build
