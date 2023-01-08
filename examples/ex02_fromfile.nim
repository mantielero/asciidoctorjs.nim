# nim js -r -d:nodejs -d:release ex02_fromfile
import std/[jsffi]
import asciidoctorjs

# This will create file: example.html
var adoc = Asciidoctorjs()
var doc = adoc.convertFile("example.adoc")

# This will store the string in the `html` variable; the css file will be linked
var html = adoc.convertFile("example.adoc", js{ "to_file": false, "standalone": true })
echo html

