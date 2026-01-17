// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let jGodotExtensionAPI = try? JSONDecoder().decode(JGodotExtensionAPI.self, from: jsonData)

import Foundation

/*
MODIFICATION - adding custom enums, adding typealiases for use outside this script
***************************************
*/
public enum JGodotMemberMeta: String, Codable {
    case basis = "Basis"
    case double = "double"
    case float = "float"
    case int32 = "int32"
    case vector2 = "Vector2"
    case vector2I = "Vector2i"
    case vector3 = "Vector3"
    case vector4 = "Vector4"
}

public enum JGodotTypeEnum: String, Codable {
    case aabb = "AABB"
    case basis = "Basis"
    case color = "Color"
    case int = "int"
    case plane = "Plane"
    case projection = "Projection"
    case quaternion = "Quaternion"
    case rect2 = "Rect2"
    case rect2I = "Rect2i"
    case transform2D = "Transform2D"
    case transform3D = "Transform3D"
    case vector2 = "Vector2"
    case vector2I = "Vector2i"
    case vector3 = "Vector3"
    case vector3I = "Vector3i"
    case vector4 = "Vector4"
    case vector4I = "Vector4i"
}

public typealias JGodotArgument = _JGodotArgument
public typealias JGodotArgumentMeta = _JGodotMeta
public typealias JGodotBuiltinClassConstant = _JGodotMemberElement
public typealias JGodotBuiltinClass = _JGodotBuiltinClass
public typealias JGodotBuiltinClassMemberOffset = _JGodotBuiltinClassMemberOffset
public typealias JGodotBuiltinClassMemberOffsetClass = _JGodotBuiltinClassMemberOffsetClass
public typealias JGodotBuiltinClassMethod = _JGodotBuiltinClassMethod
public typealias JGodotClassMethod = _JGodotClassMethod
public typealias JGodotConstructor = _JGodotConstructor
public typealias JGodotExtensionAPI = _JGodotExtensionAPI
public typealias JGodotExtensionAPIClass = _JGodotExtensionAPIClass
public typealias JGodotGlobalEnumElement = _JGodotGlobalEnumElement
public typealias JGodotMember = _JGodotMember
public typealias JGodotNativeStructure = _JGodotNativeStructure
public typealias JGodotProperty = _JGodotProperty
public typealias JGodotReturnValue = _JGodotReturnValue
public typealias JGodotSignal = _JGodotSignal
public typealias JGodotSize = _JGodotSize
public typealias JGodotUtilityFunction = _JGodotUtilityFunction
public typealias JGodotValueElement = _JGodotValueElement
/*
END modifications
***************************************
*/


// MARK: - _JGodotExtensionAPI
public struct _JGodotExtensionAPI: Codable {
    public let header: _JGodotHeader
    public let builtinClassSizes: [_JGodotBuiltinClassSize]
    public let builtinClassMemberOffsets: [_JGodotBuiltinClassMemberOffset]
    public let globalConstants: [JSONAny]
    public let globalEnums: [_JGodotGlobalEnumElement]
    public let utilityFunctions: [_JGodotUtilityFunction]
    public let builtinClasses: [_JGodotBuiltinClass]
    public let classes: [_JGodotExtensionAPIClass]
    //MODIFICATION - _JGodotSingleton to _JGodotArgument
    public let singletons: [_JGodotArgument]
    public let nativeStructures: [_JGodotNativeStructure]

    //MODIFICATION - public removed
    enum CodingKeys: String, CodingKey {
        case header
        case builtinClassSizes = "builtin_class_sizes"
        case builtinClassMemberOffsets = "builtin_class_member_offsets"
        case globalConstants = "global_constants"
        case globalEnums = "global_enums"
        case utilityFunctions = "utility_functions"
        case builtinClasses = "builtin_classes"
        case classes, singletons
        case nativeStructures = "native_structures"
    }

