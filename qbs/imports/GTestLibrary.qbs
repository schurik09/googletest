import qbs

StaticLibrary {
    Depends { name: "cpp" }

    cpp.includePaths: [ ".", "include" ]
    cpp.systemIncludePaths: "include"

    cpp.cxxFlags: "-pthread"
    cpp.debugInformation: true

	Export {
		Depends { name: "cpp" }
		cpp.includePaths: product.cpp.includePaths
	    cpp.cxxFlags: product.cpp.cxxFlags
	}
}
