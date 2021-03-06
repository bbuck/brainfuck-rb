#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.9
# from Racc grammer file "".
#

require 'racc/parser.rb'

  require "lang/lexer"
  require "lang/nodes"

module Brainfuck

class Parser < Racc::Parser

module_eval(<<'...end grammer.y/module_eval...', 'grammer.y', 46)
  def parse(code, show_tokens = false)
    @tokens = Lexer.tokenize(code)
    p @tokens if show_tokens
    do_parse
  end

  def next_token
    @tokens.shift
  end
...end grammer.y/module_eval...
##### State transition tables begin ###

racc_action_table = [
     8,     9,    10,    18,    11,    12,    13,    14,     8,     9,
    10,    19,    11,    12,    13,    14,     8,     9,    10,    15,
    11,    12,    13,    14,     8,     9,    10,   nil,    11,    12,
    13,    14 ]

racc_action_check = [
     0,     0,     0,    15,     0,     0,     0,     0,    17,    17,
    17,    17,    17,    17,    17,    17,     2,     2,     2,     1,
     2,     2,     2,     2,    10,    10,    10,   nil,    10,    10,
    10,    10 ]

racc_action_pointer = [
    -2,    19,    14,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
    22,   nil,   nil,   nil,   nil,     3,   nil,     6,   nil,   nil ]

racc_action_default = [
    -1,   -16,    -2,    -3,    -5,    -6,    -7,    -8,    -9,   -10,
   -16,   -12,   -13,   -14,   -15,   -16,    -4,   -16,    20,   -11 ]

racc_goto_table = [
    16,     2,     1,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,    17,   nil,   nil,   nil,    16 ]

racc_goto_check = [
     3,     2,     1,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,     2,   nil,   nil,   nil,     3 ]

racc_goto_pointer = [
   nil,     2,     1,    -2,   nil,   nil,   nil,   nil ]

racc_goto_default = [
   nil,   nil,   nil,     3,     4,     5,     6,     7 ]

racc_reduce_table = [
  0, 0, :racc_error,
  0, 11, :_reduce_1,
  1, 11, :_reduce_2,
  1, 12, :_reduce_3,
  2, 12, :_reduce_4,
  1, 13, :_reduce_none,
  1, 13, :_reduce_none,
  1, 13, :_reduce_none,
  1, 13, :_reduce_none,
  1, 14, :_reduce_9,
  1, 14, :_reduce_10,
  3, 15, :_reduce_11,
  1, 16, :_reduce_12,
  1, 16, :_reduce_13,
  1, 17, :_reduce_14,
  1, 17, :_reduce_15 ]

racc_reduce_n = 16

racc_shift_n = 20

racc_token_table = {
  false => 0,
  :error => 1,
  ">" => 2,
  "<" => 3,
  "[" => 4,
  "]" => 5,
  "," => 6,
  "." => 7,
  "+" => 8,
  "-" => 9 }

racc_nt_base = 10

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "\">\"",
  "\"<\"",
  "\"[\"",
  "\"]\"",
  "\",\"",
  "\".\"",
  "\"+\"",
  "\"-\"",
  "$start",
  "Program",
  "Expressions",
  "Expression",
  "Shift",
  "Loop",
  "InputOutput",
  "Operation" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

module_eval(<<'.,.,', 'grammer.y', 4)
  def _reduce_1(val, _values, result)
     result = Nodes.new([])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 5)
  def _reduce_2(val, _values, result)
     result = val[0]
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 9)
  def _reduce_3(val, _values, result)
     result = Nodes.new(val)
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 10)
  def _reduce_4(val, _values, result)
     result = val[0] << val[1]
    result
  end
.,.,

# reduce 5 omitted

# reduce 6 omitted

# reduce 7 omitted

# reduce 8 omitted

module_eval(<<'.,.,', 'grammer.y', 21)
  def _reduce_9(val, _values, result)
     result = ShiftNode.new(:right)
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 22)
  def _reduce_10(val, _values, result)
     result = ShiftNode.new(:left)
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 26)
  def _reduce_11(val, _values, result)
     result = LoopNode.new(val[1])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 30)
  def _reduce_12(val, _values, result)
     result = ReadNode.new
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 31)
  def _reduce_13(val, _values, result)
     result = PrintNode.new
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 35)
  def _reduce_14(val, _values, result)
     result = OperationNode.new(:incr)
    result
  end
.,.,

module_eval(<<'.,.,', 'grammer.y', 36)
  def _reduce_15(val, _values, result)
     result = OperationNode.new(:decr)
    result
  end
.,.,

def _reduce_none(val, _values, result)
  val[0]
end

end   # class Parser

end # module Brainfuck
