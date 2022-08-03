import Danger
import DangerSwiftPeriphery

let result = DangerPeriphery.scan(arguments: {
    PeripheryArguments.reportExclude(["Sources/DangerSwiftPeripherySampleApp/DangerSwiftPeripherySampleApp.swift"])
    PeripheryArguments.cleanBuild
}, shouldComment: false)

switch result {
case let .success(warnings):
    if let warning = warnings.first {
        warn(message: warning.message, file: warning.filePath, line: warning.line)
    }
case let .failure(error):
    fail(error.localizedDescription)
}
