//
//  EPATable.swift
//  SwiftExoPlanetArchive
//
//  Created by Yuma decaux on 26/12/2024.
//

public enum EPAFormat:String, Codable, Identifiable, Sendable {
    case csv
    case json
    case ascii
    case tap
    
    public var id:String {
        return self.rawValue
    }
}


public enum EPATable: String, Codable, Identifiable, CaseIterable, Sendable {
    case spectra
    case td
    case pscomppars
    case superwasptimeseries
    case kelttimeseries
    case di_stars_exep
    case stellarhosts
    case transitspec
    case emissionspec
    case ps
    case keplernames
    case k2names
    case toi
    case tic_v8
    case cumulative
    case q1_q6_koi
    case q1_q8_koi
    case q1_q12_koi
    case q1_q16_koi
    case q1_q17_dr24_koi
    case q1_q17_dr25_koi
    case q1_q17_dr25_sup_koi
    case q1_q12_tce
    case q1_q16_tce
    case q1_q17_dr24_tce
    case q1_q17_dr25_tce
    case ukirttimeseries
    case ml
    case object_aliases
    case k2pandc
    case k2targets
    case keplertimeseries
    case keplerstellar
    case q1_q12_ks
    case q1_q16_ks
    case q1_q17_dr24_ks
    case q1_q17_dr25_ks
    case q1_q17_dr25_sup_ks
    
    public var id: String {
        return rawValue
    }
    
