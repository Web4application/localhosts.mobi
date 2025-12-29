package main

// v0.1.0
// if the **context** missing, use `callerName(2)` as the context:

// v1.0.0
// if the **context** missing, use empty string as the context:

func main() {
	gettext.Gettext("hello")          
	// v0.1.0 => gettext.PGettext("main.main", "hello")
	// v1.0.0 => gettext.PGettext("", "hello")

	gettext.DGettext("domain", "hello")
	// v0.1.0 => gettext.DPGettext("domain", "main.main", "hello")
	// v1.0.0 => gettext.DPGettext("domain", "", "hello")

	gettext.NGettext("domain", "hello", "hello2", n)
	// v0.1.0 => gettext.PNGettext("domain", "main.main", "hello", "hello2", n)
	// v1.0.0 => gettext.PNGettext("domain", "", "hello", "hello2", n)

	gettext.DNGettext("domain", "hello", "hello2", n)
	// v0.1.0 => gettext.DPNGettext("domain", "main.main", "hello", "hello2", n)
	// v1.0.0 => gettext.DPNGettext("domain", "", "hello", "hello2", n)
}
type Gettexter interface {
	FileSystem() FileSystem

	GetDomain() string
	SetDomain(domain string) Gettexter

	GetLanguage() string
	SetLanguage(lang string) Gettexter

	Gettext(msgid string) string
	PGettext(msgctxt, msgid string) string

	NGettext(msgid, msgidPlural string, n int) string
	PNGettext(msgctxt, msgid, msgidPlural string, n int) string

	DGettext(domain, msgid string) string
	DPGettext(domain, msgctxt, msgid string) string
	DNGettext(domain, msgid, msgidPlural string, n int) string
	DPNGettext(domain, msgctxt, msgid, msgidPlural string, n int) string

	Getdata(name string) []byte
	DGetdata(domain, name string) []byte
}

func New(domain, path string, data ...interface{}) Gettexter
