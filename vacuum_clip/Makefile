# explicit wildcard expansion suppresses errors when no files are found
include $(wildcard *.deps)

%.stl: %.scad
	openscad -m make -o $@ -d $@.deps $<

%.x3g: %.gcode
	gpx -g -p -m r1d $< $@

clean_stl:
	rm -f *.stl

clean_x3g:
	rm -f *.x3g