    public var columns: [String] {
        switch self {
        case .spectra:
            return spectra_columns.allCases.map { $0.id }
        case .td:
            return ["NULL"]
        case .pscomppars:
            return pscomppars_columns.allCases.map { $0.id }
        case .superwasptimeseries:
            return superwasptimeseries_columns.allCases.map { $0.id }
        case .kelttimeseries:
            return kelttimeseries_columns.allCases.map { $0.id }
        case .di_stars_exep:
            return ["NULL"]
        case .stellarhosts:
            return stellarhosts_columns.allCases.map { $0.id }
        case .transitspec:
            return transitspec_columns.allCases.map { $0.id }
        case .emissionspec:
            return emissionspec_columns.allCases.map { $0.id }
        case .ps:
            return ps_columns.allCases.map { $0.id }
        case .keplernames:
            return keplernames_columns.allCases.map { $0.id }
        case .k2names:
            return k2names_columns.allCases.map { $0.id }
        case .toi:
            return toi_columns.allCases.map { $0.id }
        case .q1_q6_koi:
            return ["NULL"]
        case .q1_q8_koi:
            return ["NULL"]
        case .q1_q12_koi:
            return ["NULL"]
        case .q1_q16_koi:
            return ["NULL"]
        case .q1_q17_dr24_koi:
            return ["NULL"]
        case .q1_q17_dr25_koi:
            return ["NULL"]
        case .q1_q17_dr25_sup_koi:
            return ["NULL"]
        case .q1_q12_tce:
            return ["NULL"]
        case .q1_q16_tce:
            return ["NULL"]
        case .q1_q17_dr24_tce:
            return ["NULL"]
        case .q1_q17_dr25_tce:
            return ["NULL"]
        case .ukirttimeseries:
            return ukirttimeseries_columns.allCases.map { $0.id }
        case .ml:
            return ml_columns.allCases.map { $0.id }
        case .object_aliases:
            return object_aliases_columns.allCases.map { $0.id }
        case .k2pandc:
            return k2pandc_columns.allCases.map { $0.id }
        case .k2targets:
            return ["NULL"]
        case .keplertimeseries:
            return ["NULL"]
        case .keplerstellar:
            return ["NULL"]
        case .q1_q12_ks:
            return ["NULL"]
        case .q1_q16_ks:
            return ["NULL"]
        case .q1_q17_dr24_ks:
            return ["NULL"]
        case .q1_q17_dr25_ks:
            return ["NULL"]
        case .q1_q17_dr25_sup_ks:
            return ["NULL"]
        default:
            return ["NULL"]
        }
    }

    
    var description: String {
        switch self {
        case .spectra: return "Spectroscopic data of exoplanet host stars and systems."
        case .td: return "Time-domain observations and related datasets."
        case .pscomppars: return "Planetary system composite parameters, including derived properties."
        case .superwasptimeseries: return "Time-series data from the SuperWASP survey."
        case .kelttimeseries: return "Time-series data from the KELT survey."
        case .di_stars_exep: return "Direct imaging observations of stars from the Exoplanet Exploration Program."
        case .stellarhosts: return "Catalog of stellar hosts with confirmed or candidate exoplanets."
        case .transitspec: return "Transit spectroscopy data of exoplanet atmospheres."
        case .emissionspec: return "Emission spectroscopy data of exoplanet atmospheres."
        case .ps: return "Planetary systems data including confirmed exoplanets."
        case .keplernames: return "Kepler mission planetary candidate and confirmed planet names."
        case .k2names: return "K2 mission planetary candidate and confirmed planet names."
        case .toi: return "TESS Objects of Interest (TOI) catalog."
        case .tic_v8: return "TESS identification catalog"
        case .cumulative: return "Cumulative catalog of exoplanet candidates and confirmed planets from multiple missions."
        case .q1_q6_koi: return "Kepler Q1-Q6 KOI (Kepler Object of Interest) catalog."
        case .q1_q8_koi: return "Kepler Q1-Q8 KOI catalog."
        case .q1_q12_koi: return "Kepler Q1-Q12 KOI catalog."
        case .q1_q16_koi: return "Kepler Q1-Q16 KOI catalog."
        case .q1_q17_dr24_koi: return "Kepler Q1-Q17 DR24 KOI catalog."
        case .q1_q17_dr25_koi: return "Kepler Q1-Q17 DR25 KOI catalog."
        case .q1_q17_dr25_sup_koi: return "Kepler Q1-Q17 DR25 Supplemental KOI catalog."
        case .q1_q12_tce: return "Kepler Q1-Q12 Threshold Crossing Event (TCE) catalog."
        case .q1_q16_tce: return "Kepler Q1-Q16 TCE catalog."
        case .q1_q17_dr24_tce: return "Kepler Q1-Q17 DR24 TCE catalog."
        case .q1_q17_dr25_tce: return "Kepler Q1-Q17 DR25 TCE catalog."
        case .ukirttimeseries: return "Time-series data from the UKIRT survey."
        case .ml: return "Machine learning datasets used in exoplanet detection."
        case .object_aliases: return "Aliases and alternate names for exoplanetary objects."
        case .k2pandc: return "K2 mission planetary candidates and confirmed planets."
        case .k2targets: return "Target catalog for the K2 mission."
        case .keplertimeseries: return "Time-series data from the Kepler mission."
        case .keplerstellar: return "Stellar parameters for targets observed by the Kepler mission."
        case .q1_q12_ks: return "Kepler Q1-Q12 Stellar (KS) catalog."
        case .q1_q16_ks: return "Kepler Q1-Q16 Stellar (KS) catalog."
        case .q1_q17_dr24_ks: return "Kepler Q1-Q17 DR24 Stellar (KS) catalog."
        case .q1_q17_dr25_ks: return "Kepler Q1-Q17 DR25 Stellar (KS) catalog."
        case .q1_q17_dr25_sup_ks: return "Kepler Q1-Q17 DR25 Supplemental Stellar (KS) catalog."
        }
    }

}


public enum EPAOperator:String, Codable, Identifiable, Sendable {
    case eq = "="
    case lt = "<"
    case gt = ">"
    case lte = "<="
    case gte = ">="
    case like = "like"
    case between = "between"
    case and = "and"
    case or = "or"
    case all = "*"
    
    public var id:String {
        return rawValue
    }
}