    //MODIFICATION - _JGodotSingleton to _JGodotArgument
    public init(header: _JGodotHeader, builtinClassSizes: [_JGodotBuiltinClassSize], builtinClassMemberOffsets: [_JGodotBuiltinClassMemberOffset], globalConstants: [JSONAny], globalEnums: [_JGodotGlobalEnumElement], utilityFunctions: [_JGodotUtilityFunction], builtinClasses: [_JGodotBuiltinClass], classes: [_JGodotExtensionAPIClass], singletons: [_JGodotArgument], nativeStructures: [_JGodotNativeStructure]) {
        self.header = header
        self.builtinClassSizes = builtinClassSizes
        self.builtinClassMemberOffsets = builtinClassMemberOffsets
        self.globalConstants = globalConstants
        self.globalEnums = globalEnums
        self.utilityFunctions = utilityFunctions
        self.builtinClasses = builtinClasses
        self.classes = classes
        self.singletons = singletons
        self.nativeStructures = nativeStructures
    }
}

// MARK: - _JGodotBuiltinClassMemberOffset
public struct _JGodotBuiltinClassMemberOffset: Codable {
    public let buildConfiguration: String
    public let classes: [_JGodotBuiltinClassMemberOffsetClass]

    //MODIFICATION - public removed
    enum CodingKeys: String, CodingKey {
        case buildConfiguration = "build_configuration"
        case classes
    }

    public init(buildConfiguration: String, classes: [_JGodotBuiltinClassMemberOffsetClass]) {
        self.buildConfiguration = buildConfiguration
        self.classes = classes
    }
}

// MARK: - _JGodotBuiltinClassMemberOffsetClass
public struct _JGodotBuiltinClassMemberOffsetClass: Codable {
    //MODIFICATION - _JGodotIndexingReturnType to JGodotTypeEnum
    public let name: JGodotTypeEnum
    public let members: [_JGodotMember]

    //MODIFICATION - _JGodotIndexingReturnType to JGodotTypeEnum
    public init(name: JGodotTypeEnum, members: [_JGodotMember]) {
        self.name = name
        self.members = members
    }
}

// MARK: - _JGodotMember
public struct _JGodotMember: Codable {
    public let member: String
    public let offset: Int
    //MODIFICATION - _JGodotIndexingReturnType to JGodotMemberMeta
    public let meta: JGodotMemberMeta

    //MODIFICATION - _JGodotIndexingReturnType to JGodotMemberMeta
    public init(member: String, offset: Int, meta: JGodotMemberMeta) {
        self.member = member
        self.offset = offset
        self.meta = meta
    }
}

//Note: class unused. Replaced by JGodotMemberMeta and JGodotTypeEnum.
public enum _JGodotIndexingReturnType: String, Codable {
    case aabb = "AABB"
    case basis = "Basis"
    case color = "Color"
    case double = "double"
    case float = "float"
    case int = "int"
    case int32 = "int32"
    case plane = "Plane"
    case projection = "Projection"
    case quaternion = "Quaternion"
    case rect2 = "Rect2"
    case rect2I = "Rect2i"
    case string = "String"
    case transform2D = "Transform2D"
    case transform3D = "Transform3D"
    case variant = "Variant"
    case vector2 = "Vector2"
    case vector2I = "Vector2i"
    case vector3 = "Vector3"
    case vector3I = "Vector3i"
    case vector4 = "Vector4"
    case vector4I = "Vector4i"
}

// MARK: - _JGodotBuiltinClassSize
public struct _JGodotBuiltinClassSize: Codable {
    public let buildConfiguration: String
    public let sizes: [_JGodotSize]

    //MODIFICATION - public removed
    enum CodingKeys: String, CodingKey {
        case buildConfiguration = "build_configuration"
        case sizes
    }

    public init(buildConfiguration: String, sizes: [_JGodotSize]) {
        self.buildConfiguration = buildConfiguration
        self.sizes = sizes
    }
}

// MARK: - _JGodotSize
public struct _JGodotSize: Codable {
    public let name: String
    public let size: Int

    public init(name: String, size: Int) {
        self.name = name
        self.size = size
    }
}

