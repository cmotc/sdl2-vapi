dummy:
	echo "run make deb-pkg to create a deb"
	echo "run make install to install to /usr/share/vala/vapi"

install:
	mkdir -p "/usr/share/vala/vapi/" "/usr/share/vala/vapi-0.26/" "/usr/share/vala/vapi-0.34/"
	cp ./*.vapi "/usr/share/vala/vapi/" -R --force ; \
		cp ./*.vapi "/usr/share/vala/vapi-0.26/" -R --force ; \
		cp ./*.vapi "/usr/share/vala/vapi-0.34/" -R --force
	cp ./*.deps "/usr/share/vala/vapi/" -R --force ; \
		cp ./*.deps "/usr/share/vala/vapi-0.26/" -R --force ; \
		cp ./*.deps "/usr/share/vala/vapi-0.34/" -R --force

clean:
	rm *tgz \
		*deb

deb-pkg:
	checkinstall --install=no \
		--deldoc=yes \
		--deldesc=yes \
		--delspec=yes \
		--default \
		--pkgname="sdl2-vapi" \
		--pkgversion="2.0" \
		--pakdir=../

