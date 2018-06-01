module testGenerate

# package code goes here
function test()
	println("Testing to see if a generated package can work.")
	file = Pkg.dir("testGenerate")
	ccall((:hello, "$file/deps/open.so"), Void, ())
	
end

end # module