// MARK: - _JGodotBuiltinClass
public struct _JGodotBuiltinClass: Codable {
    public let name: String
    public let isKeyed: Bool
    public let operators: [_JGodotOperator]
    public let constructors: [_JGodotConstructor]
    public let hasDestructor: Bool
    //MODIFICATION - briefDescription to brief_description
    public let brief_description, description: String?
    //MODIFICATION - _JGodotIndexingReturnType to String
    public let indexingReturnType: String?
    public let methods: [_JGodotBuiltinClassMethod]?
    //MODIFICATION - split members/constants, members type _JGodotMemberElement to _JGodotArgument, _JGodotBuiltinClassEnum to _JGodotGlobalEnumElement
    public let members: [_JGodotArgument]?
    public let constants: [_JGodotMemberElement]?
    public let enums: [_JGodotGlobalEnumElement]?

    //MODIFICATION - public removed
    enum CodingKeys: String, CodingKey {
        case name
        case isKeyed = "is_keyed"
        case operators, constructors
        case hasDestructor = "has_destructor"
        //MODIFICATION - briefDescription to brief_description
        case brief_description
        case description
        case indexingReturnType = "indexing_return_type"
        case methods, members, constants, enums
    }

    //MODIFICATION - briefDescription to brief_description, members type _JGodotMemberElement to _JGodotArgument, indexingReturnType to String, _JGodotBuiltinClassEnum to _JGodotGlobalEnumElement
    public init(name: String, isKeyed: Bool, operators: [_JGodotOperator], constructors: [_JGodotConstructor], hasDestructor: Bool, brief_description: String?, description: String?, indexingReturnType: String?, methods: [_JGodotBuiltinClassMethod]?, members: [_JGodotArgument]?, constants: [_JGodotMemberElement]?, enums: [_JGodotGlobalEnumElement]?) {
        self.name = name
        self.isKeyed = isKeyed
        self.operators = operators
        self.constructors = constructors
        self.hasDestructor = hasDestructor
        //MODIFICATION - briefDescription to brief_description
        self.brief_description = brief_description
        self.description = description
        self.indexingReturnType = indexingReturnType
        self.methods = methods
        self.members = members
        self.constants = constants
        self.enums = enums
    }
}

// MARK: - _JGodotMemberElement
//Note: class typealias-renamed to JGodotBuiltinClassConstant
public struct _JGodotMemberElement: Codable {
    public let name: String
    //MODIFICATION - _JGodotIndexingReturnType to JGodotTypeEnum, value non-optional, description optional
    public let type: JGodotTypeEnum
    public let value: String
    public let description: String?

    //MODIFICATION - _JGodotIndexingReturnType to JGodotTypeEnum, value non-optional
    public init(name: String, type: JGodotTypeEnum, value: String, description: String) {
        self.name = name
        self.type = type
        self.value = value
        self.description = description
    }
}

// MARK: - _JGodotConstructor
public struct _JGodotConstructor: Codable {
    public let index: Int
    //MODIFICATION - _JGodotSingleton to _JGodotArgument
    public let arguments: [_JGodotArgument]?
    public let description: String?

    //MODIFICATION - _JGodotSingleton to _JGodotArgument, description non-optional
    public init(index: Int, arguments: [_JGodotArgument]?, description: String) {
        self.index = index
        self.arguments = arguments
        self.description = description
    }
}

// MARK: - _JGodotSingleton
//Note: Class unused. Replaced by JGodotArgument
public struct _JGodotSingleton: Codable {
    public let name, type: String

    public init(name: String, type: String) {
        self.name = name
        self.type = type
    }
}

// MARK: - _JGodotBuiltinClassEnum
//Note: Class unused. Replaced by JGodotGlobalEnumElement
public struct _JGodotBuiltinClassEnum: Codable {
    public let name: String
    public let values: [_JGodotValueElement]

    public init(name: String, values: [_JGodotValueElement]) {
        self.name = name
        self.values = values
    }
}

