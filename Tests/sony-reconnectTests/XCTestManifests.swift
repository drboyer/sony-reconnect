import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(sony_reconnectTests.allTests),
    ]
}
#endif
