# nim js -r -d:nodejs -d:release ex01_string_conversion
import std/[jsffi]
import asciidoctorjs


var adoc = Asciidoctorjs()
echo "----- not standalone example -----"
echo adoc.convert("Hello, _Asciidoctor_")
echo "----------------------------------\n\n"

echo "----- standalone example -----"
echo adoc.convert("*This* is Asciidoctor.", js{ "standalone": true })
echo "------------------------------"
