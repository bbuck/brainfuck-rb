class Parser

rule
  Program:
    /* nothing */                               { result = Nodes.new([]) }
  | Expressions                                 { result = val[0] }
  ;

  Expressions:
    Expression                                  { result = Nodes.new(val) }
  | Expressions Expression                      { result = val[0] << val[1] }
  ;

  Expression:
    Shift
  | Loop
  | InputOutput
  | Operation
  ;

  Shift:
    '>'                                   { result = ShiftNode.new(:right) }
  | '<'                                   { result = ShiftNode.new(:left) }
  ;

  Loop:
    '[' Expressions ']'              { result = LoopNode.new(val[1]) }
  ;

  InputOutput:
    ','                                   { result = ReadNode.new }
  | '.'                                   { result = PrintNode.new }
  ;

  Operation:
    '+'                                   { result = OperationNode.new(:incr) }
  | '-'                                   { result = OperationNode.new(:decr) }
  ;
end

---- header
  require "./lexer"
  require "./nodes"

---- inner
  def parse(code, show_tokens = false)
    @tokens = Lexer.tokenize(code)
    p @tokens if show_tokens
    do_parse
  end

  def next_token
    @tokens.shift
  end