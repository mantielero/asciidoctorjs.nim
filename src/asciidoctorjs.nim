import std/[jsffi]

let
  AsciidoctorjsLib {.exportc.} = require("asciidoctor")

type  
  AsciidoctorjsObj* = JsObject

proc Asciidoctorjs*(): AsciidoctorjsObj {.importc:"AsciidoctorjsLib".}

converter toString*(val:JsObject):cstring =
  val.to(cstring)
