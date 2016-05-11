import qbs 1.0

Project {
    qbsSearchPaths: "qbs"

    references: [
        "googletest/googletest.qbs",
        "googlemock/googlemock.qbs"
    ]
}
