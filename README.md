# Information

This is a simple Intepreter for Brainfuck written in Ruby.

I recently read Marc-Andre's [Create Your Own Prog Lang](http://createyourproglang.com/)
book (which is great, by the way) and wanted to test
out the knowledge gained on a simple language.

There is a lot of room for improvment, I'm aware, so if you have any suggestions just let me know.

# Installation

Right now it's extremely basic, I may or may not do improvements of the executable.

`hello.bf` (Extention does not matter)

```brainfuck
+++++ +++++ \n
>
H
+++++ +++++ +++++ +++++ +++++ +++++ +++++ +++++ +++++ +++++
+++++ +++++ +++++ +++++ ++
>
E
+++++ +++++ +++++ +++++ +++++ +++++ +++++ +++++ +++++ +++++
+++++ +++++ +++++ ++++
>
L
+++++ +++++ +++++ +++++ +++++ +++++ +++++ +++++ +++++ +++++
+++++ +++++ +++++ +++++ +++++ +
>
L
+++++ +++++ +++++ +++++ +++++ +++++ +++++ +++++ +++++ +++++
+++++ +++++ +++++ +++++ +++++ +
>
O
+++++ +++++ +++++ +++++ +++++ +++++ +++++ +++++ +++++ +++++
+++++ +++++ +++++ +++++ +++++ ++++
<<<<
.>.>.>.>. Print hello
<<<<<. Print \n
```

```
gem install brainfuck-rb
brainfuck file_with_brainfuck.bf
```
