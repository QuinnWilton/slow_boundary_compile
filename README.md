# SlowBoundaryCompile

This is intended as a reproduction of https://github.com/sasa1977/boundary/issues/33

## Reproduction Steps

1. `mix deps.get`
2. `mix deps.compile`
3. `mix compile` (You'll see "Compiling 3 files (.ex)")
4. `mix compile` (You'll still see "Compiling 3 files (.ex)")
5. Change line 4 of `B` to `A.Foo.test()`
6. `mix compile` (You'll see "Compiling 3 files (.ex)")
7. After line 4 of `B`, insert another `A.Foo.test()`
8. `mix compile` (You'll see "Compiling 1 file (.ex)")

I would have expected step 4 to also only compile a single file, since `A` and `A.Foo` should have already been compiled (as is demonstrated by step 8).
