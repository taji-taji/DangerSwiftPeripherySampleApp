public struct DangerSwiftPeripherySampleApp {
    public private(set) var text = "Hello, World!"

    public init() {
        let dummyStruct = DummyStruct()
        dummyStruct.usedFunc(unusedArgument: "")
    }
}

