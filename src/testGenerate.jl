module testGenerate

# package code goes here
function test()
	println("Testing to see if a generated package can work.")
	file = joinpath("$(Pkg.dir("testGenerate"))", "deps", "open.so")
	ccall((:hello, file), Void, ())
	
end

end # module


