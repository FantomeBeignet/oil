(lang dune 3.7)

(name oil)

(generate_opam_files true)

(source
 (github FantomeBeignet/oil))

(authors "Tom Béné <himself@fantomebeig.net>")

(maintainers "Tom Béné <himself@fantomebeig.net>")

(license LICENSE)

(documentation https://github.com/FantomeBeignet/oil#readme)

(package
 (name oil)
 (synopsis "Ocaml Input Library")
 (description "Ocaml Input Library for pretty CLI apps")
 (depends ocaml dune)
 (tags
  (cli input prompt)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
