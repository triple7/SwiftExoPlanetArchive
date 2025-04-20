//
//  Wavelength.swift
//  SwiftExoPlanetArchive
//
//  Created by Yuma decaux on 20/4/2025.
//

//
//  Wavelength.swift
//  SwiftExoPlanetArchive
//
//  Created by Yuma decaux on 20/4/2025.
//

import Foundation

import Foundation

public enum Wavelength: Codable {
    // Optical emission lines
    case hydrogenAlpha
    case hydrogenBeta
    case oxygenIII
    case sodiumD
    case calciumIIK

    // Near-IR molecular bands
    case water14Micron
    case water19Micron
    case methane16Micron
    case methane22Micron

    // Mid-IR molecular bands
    case carbonMonoxide46
    case carbonDioxide27
    case carbonDioxide43
    case ozone96Micron
    case ammonia105Micron

    /// Returns the raw wavelength string
    var wavelength: String {
        switch self {
        case .hydrogenAlpha:     return "656.28 nm"
        case .hydrogenBeta:      return "486.13 nm"
        case .oxygenIII:         return "500.7 nm"
        case .sodiumD:           return "589.3 nm"
        case .calciumIIK:        return "393.4 nm"
        case .water14Micron:     return "1.4 μm"
        case .water19Micron:     return "1.9 μm"
        case .methane16Micron:   return "1.6 μm"
        case .methane22Micron:   return "2.2 μm"
        case .carbonMonoxide46:  return "4.6 μm"
        case .carbonDioxide27:   return "2.7 μm"
        case .carbonDioxide43:   return "4.3 μm"
        case .ozone96Micron:     return "9.6 μm"
        case .ammonia105Micron:  return "10.5 μm"
        }
    }
}

public enum Component: String, Codable {
    case hydrogen        = "Hydrogen (H)"
    case oxygen          = "Oxygen (O)"
    case sodium          = "Sodium (Na)"
    case calcium         = "Calcium (Ca)"
    case water           = "Water (H₂O)"
    case methane         = "Methane (CH₄)"
    case carbonMonoxide  = "Carbon Monoxide (CO)"
    case carbonDioxide   = "Carbon Dioxide (CO₂)"
    case ozone           = "Ozone (O₃)"
    case ammonia         = "Ammonia (NH₃)"

    /// Returns just the chemical symbol
    var symbol: String {
        switch self {
        case .hydrogen:        return "H"
        case .oxygen:          return "O"
        case .sodium:          return "Na"
        case .calcium:         return "Ca"
        case .water:           return "H₂O"
        case .methane:         return "CH₄"
        case .carbonMonoxide:  return "CO"
        case .carbonDioxide:   return "CO₂"
        case .ozone:           return "O₃"
        case .ammonia:         return "NH₃"
        }
    }
}


public enum ChemicalComponent: String, Codable {
    case hydrogen
    case oxygen
    case sodium
    case calcium
    case water
    case methane
    case carbonMonoxide
    case carbonDioxide
    case ozone
    case ammonia

    /// Returns just the chemical symbol
    var symbol: String {
        switch self {
        case .hydrogen:        return "H"
        case .oxygen:          return "O"
        case .sodium:          return "Na"
        case .calcium:         return "Ca"
        case .water:           return "H₂O"
        case .methane:         return "CH₄"
        case .carbonMonoxide:  return "CO"
        case .carbonDioxide:   return "CO₂"
        case .ozone:           return "O₃"
        case .ammonia:         return "NH₃"
        }
    }
}

/// Maps key atmospheric spectroscopy bands to their chemical carriers.
public struct SpectralProperties: Codable, @unchecked Sendable {
    /// The core mapping from wavelength → one or more components.
    let mapping: [Wavelength: [Component]]
}

// Default mapping
let defaultSpectralProperties = SpectralProperties(mapping: [
    .hydrogenAlpha    : [.hydrogen],
    .hydrogenBeta     : [.hydrogen],
    .oxygenIII        : [.oxygen],
    .sodiumD          : [.sodium],
    .calciumIIK       : [.calcium],
    .water14Micron    : [.water],
    .water19Micron    : [.water],
    .methane16Micron  : [.methane],
    .methane22Micron  : [.methane],
    .carbonMonoxide46 : [.carbonMonoxide],
    .carbonDioxide27  : [.carbonDioxide],
    .carbonDioxide43  : [.carbonDioxide],
    .ozone96Micron    : [.ozone],
    .ammonia105Micron : [.ammonia]
])
