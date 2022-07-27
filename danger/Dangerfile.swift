import Danger
import DangerSwiftPeriphery

DangerPeriphery.scan {
    PeripheryArguments.reportExclude(["Sources/DangerSwiftPeripherySampleApp/DangerSwiftPeripherySampleApp.swift"])
    PeripheryArguments.cleanBuild
}
