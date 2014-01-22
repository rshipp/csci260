bin = mylesson1 mylesson2

all: $(bin)

clean:
	rm -f $(bin)

$(bin): *.f95
	f95 $@.f95 -o $@
