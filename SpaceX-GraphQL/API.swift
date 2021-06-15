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

public final class FetchRocketQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query FetchRocket($id: ID!) {
      capsule(id: $id) {
        __typename
        dragon {
          __typename
          active
          launch_payload_mass {
            __typename
            kg
            lb
          }
          id
          crew_capacity
          launch_payload_vol {
            __typename
            cubic_feet
            cubic_meters
          }
          name
          orbit_duration_yr
          pressurized_capsule {
            __typename
            payload_volume {
              __typename
              cubic_feet
              cubic_meters
            }
          }
          return_payload_mass {
            __typename
            kg
            lb
          }
          return_payload_vol {
            __typename
            cubic_feet
            cubic_meters
          }
          sidewall_angle_deg
          thrusters {
            __typename
            amount
            fuel_1
            fuel_2
            pods
            thrust {
              __typename
              kN
              lbf
            }
            type
          }
          trunk {
            __typename
            cargo {
              __typename
              solar_array
              unpressurized_cargo
            }
            trunk_volume {
              __typename
              cubic_feet
              cubic_meters
            }
          }
          type
          wikipedia
        }
        landings
        missions {
          __typename
          flight
          name
        }
        id
        original_launch
        reuse_count
        status
        type
      }
    }
    """

  public let operationName: String = "FetchRocket"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("capsule", arguments: ["id": GraphQLVariable("id")], type: .object(Capsule.selections)),
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
          GraphQLField("dragon", type: .object(Dragon.selections)),
          GraphQLField("landings", type: .scalar(Int.self)),
          GraphQLField("missions", type: .list(.object(Mission.selections))),
          GraphQLField("id", type: .scalar(GraphQLID.self)),
          GraphQLField("original_launch", type: .scalar(String.self)),
          GraphQLField("reuse_count", type: .scalar(Int.self)),
          GraphQLField("status", type: .scalar(String.self)),
          GraphQLField("type", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(dragon: Dragon? = nil, landings: Int? = nil, missions: [Mission?]? = nil, id: GraphQLID? = nil, originalLaunch: String? = nil, reuseCount: Int? = nil, status: String? = nil, type: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Capsule", "dragon": dragon.flatMap { (value: Dragon) -> ResultMap in value.resultMap }, "landings": landings, "missions": missions.flatMap { (value: [Mission?]) -> [ResultMap?] in value.map { (value: Mission?) -> ResultMap? in value.flatMap { (value: Mission) -> ResultMap in value.resultMap } } }, "id": id, "original_launch": originalLaunch, "reuse_count": reuseCount, "status": status, "type": type])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
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

      public var landings: Int? {
        get {
          return resultMap["landings"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "landings")
        }
      }

      public var missions: [Mission?]? {
        get {
          return (resultMap["missions"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Mission?] in value.map { (value: ResultMap?) -> Mission? in value.flatMap { (value: ResultMap) -> Mission in Mission(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Mission?]) -> [ResultMap?] in value.map { (value: Mission?) -> ResultMap? in value.flatMap { (value: Mission) -> ResultMap in value.resultMap } } }, forKey: "missions")
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

      public var originalLaunch: String? {
        get {
          return resultMap["original_launch"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "original_launch")
        }
      }

      public var reuseCount: Int? {
        get {
          return resultMap["reuse_count"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "reuse_count")
        }
      }

      public var status: String? {
        get {
          return resultMap["status"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "status")
        }
      }

      public var type: String? {
        get {
          return resultMap["type"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "type")
        }
      }

      public struct Dragon: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Dragon"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("active", type: .scalar(Bool.self)),
            GraphQLField("launch_payload_mass", type: .object(LaunchPayloadMass.selections)),
            GraphQLField("id", type: .scalar(GraphQLID.self)),
            GraphQLField("crew_capacity", type: .scalar(Int.self)),
            GraphQLField("launch_payload_vol", type: .object(LaunchPayloadVol.selections)),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("orbit_duration_yr", type: .scalar(Int.self)),
            GraphQLField("pressurized_capsule", type: .object(PressurizedCapsule.selections)),
            GraphQLField("return_payload_mass", type: .object(ReturnPayloadMass.selections)),
            GraphQLField("return_payload_vol", type: .object(ReturnPayloadVol.selections)),
            GraphQLField("sidewall_angle_deg", type: .scalar(Double.self)),
            GraphQLField("thrusters", type: .list(.object(Thruster.selections))),
            GraphQLField("trunk", type: .object(Trunk.selections)),
            GraphQLField("type", type: .scalar(String.self)),
            GraphQLField("wikipedia", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(active: Bool? = nil, launchPayloadMass: LaunchPayloadMass? = nil, id: GraphQLID? = nil, crewCapacity: Int? = nil, launchPayloadVol: LaunchPayloadVol? = nil, name: String? = nil, orbitDurationYr: Int? = nil, pressurizedCapsule: PressurizedCapsule? = nil, returnPayloadMass: ReturnPayloadMass? = nil, returnPayloadVol: ReturnPayloadVol? = nil, sidewallAngleDeg: Double? = nil, thrusters: [Thruster?]? = nil, trunk: Trunk? = nil, type: String? = nil, wikipedia: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Dragon", "active": active, "launch_payload_mass": launchPayloadMass.flatMap { (value: LaunchPayloadMass) -> ResultMap in value.resultMap }, "id": id, "crew_capacity": crewCapacity, "launch_payload_vol": launchPayloadVol.flatMap { (value: LaunchPayloadVol) -> ResultMap in value.resultMap }, "name": name, "orbit_duration_yr": orbitDurationYr, "pressurized_capsule": pressurizedCapsule.flatMap { (value: PressurizedCapsule) -> ResultMap in value.resultMap }, "return_payload_mass": returnPayloadMass.flatMap { (value: ReturnPayloadMass) -> ResultMap in value.resultMap }, "return_payload_vol": returnPayloadVol.flatMap { (value: ReturnPayloadVol) -> ResultMap in value.resultMap }, "sidewall_angle_deg": sidewallAngleDeg, "thrusters": thrusters.flatMap { (value: [Thruster?]) -> [ResultMap?] in value.map { (value: Thruster?) -> ResultMap? in value.flatMap { (value: Thruster) -> ResultMap in value.resultMap } } }, "trunk": trunk.flatMap { (value: Trunk) -> ResultMap in value.resultMap }, "type": type, "wikipedia": wikipedia])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
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

        public var launchPayloadMass: LaunchPayloadMass? {
          get {
            return (resultMap["launch_payload_mass"] as? ResultMap).flatMap { LaunchPayloadMass(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "launch_payload_mass")
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

        public var crewCapacity: Int? {
          get {
            return resultMap["crew_capacity"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "crew_capacity")
          }
        }

        public var launchPayloadVol: LaunchPayloadVol? {
          get {
            return (resultMap["launch_payload_vol"] as? ResultMap).flatMap { LaunchPayloadVol(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "launch_payload_vol")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var orbitDurationYr: Int? {
          get {
            return resultMap["orbit_duration_yr"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "orbit_duration_yr")
          }
        }

        public var pressurizedCapsule: PressurizedCapsule? {
          get {
            return (resultMap["pressurized_capsule"] as? ResultMap).flatMap { PressurizedCapsule(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "pressurized_capsule")
          }
        }

        public var returnPayloadMass: ReturnPayloadMass? {
          get {
            return (resultMap["return_payload_mass"] as? ResultMap).flatMap { ReturnPayloadMass(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "return_payload_mass")
          }
        }

        public var returnPayloadVol: ReturnPayloadVol? {
          get {
            return (resultMap["return_payload_vol"] as? ResultMap).flatMap { ReturnPayloadVol(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "return_payload_vol")
          }
        }

        public var sidewallAngleDeg: Double? {
          get {
            return resultMap["sidewall_angle_deg"] as? Double
          }
          set {
            resultMap.updateValue(newValue, forKey: "sidewall_angle_deg")
          }
        }

        public var thrusters: [Thruster?]? {
          get {
            return (resultMap["thrusters"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Thruster?] in value.map { (value: ResultMap?) -> Thruster? in value.flatMap { (value: ResultMap) -> Thruster in Thruster(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Thruster?]) -> [ResultMap?] in value.map { (value: Thruster?) -> ResultMap? in value.flatMap { (value: Thruster) -> ResultMap in value.resultMap } } }, forKey: "thrusters")
          }
        }

        public var trunk: Trunk? {
          get {
            return (resultMap["trunk"] as? ResultMap).flatMap { Trunk(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "trunk")
          }
        }

        public var type: String? {
          get {
            return resultMap["type"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "type")
          }
        }

        public var wikipedia: String? {
          get {
            return resultMap["wikipedia"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "wikipedia")
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

        public struct LaunchPayloadVol: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Volume"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("cubic_feet", type: .scalar(Int.self)),
              GraphQLField("cubic_meters", type: .scalar(Int.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(cubicFeet: Int? = nil, cubicMeters: Int? = nil) {
            self.init(unsafeResultMap: ["__typename": "Volume", "cubic_feet": cubicFeet, "cubic_meters": cubicMeters])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var cubicFeet: Int? {
            get {
              return resultMap["cubic_feet"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "cubic_feet")
            }
          }

          public var cubicMeters: Int? {
            get {
              return resultMap["cubic_meters"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "cubic_meters")
            }
          }
        }

        public struct PressurizedCapsule: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["DragonPressurizedCapsule"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("payload_volume", type: .object(PayloadVolume.selections)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(payloadVolume: PayloadVolume? = nil) {
            self.init(unsafeResultMap: ["__typename": "DragonPressurizedCapsule", "payload_volume": payloadVolume.flatMap { (value: PayloadVolume) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var payloadVolume: PayloadVolume? {
            get {
              return (resultMap["payload_volume"] as? ResultMap).flatMap { PayloadVolume(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "payload_volume")
            }
          }

          public struct PayloadVolume: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["Volume"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("cubic_feet", type: .scalar(Int.self)),
                GraphQLField("cubic_meters", type: .scalar(Int.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(cubicFeet: Int? = nil, cubicMeters: Int? = nil) {
              self.init(unsafeResultMap: ["__typename": "Volume", "cubic_feet": cubicFeet, "cubic_meters": cubicMeters])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var cubicFeet: Int? {
              get {
                return resultMap["cubic_feet"] as? Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "cubic_feet")
              }
            }

            public var cubicMeters: Int? {
              get {
                return resultMap["cubic_meters"] as? Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "cubic_meters")
              }
            }
          }
        }

        public struct ReturnPayloadMass: GraphQLSelectionSet {
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

        public struct ReturnPayloadVol: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Volume"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("cubic_feet", type: .scalar(Int.self)),
              GraphQLField("cubic_meters", type: .scalar(Int.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(cubicFeet: Int? = nil, cubicMeters: Int? = nil) {
            self.init(unsafeResultMap: ["__typename": "Volume", "cubic_feet": cubicFeet, "cubic_meters": cubicMeters])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var cubicFeet: Int? {
            get {
              return resultMap["cubic_feet"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "cubic_feet")
            }
          }

          public var cubicMeters: Int? {
            get {
              return resultMap["cubic_meters"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "cubic_meters")
            }
          }
        }

        public struct Thruster: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["DragonThrust"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("amount", type: .scalar(Int.self)),
              GraphQLField("fuel_1", type: .scalar(String.self)),
              GraphQLField("fuel_2", type: .scalar(String.self)),
              GraphQLField("pods", type: .scalar(Int.self)),
              GraphQLField("thrust", type: .object(Thrust.selections)),
              GraphQLField("type", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(amount: Int? = nil, fuel_1: String? = nil, fuel_2: String? = nil, pods: Int? = nil, thrust: Thrust? = nil, type: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "DragonThrust", "amount": amount, "fuel_1": fuel_1, "fuel_2": fuel_2, "pods": pods, "thrust": thrust.flatMap { (value: Thrust) -> ResultMap in value.resultMap }, "type": type])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var amount: Int? {
            get {
              return resultMap["amount"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "amount")
            }
          }

          public var fuel_1: String? {
            get {
              return resultMap["fuel_1"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "fuel_1")
            }
          }

          public var fuel_2: String? {
            get {
              return resultMap["fuel_2"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "fuel_2")
            }
          }

          public var pods: Int? {
            get {
              return resultMap["pods"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "pods")
            }
          }

          public var thrust: Thrust? {
            get {
              return (resultMap["thrust"] as? ResultMap).flatMap { Thrust(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "thrust")
            }
          }

          public var type: String? {
            get {
              return resultMap["type"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "type")
            }
          }

          public struct Thrust: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["Force"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("kN", type: .scalar(Double.self)),
                GraphQLField("lbf", type: .scalar(Double.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(kN: Double? = nil, lbf: Double? = nil) {
              self.init(unsafeResultMap: ["__typename": "Force", "kN": kN, "lbf": lbf])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var kN: Double? {
              get {
                return resultMap["kN"] as? Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "kN")
              }
            }

            public var lbf: Double? {
              get {
                return resultMap["lbf"] as? Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "lbf")
              }
            }
          }
        }

        public struct Trunk: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["DragonTrunk"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("cargo", type: .object(Cargo.selections)),
              GraphQLField("trunk_volume", type: .object(TrunkVolume.selections)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(cargo: Cargo? = nil, trunkVolume: TrunkVolume? = nil) {
            self.init(unsafeResultMap: ["__typename": "DragonTrunk", "cargo": cargo.flatMap { (value: Cargo) -> ResultMap in value.resultMap }, "trunk_volume": trunkVolume.flatMap { (value: TrunkVolume) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var cargo: Cargo? {
            get {
              return (resultMap["cargo"] as? ResultMap).flatMap { Cargo(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "cargo")
            }
          }

          public var trunkVolume: TrunkVolume? {
            get {
              return (resultMap["trunk_volume"] as? ResultMap).flatMap { TrunkVolume(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "trunk_volume")
            }
          }

          public struct Cargo: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["DragonTrunkCargo"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("solar_array", type: .scalar(Int.self)),
                GraphQLField("unpressurized_cargo", type: .scalar(Bool.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(solarArray: Int? = nil, unpressurizedCargo: Bool? = nil) {
              self.init(unsafeResultMap: ["__typename": "DragonTrunkCargo", "solar_array": solarArray, "unpressurized_cargo": unpressurizedCargo])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var solarArray: Int? {
              get {
                return resultMap["solar_array"] as? Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "solar_array")
              }
            }

            public var unpressurizedCargo: Bool? {
              get {
                return resultMap["unpressurized_cargo"] as? Bool
              }
              set {
                resultMap.updateValue(newValue, forKey: "unpressurized_cargo")
              }
            }
          }

          public struct TrunkVolume: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["Volume"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("cubic_feet", type: .scalar(Int.self)),
                GraphQLField("cubic_meters", type: .scalar(Int.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(cubicFeet: Int? = nil, cubicMeters: Int? = nil) {
              self.init(unsafeResultMap: ["__typename": "Volume", "cubic_feet": cubicFeet, "cubic_meters": cubicMeters])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var cubicFeet: Int? {
              get {
                return resultMap["cubic_feet"] as? Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "cubic_feet")
              }
            }

            public var cubicMeters: Int? {
              get {
                return resultMap["cubic_meters"] as? Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "cubic_meters")
              }
            }
          }
        }
      }

      public struct Mission: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["CapsuleMission"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("flight", type: .scalar(Int.self)),
            GraphQLField("name", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(flight: Int? = nil, name: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "CapsuleMission", "flight": flight, "name": name])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var flight: Int? {
          get {
            return resultMap["flight"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "flight")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }
      }
    }
  }
}
