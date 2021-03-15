defmodule B do
  use Boundary, deps: [A], exports: []

  A.Foo.tset()
end
