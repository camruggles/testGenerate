module testGenerate

# package code goes here
function test()
	println("Testing to see if a generated package can work.")
	file = joinpath("$(Pkg.dir("testGenerate"))", "deps", "open.so")
	handle = Libdl.dlopen(file)
	
	funcPtr = Libdl.dlsym(handle, :hello)
	ccall(funcPtr, Void, ())
	
end

end # module

using testGenerate
testGenerate.test()
