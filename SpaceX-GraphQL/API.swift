// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class SpecificRocketQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query SpecificRocket {
      capsule(id: "C101") {
        __typename
        id
        dragon {
          __typename
          id
          active
          crew_capacity
          launch_payload_mass {
            __typename
            kg
            lb
          }
        }
      }
    }
    """

  public let operationName: String = "SpecificRocket"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("capsule", arguments: ["id": "C101"], type: .object(Capsule.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(capsule: Capsule? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "capsule": capsule.flatMap { (value: Capsule) -> ResultMap in value.resultMap }])
    }

    public var capsule: Capsule? {
      get {
        return (resultMap["capsule"] as? ResultMap).flatMap { Capsule(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "capsule")
      }
    }

    public struct Capsule: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Capsule"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(GraphQLID.self)),
          GraphQLField("dragon", type: .object(Dragon.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID? = nil, dragon: Dragon? = nil) {
        self.init(unsafeResultMap: ["__typename": "Capsule", "id": id, "dragon": dragon.flatMap { (value: Dragon) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID? {
        get {
          return resultMap["id"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var dragon: Dragon? {
        get {
          return (resultMap["dragon"] as? ResultMap).flatMap { Dragon(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "dragon")
        }
      }

      public struct Dragon: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Dragon"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .scalar(GraphQLID.self)),
            GraphQLField("active", type: .scalar(Bool.self)),
            GraphQLField("crew_capacity", type: .scalar(Int.self)),
            GraphQLField("launch_payload_mass", type: .object(LaunchPayloadMass.selections)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID? = nil, active: Bool? = nil, crewCapacity: Int? = nil, launchPayloadMass: LaunchPayloadMass? = nil) {
          self.init(unsafeResultMap: ["__typename": "Dragon", "id": id, "active": active, "crew_capacity": crewCapacity, "launch_payload_mass": launchPayloadMass.flatMap { (value: LaunchPayloadMass) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID? {
          get {
            return resultMap["id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var active: Bool? {
          get {
            return resultMap["active"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "active")
          }
        }

        public var crewCapacity: Int? {
          get {
            return resultMap["crew_capacity"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "crew_capacity")
          }
        }

        public var launchPayloadMass: LaunchPayloadMass? {
          get {
            return (resultMap["launch_payload_mass"] as? ResultMap).flatMap { LaunchPayloadMass(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "launch_payload_mass")
          }
        }

        public struct LaunchPayloadMass: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Mass"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("kg", type: .scalar(Int.self)),
              GraphQLField("lb", type: .scalar(Int.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(kg: Int? = nil, lb: Int? = nil) {
            self.init(unsafeResultMap: ["__typename": "Mass", "kg": kg, "lb": lb])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var kg: Int? {
            get {
              return resultMap["kg"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "kg")
            }
          }

          public var lb: Int? {
            get {
              return resultMap["lb"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "lb")
            }
          }
        }
      }
    }
  }
}
