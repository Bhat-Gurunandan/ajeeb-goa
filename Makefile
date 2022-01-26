# Usage:
# make        # compile all binary
# make clean  # remove ALL binaries and objects

.PHONY = all clean

PANDOC = pandoc
EPUBDIR = epub

EBOOKDIR = ${EPUBDIR}/ebook
TEMPLATE = ${EPUBDIR}/template.xhtml
XHTMLDIR = ${EBOOKDIR}/OEBPS
MARKDOWNDIR = markdown
PANDOCFLAGS = -f gfm -t html --template ${TEMPLATE}

SRCS := $(wildcard *.md)
BINS := $(SRCS:%.md=%.xhtml)

all: ${BINS}

%: %.o
        @echo "Checking.."
        ${CC} ${LINKERFLAG} $< -o $@

%.o: %.c
        @echo "Creating object.."
        ${CC} -c $<

clean:
        @echo "Cleaning up..."
        rm -rvf *.o ${BINS}
