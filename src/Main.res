@module("./style.css") external style: unit = "default"
open Webapi.Dom

let element = document->Document.getElementById("root")

switch element {
| Some(e) => {
    let node = Webapi.Dom.Element.asNode(e)
    let app = Js.Null_undefined.return(node)
    let _ = App.main(app, ())
  }
| None => ()
}
