// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import Foundation
@testable import amplify_datastore

extension ModelSchema: Equatable {
    public static func == (lhs: ModelSchema, rhs: ModelSchema) -> Bool {
        return
            lhs.name == rhs.name &&
            lhs.pluralName == rhs.pluralName &&
            lhs.authRules == rhs.authRules &&
            lhs.fields == rhs.fields && lhs.attributes == rhs.attributes
    }
}

extension AuthRule: Equatable {
    public static func == (lhs: AuthRule, rhs: AuthRule) -> Bool {
        return
            lhs.allow == rhs.allow &&
            lhs.ownerField == rhs.ownerField &&
            lhs.identityClaim == rhs.identityClaim &&
            lhs.groupClaim == rhs.groupClaim &&
            lhs.groups == rhs.groups &&
            lhs.groupsField == rhs.groupsField &&
            lhs.operations.containsSameElements(as: rhs.operations)
    }
}

extension ModelOperation: Comparable {
    public static func < (lhs: ModelOperation, rhs: ModelOperation) -> Bool {
        return String(describing: lhs) < String(describing: rhs)
    }

    public static func == (lhs: ModelOperation, rhs: ModelOperation) -> Bool {
        return String(describing: lhs) < String(describing: rhs)
    }
}

extension ModelField: Equatable {
    public static func == (lhs: ModelField, rhs: ModelField) -> Bool {
        return
            lhs.name == rhs.name &&
            lhs.type == rhs.type
    }
}

extension ModelFieldType: Equatable {
    public static func == (lhs: ModelFieldType, rhs: ModelFieldType) -> Bool {
        switch (lhs, rhs) {
            case (.string, .string):
                return true
            case (.int, .int):
                return true
            case (.double, .double):
                return true
            case (.date, .date):
                return true
            case (.dateTime, .dateTime):
                return true
            case (.time, .time):
                return true
            case (.timestamp, .timestamp):
                return true
            case (.bool, .bool):
                return true
            case (let .enum(enumTypeA), let .enum(enumTypeB)):
                return enumTypeA == enumTypeB
            /*
            case (let .embedded(embeddedTypeA, embeddedSchemaA), let .embedded(embeddedTypeB, embeddedSchemaB)):
                return embeddedTypeA == embeddedTypeB && embeddedSchemaA == embeddedSchemaB
            }
            case (
                let .embeddedCollection(embeddedCollectionOfA, embeddedCollectionSchemaA),
                let .embeddedCollection(embeddedCollectionOfB, embeddedCollectionSchemaB)):
                return embeddedCollectionOfA == embeddedCollectionOfB && embeddedCollectionSchemaA == embeddedCollectionSchemaB
            */
            case (let .model(modelNameA), let .model(modelNameB)):
                return modelNameA == modelNameB
            case (let .collection(collectionOfA), let .collection(collectionOfB)):
                return collectionOfA == collectionOfB
            default:
                return false
        }
    }
}

extension Array where Element: Comparable {
    func containsSameElements(as other: [Element]) -> Bool {
        return count == other.count && sorted() == other.sorted()
    }
}
