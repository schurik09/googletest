import qbs

StaticLibrary {
    Depends { name: "cpp" }

    cpp.includePaths: [ ".", "../googletest", "include", "../googletest/include" ]
    cpp.systemIncludePaths: [ "include", "../googletest/include" ]

    cpp.cxxFlags: "-pthread"
    cpp.debugInformation: true

	Export {
		Depends { name: "cpp" }
		cpp.includePaths: product.cpp.includePaths
	    cpp.cxxFlags: product.cpp.cxxFlags
	}
}
