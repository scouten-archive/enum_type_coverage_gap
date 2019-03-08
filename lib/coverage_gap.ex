defmodule CoverageGap do
  use EnumType

  # The next five lines are marked as not reached by coverage tools.
  defenum ExampleType do
    value(ZERO, 0)
    value(ONE, 1)
    value(TWO, 2)
    value(THREE, 3)
  end

  def hello do
    CoverageGap.ExampleType.TWO.value()
  end
end
