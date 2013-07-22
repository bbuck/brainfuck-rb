Gem::Specification.new do |s|
  s.name = "brainfuck-rb"
  s.version = "1.0.0"
  s.license = "MIT"
  s.date = "2013-07-22"
  s.summary = "Brainfuck interpreter written in Ruby"
  s.description = "Small and simple Brainfuck interpreter written in Ruby"
  s.authors = ["Brandon Buck"]
  s.email = 'lordizuriel@gmail.com'
  s.files = [
    "lib/brainfuck-rb.rb",
    "lib/lang/lexer.rb",
    "lib/lang/parser.rb",
    "lib/lang/nodes.rb",
    "lib/lang/parser.rb",
    "lib/lang/runtime.rb",
    "lib/lang/interpreter.rb"
  ]
  s.homepage = "http://github.com/bbuck/brainfuck-rb"
  s.executables << 'brainfuck'
end
