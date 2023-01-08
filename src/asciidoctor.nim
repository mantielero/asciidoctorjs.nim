import std/[jsffi]

let
  AsciidoctorLib {.exportc.} = require("asciidoctor")

type  
  AsciidoctorObj* = JsObject

proc Asciidoctor*(): AsciidoctorObj {.importc:"AsciidoctorLib".}

converter toString*(val:JsObject):cstring =
  val.to(cstring)
