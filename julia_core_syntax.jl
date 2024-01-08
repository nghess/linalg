#Notes from tutorial at https://www.youtube.com/watch?v=sE67bP2PnOo&ab_channel=DerekBanas

using Printf
using Statistics

s = 0
s = "Dog"

println(s)

function changeNum()
    x::Int8 = 10  #assert x is Int8
    x = 12
    print(12)
end

changeNum()

#BigFloat and BigInt exist if floating point precisiion isn't big enough, by default BigFloat goes to 256 bits

# Casting Types:

c2 = Char(111)  # Cast from Int to Char Ascii decimal 'o'
println(c2)

c2 = Char(0x7A)  # Ascii hex 'z'
println(c2)

f1 = parse(Float64, "1")  # Parse string as number (Float64)
println(f1)

i2 = parse(Int8, "1")  # Parse string as number (Int8)
println(i2)

# Strings:
s1 = "The quick brown fox did something\n"
println(length(s1))

println(s1[1])
println(s1[end])
