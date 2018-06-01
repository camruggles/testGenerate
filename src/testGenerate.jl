module testGenerate

# package code goes here
function test()
	println("Testing to see if a generated package can work.")
	ccall((:hello, "../deps/open.so"), Void, ())
	
end

end # module


