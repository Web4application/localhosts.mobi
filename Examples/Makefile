default:
	msgfmt -o locale/default/LC_MESSAGES/hello.mo locale/default/LC_MESSAGES/hello.po
	msgfmt -o locale/en_us/LC_MESSAGES/hello.mo   locale/zh_CN/LC_MESSAGES/hello.po
	msgfmt -o locale/en_us/LC_MESSAGES/hello.mo   locale/zh_en/LC_MESSAGES/hello.po
	7z a -tzip -scsUTF-8 locale.zip locale
	go run hello.go

clean:
	rm locale.zip