// MARK: - _JGodotValueElement
public struct _JGodotValueElement: Codable {
    public let name: String
    public let value: Int
    //MODIFICATION - description optional
    public let description: String?

    public init(name: String, value: Int, description: String) {
        self.name = name
        self.value = value
        self.description = description
    }
}

// MARK: - _JGodotBuiltinClassMethod
public struct _JGodotBuiltinClassMethod: Codable {
    public let name: String
    public let returnType: String?
    public let isVararg, isConst, isStatic: Bool
    public let hash: Int
    public let arguments: [_JGodotArgument]?
    //MODIFICATION - description optional
    public let description: String?

    //MODIFICATION - public removed
    enum CodingKeys: String, CodingKey {
        case name
        case returnType = "return_type"
        case isVararg = "is_vararg"
        case isConst = "is_const"
        case isStatic = "is_static"
        case hash, arguments, description
    }

    public init(name: String, returnType: String?, isVararg: Bool, isConst: Bool, isStatic: Bool, hash: Int, arguments: [_JGodotArgument]?, description: String) {
        self.name = name
        self.returnType = returnType
        self.isVararg = isVararg
        self.isConst = isConst
        self.isStatic = isStatic
        self.hash = hash
        self.arguments = arguments
        self.description = description
    }
}

// MARK: - _JGodotArgument
public struct _JGodotArgument: Codable {
    public let name, type: String
    //MODIFICATION - add "description"
    public let description: String?
    public let defaultValue: String?
    public let meta: _JGodotMeta?

    //MODIFICATION - public removed
    enum CodingKeys: String, CodingKey {
        case name, type
        case defaultValue = "default_value"
        case meta
        //MODIFICATION - add "description"
        case description
    }

    //MODIFICATION - add description
    public init(name: String, type: String, description: String? = nil, defaultValue: String?, meta: JGodotArgumentMeta?) {
        self.name = name
        self.type = type
        self.defaultValue = defaultValue
        self.meta = meta
        //MODIFICATION - add description
        self.description = description
    }
}

//Note: enum renamed to JGodotArgumentMeta
public enum _JGodotMeta: String, Codable {
    case char32 = "char32"
    case double = "double"
    case float = "float"
    case int16 = "int16"
    case int32 = "int32"
    case int64 = "int64"
    case int8 = "int8"
    case uint16 = "uint16"
    case uint32 = "uint32"
    case uint64 = "uint64"
    case uint8 = "uint8"
}

// MARK: - _JGodotOperator
public struct _JGodotOperator: Codable {
    //MODIFICATION - _JGodotName to String
    public let name: String
    public let rightType: String?
    public let returnType: String
    public let description: String?

    //MODIFICATION - public removed
    enum CodingKeys: String, CodingKey {
        case name
        case rightType = "right_type"
        case returnType = "return_type"
        case description
    }

    //MODIFICATION - _JGodotName to String, description non-optional
    public init(name: String, rightType: String?, returnType: String, description: String) {
        self.name = name
        self.rightType = rightType
        self.returnType = returnType
        self.description = description
    }
}

//Note: Class unused. Replaced with String
public enum _JGodotName: String, Codable {
    case ambitious = "*"
    case and = "and"
    case braggadocious = ">>"
    case cunning = "/"
    case empty = "=="
    case fluffy = ">"
    case frisky = "**"
    case hilarious = "-"
    case indecent = "+"
    case indigo = ">="
    case magenta = "%"
    case mischievous = "<<"
    case name = "!="
    case nameIn = "in"
    case nameUnary = "unary+"
    case not = "not"
    case or = "or"
    case purple = "<"
    case sticky = "<="
    case tentacled = "~"
    case the1 = "&"
    case the2 = "|"
    case the3 = "^"
    case unary = "unary-"
    case xor = "xor"
}

