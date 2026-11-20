use context starter2024

include file("resistor-color-trio.arr")

check "Orange and orange and black":
  colors = [list: "orange", "orange", "black"]
  expected = [string-dict: "value", 33, "unit", "ohms"]

  label(colors) is expected
end

check "Blue and grey and brown":
  colors = [list: "blue", "grey", "brown"]
  expected = [string-dict: "value", 680, "unit", "ohms"]

  label(colors) is expected
end

check "Red and black and red":
  colors = [list: "red", "black", "red"]
  expected = [string-dict: "value", 2, "unit", "kiloohms"]

  label(colors) is expected
end

check "Green and brown and orange":
  colors = [list: "green", "brown", "orange"]
  expected = [string-dict: "value", 51, "unit", "kiloohms"]

  label(colors) is expected
end

check "Yellow and violet and yellow":
  colors = [list: "yellow", "violet", "yellow"]
  expected = [string-dict: "value", 470, "unit", "kiloohms"]

  label(colors) is expected
end

check "Blue and violet and blue":
  colors = [list: "blue", "violet", "blue"]
  expected = [string-dict: "value", 67, "unit", "megaohms"]

  label(colors) is expected
end

check "Minimum possible value":
  colors = [list: "black", "black", "black"]
  expected = [string-dict: "value", 0, "unit", "ohms"]

  label(colors) is expected
end

check "Maximum possible value":
  colors = [list: "white", "white", "white"]
  expected = [string-dict: "value", 99, "unit", "gigaohms"]

  label(colors) is expected
end

check "First two colors make an invalid octal number":
  colors = [list: "black", "grey", "black"]
  expected = [string-dict: "value", 8, "unit", "ohms"]

  label(colors) is expected
end

check "Ignore extra colors":
  colors = [list: "blue", "green", "yellow", "orange"]
  expected = [string-dict: "value", 650, "unit", "kiloohms"]

  label(colors) is expected
end
