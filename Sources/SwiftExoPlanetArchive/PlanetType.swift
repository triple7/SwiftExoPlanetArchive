//
//  PlanetType.swift
//  SwiftExoPlanetArchive
//
//  Created by Yuma decaux on 20/4/2025.
//


import Foundation

public enum PlanetType: String, Codable {
    /// Common composition‐based categories
    case terrestrial       // predominantly rocky
    case oceanic           // water‐world / supercritical‐water envelope
    case rockIceGiant      // ice‐rich / Neptune‐like
    case gasGiant          // H/He envelope dominated
    case unknown           // does not match any defined category

    /// Threshold tuple: (radius [R⊕], mass [M⊕], density [g/cm³])
    var characteristics: (radius: Float, mass: Float, density: Float) {
        switch self {
        case .terrestrial:
            return (radius: 1.4,    mass: 2.9,   density: 5.0)
        case .oceanic:
            return (radius: 2.25,   mass: 10.0,  density: 1.0)
        case .rockIceGiant:
            return (radius: 7.5,    mass: 50.0,  density: 0.5)
        case .gasGiant:
            return (radius: .infinity, mass: .infinity, density: 0.2)
        case .unknown:
            // No thresholds for unknown
            return (radius: .infinity, mass: .infinity, density: .infinity)
        }
    }

    /// Human‐readable description of the category
    var description: String {
        switch self {
        case .terrestrial:
            return "Predominantly rocky worlds with negligible volatile envelopes."
        case .oceanic:
            return "Planets enveloped in supercritical water—so‐called \"water worlds.\""
        case .rockIceGiant:
            return "Ice‐rich giants with significant H/He envelopes, akin to Neptune."
        case .gasGiant:
            return "Massive planets dominated by hydrogen/helium, like Jupiter or Saturn."
        case .unknown:
            return "Does not fit any standard composition category."
        }
    }

    /// Reference for the classification thresholds
    var reference: String {
        switch self {
        case .terrestrial:
            return "Seager et al. (2007), Mass–Radius Relation for Solid Exoplanets"
        case .oceanic:
            return "Zeng & Sasselov (2013), Mass–Radius Relations for Water Planets"
        case .rockIceGiant:
            return "Zeng et al. (2016), Detailed Models for Ice Giants"
        case .gasGiant:
            return "Fortney et al. (2007), Planetary Radii across Mass and Irradiation"
        case .unknown:
            return "—"
        }
    }

    /// URL to the primary paper describing this model
    var refUrl: URL?{
        switch self {
        case .terrestrial:
            return URL(string: "https://doi.org/10.1086/520346")!
        case .oceanic:
            return URL(string: "https://doi.org/10.1088/0004-637X/778/2/164")!
        case .rockIceGiant:
            return URL(string: "https://doi.org/10.3847/0004-6256/152/")!
        case .gasGiant:
            return URL(string: "https://doi.org/10.1086/510368")!
                       case .unknown:
            return nil
        }
    }

func isPlanetType(_ values: (radius: Float, mass: Float, density: Float)) -> PlanetType {
    let (r, m, d) = values

    // Terrestrial: R < 1.4 R⊕, M < 2.9 M⊕, density > 5 g/cm³
    if r < PlanetType.terrestrial.characteristics.radius &&
       m < PlanetType.terrestrial.characteristics.mass &&
       d > PlanetType.terrestrial.characteristics.density {
        return .terrestrial
    }

    // Oceanic: R ≤ 2.25 R⊕, M ≤ 10 M⊕, density > 1 g/cm³
    if r <= PlanetType.oceanic.characteristics.radius &&
       m <= PlanetType.oceanic.characteristics.mass &&
       d > PlanetType.oceanic.characteristics.density {
        return .oceanic
    }

    // Rock‐Ice Giant: R ≤ 7.5 R⊕, M ≤ 50 M⊕, density > 0.5 g/cm³
    if r <= PlanetType.rockIceGiant.characteristics.radius &&
       m <= PlanetType.rockIceGiant.characteristics.mass &&
       d > PlanetType.rockIceGiant.characteristics.density {
        return .rockIceGiant
    }

    // Gas Giant: density < 0.2 g/cm³
    if d < PlanetType.gasGiant.characteristics.density {
        return .gasGiant
    }
    return .unknown
}

}
