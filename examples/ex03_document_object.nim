# nim js -r -d:nodejs -d:release ex02_fromfile
import std/[jsffi]
import asciidoctorjs

var adoc = Asciidoctorjs()


# This will create file: example.html
var doc = adoc.loadFile("example.adoc")

# https://asciidoctor.github.io/asciidoctor.js/2.2.5/#document
echo doc.getDocumentTitle()
doc.setTitle("New title")
echo doc.convert()

echo "\n\n----- show attributes -----"
var attributes = doc.getAttributes()  # FIX
for k in attributes.keys():
    echo k

# From a string
var newDoc = adoc.load("Hello, _Asciidoctor_")
