open Prompt

let sprompt_pacman =
  prompt
    ~prefix_fmt:(Fmt.const (Fmt.styled `Bold (Fmt.styled `Blue Fmt.string)))
    ~prefix:":: "
    ~symbol_fmt:(Fmt.const (Fmt.styled `Bold Fmt.string))
    ~symbol:"> "
    ~prompt_fmt:(Fmt.styled `Bold Fmt.string)

let sprompt_pacman_opt =
  prompt_opt
    ~prefix_fmt:(Fmt.const (Fmt.styled `Bold (Fmt.styled `Blue Fmt.string)))
    ~prefix:":: "
    ~symbol_fmt:(Fmt.const (Fmt.styled `Bold Fmt.string))
    ~symbol:"> "
    ~prompt_fmt:(Fmt.styled `Bold Fmt.string)
