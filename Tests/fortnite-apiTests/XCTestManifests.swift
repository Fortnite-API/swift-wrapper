import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(fortnite_apiTests.allTests),
    ]
}
#endif
