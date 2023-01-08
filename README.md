# asciidoctorjs.nim
Bindings for asciidoctor.js

# Install
You are required to install [asciidoctor.js](https://github.com/asciidoctor/asciidoctor.js). You can install it globally by means of:
```sh
$ npm i -g asciidoctor
```

In order to install the bindings:
```sh
nimble install https://github.com/mantielero/asciidoctorjs.nim
```

# Use it
Create a file:
```nim title="example.nim"
import std/[jsffi]
import asciidoctorjs

var adoc = Asciidoctorjs()
echo adoc.convert("Hello, _Asciidoctor_")
```
and compile and execute it:
```sh
nim js -r -d:nodejs -d:release example
```
and you will get:
```html
<div class="paragraph">
<p>Hello, <em>Asciidoctor</em></p>
</div>
```