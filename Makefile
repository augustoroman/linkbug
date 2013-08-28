SHELL := /bin/bash
GO := go
GOOS := $(shell $(GO) env GOOS)
GOARCH := $(shell $(GO) env GOARCH)
LIBARCH := $(GOOS)_$(GOARCH)
LIBDIR := out/$(LIBARCH)
LIB := $(LIBDIR)/libbug.so

all: $(LIB)

$(LIB): linkbug.cc
	mkdir -p $(LIBDIR)
	g++ -fpic -shared linkbug.cc -o $(LIB)

clean:
	rm -rf $(LIBDIR)