// MARK: - _JGodotExtensionAPIClass
public struct _JGodotExtensionAPIClass: Codable {
    public let name: String
    public let isRefcounted, isInstantiable: Bool
    public let inherits: String?
    public let apiType: _JGodotAPIType
    public let enums: [_JGodotGlobalEnumElement]?
    public let methods: [_JGodotClassMethod]?
    //MODIFICATION - briefDescription to brief_description
    public let brief_description, description: String?
    public let properties: [_JGodotProperty]?
    public let signals: [_JGodotSignal]?
    public let constants: [_JGodotValueElement]?

    //MODIFICATION - public removed
    enum CodingKeys: String, CodingKey {
        case name
        case isRefcounted = "is_refcounted"
        case isInstantiable = "is_instantiable"
        case inherits
        case apiType = "api_type"
        case enums, methods
        //MODIFICATION - briefDescription to brief_description
        case brief_description
        case description, properties, signals, constants
    }

    //MODIFICATION - briefDescription to brief_description
    public init(name: String, isRefcounted: Bool, isInstantiable: Bool, inherits: String?, apiType: _JGodotAPIType, enums: [_JGodotGlobalEnumElement]?, methods: [_JGodotClassMethod]?, brief_description: String, description: String, properties: [_JGodotProperty]?, signals: [_JGodotSignal]?, constants: [_JGodotValueElement]?) {
        self.name = name
        self.isRefcounted = isRefcounted
        self.isInstantiable = isInstantiable
        self.inherits = inherits
        self.apiType = apiType
        self.enums = enums
        self.methods = methods
        //MODIFICATION - briefDescription to brief_description
        self.brief_description = brief_description
        self.description = description
        self.properties = properties
        self.signals = signals
        self.constants = constants
    }
}

public enum _JGodotAPIType: String, Codable {
    case core = "core"
    case editor = "editor"
}

// MARK: - _JGodotGlobalEnumElement
public struct _JGodotGlobalEnumElement: Codable {
    public let name: String
    //MODIFICATION - isBitfield optional
    public let isBitfield: Bool?
    public let values: [_JGodotValueElement]

    //MODIFICATION - public removed
    enum CodingKeys: String, CodingKey {
        case name
        case isBitfield = "is_bitfield"
        case values
    }

    public init(name: String, isBitfield: Bool, values: [_JGodotValueElement]) {
        self.name = name
        self.isBitfield = isBitfield
        self.values = values
    }
}

// MARK: - _JGodotClassMethod
public struct _JGodotClassMethod: Codable {
    public let name: String
    public let isConst, isVararg, isStatic, isVirtual: Bool
    //MODIFICATION - hash optional, hashCompatibility removed
    public let hash: Int?
    public let returnValue: _JGodotReturnValue?
    public let arguments: [_JGodotArgument]?
    public let description: String?
    //MODIFICATION - isRequired removed

    //MODIFICATION - public removed
    enum CodingKeys: String, CodingKey {
        case name
        case isConst = "is_const"
        case isVararg = "is_vararg"
        case isStatic = "is_static"
        case isVirtual = "is_virtual"
        case hash
        //MODIFICATION - hashCompatibility removed
        case returnValue = "return_value"
        case arguments, description
        //MODIFICATION - isRequired removed
    }

    //MODIFICATION - hashCompatibility removed, isRequired removed
    public init(name: String, isConst: Bool, isVararg: Bool, isStatic: Bool, isVirtual: Bool, hash: Int, returnValue: _JGodotReturnValue?, arguments: [_JGodotArgument]?, description: String?) {
        self.name = name
        self.isConst = isConst
        self.isVararg = isVararg
        self.isStatic = isStatic
        self.isVirtual = isVirtual
        self.hash = hash
        //MODIFICATION - hashCompatibility removed
        self.returnValue = returnValue
        self.arguments = arguments
        self.description = description
        //MODIFICATION - isRequired removed
    }
}

// MARK: - _JGodotReturnValue
public struct _JGodotReturnValue: Codable {
    public let type: String
    public let meta: _JGodotMeta?

    public init(type: String, meta: _JGodotMeta?) {
        self.type = type
        self.meta = meta
    }
}

// MARK: - _JGodotProperty
public struct _JGodotProperty: Codable {
    public let type, name: String
    public let setter: String?
    public let getter: String
    public let description: String?
    public let index: Int?

