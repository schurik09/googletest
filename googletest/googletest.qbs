import qbs 1.0

Project {

    GTestLibrary {
        name: "gtest"

        files: [
            "src/gtest-all.cc",
        ]
    }

    GTestLibrary {
        name: "gtest_main"

        files: [
            "src/gtest_main.cc"
        ]

        Depends { name: "gtest" }
    }
}
