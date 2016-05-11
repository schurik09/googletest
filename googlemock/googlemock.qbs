import qbs 1.0

Project {

    GMockLibrary {
        name: "gmock"

        files: [
            "../googletest/src/gtest-all.cc",
            "src/gmock-all.cc"
        ]
    }

    GMockLibrary {
        name: "gmock_main"

        files: [
            "src/gmock_main.cc"
        ]

        Depends { name: "gmock" }
    }
}
