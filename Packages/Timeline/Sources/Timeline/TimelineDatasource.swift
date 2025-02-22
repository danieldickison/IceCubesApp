import Foundation
import Models

actor TimelineDatasource {
  private var statuses: [Status] = []

  var isEmpty: Bool {
    statuses.isEmpty
  }

  func get() -> [Status] {
    statuses
  }

  func reset() {
    statuses = []
  }

  func indexOf(statusId: String) -> Int? {
    statuses.firstIndex(where: { $0.id == statusId })
  }

  func contains(statusId: String) -> Bool {
    statuses.contains(where: { $0.id == statusId })
  }

  func set(_ statuses: [Status]) {
    self.statuses = statuses
  }

  func append(_ status: Status) {
    statuses.append(status)
  }

  func append(contentOf: [Status]) {
    statuses.append(contentsOf: contentOf)
  }

  func insert(_ status: Status, at: Int) {
    statuses.insert(status, at: at)
  }

  func insert(contentOf: [Status], at: Int) {
    statuses.insert(contentsOf: contentOf, at: at)
  }

  func replace(_ status: Status, at: Int) {
    statuses[at] = status
  }

  func remove(_ statusId: String) {
    statuses.removeAll(where: { $0.id == statusId })
  }
}
