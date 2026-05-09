# Build the Paws-Docs companion dist by:
#   1. Materialising every Paws service via the IR + Materializer
#      (Paws sibling repo).
#   2. Extracting POD from each materialised class via
#      script/paws-build-pod.
#   3. Writing one .pod file per shape under
#      paws-docs-dist/lib/Paws/<Service>/<Shape>.pod.
#   4. Running dzil build to produce Paws-Docs-X.YZ.tar.gz.

PAWS_ROOT ?= ..

build: pod
	dzil build

# Generate the .pod files into lib/Paws/<Service>/.
pod:
	rm -rf lib/Paws/[A-Z]*
	$(PAWS_ROOT)/script/paws-build-pod \
	  --paws-root $(PAWS_ROOT) \
	  --output-root lib/

clean:
	rm -rf lib/Paws/[A-Z]* Paws-Docs-*.tar.gz .build

.PHONY: build pod clean