    //MODIFICATION - description non-optional
    public init(type: String, name: String, setter: String?, getter: String, description: String, index: Int?) {
        self.type = type
        self.name = name
        self.setter = setter
        self.getter = getter
        self.description = description
        self.index = index
    }
}

// MARK: - _JGodotSignal
public struct _JGodotSignal: Codable {
    //MODIFICATION - name/description split, description optional, _JGodotSingleton to _JGodotArgument
    public let name: String
    public let description: String?
    public let arguments: [_JGodotArgument]?

    //MODIFICATION - _JGodotSingleton to _JGodotArgument
    public init(name: String, description: String, arguments: [_JGodotArgument]?) {
        self.name = name
        self.description = description
        self.arguments = arguments
    }
}

// MARK: - _JGodotHeader
public struct _JGodotHeader: Codable {
    public let versionMajor, versionMinor, versionPatch: Int
    public let versionStatus, versionBuild, versionFullName: String

    //MODIFICATION - public removed
    enum CodingKeys: String, CodingKey {
        case versionMajor = "version_major"
        case versionMinor = "version_minor"
        case versionPatch = "version_patch"
        case versionStatus = "version_status"
        case versionBuild = "version_build"
        case versionFullName = "version_full_name"
    }

    public init(versionMajor: Int, versionMinor: Int, versionPatch: Int, versionStatus: String, versionBuild: String, versionFullName: String) {
        self.versionMajor = versionMajor
        self.versionMinor = versionMinor
        self.versionPatch = versionPatch
        self.versionStatus = versionStatus
        self.versionBuild = versionBuild
        self.versionFullName = versionFullName
    }
}

// MARK: - _JGodotNativeStructure
public struct _JGodotNativeStructure: Codable {
    public let name, format: String

    public init(name: String, format: String) {
        self.name = name
        self.format = format
    }
}

// MARK: - _JGodotUtilityFunction
public struct _JGodotUtilityFunction: Codable {
    public let name: String
    //MODIFICATION - _JGodotReturnType to String
    public let returnType: String?
    public let category: _JGodotCategory
    public let isVararg: Bool
    public let hash: Int
    //MODIFICATION - _JGodotSingleton to _JGodotArgument, description optional
    public let arguments: [_JGodotArgument]?
    public let description: String?

    //MODIFICATION - public removed
    enum CodingKeys: String, CodingKey {
        case name
        case returnType = "return_type"
        case category
        case isVararg = "is_vararg"
        case hash, arguments, description
    }

    //MODIFICATION - _JGodotReturnType to String, _JGodotSingleton to _JGodotArgument
    public init(name: String, returnType: String?, category: _JGodotCategory, isVararg: Bool, hash: Int, arguments: [_JGodotArgument]?, description: String) {
        self.name = name
        self.returnType = returnType
        self.category = category
        self.isVararg = isVararg
        self.hash = hash
        self.arguments = arguments
        self.description = description
    }
}

public enum _JGodotCategory: String, Codable {
    case general = "general"
    case math = "math"
    case random = "random"
}

//Note: class unused. Replaced by String
public enum _JGodotReturnType: String, Codable {
    case bool = "bool"
    case float = "float"
    case int = "int"
    case object = "Object"
    case packedByteArray = "PackedByteArray"
    case packedInt64Array = "PackedInt64Array"
    case rid = "RID"
    case string = "String"
    case variant = "Variant"
}

// MARK: - Encode/decode helpers

public class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    //MODIFICATION - hash implementation
    public func hash(into hasher: inout Hasher) {
        hasher.combine(0)
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey {
    let key: String

    required init?(intValue: Int) {
        return nil
    }

    required init?(stringValue: String) {
        key = stringValue
    }

    var intValue: Int? {
        return nil
    }

    var stringValue: String {
        return key
    }
}

public class JSONAny: Codable {

    public let value: Any

    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }

    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }

    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }

    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }

    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }

    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }

    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}
