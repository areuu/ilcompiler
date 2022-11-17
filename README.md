# ilcompiler

# build 
```bash 
opam init -a --disable-sandboxing
opam switch create 4.14.0
eval $(opam env --switch 4.14.0)

# flow require
opam install base 
opam install core_kernel 
opam install fileutils
opam install dtoa
opam install visitor

opam pin add -y flow_parser https://github.com/facebook/flow.git\#v0.192.0

```
next, need modify  `/home/uuu/.opam/4.14.0/.opam-switch/sources/flow_parser/flow_parser.opam` file 
```
...
depends: [
        "base" {build}
        "core_kernel" {build}
        "fileutils" {build}
        "dtoa" {build}
        "visitors" {build}
  "ocaml" {>= "4.14.0"}
  "ocamlfind" {build}
  "ocamlbuild" {build}
  "ppx_deriving" {build}
  "ppx_gen_rec" {build}
  "sedlex" {>= "2.3"}
  "wtf8"
]
...

```
after that, just type `make`



