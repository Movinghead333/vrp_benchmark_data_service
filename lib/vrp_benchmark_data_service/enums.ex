defmodule VrpBenchmarkDataService.Enums do
  use EnumType

  defenum PrecedenceType do
    value(OneToOne, "one-to-one")
    value(OneToMany, "one-to-many")
  end
end
