circle meta1.cxx && ./meta1
circle meta2.cxx && ./meta2
circle meta3.cxx && ./meta3
circle meta4.cxx && ./meta4
circle meta5.cxx && ./meta5
circle meta6.cxx && ./meta6 # circle meta6.cxx -S -emit-llvm && more meta6.ll
circle meta7.cxx && ./meta7
circle meta8.cxx && ./meta8
circle meta9.cxx && ./meta9 # circle meta9.cxx -S -emit-llvm && more meta9.ll

# typed enums
circle enum1.cxx && ./enum1
circle enum2.cxx && ./enum2
circle enum3.cxx && ./enum3
circle enum4.cxx && ./enum4
circle enum5.cxx && ./enum5

# dynamic packs
circle pack1.cxx && ./pack1
circle pack2.cxx && ./pack2
circle pack3.cxx && ./pack3
circle pack4.cxx && ./pack4
circle pack5.cxx && ./pack5

# universal member access
circle member1.cxx && ./member1
circle member2.cxx && ./member2

# shader stuff
circle -shader -emit-spirv -c shuffle.cxx -shader-entry-point comp && spirv-dis shuffle.spv | grep Shuffle
circle -shader -emit-spirv -c shader.cxx -shader-entry-point vert && spirv-dis shader.spv