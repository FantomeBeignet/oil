open Fmt
module Io = Lwt_io

let prompt ?(symbol_fmt = const string) ?(symbol = "")
    ?(prefix_fmt = const string) ?(prefix = "") ?(prompt_fmt = string) title =
  set_style_renderer stdout `Ansi_tty;
  vbox
    (concat
       [ hbox (concat [ prefix_fmt prefix; prompt_fmt ]); symbol_fmt symbol ])
    stdout title;
  flush stdout ();
  Io.read_line Io.stdin

let prompt_opt ?(symbol_fmt = const string) ?(symbol = "")
    ?(prefix_fmt = const string) ?(prefix = "") ?(prompt_fmt = string) title =
  set_style_renderer stdout `Ansi_tty;
  vbox
    (concat
       [ hbox (concat [ prefix_fmt prefix; prompt_fmt ]); symbol_fmt symbol ])
    stdout title;
  flush stdout ();
  Io.read_line_opt Io.stdin
