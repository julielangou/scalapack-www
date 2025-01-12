
all: index release-2.1

index: index.txt
	asciidoc -a toc -a toc-title="Menu" index.txt
	scp index.html index.txt julie@netlib.org:websites/netlib/scalapack

release-2.1: scalapack-2.1.txt
	asciidoc -a toc -a toc-title="Menu" scalapack-2.1.txt
	scp scalapack-2.1.html scalapack-2.1.txt julie@netlib.org:websites/netlib/scalapack

html:
	tar cfvz explore-html-2.1.tgz explore-html
	scp explore-html-2.1.tgz julie@netlib.org:websites/netlib/scalapack

# Do not forget chmod a+r on new files
