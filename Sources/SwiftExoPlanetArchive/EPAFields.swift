import Foundation


public enum spectra_columns:String, Codable, Identifiable, CaseIterable{
case pl_name // Planet Name
case spec_type // Type of Spectrum
case authors // Authors
case num_datapoints // # Datapoints
case instrument // Instrument
case facility // Facility
case mintranmid // Minimum Observation Date
case maxtranmid // Maximum Observation Date
case minwavelng // Minimum Wavelength
case maxwavelng // Maximum Wavelength
case note // Notes
case bibcode // Bibcode
case spec_path // File Path

public var id:String {
return self.rawValue
}

public var description:String {
switch self {
case .pl_name: return "Planet Name"
case .spec_type: return "Type of Spectrum"
case .authors: return "Authors"
case .num_datapoints: return "# Datapoints"
case .instrument: return "Instrument"
case .facility: return "Facility"
case .mintranmid: return "Minimum Observation Date"
case .maxtranmid: return "Maximum Observation Date"
case .minwavelng: return "Minimum Wavelength"
case .maxwavelng: return "Maximum Wavelength"
case .note: return "Notes"
case .bibcode: return "Bibcode"
case .spec_path: return "File Path"
}
}
}

public enum pscomppars_columns:String, Codable, Identifiable, CaseIterable{
case pl_orbeccenstr // Eccentricity
case pl_orbeccen_reflink // Eccentricity Reference
case pl_eqt // Equilibrium Temperature
case pl_eqterr1 // Equilibrium Temperature Upper Unc.
case pl_eqterr2 // Equilibrium Temperature Lower Unc.
case pl_eqtlim // Equilibrium Temperature Limit Flag
case pl_eqt_reflink // Equilibrium Temperature Reference
case pl_eqtstr // Equilibrium Temperature
case pl_occdep // Occultation Depth
case pl_occdeperr1 // Occultation Depth Upper Unc.
case pl_occdeperr2 // Occultation Depth Lower Unc.
case pl_occdeplim // Occultation Depth Limit Flag
case pl_occdep_reflink // Occultation Depth Reference
case pl_occdepstr // Occultation Depth
case pl_insol // Insolation Flux
case pl_insolerr1 // Insolation Flux Upper Unc.
case pl_insolerr2 // Insolation Flux Lower Unc.
case pl_insollim // Insolation Flux Limit Flag
case pl_insolstr // Insolation Flux
case pl_insol_reflink // Insolation Flux Reference
case pl_dens // Planet Density
case pl_denserr1 // Planet Density Upper Unc.
case pl_denserr2 // Planet Density Lower Unc.
case pl_denslim // Planet Density Limit Flag
case pl_dens_reflink // Planet Density Reference
case pl_densstr // Planet Density
case pl_trandep // Transit Depth
case pl_trandeperr1 // Transit Depth Upper Unc.
case pl_trandeperr2 // Transit Depth Lower Unc.
case pl_trandeplim // Transit Depth Limit Flag
case pl_trandepstr // Transit Depth
case pl_trandep_reflink // Transit Depth Reference
case pl_tranmid // Transit Midpoint
case pl_tranmiderr1 // Transit Midpoint Upper Unc.
case pl_tranmiderr2 // Transit Midpoint Lower Unc.
case pl_tranmidlim // Transit Midpoint Limit Flag
case pl_angsep_reflink // Angular Separation Reference
case pl_tranmidstr // Time of Conjunction (Transit Midpoint)
case pl_tranmid_reflink // Time of Conjunction (Transit Midpoint) Reference
case pl_trandur // Transit Duration
case pl_trandurerr1 // Transit Duration Upper Unc.
case pl_trandurerr2 // Transit Duration Lower Unc.
case pl_trandurlim // Transit Duration Limit Flag
case pl_trandurstr // Transit Duration
case pl_trandur_reflink // Transit Duration Reference
case pl_rvamp // Radial Velocity Amplitude
case pl_rvamperr1 // Radial Velocity Amplitude Upper Unc.
case pl_rvamperr2 // Radial Velocity Amplitude Lower Unc.
case pl_rvamplim // Radial Velocity Amplitude Limit Flag
case pl_rvampstr // Radial Velocity Amplitude
case pl_rvamp_reflink // Radial Velocity Amplitude Reference
case pl_radj // Planet Radius
case pl_radjerr1 // Planet Radius Upper Unc.
case pl_radjerr2 // Planet Radius Lower Unc.
case pl_radjlim // Planet Radius Limit Flag
case pl_radjstr // Planet Radius
case pl_radj_reflink // Planet Radius Reference
case pl_rade // Planet Radius
case pl_radeerr1 // Planet Radius Upper Unc.
case pl_radeerr2 // Planet Radius Lower Unc.
case pl_radelim // Planet Radius Limit Flag
case pl_radestr // Planet Radius
case pl_rade_reflink // Planet Radius Reference
case pl_ratror // Ratio of Planet to Stellar Radius
case pl_ratrorerr1 // Ratio of Planet to Stellar Radius Upper Unc.
case pl_ratrorerr2 // Ratio of Planet to Stellar Radius Lower Unc.
case pl_ratrorlim // Ratio of Planet to Stellar Radius Limit Flag
case pl_ratrorstr // Ratio of Planet to Stellar Radius
case pl_ratror_reflink // Ratio of Planet to Stellar Radius Reference
case pl_ratdor // Ratio of Semi-Major Axis to Stellar Radius
case pl_ratdorerr1 // Ratio of Semi-Major Axis to Stellar Radius Upper Unc.
case pl_ratdorerr2 // Ratio of Semi-Major Axis to Stellar Radius Lower Unc.
case pl_ratdorlim // Ratio of Semi-Major Axis to Stellar Radius Limit Flag
case pl_ratdorstr // Ratio of Semi-Major Axis to Stellar Radius
case pl_ratdor_reflink // Ratio of Semi-Major Axis to Stellar Radius Reference
case pl_imppar // Impact Parameter
case pl_impparerr1 // Impact Parameter Upper Unc.
case pl_impparerr2 // Impact Parameter Lower Unc.
case pl_impparlim // Impact Parameter Limit Flag
case pl_impparstr // Impact Parameter
case pl_imppar_reflink // Impact Parameter Reference
case pl_bmassj // Planet Mass or Mass*sin(i)
case pl_bmassjerr1 // Planet Mass or Mass*sin(i) [Jupiter Mass] Upper Unc.
case pl_bmassjerr2 // Planet Mass or Mass*sin(i) [Jupiter Mass] Lower Unc.
case pl_bmassjlim // Planet Mass or Mass*sin(i) [Jupiter Mass] Limit Flag
case pl_bmassjstr // Planet Mass or Mass*sin(i)
case pl_bmassj_reflink // Planet Mass or Mass*sin(i) [Jupiter Mass] Reference
case pl_bmasse // Planet Mass or Mass*sin(i)
case pl_bmasseerr1 // Planet Mass or Mass*sin(i) [Earth Mass] Upper Unc.
case pl_bmasseerr2 // Planet Mass or Mass*sin(i) [Earth Mass] Lower Unc.
case pl_bmasselim // Planet Mass or Mass*sin(i) [Earth Mass] Limit Flag
case pl_bmassestr // Planet Mass or Mass*sin(i)
case pl_bmasse_reflink // Planet Mass or Mass*sin(i) [Earth Mass] Reference
case pl_bmassprov // Planet Mass or Mass*sin(i) Provenance
case st_teff // Stellar Effective Temperature
case st_tefferr1 // Stellar Effective Temperature Upper Upper Unc.
case st_tefferr2 // Stellar Effective Temperature Lower Lower Unc.
case st_tefflim // Stellar Effective Temperature Limit Flag
case st_teffstr // Stellar Effective Temperature
case st_teff_reflink // Stellar Effective Temperature Reference
case st_met // Stellar Metallicity
case st_meterr1 // Stellar Metallicity Upper Unc.
case st_meterr2 // Stellar Metallicity Lower Unc.
case st_metlim // Stellar Metallicity Limit Flag
case st_metstr // Stellar Metallicity
case st_met_reflink // Stellar Metallicity Reference
case st_radv // Systemic Radial Velocity
case st_radverr1 // Systemic Radial Velocity Upper Unc.
case st_radverr2 // Systemic Radial Velocity Lower Unc.
case st_radvlim // Systemic Radial Velocity Limit Flag
case st_radvstr // Systemic Radial Velocity
case st_radv_reflink // Systemic Radial Velocity Reference
case st_vsin // Stellar Rotational Velocity
case st_vsinerr1 // Stellar Rotational Velocity [km/s] Upper Unc.
case st_vsinerr2 // Stellar Rotational Velocity [km/s] Lower Unc.
case st_vsinlim // Stellar Rotational Velocity Limit Flag
case st_vsinstr // Stellar Rotational Velocity
case st_vsin_reflink // Stellar Rotational Velocity Reference
case st_lum // Stellar Luminosity
case st_lumerr1 // Stellar Luminosity Upper Unc.
case st_lumerr2 // Stellar Luminosity Lower Unc.
case st_lumlim // Stellar Luminosity Limit Flag
case st_lumstr // Stellar Luminosity
case st_lum_reflink // Stellar Luminosity Reference
case st_logg // Stellar Surface Gravity
case st_loggerr1 // Stellar Surface Gravity Upper Unc.
case st_loggerr2 // Stellar Surface Gravity Lower Unc.
case st_logglim // Stellar Surface Gravity Limit Flag
case st_loggstr // Stellar Surface Gravity
case st_logg_reflink // Stellar Surface Gravity Reference
case st_age // Stellar Age
case st_ageerr1 // Stellar Age Upper Unc.
case st_ageerr2 // Stellar Age Lower Unc.
case st_agelim // Stellar Age Limit Flag
case st_agestr // Stellar Age
case st_age_reflink // Stellar Age Reference
case st_mass // Stellar Mass
case st_masserr1 // Stellar Mass Upper Unc.
case st_masserr2 // Stellar Mass Lower Unc.
case st_masslim // Stellar Mass Limit Flag
case st_massstr // Stellar Mass
case st_mass_reflink // Stellar Mass Reference
case st_dens // Stellar Density
case st_denserr1 // Stellar Density Upper Unc.
case st_denserr2 // Stellar Density Lower Unc.
case st_denslim // Stellar Density Limit Flag
case st_densstr // Stellar Density
case st_dens_reflink // Stellar Density Reference
case st_rad // Stellar Radius
case st_raderr1 // Stellar Radius Upper Unc.
case st_raderr2 // Stellar Radius Lower Unc.
case st_radlim // Stellar Radius Limit Flag
case st_radstr // Stellar Radius
case st_rad_reflink // Stellar Radius Refence
case ttv_flag // Data show Transit Timing Variations
case ptv_flag // Detected by Pulsation Timing Variations
case tran_flag // Detected by Transits
case rv_flag // Detected by Radial Velocity Variations
case ast_flag // Detected by Astrometric Variations
case obm_flag // Detected by Orbital Brightness Modulations
case micro_flag // Detected by Microlensing
case etv_flag // Detected by Eclipse Timing Variations
case ima_flag // Detected by Imaging
case pul_flag // Detected by Pulsar Timing Variations
case sy_snum // Number of Stars
case sy_pnum // Number of Planets
case sy_mnum // Number of Moons
case st_nphot // Number of Photometry Time Series
case st_nrvc // Number of Radial Velocity Time Series
case st_nspec // Number of Stellar Spectra Measurements
case pl_nnotes // Number of Notes
case pl_ntranspec // Number of Transmission Spectra
case pl_nespec // Number of Eclipse Spectra
case pl_ndispec // Number of Direct Imaging Spectra
case sy_pm // Total Proper Motion
case sy_pmerr1 // Total Proper Motion Upper Unc
case sy_pmerr2 // Total Proper Motion Lower Unc
case sy_pmstr // Total Proper Motion
case sy_pm_reflink // Total Proper Motion Reference
case sy_pmra // Proper Motion (RA)
case sy_pmraerr1 // Proper Motion (RA) [mas/yr] Upper Unc
case sy_pmraerr2 // Proper Motion (RA) [mas/yr] Lower Unc
case sy_pmrastr // Proper Motion (RA)
case sy_pmdec // Proper Motion (Dec)
case sy_pmdecerr1 // Proper Motion (Dec) [mas/yr] Upper Unc
case sy_pmdecerr2 // Proper Motion (Dec) [mas/yr] Lower Unc
case sy_pmdecstr // Proper Motion (Dec)
case sy_plx // Parallax
case sy_plxerr1 // Parallax [mas] Upper Unc
case sy_plxerr2 // Parallax [mas] Lower Unc
case sy_plxstr // Parallax
case sy_plx_reflink // Parallax Reference
case sy_dist // Distance
case sy_disterr1 // Distance [pc] Upper Unc
case sy_disterr2 // Distance [pc] Lower Unc
case sy_diststr // Distance
case sy_dist_reflink // Distance Refence
case sy_bmag // B (Johnson) Magnitude
case sy_bmagerr1 // B (Johnson) Magnitude Upper Unc
case sy_bmagerr2 // B (Johnson) Magnitude Lower Unc
case sy_bmagstr // B (Johnson) Magnitude
case sy_bmag_reflink // B (Johnson) Magnitude Reference
case sy_vmag // V (Johnson) Magnitude
case sy_vmagerr1 // V (Johnson) Magnitude Upper Unc
case sy_vmagerr2 // V (Johnson) Magnitude Lower Unc
case sy_vmagstr // V (Johnson) Magnitude
case sy_vmag_reflink // V (Johnson) Magnitude Reference
case sy_jmag // J (2MASS) Magnitude
case sy_jmagerr1 // J (2MASS) Magnitude Upper Unc
case sy_jmagerr2 // J (2MASS) Magnitude Lower Unc
case sy_jmagstr // J (2MASS) Magnitude
case sy_jmag_reflink // J (2MASS) Magnitude Reference
case sy_hmag // H (2MASS) Magnitude
case sy_hmagerr1 // H (2MASS) Magnitude Upper Unc
case sy_hmagerr2 // H (2MASS) Magnitude Lower Unc
case sy_hmag_reflink // H (2MASS) Magnitude Reference
case sy_hmagstr // H (2MASS) Magnitude
case sy_kmag // Ks (2MASS) Magnitude
case sy_kmagerr1 // Ks (2MASS) Magnitude Upper Unc
case sy_kmagerr2 // Ks (2MASS) Magnitude Lower Unc
case sy_kmag_reflink // Ks (2MASS) Magnitude Reference
case sy_kmagstr // Ks (2MASS) Magnitude
case sy_umag // u (Sloan) Magnitude
case sy_umagerr1 // u (Sloan) Magnitude Upper Unc
case sy_umagerr2 // u (Sloan) Magnitude Lower Unc
case sy_umag_reflink // u (Sloan) Magnitude Reference
case sy_umagstr // u (Sloan) Magnitude
case sy_rmag // r (Sloan) Magnitude
case sy_rmagerr1 // r (Sloan) Magnitude Upper Unc
case sy_rmagerr2 // r (Sloan) Magnitude Lower Unc
case sy_rmag_reflink // r (Sloan) Magnitude Reference
case sy_rmagstr // r (Sloan) Magnitude
case sy_imag // i (Sloan) Magnitude
case sy_imagerr1 // i (Sloan) Magnitude Upper Unc
case sy_imagerr2 // i (Sloan) Magnitude Lower Unc
case sy_imag_reflink // i (Sloan) Magnitude Reference
case sy_imagstr // i (Sloan) Magnitude
case sy_zmag // z (Sloan) Magnitude
case sy_zmagerr1 // z (Sloan) Magnitude Upper Unc
case sy_zmagerr2 // z (Sloan) Magnitude Lower Unc
case sy_zmag_reflink // z (Sloan) Magnitude Reference
case sy_zmagstr // z (Sloan) Magnitude
case sy_w1mag // W1 (WISE) Magnitude
case sy_w1magerr1 // W1 (WISE) Magnitude Upper Unc
case sy_w1magerr2 // W1 (WISE) Magnitude Lower Unc
case sy_w1mag_reflink // W1 (WISE) Magnitude Reference
case sy_w1magstr // W1 (WISE) Magnitude
case sy_w2mag // W2 (WISE) Magnitude
case sy_w2magerr1 // W2 (WISE) Magnitude Upper Unc
case sy_w2magerr2 // W2 (WISE) Magnitude Lower Unc
case sy_w2mag_reflink // W2 (WISE) Magnitude Reference
case sy_w2magstr // W2 (WISE) Magnitude
case sy_w3mag // W3 (WISE) Magnitude
case sy_w3magerr1 // W3 (WISE) Magnitude Upper Unc
case sy_w3magerr2 // W3 (WISE) Magnitude Lower Unc
case sy_w3mag_reflink // W3 (WISE) Magnitude Reference
case sy_w3magstr // W3 (WISE) Magnitude
case sy_w4mag // W4 (WISE) Magnitude
case sy_w4magerr1 // W4 (WISE) Magnitude Upper Unc
case sy_w4magerr2 // W4 (WISE) Magnitude Lower Unc
case sy_w4mag_reflink // W4 (WISE) Magnitude Reference
case sy_w4magstr // W4 (WISE) Magnitude
case sy_gmag // g (Sloan) Magnitude
case sy_gmagerr1 // g (Sloan) Magnitude Upper Unc
case sy_gmagerr2 // g (Sloan) Magnitude Lower Unc
case sy_gmag_reflink // g (Sloan) Magnitude Reference
case sy_gmagstr // g (Sloan) Magnitude
case sy_gaiamag // Gaia Magnitude
case sy_gaiamagerr1 // Gaia Magnitude Upper Unc
case sy_gaiamagerr2 // Gaia Magnitude Lower Unc
case sy_gaiamag_reflink // Gaia Magnitude Reference
case sy_gaiamagstr // Gaia Magnitude
case sy_tmag // TESS Magnitude
case sy_tmagerr1 // TESS Magnitude Upper Unc
case sy_tmagerr2 // TESS Magnitude Lower Unc
case sy_tmag_reflink // TESS Magnitude Reference
case sy_tmagstr // TESS Magnitude
case pl_controv_flag // Controversial Flag
case pl_tranmid_systemref // Time Reference Frame and Standard
case pl_orbtper_systemref // Time Solnid Frame and Standard
case st_metratio // Stellar Metallicity Ratio
case st_spectype // Spectral Type
case sy_kepmag // Kepler Magnitude
case sy_kepmagerr1 // Kepler Magnitude Upper Unc
case sy_kepmagerr2 // Kepler Magnitude Lower Unc
case sy_kepmag_reflink // Kepler Magnitude Reference
case st_spectype_reflink // Spectral Type Reference
case sy_kepmagstr // Kepler Magnitude
case st_rotp // Stellar Rotational Period
case st_rotperr1 // Stellar Rotational Period [days] Upper Unc.
case st_rotperr2 // Stellar Rotational Period [days] Lower Unc.
case st_rotplim // Stellar Rotational Period Limit Flag
case st_rotpstr // Stellar Rotational Period
case st_rotp_reflink // Stellar Rotational Period Reference
case pl_projobliq // Projected Obliquity
case pl_projobliqerr1 // Projected Obliquity Upper Unc.
case pl_projobliqerr2 // Projected Obliquity Lower Unc.
case pl_projobliqlim // Projected Obliquity Limit Flag
case pl_projobliqstr // Projected Obliquity
case pl_projobliq_reflink // Projected Obliquity Reference
case pl_trueobliq // True Obliquity
case x // Spatial Coordinate X
case pl_trueobliqerr1 // True Obliquity Upper Unc.
case y // Spatial Coordinate Y
case pl_trueobliqerr2 // True Obliquity Lower Unc.
case z // Spatial Coordinate Z
case htm20 // Spatial Index
case pl_trueobliqlim // True Obliquity Limit Flag
case gaia_id // GAIA ID
case pl_trueobliq_reflink // True Obliquity Reference
case cb_flag // Circumbinary Flag
case pl_trueobliqstr // True Obliquity
case sy_icmag // I (Cousins) Magnitude
case sy_icmagerr1 // I (Cousins) Magnitude Upper Unc
case sy_icmagerr2 // I (Cousins) Magnitude Lower Unc
case sy_icmagstr // I (Cousins) Magnitude
case sy_icmag_reflink // I (Cousins) Magnitude Solnid
case dkin_flag // Detected by Disk Kinematics
case pl_name // Planet Name
case pl_letter // Planet Letter
case hostname // Host Name
case hd_name // HD ID
case hip_name // HIP ID
case tic_id // TIC ID
case disc_pubdate // Discovery Publication Date
case disc_year // Discovery Year
case discoverymethod // Discovery Method
case disc_locale // Discovery Locale
case disc_facility // Discovery Facility
case disc_instrument // Discovery Instrument
case disc_telescope // Discovery Telescope
case disc_refname // Discovery Reference
case ra // RA [decimal]
case rastr // RA
case dec // Dec [decimal]
case decstr // Dec
case glon // Galactic Longitude
case glat // Galactic Latitude
case pl_angsep // Angular Separation
case pl_angseperr1 // Angular Separation Upper Unc
case pl_angseperr2 // Angular Separation Lower Unc
case elon // Ecliptic Longitude
case pl_angseplim // Angular Separation Limit Flag
case pl_angsepstr // Angular Separation
case elat // Ecliptic Latitude
case pl_orbper // Orbital Period
case pl_orbpererr1 // Orbital Period Upper Unc.
case pl_orbpererr2 // Orbital Period Lower Unc.
case pl_orbperlim // Orbital Period Limit Flag
case pl_orbperstr // Orbital Period
case ra_reflink // RA Reference
case pl_orbper_reflink // Orbital Period Reference
case pl_orblpererr1 // Argument of Periastron Upper Unc.
case pl_orblper // Argument of Periastron
case pl_orblpererr2 // Argument of Periastron Lower Unc.
case pl_orblperlim // Argument of Periastron Limit Flag
case pl_orblperstr // Argument of Periastron
case pl_orblper_reflink // Argument of Periastron Reference
case pl_orbsmax // Orbit Semi-Major Axis [au])
case pl_orbsmaxerr1 // Orbit Semi-Major Axis Upper Unc.
case pl_orbsmaxerr2 // Orbit Semi-Major Axis Lower Unc.
case pl_orbsmaxlim // Orbit Semi-Major Axis Limit Flag
case pl_orbsmax_reflink // Orbit Semi-Major Axis Reference
case pl_orbsmaxstr // Orbit Semi-Major Axis
case pl_orbincl // Inclination
case pl_orbinclerr1 // Inclination Upper Unc.
case pl_orbinclerr2 // Inclination Lower Unc.
case pl_orbincllim // Inclination Limit Flag
case pl_orbincl_reflink // Inclination Reference
case pl_orbinclstr // Inclination
case pl_orbtper // Epoch of Periastron
case pl_orbtpererr1 // Epoch of Periastron Upper Unc.
case pl_orbtpererr2 // Epoch of Periastron Lower Unc.
case pl_orbtperlim // Epoch of Periastron Limit Flag
case pl_orbtperstr // Epoch of Periastron
case pl_orbtper_reflink // Epoch of Periastron Reference
case pl_orbeccen // Eccentricity
case pl_orbeccenerr1 // Eccentricity Upper Unc.
case pl_orbeccenerr2 // Eccentricity Lower Unc.
case pl_orbeccenlim // Eccentricity Limit Flag

public var id:String {
return self.rawValue
}

public var description:String {
switch self {
case .pl_orbeccenstr: return "Eccentricity"
case .pl_orbeccen_reflink: return "Eccentricity Reference"
case .pl_eqt: return "Equilibrium Temperature"
case .pl_eqterr1: return "Equilibrium Temperature Upper Unc."
case .pl_eqterr2: return "Equilibrium Temperature Lower Unc."
case .pl_eqtlim: return "Equilibrium Temperature Limit Flag"
case .pl_eqt_reflink: return "Equilibrium Temperature Reference"
case .pl_eqtstr: return "Equilibrium Temperature"
case .pl_occdep: return "Occultation Depth"
case .pl_occdeperr1: return "Occultation Depth Upper Unc."
case .pl_occdeperr2: return "Occultation Depth Lower Unc."
case .pl_occdeplim: return "Occultation Depth Limit Flag"
case .pl_occdep_reflink: return "Occultation Depth Reference"
case .pl_occdepstr: return "Occultation Depth"
case .pl_insol: return "Insolation Flux"
case .pl_insolerr1: return "Insolation Flux Upper Unc."
case .pl_insolerr2: return "Insolation Flux Lower Unc."
case .pl_insollim: return "Insolation Flux Limit Flag"
case .pl_insolstr: return "Insolation Flux"
case .pl_insol_reflink: return "Insolation Flux Reference"
case .pl_dens: return "Planet Density"
case .pl_denserr1: return "Planet Density Upper Unc."
case .pl_denserr2: return "Planet Density Lower Unc."
case .pl_denslim: return "Planet Density Limit Flag"
case .pl_dens_reflink: return "Planet Density Reference"
case .pl_densstr: return "Planet Density"
case .pl_trandep: return "Transit Depth"
case .pl_trandeperr1: return "Transit Depth Upper Unc."
case .pl_trandeperr2: return "Transit Depth Lower Unc."
case .pl_trandeplim: return "Transit Depth Limit Flag"
case .pl_trandepstr: return "Transit Depth"
case .pl_trandep_reflink: return "Transit Depth Reference"
case .pl_tranmid: return "Transit Midpoint"
case .pl_tranmiderr1: return "Transit Midpoint Upper Unc."
case .pl_tranmiderr2: return "Transit Midpoint Lower Unc."
case .pl_tranmidlim: return "Transit Midpoint Limit Flag"
case .pl_angsep_reflink: return "Angular Separation Reference"
case .pl_tranmidstr: return "Time of Conjunction (Transit Midpoint)"
case .pl_tranmid_reflink: return "Time of Conjunction (Transit Midpoint) Reference"
case .pl_trandur: return "Transit Duration"
case .pl_trandurerr1: return "Transit Duration Upper Unc."
case .pl_trandurerr2: return "Transit Duration Lower Unc."
case .pl_trandurlim: return "Transit Duration Limit Flag"
case .pl_trandurstr: return "Transit Duration"
case .pl_trandur_reflink: return "Transit Duration Reference"
case .pl_rvamp: return "Radial Velocity Amplitude"
case .pl_rvamperr1: return "Radial Velocity Amplitude Upper Unc."
case .pl_rvamperr2: return "Radial Velocity Amplitude Lower Unc."
case .pl_rvamplim: return "Radial Velocity Amplitude Limit Flag"
case .pl_rvampstr: return "Radial Velocity Amplitude"
case .pl_rvamp_reflink: return "Radial Velocity Amplitude Reference"
case .pl_radj: return "Planet Radius"
case .pl_radjerr1: return "Planet Radius Upper Unc."
case .pl_radjerr2: return "Planet Radius Lower Unc."
case .pl_radjlim: return "Planet Radius Limit Flag"
case .pl_radjstr: return "Planet Radius"
case .pl_radj_reflink: return "Planet Radius Reference"
case .pl_rade: return "Planet Radius"
case .pl_radeerr1: return "Planet Radius Upper Unc."
case .pl_radeerr2: return "Planet Radius Lower Unc."
case .pl_radelim: return "Planet Radius Limit Flag"
case .pl_radestr: return "Planet Radius"
case .pl_rade_reflink: return "Planet Radius Reference"
case .pl_ratror: return "Ratio of Planet to Stellar Radius"
case .pl_ratrorerr1: return "Ratio of Planet to Stellar Radius Upper Unc."
case .pl_ratrorerr2: return "Ratio of Planet to Stellar Radius Lower Unc."
case .pl_ratrorlim: return "Ratio of Planet to Stellar Radius Limit Flag"
case .pl_ratrorstr: return "Ratio of Planet to Stellar Radius"
case .pl_ratror_reflink: return "Ratio of Planet to Stellar Radius Reference"
case .pl_ratdor: return "Ratio of Semi-Major Axis to Stellar Radius"
case .pl_ratdorerr1: return "Ratio of Semi-Major Axis to Stellar Radius Upper Unc."
case .pl_ratdorerr2: return "Ratio of Semi-Major Axis to Stellar Radius Lower Unc."
case .pl_ratdorlim: return "Ratio of Semi-Major Axis to Stellar Radius Limit Flag"
case .pl_ratdorstr: return "Ratio of Semi-Major Axis to Stellar Radius"
case .pl_ratdor_reflink: return "Ratio of Semi-Major Axis to Stellar Radius Reference"
case .pl_imppar: return "Impact Parameter"
case .pl_impparerr1: return "Impact Parameter Upper Unc."
case .pl_impparerr2: return "Impact Parameter Lower Unc."
case .pl_impparlim: return "Impact Parameter Limit Flag"
case .pl_impparstr: return "Impact Parameter"
case .pl_imppar_reflink: return "Impact Parameter Reference"
case .pl_bmassj: return "Planet Mass or Mass*sin(i)"
case .pl_bmassjerr1: return "Planet Mass or Mass*sin(i) [Jupiter Mass] Upper Unc."
case .pl_bmassjerr2: return "Planet Mass or Mass*sin(i) [Jupiter Mass] Lower Unc."
case .pl_bmassjlim: return "Planet Mass or Mass*sin(i) [Jupiter Mass] Limit Flag"
case .pl_bmassjstr: return "Planet Mass or Mass*sin(i)"
case .pl_bmassj_reflink: return "Planet Mass or Mass*sin(i) [Jupiter Mass] Reference"
case .pl_bmasse: return "Planet Mass or Mass*sin(i)"
case .pl_bmasseerr1: return "Planet Mass or Mass*sin(i) [Earth Mass] Upper Unc."
case .pl_bmasseerr2: return "Planet Mass or Mass*sin(i) [Earth Mass] Lower Unc."
case .pl_bmasselim: return "Planet Mass or Mass*sin(i) [Earth Mass] Limit Flag"
case .pl_bmassestr: return "Planet Mass or Mass*sin(i)"
case .pl_bmasse_reflink: return "Planet Mass or Mass*sin(i) [Earth Mass] Reference"
case .pl_bmassprov: return "Planet Mass or Mass*sin(i) Provenance"
case .st_teff: return "Stellar Effective Temperature"
case .st_tefferr1: return "Stellar Effective Temperature Upper Upper Unc."
case .st_tefferr2: return "Stellar Effective Temperature Lower Lower Unc."
case .st_tefflim: return "Stellar Effective Temperature Limit Flag"
case .st_teffstr: return "Stellar Effective Temperature"
case .st_teff_reflink: return "Stellar Effective Temperature Reference"
case .st_met: return "Stellar Metallicity"
case .st_meterr1: return "Stellar Metallicity Upper Unc."
case .st_meterr2: return "Stellar Metallicity Lower Unc."
case .st_metlim: return "Stellar Metallicity Limit Flag"
case .st_metstr: return "Stellar Metallicity"
case .st_met_reflink: return "Stellar Metallicity Reference"
case .st_radv: return "Systemic Radial Velocity"
case .st_radverr1: return "Systemic Radial Velocity Upper Unc."
case .st_radverr2: return "Systemic Radial Velocity Lower Unc."
case .st_radvlim: return "Systemic Radial Velocity Limit Flag"
case .st_radvstr: return "Systemic Radial Velocity"
case .st_radv_reflink: return "Systemic Radial Velocity Reference"
case .st_vsin: return "Stellar Rotational Velocity"
case .st_vsinerr1: return "Stellar Rotational Velocity [km/s] Upper Unc."
case .st_vsinerr2: return "Stellar Rotational Velocity [km/s] Lower Unc."
case .st_vsinlim: return "Stellar Rotational Velocity Limit Flag"
case .st_vsinstr: return "Stellar Rotational Velocity"
case .st_vsin_reflink: return "Stellar Rotational Velocity Reference"
case .st_lum: return "Stellar Luminosity"
case .st_lumerr1: return "Stellar Luminosity Upper Unc."
case .st_lumerr2: return "Stellar Luminosity Lower Unc."
case .st_lumlim: return "Stellar Luminosity Limit Flag"
case .st_lumstr: return "Stellar Luminosity"
case .st_lum_reflink: return "Stellar Luminosity Reference"
case .st_logg: return "Stellar Surface Gravity"
case .st_loggerr1: return "Stellar Surface Gravity Upper Unc."
case .st_loggerr2: return "Stellar Surface Gravity Lower Unc."
case .st_logglim: return "Stellar Surface Gravity Limit Flag"
case .st_loggstr: return "Stellar Surface Gravity"
case .st_logg_reflink: return "Stellar Surface Gravity Reference"
case .st_age: return "Stellar Age"
case .st_ageerr1: return "Stellar Age Upper Unc."
case .st_ageerr2: return "Stellar Age Lower Unc."
case .st_agelim: return "Stellar Age Limit Flag"
case .st_agestr: return "Stellar Age"
case .st_age_reflink: return "Stellar Age Reference"
case .st_mass: return "Stellar Mass"
case .st_masserr1: return "Stellar Mass Upper Unc."
case .st_masserr2: return "Stellar Mass Lower Unc."
case .st_masslim: return "Stellar Mass Limit Flag"
case .st_massstr: return "Stellar Mass"
case .st_mass_reflink: return "Stellar Mass Reference"
case .st_dens: return "Stellar Density"
case .st_denserr1: return "Stellar Density Upper Unc."
case .st_denserr2: return "Stellar Density Lower Unc."
case .st_denslim: return "Stellar Density Limit Flag"
case .st_densstr: return "Stellar Density"
case .st_dens_reflink: return "Stellar Density Reference"
case .st_rad: return "Stellar Radius"
case .st_raderr1: return "Stellar Radius Upper Unc."
case .st_raderr2: return "Stellar Radius Lower Unc."
case .st_radlim: return "Stellar Radius Limit Flag"
case .st_radstr: return "Stellar Radius"
case .st_rad_reflink: return "Stellar Radius Refence"
case .ttv_flag: return "Data show Transit Timing Variations"
case .ptv_flag: return "Detected by Pulsation Timing Variations"
case .tran_flag: return "Detected by Transits"
case .rv_flag: return "Detected by Radial Velocity Variations"
case .ast_flag: return "Detected by Astrometric Variations"
case .obm_flag: return "Detected by Orbital Brightness Modulations"
case .micro_flag: return "Detected by Microlensing"
case .etv_flag: return "Detected by Eclipse Timing Variations"
case .ima_flag: return "Detected by Imaging"
case .pul_flag: return "Detected by Pulsar Timing Variations"
case .sy_snum: return "Number of Stars"
case .sy_pnum: return "Number of Planets"
case .sy_mnum: return "Number of Moons"
case .st_nphot: return "Number of Photometry Time Series"
case .st_nrvc: return "Number of Radial Velocity Time Series"
case .st_nspec: return "Number of Stellar Spectra Measurements"
case .pl_nnotes: return "Number of Notes"
case .pl_ntranspec: return "Number of Transmission Spectra"
case .pl_nespec: return "Number of Eclipse Spectra"
case .pl_ndispec: return "Number of Direct Imaging Spectra"
case .sy_pm: return "Total Proper Motion"
case .sy_pmerr1: return "Total Proper Motion Upper Unc"
case .sy_pmerr2: return "Total Proper Motion Lower Unc"
case .sy_pmstr: return "Total Proper Motion"
case .sy_pm_reflink: return "Total Proper Motion Reference"
case .sy_pmra: return "Proper Motion (RA)"
case .sy_pmraerr1: return "Proper Motion (RA) [mas/yr] Upper Unc"
case .sy_pmraerr2: return "Proper Motion (RA) [mas/yr] Lower Unc"
case .sy_pmrastr: return "Proper Motion (RA)"
case .sy_pmdec: return "Proper Motion (Dec)"
case .sy_pmdecerr1: return "Proper Motion (Dec) [mas/yr] Upper Unc"
case .sy_pmdecerr2: return "Proper Motion (Dec) [mas/yr] Lower Unc"
case .sy_pmdecstr: return "Proper Motion (Dec)"
case .sy_plx: return "Parallax"
case .sy_plxerr1: return "Parallax [mas] Upper Unc"
case .sy_plxerr2: return "Parallax [mas] Lower Unc"
case .sy_plxstr: return "Parallax"
case .sy_plx_reflink: return "Parallax Reference"
case .sy_dist: return "Distance"
case .sy_disterr1: return "Distance [pc] Upper Unc"
case .sy_disterr2: return "Distance [pc] Lower Unc"
case .sy_diststr: return "Distance"
case .sy_dist_reflink: return "Distance Refence"
case .sy_bmag: return "B (Johnson) Magnitude"
case .sy_bmagerr1: return "B (Johnson) Magnitude Upper Unc"
case .sy_bmagerr2: return "B (Johnson) Magnitude Lower Unc"
case .sy_bmagstr: return "B (Johnson) Magnitude"
case .sy_bmag_reflink: return "B (Johnson) Magnitude Reference"
case .sy_vmag: return "V (Johnson) Magnitude"
case .sy_vmagerr1: return "V (Johnson) Magnitude Upper Unc"
case .sy_vmagerr2: return "V (Johnson) Magnitude Lower Unc"
case .sy_vmagstr: return "V (Johnson) Magnitude"
case .sy_vmag_reflink: return "V (Johnson) Magnitude Reference"
case .sy_jmag: return "J (2MASS) Magnitude"
case .sy_jmagerr1: return "J (2MASS) Magnitude Upper Unc"
case .sy_jmagerr2: return "J (2MASS) Magnitude Lower Unc"
case .sy_jmagstr: return "J (2MASS) Magnitude"
case .sy_jmag_reflink: return "J (2MASS) Magnitude Reference"
case .sy_hmag: return "H (2MASS) Magnitude"
case .sy_hmagerr1: return "H (2MASS) Magnitude Upper Unc"
case .sy_hmagerr2: return "H (2MASS) Magnitude Lower Unc"
case .sy_hmag_reflink: return "H (2MASS) Magnitude Reference"
case .sy_hmagstr: return "H (2MASS) Magnitude"
case .sy_kmag: return "Ks (2MASS) Magnitude"
case .sy_kmagerr1: return "Ks (2MASS) Magnitude Upper Unc"
case .sy_kmagerr2: return "Ks (2MASS) Magnitude Lower Unc"
case .sy_kmag_reflink: return "Ks (2MASS) Magnitude Reference"
case .sy_kmagstr: return "Ks (2MASS) Magnitude"
case .sy_umag: return "u (Sloan) Magnitude"
case .sy_umagerr1: return "u (Sloan) Magnitude Upper Unc"
case .sy_umagerr2: return "u (Sloan) Magnitude Lower Unc"
case .sy_umag_reflink: return "u (Sloan) Magnitude Reference"
case .sy_umagstr: return "u (Sloan) Magnitude"
case .sy_rmag: return "r (Sloan) Magnitude"
case .sy_rmagerr1: return "r (Sloan) Magnitude Upper Unc"
case .sy_rmagerr2: return "r (Sloan) Magnitude Lower Unc"
case .sy_rmag_reflink: return "r (Sloan) Magnitude Reference"
case .sy_rmagstr: return "r (Sloan) Magnitude"
case .sy_imag: return "i (Sloan) Magnitude"
case .sy_imagerr1: return "i (Sloan) Magnitude Upper Unc"
case .sy_imagerr2: return "i (Sloan) Magnitude Lower Unc"
case .sy_imag_reflink: return "i (Sloan) Magnitude Reference"
case .sy_imagstr: return "i (Sloan) Magnitude"
case .sy_zmag: return "z (Sloan) Magnitude"
case .sy_zmagerr1: return "z (Sloan) Magnitude Upper Unc"
case .sy_zmagerr2: return "z (Sloan) Magnitude Lower Unc"
case .sy_zmag_reflink: return "z (Sloan) Magnitude Reference"
case .sy_zmagstr: return "z (Sloan) Magnitude"
case .sy_w1mag: return "W1 (WISE) Magnitude"
case .sy_w1magerr1: return "W1 (WISE) Magnitude Upper Unc"
case .sy_w1magerr2: return "W1 (WISE) Magnitude Lower Unc"
case .sy_w1mag_reflink: return "W1 (WISE) Magnitude Reference"
case .sy_w1magstr: return "W1 (WISE) Magnitude"
case .sy_w2mag: return "W2 (WISE) Magnitude"
case .sy_w2magerr1: return "W2 (WISE) Magnitude Upper Unc"
case .sy_w2magerr2: return "W2 (WISE) Magnitude Lower Unc"
case .sy_w2mag_reflink: return "W2 (WISE) Magnitude Reference"
case .sy_w2magstr: return "W2 (WISE) Magnitude"
case .sy_w3mag: return "W3 (WISE) Magnitude"
case .sy_w3magerr1: return "W3 (WISE) Magnitude Upper Unc"
case .sy_w3magerr2: return "W3 (WISE) Magnitude Lower Unc"
case .sy_w3mag_reflink: return "W3 (WISE) Magnitude Reference"
case .sy_w3magstr: return "W3 (WISE) Magnitude"
case .sy_w4mag: return "W4 (WISE) Magnitude"
case .sy_w4magerr1: return "W4 (WISE) Magnitude Upper Unc"
case .sy_w4magerr2: return "W4 (WISE) Magnitude Lower Unc"
case .sy_w4mag_reflink: return "W4 (WISE) Magnitude Reference"
case .sy_w4magstr: return "W4 (WISE) Magnitude"
case .sy_gmag: return "g (Sloan) Magnitude"
case .sy_gmagerr1: return "g (Sloan) Magnitude Upper Unc"
case .sy_gmagerr2: return "g (Sloan) Magnitude Lower Unc"
case .sy_gmag_reflink: return "g (Sloan) Magnitude Reference"
case .sy_gmagstr: return "g (Sloan) Magnitude"
case .sy_gaiamag: return "Gaia Magnitude"
case .sy_gaiamagerr1: return "Gaia Magnitude Upper Unc"
case .sy_gaiamagerr2: return "Gaia Magnitude Lower Unc"
case .sy_gaiamag_reflink: return "Gaia Magnitude Reference"
case .sy_gaiamagstr: return "Gaia Magnitude"
case .sy_tmag: return "TESS Magnitude"
case .sy_tmagerr1: return "TESS Magnitude Upper Unc"
case .sy_tmagerr2: return "TESS Magnitude Lower Unc"
case .sy_tmag_reflink: return "TESS Magnitude Reference"
case .sy_tmagstr: return "TESS Magnitude"
case .pl_controv_flag: return "Controversial Flag"
case .pl_tranmid_systemref: return "Time Reference Frame and Standard"
case .pl_orbtper_systemref: return "Time Solnid Frame and Standard"
case .st_metratio: return "Stellar Metallicity Ratio"
case .st_spectype: return "Spectral Type"
case .sy_kepmag: return "Kepler Magnitude"
case .sy_kepmagerr1: return "Kepler Magnitude Upper Unc"
case .sy_kepmagerr2: return "Kepler Magnitude Lower Unc"
case .sy_kepmag_reflink: return "Kepler Magnitude Reference"
case .st_spectype_reflink: return "Spectral Type Reference"
case .sy_kepmagstr: return "Kepler Magnitude"
case .st_rotp: return "Stellar Rotational Period"
case .st_rotperr1: return "Stellar Rotational Period [days] Upper Unc."
case .st_rotperr2: return "Stellar Rotational Period [days] Lower Unc."
case .st_rotplim: return "Stellar Rotational Period Limit Flag"
case .st_rotpstr: return "Stellar Rotational Period"
case .st_rotp_reflink: return "Stellar Rotational Period Reference"
case .pl_projobliq: return "Projected Obliquity"
case .pl_projobliqerr1: return "Projected Obliquity Upper Unc."
case .pl_projobliqerr2: return "Projected Obliquity Lower Unc."
case .pl_projobliqlim: return "Projected Obliquity Limit Flag"
case .pl_projobliqstr: return "Projected Obliquity"
case .pl_projobliq_reflink: return "Projected Obliquity Reference"
case .pl_trueobliq: return "True Obliquity"
case .x: return "Spatial Coordinate X"
case .pl_trueobliqerr1: return "True Obliquity Upper Unc."
case .y: return "Spatial Coordinate Y"
case .pl_trueobliqerr2: return "True Obliquity Lower Unc."
case .z: return "Spatial Coordinate Z"
case .htm20: return "Spatial Index"
case .pl_trueobliqlim: return "True Obliquity Limit Flag"
case .gaia_id: return "GAIA ID"
case .pl_trueobliq_reflink: return "True Obliquity Reference"
case .cb_flag: return "Circumbinary Flag"
case .pl_trueobliqstr: return "True Obliquity"
case .sy_icmag: return "I (Cousins) Magnitude"
case .sy_icmagerr1: return "I (Cousins) Magnitude Upper Unc"
case .sy_icmagerr2: return "I (Cousins) Magnitude Lower Unc"
case .sy_icmagstr: return "I (Cousins) Magnitude"
case .sy_icmag_reflink: return "I (Cousins) Magnitude Solnid"
case .dkin_flag: return "Detected by Disk Kinematics"
case .pl_name: return "Planet Name"
case .pl_letter: return "Planet Letter"
case .hostname: return "Host Name"
case .hd_name: return "HD ID"
case .hip_name: return "HIP ID"
case .tic_id: return "TIC ID"
case .disc_pubdate: return "Discovery Publication Date"
case .disc_year: return "Discovery Year"
case .discoverymethod: return "Discovery Method"
case .disc_locale: return "Discovery Locale"
case .disc_facility: return "Discovery Facility"
case .disc_instrument: return "Discovery Instrument"
case .disc_telescope: return "Discovery Telescope"
case .disc_refname: return "Discovery Reference"
case .ra: return "RA [decimal]"
case .rastr: return "RA"
case .dec: return "Dec [decimal]"
case .decstr: return "Dec"
case .glon: return "Galactic Longitude"
case .glat: return "Galactic Latitude"
case .pl_angsep: return "Angular Separation"
case .pl_angseperr1: return "Angular Separation Upper Unc"
case .pl_angseperr2: return "Angular Separation Lower Unc"
case .elon: return "Ecliptic Longitude"
case .pl_angseplim: return "Angular Separation Limit Flag"
case .pl_angsepstr: return "Angular Separation"
case .elat: return "Ecliptic Latitude"
case .pl_orbper: return "Orbital Period"
case .pl_orbpererr1: return "Orbital Period Upper Unc."
case .pl_orbpererr2: return "Orbital Period Lower Unc."
case .pl_orbperlim: return "Orbital Period Limit Flag"
case .pl_orbperstr: return "Orbital Period"
case .ra_reflink: return "RA Reference"
case .pl_orbper_reflink: return "Orbital Period Reference"
case .pl_orblpererr1: return "Argument of Periastron Upper Unc."
case .pl_orblper: return "Argument of Periastron"
case .pl_orblpererr2: return "Argument of Periastron Lower Unc."
case .pl_orblperlim: return "Argument of Periastron Limit Flag"
case .pl_orblperstr: return "Argument of Periastron"
case .pl_orblper_reflink: return "Argument of Periastron Reference"
case .pl_orbsmax: return "Orbit Semi-Major Axis [au])"
case .pl_orbsmaxerr1: return "Orbit Semi-Major Axis Upper Unc."
case .pl_orbsmaxerr2: return "Orbit Semi-Major Axis Lower Unc."
case .pl_orbsmaxlim: return "Orbit Semi-Major Axis Limit Flag"
case .pl_orbsmax_reflink: return "Orbit Semi-Major Axis Reference"
case .pl_orbsmaxstr: return "Orbit Semi-Major Axis"
case .pl_orbincl: return "Inclination"
case .pl_orbinclerr1: return "Inclination Upper Unc."
case .pl_orbinclerr2: return "Inclination Lower Unc."
case .pl_orbincllim: return "Inclination Limit Flag"
case .pl_orbincl_reflink: return "Inclination Reference"
case .pl_orbinclstr: return "Inclination"
case .pl_orbtper: return "Epoch of Periastron"
case .pl_orbtpererr1: return "Epoch of Periastron Upper Unc."
case .pl_orbtpererr2: return "Epoch of Periastron Lower Unc."
case .pl_orbtperlim: return "Epoch of Periastron Limit Flag"
case .pl_orbtperstr: return "Epoch of Periastron"
case .pl_orbtper_reflink: return "Epoch of Periastron Reference"
case .pl_orbeccen: return "Eccentricity"
case .pl_orbeccenerr1: return "Eccentricity Upper Unc."
case .pl_orbeccenerr2: return "Eccentricity Lower Unc."
case .pl_orbeccenlim: return "Eccentricity Limit Flag"
}
}
}

public enum superwasptimeseries_columns:String, Codable, Identifiable, CaseIterable{
case sourceid // Mission specific source identification
case obsstart // Time Series Minimum Calendar date time
case obsstop // Time Series Maximum Calendar date time
case tstart // Time Series Minimum integer time
case tstop // Time Series Maximum integer time
case hjdstart // Time Series Minimum Julian Date
case hjdstop // Time Series Maximum Julian Date
case hjd_ref // Base Julian Date
case ra // Object Right Ascension
case dec // Object Declination
case wasp_mag // WASP Magnitude
case npts // Points in Light Curve
case tile // tile directory
case tm_statnpts // number of points used in TAMMAG2 statistics calculations
case tm_minvalue // minimum value of TAMMAG2 column
case tm_maxvalue // maximum value of TAMMAG2 column
case tm_mean // mean value of TAMMAG2 column
case tm_stddevwrtmean // Standard deviation with respect to mean of TAMMAG2 column
case tm_median // median value of TAMMAG2 column
case tm_stddevwrtmed // Standard deviation with respect to median of TAMMAG2 column
case tm_n5sigma // Number of points beyond 5 stddev wrt TAMMAG2 median
case tm_f5sigma // Fraction of points beyond 5 stddev wrt TAMMAG2 median
case tm_medabsdev // Median absolute deviation of TAMMAG2 column
case tm_chisquared // Reduced Chi Squared wrt TAMMAG2 median
case tm_range595 // Range of TAMMAG2, excluding 5% of minimum and 5% of maximum
case x //
case y //
case z //
case spt_ind // spatial index

public var id:String {
return self.rawValue
}

public var description:String {
switch self {
case .sourceid: return "Mission specific source identification"
case .obsstart: return "Time Series Minimum Calendar date time"
case .obsstop: return "Time Series Maximum Calendar date time"
case .tstart: return "Time Series Minimum integer time"
case .tstop: return "Time Series Maximum integer time"
case .hjdstart: return "Time Series Minimum Julian Date"
case .hjdstop: return "Time Series Maximum Julian Date"
case .hjd_ref: return "Base Julian Date"
case .ra: return "Object Right Ascension"
case .dec: return "Object Declination"
case .wasp_mag: return "WASP Magnitude"
case .npts: return "Points in Light Curve"
case .tile: return "tile directory"
case .tm_statnpts: return "number of points used in TAMMAG2 statistics calculations"
case .tm_minvalue: return "minimum value of TAMMAG2 column"
case .tm_maxvalue: return "maximum value of TAMMAG2 column"
case .tm_mean: return "mean value of TAMMAG2 column"
case .tm_stddevwrtmean: return "Standard deviation with respect to mean of TAMMAG2 column"
case .tm_median: return "median value of TAMMAG2 column"
case .tm_stddevwrtmed: return "Standard deviation with respect to median of TAMMAG2 column"
case .tm_n5sigma: return "Number of points beyond 5 stddev wrt TAMMAG2 median"
case .tm_f5sigma: return "Fraction of points beyond 5 stddev wrt TAMMAG2 median"
case .tm_medabsdev: return "Median absolute deviation of TAMMAG2 column"
case .tm_chisquared: return "Reduced Chi Squared wrt TAMMAG2 median"
case .tm_range595: return "Range of TAMMAG2, excluding 5% of minimum and 5% of maximum"
case .x: return ""
case .y: return ""
case .z: return ""
case .spt_ind: return "spatial index"
}
}
}

public enum kelttimeseries_columns:String, Codable, Identifiable, CaseIterable{
case kelt_sourceid // Mission specific source identification
case kelt_field // Field Designation
case kelt_orientation // Orientation
case proc_type // Raw or TFA (processed)
case kelt_proc_version // Pipeline Processing version
case ra // Right Ascension
case dec // Declination
case kelt_mag // KELT Magnitude
case obsstart // Time Series Minimum Calendar date time
case obsstop // Time Series Maximum Calendar date time
case bjdstart // Time Series Minimum Barycentric Julian Date
case bjdstop // Time Series Maximum Barycentric Julian Date
case mean // mean value of MAG column
case stddevwrtmean // Standard deviation with respect to mean of MAG column
case median // median value of MAG column
case stddevwrtmedian // Standard deviation with respect to median of MAG column
case npts // number of points used in MAG statistics calculations
case n5sigma // Number of points beyond 5 stddev wrt MAG median
case f5sigma // Fraction of points beyond 5 stddev wrt MAG median
case medabsdev // Median absolute deviation of MAG column
case chisquared // Reduced Chi Squared wrt MAG median
case range595 // Range of MAG, excluding 5% of minimum and 5% of maximum
case minvalue // minimum value of MAG column
case maxvalue // maximum value of MAG column
case x //
case y //
case z //
case spt_ind // spatial index

public var id:String {
return self.rawValue
}

public var description:String {
switch self {
case .kelt_sourceid: return "Mission specific source identification"
case .kelt_field: return "Field Designation"
case .kelt_orientation: return "Orientation"
case .proc_type: return "Raw or TFA (processed)"
case .kelt_proc_version: return "Pipeline Processing version"
case .ra: return "Right Ascension"
case .dec: return "Declination"
case .kelt_mag: return "KELT Magnitude"
case .obsstart: return "Time Series Minimum Calendar date time"
case .obsstop: return "Time Series Maximum Calendar date time"
case .bjdstart: return "Time Series Minimum Barycentric Julian Date"
case .bjdstop: return "Time Series Maximum Barycentric Julian Date"
case .mean: return "mean value of MAG column"
case .stddevwrtmean: return "Standard deviation with respect to mean of MAG column"
case .median: return "median value of MAG column"
case .stddevwrtmedian: return "Standard deviation with respect to median of MAG column"
case .npts: return "number of points used in MAG statistics calculations"
case .n5sigma: return "Number of points beyond 5 stddev wrt MAG median"
case .f5sigma: return "Fraction of points beyond 5 stddev wrt MAG median"
case .medabsdev: return "Median absolute deviation of MAG column"
case .chisquared: return "Reduced Chi Squared wrt MAG median"
case .range595: return "Range of MAG, excluding 5% of minimum and 5% of maximum"
case .minvalue: return "minimum value of MAG column"
case .maxvalue: return "maximum value of MAG column"
case .x: return ""
case .y: return ""
case .z: return ""
case .spt_ind: return "spatial index"
}
}
}

public enum stellarhosts_columns:String, Codable, Identifiable, CaseIterable{
case st_lum // Stellar Luminosity [log(Solar)]
case st_lumerr1 // Stellar Luminosity Upper Unc. [log(Solar)]
case st_lumerr2 // Stellar Luminosity Lower Unc. [log(Solar)]
case st_lumlim // Stellar Luminosity Limit Flag
case st_logg // Stellar Surface Gravity [log(cm/s**2)]
case st_loggerr1 // Stellar Surface Gravity Upper Unc. [log(cm/s**2)]
case st_loggerr2 // Stellar Surface Gravity Lower Unc. [log(cm/s**2)]
case st_logglim // Stellar Surface Gravity Limit Flag
case st_age // Stellar Age [Gyr]
case st_ageerr1 // Stellar Age Upper Unc. [Gyr]
case st_ageerr2 // Stellar Age Lower Unc. [Gyr]
case st_agelim // Stellar Age Limit Flag
case st_mass // Stellar Mass [Solar mass]
case st_masserr1 // Stellar Mass Upper Unc. [Solar mass]
case st_masserr2 // Stellar Mass Lower Unc. [Solar mass]
case st_masslim // Stellar Mass Limit Flag
case st_dens // Stellar Density [g/cm**3]
case st_denserr1 // Stellar Density Upper Unc. [g/cm**3]
case st_denserr2 // Stellar Density Lower Unc. [g/cm**3]
case st_denslim // Stellar Density Limit Flag
case st_rad // Stellar Radius [Solar Radius]
case st_raderr1 // Stellar Radius Upper Unc. [Solar Radius]
case st_raderr2 // Stellar Radius Lower Unc. [Solar Radius]
case st_radlim // Stellar Radius Limit Flag
case sy_snum // Number of Stars
case sy_pnum // Number of Planets
case sy_mnum // Number of Moons
case sy_pm // Total Proper Motion [mas/yr]
case sy_pmerr1 // Total Proper Motion Upper Unc [mas/yr]
case sy_pmerr2 // Total Proper Motion Lower Unc [mas/yr]
case sy_pmra // Proper Motion (RA) [mas/yr]
case sy_pmraerr1 // Proper Motion (RA) [mas/yr] Upper Unc
case sy_pmraerr2 // Proper Motion (RA) [mas/yr] Lower Unc
case sy_pmdec // Proper Motion (Dec) [mas/yr]
case sy_pmdecerr1 // Proper Motion (Dec) [mas/yr] Upper Unc
case sy_pmdecerr2 // Proper Motion (Dec) [mas/yr] Lower Unc
case sy_plx // Parallax [mas]
case sy_plxerr1 // Parallax [mas] Upper Unc
case sy_plxerr2 // Parallax [mas] Lower Unc
case sy_dist // Distance [pc]
case sy_disterr1 // Distance [pc] Upper Unc
case sy_disterr2 // Distance [pc] Lower Unc
case sy_bmag // B (Johnson) Magnitude
case sy_bmagerr1 // B (Johnson) Magnitude Upper Unc
case sy_bmagerr2 // B (Johnson) Magnitude Lower Unc
case sy_vmag // V (Johnson) Magnitude
case sy_vmagerr1 // V (Johnson) Magnitude Upper Unc
case sy_vmagerr2 // V (Johnson) Magnitude Lower Unc
case sy_jmag // J (2MASS) Magnitude
case sy_jmagerr1 // J (2MASS) Magnitude Upper Unc
case sy_jmagerr2 // J (2MASS) Magnitude Lower Unc
case sy_hmag // H (2MASS) Magnitude
case sy_hmagerr1 // H (2MASS) Magnitude Upper Unc
case sy_hmagerr2 // H (2MASS) Magnitude Lower Unc
case sy_kmag // Ks (2MASS) Magnitude
case sy_kmagerr1 // Ks (2MASS) Magnitude Upper Unc
case sy_kmagerr2 // Ks (2MASS) Magnitude Lower Unc
case sy_umag // u (Sloan) Magnitude
case sy_umagerr1 // u (Sloan) Magnitude Upper Unc
case sy_umagerr2 // u (Sloan) Magnitude Lower Unc
case sy_rmag // r (Sloan) Magnitude
case sy_rmagerr1 // r (Sloan) Magnitude Upper Unc
case sy_rmagerr2 // r (Sloan) Magnitude Lower Unc
case sy_imag // i (Sloan) Magnitude
case sy_imagerr1 // i (Sloan) Magnitude Upper Unc
case sy_imagerr2 // i (Sloan) Magnitude Lower Unc
case sy_zmag // z (Sloan) Magnitude
case sy_zmagerr1 // z (Sloan) Magnitude Upper Unc
case sy_zmagerr2 // z (Sloan) Magnitude Lower Unc
case sy_w1mag // W1 (WISE) Magnitude
case sy_w1magerr1 // W1 (WISE) Magnitude Upper Unc
case sy_w1magerr2 // W1 (WISE) Magnitude Lower Unc
case sy_w2mag // W2 (WISE) Magnitude
case sy_w2magerr1 // W2 (WISE) Magnitude Upper Unc
case sy_w2magerr2 // W2 (WISE) Magnitude Lower Unc
case sy_w3mag // W3 (WISE) Magnitude
case sy_w3magerr1 // W3 (WISE) Magnitude Upper Unc
case sy_w3magerr2 // W3 (WISE) Magnitude Lower Unc
case sy_w4mag // W4 (WISE) Magnitude
case sy_w4magerr1 // W4 (WISE) Magnitude Upper Unc
case sy_w4magerr2 // W4 (WISE) Magnitude Lower Unc
case sy_gmag // g (Sloan) Magnitude
case sy_gmagerr1 // g (Sloan) Magnitude Upper Unc
case sy_gmagerr2 // g (Sloan) Magnitude Lower Unc
case sy_gaiamag // Gaia Magnitude
case sy_gaiamagerr1 // Gaia Magnitude Upper Unc
case sy_gaiamagerr2 // Gaia Magnitude Lower Unc
case sy_tmag // TESS Magnitude
case sy_tmagerr1 // TESS Magnitude Upper Unc
case sy_tmagerr2 // TESS Magnitude Lower Unc
case sy_name // System Name
case st_metratio // Stellar Metallicity Ratio
case st_spectype // Spectral Type
case sy_kepmag // Kepler Magnitude
case sy_kepmagerr1 // Kepler Magnitude Upper Unc
case sy_kepmagerr2 // Kepler Magnitude Lower Unc
case st_rotp // Stellar Rotational Period [day]
case st_rotperr1 // Stellar Rotational Period [day] Upper Unc.
case st_rotperr2 // Stellar Rotational Period [day] Lower Unc.
case st_rotplim // Stellar Rotational Period Limit Flag
case gaia_id // GAIA ID
case cb_flag // Circumbinary Flag
case sy_icmag // I (Cousins) Magnitude
case sy_icmagerr1 // I (Cousins) Magnitude Upper Unc
case sy_icmagerr2 // I (Cousins) Magnitude Lower Unc
case hostname // Host Name
case hd_name // HD ID
case hip_name // HIP ID
case tic_id // TIC ID
case st_refname // Stellar Parameter Reference
case sy_refname // System Parameter Reference
case ra // RA [decimal]
case rastr // RA [sexagesimal]
case dec // Dec [decimal]
case decstr // Dec [sexagesimal]
case glon // Galactic Longitude [deg]
case glat // Galactic Latitude [deg]
case elon // Ecliptic Longitude [deg]
case elat // Ecliptic Latitude [deg]
case st_teff // Stellar Effective Temperature [K]
case st_tefferr1 // Stellar Effective Temperature Upper Unc. [K]
case st_tefferr2 // Stellar Effective Temperature Lower Unc. [K]
case st_tefflim // Stellar Effective Temperature Limit Flag
case st_met // Stellar Metallicity [dex]
case st_meterr1 // Stellar Metallicity Upper Unc. [dex]
case st_meterr2 // Stellar Metallicity Lower Unc. [dex]
case st_metlim // Stellar Metallicity Limit Flag
case st_radv // Systemic Radial Velocity [km/s]
case st_radverr1 // Systemic Radial Velocity Upper Unc. [km/s]
case st_radverr2 // Systemic Radial Velocity Lower Unc. [km/s]
case st_radvlim // Systemic Radial Velocity Limit Flag
case st_vsin // Stellar Rotational Velocity [km/s]
case st_vsinerr1 // Stellar Rotational Velocity [km/s] Upper Unc.
case st_vsinerr2 // Stellar Rotational Velocity [km/s] Lower Unc.
case st_vsinlim // Stellar Rotational Velocity Limit Flag

public var id:String {
return self.rawValue
}

public var description:String {
switch self {
case .st_lum: return "Stellar Luminosity [log(Solar)]"
case .st_lumerr1: return "Stellar Luminosity Upper Unc. [log(Solar)]"
case .st_lumerr2: return "Stellar Luminosity Lower Unc. [log(Solar)]"
case .st_lumlim: return "Stellar Luminosity Limit Flag"
case .st_logg: return "Stellar Surface Gravity [log(cm/s**2)]"
case .st_loggerr1: return "Stellar Surface Gravity Upper Unc. [log(cm/s**2)]"
case .st_loggerr2: return "Stellar Surface Gravity Lower Unc. [log(cm/s**2)]"
case .st_logglim: return "Stellar Surface Gravity Limit Flag"
case .st_age: return "Stellar Age [Gyr]"
case .st_ageerr1: return "Stellar Age Upper Unc. [Gyr]"
case .st_ageerr2: return "Stellar Age Lower Unc. [Gyr]"
case .st_agelim: return "Stellar Age Limit Flag"
case .st_mass: return "Stellar Mass [Solar mass]"
case .st_masserr1: return "Stellar Mass Upper Unc. [Solar mass]"
case .st_masserr2: return "Stellar Mass Lower Unc. [Solar mass]"
case .st_masslim: return "Stellar Mass Limit Flag"
case .st_dens: return "Stellar Density [g/cm**3]"
case .st_denserr1: return "Stellar Density Upper Unc. [g/cm**3]"
case .st_denserr2: return "Stellar Density Lower Unc. [g/cm**3]"
case .st_denslim: return "Stellar Density Limit Flag"
case .st_rad: return "Stellar Radius [Solar Radius]"
case .st_raderr1: return "Stellar Radius Upper Unc. [Solar Radius]"
case .st_raderr2: return "Stellar Radius Lower Unc. [Solar Radius]"
case .st_radlim: return "Stellar Radius Limit Flag"
case .sy_snum: return "Number of Stars"
case .sy_pnum: return "Number of Planets"
case .sy_mnum: return "Number of Moons"
case .sy_pm: return "Total Proper Motion [mas/yr]"
case .sy_pmerr1: return "Total Proper Motion Upper Unc [mas/yr]"
case .sy_pmerr2: return "Total Proper Motion Lower Unc [mas/yr]"
case .sy_pmra: return "Proper Motion (RA) [mas/yr]"
case .sy_pmraerr1: return "Proper Motion (RA) [mas/yr] Upper Unc"
case .sy_pmraerr2: return "Proper Motion (RA) [mas/yr] Lower Unc"
case .sy_pmdec: return "Proper Motion (Dec) [mas/yr]"
case .sy_pmdecerr1: return "Proper Motion (Dec) [mas/yr] Upper Unc"
case .sy_pmdecerr2: return "Proper Motion (Dec) [mas/yr] Lower Unc"
case .sy_plx: return "Parallax [mas]"
case .sy_plxerr1: return "Parallax [mas] Upper Unc"
case .sy_plxerr2: return "Parallax [mas] Lower Unc"
case .sy_dist: return "Distance [pc]"
case .sy_disterr1: return "Distance [pc] Upper Unc"
case .sy_disterr2: return "Distance [pc] Lower Unc"
case .sy_bmag: return "B (Johnson) Magnitude"
case .sy_bmagerr1: return "B (Johnson) Magnitude Upper Unc"
case .sy_bmagerr2: return "B (Johnson) Magnitude Lower Unc"
case .sy_vmag: return "V (Johnson) Magnitude"
case .sy_vmagerr1: return "V (Johnson) Magnitude Upper Unc"
case .sy_vmagerr2: return "V (Johnson) Magnitude Lower Unc"
case .sy_jmag: return "J (2MASS) Magnitude"
case .sy_jmagerr1: return "J (2MASS) Magnitude Upper Unc"
case .sy_jmagerr2: return "J (2MASS) Magnitude Lower Unc"
case .sy_hmag: return "H (2MASS) Magnitude"
case .sy_hmagerr1: return "H (2MASS) Magnitude Upper Unc"
case .sy_hmagerr2: return "H (2MASS) Magnitude Lower Unc"
case .sy_kmag: return "Ks (2MASS) Magnitude"
case .sy_kmagerr1: return "Ks (2MASS) Magnitude Upper Unc"
case .sy_kmagerr2: return "Ks (2MASS) Magnitude Lower Unc"
case .sy_umag: return "u (Sloan) Magnitude"
case .sy_umagerr1: return "u (Sloan) Magnitude Upper Unc"
case .sy_umagerr2: return "u (Sloan) Magnitude Lower Unc"
case .sy_rmag: return "r (Sloan) Magnitude"
case .sy_rmagerr1: return "r (Sloan) Magnitude Upper Unc"
case .sy_rmagerr2: return "r (Sloan) Magnitude Lower Unc"
case .sy_imag: return "i (Sloan) Magnitude"
case .sy_imagerr1: return "i (Sloan) Magnitude Upper Unc"
case .sy_imagerr2: return "i (Sloan) Magnitude Lower Unc"
case .sy_zmag: return "z (Sloan) Magnitude"
case .sy_zmagerr1: return "z (Sloan) Magnitude Upper Unc"
case .sy_zmagerr2: return "z (Sloan) Magnitude Lower Unc"
case .sy_w1mag: return "W1 (WISE) Magnitude"
case .sy_w1magerr1: return "W1 (WISE) Magnitude Upper Unc"
case .sy_w1magerr2: return "W1 (WISE) Magnitude Lower Unc"
case .sy_w2mag: return "W2 (WISE) Magnitude"
case .sy_w2magerr1: return "W2 (WISE) Magnitude Upper Unc"
case .sy_w2magerr2: return "W2 (WISE) Magnitude Lower Unc"
case .sy_w3mag: return "W3 (WISE) Magnitude"
case .sy_w3magerr1: return "W3 (WISE) Magnitude Upper Unc"
case .sy_w3magerr2: return "W3 (WISE) Magnitude Lower Unc"
case .sy_w4mag: return "W4 (WISE) Magnitude"
case .sy_w4magerr1: return "W4 (WISE) Magnitude Upper Unc"
case .sy_w4magerr2: return "W4 (WISE) Magnitude Lower Unc"
case .sy_gmag: return "g (Sloan) Magnitude"
case .sy_gmagerr1: return "g (Sloan) Magnitude Upper Unc"
case .sy_gmagerr2: return "g (Sloan) Magnitude Lower Unc"
case .sy_gaiamag: return "Gaia Magnitude"
case .sy_gaiamagerr1: return "Gaia Magnitude Upper Unc"
case .sy_gaiamagerr2: return "Gaia Magnitude Lower Unc"
case .sy_tmag: return "TESS Magnitude"
case .sy_tmagerr1: return "TESS Magnitude Upper Unc"
case .sy_tmagerr2: return "TESS Magnitude Lower Unc"
case .sy_name: return "System Name"
case .st_metratio: return "Stellar Metallicity Ratio"
case .st_spectype: return "Spectral Type"
case .sy_kepmag: return "Kepler Magnitude"
case .sy_kepmagerr1: return "Kepler Magnitude Upper Unc"
case .sy_kepmagerr2: return "Kepler Magnitude Lower Unc"
case .st_rotp: return "Stellar Rotational Period [day]"
case .st_rotperr1: return "Stellar Rotational Period [day] Upper Unc."
case .st_rotperr2: return "Stellar Rotational Period [day] Lower Unc."
case .st_rotplim: return "Stellar Rotational Period Limit Flag"
case .gaia_id: return "GAIA ID"
case .cb_flag: return "Circumbinary Flag"
case .sy_icmag: return "I (Cousins) Magnitude"
case .sy_icmagerr1: return "I (Cousins) Magnitude Upper Unc"
case .sy_icmagerr2: return "I (Cousins) Magnitude Lower Unc"
case .hostname: return "Host Name"
case .hd_name: return "HD ID"
case .hip_name: return "HIP ID"
case .tic_id: return "TIC ID"
case .st_refname: return "Stellar Parameter Reference"
case .sy_refname: return "System Parameter Reference"
case .ra: return "RA [decimal]"
case .rastr: return "RA [sexagesimal]"
case .dec: return "Dec [decimal]"
case .decstr: return "Dec [sexagesimal]"
case .glon: return "Galactic Longitude [deg]"
case .glat: return "Galactic Latitude [deg]"
case .elon: return "Ecliptic Longitude [deg]"
case .elat: return "Ecliptic Latitude [deg]"
case .st_teff: return "Stellar Effective Temperature [K]"
case .st_tefferr1: return "Stellar Effective Temperature Upper Unc. [K]"
case .st_tefferr2: return "Stellar Effective Temperature Lower Unc. [K]"
case .st_tefflim: return "Stellar Effective Temperature Limit Flag"
case .st_met: return "Stellar Metallicity [dex]"
case .st_meterr1: return "Stellar Metallicity Upper Unc. [dex]"
case .st_meterr2: return "Stellar Metallicity Lower Unc. [dex]"
case .st_metlim: return "Stellar Metallicity Limit Flag"
case .st_radv: return "Systemic Radial Velocity [km/s]"
case .st_radverr1: return "Systemic Radial Velocity Upper Unc. [km/s]"
case .st_radverr2: return "Systemic Radial Velocity Lower Unc. [km/s]"
case .st_radvlim: return "Systemic Radial Velocity Limit Flag"
case .st_vsin: return "Stellar Rotational Velocity [km/s]"
case .st_vsinerr1: return "Stellar Rotational Velocity [km/s] Upper Unc."
case .st_vsinerr2: return "Stellar Rotational Velocity [km/s] Lower Unc."
case .st_vsinlim: return "Stellar Rotational Velocity Limit Flag"
}
}
}

public enum transitspec_columns:String, Codable, Identifiable, CaseIterable{
case centralwavelng // Central Wavelength
case bandwidth // Band Width
case plntransdep // Transit Depth
case plntransdeperr1 // Transit Depth Upper Uncertainty
case plntransdeperr2 // Transit Depth Lower Uncertainty
case plntransdeplim // Transit Depth Limit Flag
case plntransdepstr // Transit Depth String for Display
case plnradj // Planet Radius in Jupiter Radii
case plnradjerr1 // Planet Radius in Jupiter Radii Upper Uncertainty
case plnradjerr2 // Planet Radius in Jupiter Radii Lower Uncertainty
case plnradjlim // Planet Radius in Jupiter Radii Limit Flag
case plnradjstr // Planet Radius in Jupiter Radii String for Display
case plnratror // Ratio of Planet to Stellar Radius
case plnratrorerr1 // Ratio of Planet to Stellar Radius Upper Uncertainty
case plnratrorerr2 // Ratio of Planet to Stellar Radius Lower Uncertainty
case plnratrorlim // Ratio of Planet to Stellar Radius Limit Flag
case plnratrorstr // Ratio of Planet to Stellar Radius String for Display
case plntranmid // Transit Mid-Point (BJD)
case plntranmiderr1 // Transit Mid-Point Upper Uncertainty (BJD)
case plntranmiderr2 // Transit Mid-Point Lower Uncertatinty (BJD)
case plntranmidlim // Transit Mid-Point Limit Flag
case plntranmidstr // Transit Mid-Point String for Display
case facility // Facility Used to Get Data
case instrument // Instrument Used to Get Data
case rowupdate // Last Update Date
case plntname // Planet Name
case plntranreflink // Reference HTML Link

public var id:String {
return self.rawValue
}

public var description:String {
switch self {
case .centralwavelng: return "Central Wavelength"
case .bandwidth: return "Band Width"
case .plntransdep: return "Transit Depth"
case .plntransdeperr1: return "Transit Depth Upper Uncertainty"
case .plntransdeperr2: return "Transit Depth Lower Uncertainty"
case .plntransdeplim: return "Transit Depth Limit Flag"
case .plntransdepstr: return "Transit Depth String for Display"
case .plnradj: return "Planet Radius in Jupiter Radii"
case .plnradjerr1: return "Planet Radius in Jupiter Radii Upper Uncertainty"
case .plnradjerr2: return "Planet Radius in Jupiter Radii Lower Uncertainty"
case .plnradjlim: return "Planet Radius in Jupiter Radii Limit Flag"
case .plnradjstr: return "Planet Radius in Jupiter Radii String for Display"
case .plnratror: return "Ratio of Planet to Stellar Radius"
case .plnratrorerr1: return "Ratio of Planet to Stellar Radius Upper Uncertainty"
case .plnratrorerr2: return "Ratio of Planet to Stellar Radius Lower Uncertainty"
case .plnratrorlim: return "Ratio of Planet to Stellar Radius Limit Flag"
case .plnratrorstr: return "Ratio of Planet to Stellar Radius String for Display"
case .plntranmid: return "Transit Mid-Point (BJD)"
case .plntranmiderr1: return "Transit Mid-Point Upper Uncertainty (BJD)"
case .plntranmiderr2: return "Transit Mid-Point Lower Uncertatinty (BJD)"
case .plntranmidlim: return "Transit Mid-Point Limit Flag"
case .plntranmidstr: return "Transit Mid-Point String for Display"
case .facility: return "Facility Used to Get Data"
case .instrument: return "Instrument Used to Get Data"
case .rowupdate: return "Last Update Date"
case .plntname: return "Planet Name"
case .plntranreflink: return "Reference HTML Link"
}
}
}

public enum emissionspec_columns:String, Codable, Identifiable, CaseIterable{
case centralwavelng // Central wavelength [microns]
case bandwidth // Bandwidth [microns]
case especlipdep // Eclipse depth [ppm]
case especlipdeperr1 // Eclipse depth Upper Uncertainty [ppm]
case especlipdeperr2 // Eclipse depth time Lower Uncertainty [ppm]
case especlipdeplim // Eclipse depth Limit Flag
case especlipdepstr // Eclipse depth String for Display
case espbritemp // Brightness temperature [K]
case espbritemperr1 // Brightness temperature Upper Uncertainty [K]
case espbritemperr2 // Brightness temperature Lower Uncertainty [K]
case espbritemplim // Brightness temperature Limit Flag
case espbritempstr // Brightness temperature String for Display
case facility // Facility
case instrument // Instrument
case rowupdate // Rowupdate
case plntname // Planet name
case note // Notes
case plntreflink // ADS Reference link

public var id:String {
return self.rawValue
}

public var description:String {
switch self {
case .centralwavelng: return "Central wavelength [microns]"
case .bandwidth: return "Bandwidth [microns]"
case .especlipdep: return "Eclipse depth [ppm]"
case .especlipdeperr1: return "Eclipse depth Upper Uncertainty [ppm]"
case .especlipdeperr2: return "Eclipse depth time Lower Uncertainty [ppm]"
case .especlipdeplim: return "Eclipse depth Limit Flag"
case .especlipdepstr: return "Eclipse depth String for Display"
case .espbritemp: return "Brightness temperature [K]"
case .espbritemperr1: return "Brightness temperature Upper Uncertainty [K]"
case .espbritemperr2: return "Brightness temperature Lower Uncertainty [K]"
case .espbritemplim: return "Brightness temperature Limit Flag"
case .espbritempstr: return "Brightness temperature String for Display"
case .facility: return "Facility"
case .instrument: return "Instrument"
case .rowupdate: return "Rowupdate"
case .plntname: return "Planet name"
case .note: return "Notes"
case .plntreflink: return "ADS Reference link"
}
}
}

public enum ps_columns:String, Codable, Identifiable, CaseIterable{
case pl_name // Planet Name
case pl_letter // Planet Letter
case hostname // Host Name
case hd_name // HD ID
case hip_name // HIP ID
case tic_id // TIC ID
case default_flag // Default Parameter Set
case pl_refname // Planetary Parameter Reference
case st_refname // Stellar Parameter Reference
case sy_refname // System Parameter Reference
case disc_pubdate // Discovery Publication Date
case disc_year // Discovery Year
case discoverymethod // Discovery Method
case disc_locale // Discovery Locale
case disc_facility // Discovery Facility
case disc_instrument // Discovery Instrument
case disc_telescope // Discovery Telescope
case disc_refname // Discovery Reference
case ra // RA [decimal]
case rastr // RA [sexagesimal]
case dec // Dec [decimal]
case decstr // Dec [sexagesimal]
case glon // Galactic Longitude [deg]
case glat // Galactic Latitude [deg]
case elon // Ecliptic Longitude [deg]
case elat // Ecliptic Latitude [deg]
case pl_orbper // Orbital Period [day]
case pl_orbpererr1 // Orbital Period Upper Unc. [day]
case pl_orbpererr2 // Orbital Period Lower Unc. [day]
case pl_orbperlim // Orbital Period Limit Flag
case pl_orbperstr // Orbital Period [day]
case pl_orblpererr1 // Argument of Periastron Upper Unc. [deg]
case pl_orblper // Argument of Periastron [deg]
case pl_orblpererr2 // Argument of Periastron Lower Unc. [deg]
case pl_orblperlim // Argument of Periastron Limit Flag
case pl_orblperstr // Argument of Periastron [deg]
case pl_orbsmax // Orbit Semi-Major Axis [au]
case pl_orbsmaxerr1 // Orbit Semi-Major Axis Upper Unc. [au]
case pl_orbsmaxerr2 // Orbit Semi-Major Axis Lower Unc. [au]
case pl_orbsmaxlim // Orbit Semi-Major Axis Limit Flag
case pl_orbsmaxstr // Orbit Semi-Major Axis [au]
case pl_orbincl // Inclination [deg]
case pl_orbinclerr1 // Inclination Upper Unc. [deg]
case pl_orbinclerr2 // Inclination Lower Unc. [deg]
case pl_orbincllim // Inclination Limit Flag
case pl_orbinclstr // Inclination [deg]
case pl_orbtper // Epoch of Periastron [day]
case pl_orbtpererr1 // Epoch of Periastron Upper Unc. [day]
case pl_orbtpererr2 // Epoch of Periastron Lower Unc. [day]
case pl_orbtperlim // Epoch of Periastron Limit Flag
case pl_orbtperstr // Epoch of Periastron [day]
case pl_orbeccen // Eccentricity
case pl_orbeccenerr1 // Eccentricity Upper Unc.
case pl_orbeccenerr2 // Eccentricity Lower Unc.
case pl_orbeccenlim // Eccentricity Limit Flag
case pl_orbeccenstr // Eccentricity
case pl_eqt // Equilibrium Temperature [K]
case pl_eqterr1 // Equilibrium Temperature Upper Unc. [K]
case pl_eqterr2 // Equilibrium Temperature Lower Unc. [K]
case pl_eqtlim // Equilibrium Temperature Limit Flag
case pl_eqtstr // Equilibrium Temperature [K]
case pl_occdep // Occultation Depth [%]
case pl_occdeperr1 // Occultation Depth Upper Unc. [%]
case pl_occdeperr2 // Occultation Depth Lower Unc. [%]
case pl_occdeplim // Occultation Depth Limit Flag
case pl_occdepstr // Occultation Depth [%]
case pl_insol // Insolation Flux [Earth Flux]
case pl_insolerr1 // Insolation Flux Upper Unc. [Earth Flux]
case pl_insolerr2 // Insolation Flux Lower Unc. [Earth Flux]
case pl_insollim // Insolation Flux Limit Flag
case pl_insolstr // Insolation Flux [Earth Flux]
case pl_dens // Planet Density [g/cm**3]
case pl_denserr1 // Planet Density Upper Unc. [g/cm**3]
case pl_denserr2 // Planet Density Lower Unc. [g/cm**3]
case pl_denslim // Planet Density Limit Flag
case pl_densstr // Planet Density [g/cm**3]
case pl_trandep // Transit Depth [%]
case pl_trandeperr1 // Transit Depth Upper Unc. [%]
case pl_trandeperr2 // Transit Depth Lower Unc. [%]
case pl_trandeplim // Transit Depth Limit Flag
case pl_trandepstr // Transit Depth [%]
case pl_tranmid // Transit Midpoint [day]
case pl_tranmiderr1 // Transit Midpoint Upper Unc. [day]
case pl_tranmiderr2 // Transit Midpoint Lower Unc. [day]
case pl_tranmidlim // Transit Midpoint Limit Flag
case pl_tranmidstr // Time of Conjunction (Transit Midpoint) [day]
case pl_trandur // Transit Duration [hour]
case pl_trandurerr1 // Transit Duration Upper Unc. [hour]
case pl_trandurerr2 // Transit Duration Lower Unc. [hour]
case pl_trandurlim // Transit Duration Limit Flag
case pl_trandurstr // Transit Duration [hour]
case pl_rvamp // Radial Velocity Amplitude [m/s]
case pl_rvamperr1 // Radial Velocity Amplitude Upper Unc. [m/s]
case pl_rvamperr2 // Radial Velocity Amplitude Lower Unc. [m/s]
case pl_rvamplim // Radial Velocity Amplitude Limit Flag
case pl_rvampstr // Radial Velocity Amplitude [m/s]
case pl_radj // Planet Radius [Jupiter Radius]
case pl_radjerr1 // Planet Radius Upper Unc. [Jupiter Radius]
case pl_radjerr2 // Planet Radius Lower Unc. [Jupiter Radius]
case pl_radjlim // Planet Radius Limit Flag
case pl_radjstr // Planet Radius [Jupiter Radius]
case pl_rade // Planet Radius [Earth Radius]
case pl_radeerr1 // Planet Radius Upper Unc. [Earth Radius]
case pl_radeerr2 // Planet Radius Lower Unc. [Earth Radius]
case pl_radelim // Planet Radius Limit Flag
case pl_radestr // Planet Radius [Earth Radius]
case pl_ratror // Ratio of Planet to Stellar Radius
case pl_ratrorerr1 // Ratio of Planet to Stellar Radius Upper Unc.
case pl_ratrorerr2 // Ratio of Planet to Stellar Radius Lower Unc.
case pl_ratrorlim // Ratio of Planet to Stellar Radius Limit Flag
case pl_ratrorstr // Ratio of Planet to Stellar Radius
case pl_ratdor // Ratio of Semi-Major Axis to Stellar Radius
case pl_ratdorerr1 // Ratio of Semi-Major Axis to Stellar Radius Upper Unc.
case pl_ratdorerr2 // Ratio of Semi-Major Axis to Stellar Radius Lower Unc.
case pl_ratdorlim // Ratio of Semi-Major Axis to Stellar Radius Limit Flag
case pl_ratdorstr // Ratio of Semi-Major Axis to Stellar Radius
case pl_imppar // Impact Parameter
case pl_impparerr1 // Impact Parameter Upper Unc.
case pl_impparerr2 // Impact Parameter Lower Unc.
case pl_impparlim // Impact Parameter Limit Flag
case pl_impparstr // Impact Parameter
case pl_cmassj // Planet Mass*sin(i)/sin(i) [Jupiter Mass]
case pl_cmassjerr1 // Planet Mass*sin(i)/sin(i) [Jupiter Mass] Upper Unc.
case pl_cmassjerr2 // Planet Mass*sin(i)/sin(i) [Jupiter Mass] Lower Unc.
case pl_cmassjlim // Planet Mass*sin(i)/sin(i) [Jupiter Mass] Limit Flag
case pl_cmassjstr // Planet Mass*sin(i)/sin(i) [Jupiter Mass]
case pl_cmasse // Planet Mass*sin(i)/sin(i) [Earth Mass]
case pl_cmasseerr1 // Planet Mass*sin(i)/sin(i) [Earth Mass] Upper Unc.
case pl_cmasseerr2 // Planet Mass*sin(i)/sin(i) [Earth Mass] Lower Unc.
case pl_cmasselim // Planet Mass*sin(i)/sin(i) [Earth Mass] Limit Flag
case pl_cmassestr // Planet Mass*sin(i)/sin(i) [Earth Mass]
case pl_massj // Planet Mass [Jupiter Mass]
case pl_massjerr1 // Planet Mass [Jupiter Mass] Upper Unc.
case pl_massjerr2 // Planet Mass [Jupiter Mass] Lower Unc.
case pl_massjlim // Planet Mass [Jupiter Mass] Limit Flag
case pl_massjstr // Planet Mass [Jupiter Mass]
case pl_masse // Planet Mass [Earth Mass]
case pl_masseerr1 // Planet Mass [Earth Mass] Upper Unc.
case pl_masseerr2 // Planet Mass [Earth Mass] Lower Unc.
case pl_masselim // Planet Mass [Earth Mass] Limit Flag
case pl_massestr // Planet Mass [Earth Mass]
case pl_bmassj // Planet Mass or Mass*sin(i) [Jupiter Mass]
case pl_bmassjerr1 // Planet Mass or Mass*sin(i) [Jupiter Mass] Upper Unc.
case pl_bmassjerr2 // Planet Mass or Mass*sin(i) [Jupiter Mass] Lower Unc.
case pl_bmassjlim // Planet Mass or Mass*sin(i) [Jupiter Mass] Limit Flag
case pl_bmassjstr // Planet Mass or Mass*sin(i) [Jupiter Mass]
case pl_bmasse // Planet Mass or Mass*sin(i) [Earth Mass]
case pl_bmasseerr1 // Planet Mass or Mass*sin(i) [Earth Mass] Upper Unc.
case pl_bmasseerr2 // Planet Mass or Mass*sin(i) [Earth Mass] Lower Unc.
case pl_bmasselim // Planet Mass or Mass*sin(i) [Earth Mass] Limit Flag
case pl_bmassestr // Planet Mass or Mass*sin(i) [Earth Mass]
case pl_bmassprov // Planet Mass or Mass*sin(i) Provenance
case pl_msinij // Planet Mass*sin(i) [Jupiter Mass]
case pl_msinijerr1 // Planet Mass*sin(i) [Jupiter Mass] Upper Unc.
case pl_msinijerr2 // Planet Mass*sin(i) [Jupiter Mass] Lower Unc.
case pl_msinijlim // Planet Mass*sin(i) [Jupiter Mass] Limit Flag
case pl_msinijstr // Planet Mass*sin(i) [Jupiter Mass]
case pl_msinie // Planet Mass*sin(i) [Earth Mass]
case pl_msinieerr1 // Planet Mass*sin(i) [Earth Mass] Upper Unc.
case pl_msinieerr2 // Planet Mass*sin(i) [Earth Mass] Lower Unc.
case pl_msinielim // Planet Mass*sin(i) [Earth Mass] Limit Flag
case pl_msiniestr // Planet Mass*sin(i) [Earth Mass]
case st_teff // Stellar Effective Temperature [K]
case st_tefferr1 // Stellar Effective Temperature Upper Unc. [K]
case st_tefferr2 // Stellar Effective Temperature Lower Unc. [K]
case st_tefflim // Stellar Effective Temperature Limit Flag
case st_teffstr // Stellar Effective Temperature [K]
case st_met // Stellar Metallicity [dex]
case st_meterr1 // Stellar Metallicity Upper Unc. [dex]
case st_meterr2 // Stellar Metallicity Lower Unc. [dex]
case st_metlim // Stellar Metallicity Limit Flag
case st_metstr // Stellar Metallicity [dex]
case st_radv // Systemic Radial Velocity [km/s]
case st_radverr1 // Systemic Radial Velocity Upper Unc. [km/s]
case st_radverr2 // Systemic Radial Velocity Lower Unc. [km/s]
case st_radvlim // Systemic Radial Velocity Limit Flag
case st_radvstr // Systemic Radial Velocity [km/s]
case st_vsin // Stellar Rotational Velocity [km/s]
case st_vsinerr1 // Stellar Rotational Velocity [km/s] Upper Unc.
case st_vsinerr2 // Stellar Rotational Velocity [km/s] Lower Unc.
case st_vsinlim // Stellar Rotational Velocity Limit Flag
case st_vsinstr // Stellar Rotational Velocity [km/s]
case st_lum // Stellar Luminosity [log(Solar)]
case st_lumerr1 // Stellar Luminosity Upper Unc. [log(Solar)]
case st_lumerr2 // Stellar Luminosity Lower Unc. [log(Solar)]
case st_lumlim // Stellar Luminosity Limit Flag
case st_lumstr // Stellar Luminosity [log(Solar)]
case st_logg // Stellar Surface Gravity [log(cm/s**2)]
case st_loggerr1 // Stellar Surface Gravity Upper Unc. [log(cm/s**2)]
case st_loggerr2 // Stellar Surface Gravity Lower Unc. [log(cm/s**2)]
case st_logglim // Stellar Surface Gravity Limit Flag
case st_loggstr // Stellar Surface Gravity [log(cm/s**2)]
case st_age // Stellar Age [Gyr]
case st_ageerr1 // Stellar Age Upper Unc. [Gyr]
case st_ageerr2 // Stellar Age Lower Unc. [Gyr]
case st_agelim // Stellar Age Limit Flag
case st_agestr // Stellar Age [Gyr]
case st_mass // Stellar Mass [Solar mass]
case st_masserr1 // Stellar Mass Upper Unc. [Solar mass]
case st_masserr2 // Stellar Mass Lower Unc. [Solar mass]
case st_masslim // Stellar Mass Limit Flag
case st_massstr // Stellar Mass [Solar mass]
case st_dens // Stellar Density [g/cm**3]
case st_denserr1 // Stellar Density Upper Unc. [g/cm**3]
case st_denserr2 // Stellar Density Lower Unc. [g/cm**3]
case st_denslim // Stellar Density Limit Flag
case st_densstr // Stellar Density [g/cm**3]
case st_rad // Stellar Radius [Solar Radius]
case st_raderr1 // Stellar Radius Upper Unc. [Solar Radius]
case st_raderr2 // Stellar Radius Lower Unc. [Solar Radius]
case st_radlim // Stellar Radius Limit Flag
case st_radstr // Stellar Radius [Solar Radius]
case ttv_flag // Data show Transit Timing Variations
case ptv_flag // Detected by Pulsation Timing Variations
case tran_flag // Detected by Transits
case rv_flag // Detected by Radial Velocity Variations
case ast_flag // Detected by Astrometric Variations
case obm_flag // Detected by Orbital Brightness Modulations
case micro_flag // Detected by Microlensing
case etv_flag // Detected by Eclipse Timing Variations
case ima_flag // Detected by Imaging
case pul_flag // Detected by Pulsar Timing Variations
case soltype // Solution Type
case sy_snum // Number of Stars
case sy_pnum // Number of Planets
case sy_mnum // Number of Moons
case st_nphot // Number of Photometry Time Series
case st_nrvc // Number of Radial Velocity Time Series
case st_nspec // Number of Stellar Spectra Measurements
case pl_nnotes // Number of Notes
case pl_ntranspec // Number of Transmission Spectra
case pl_nespec // Number of Eclipse Spectra
case pl_ndispec // Number of Direct Imaging Spectra
case sy_pm // Total Proper Motion [mas/yr]
case sy_pmerr1 // Total Proper Motion Upper Unc [mas/yr]
case sy_pmerr2 // Total Proper Motion Lower Unc [mas/yr]
case sy_pmstr // Total Proper Motion [mas/yr]
case sy_pmra // Proper Motion (RA) [mas/yr]
case sy_pmraerr1 // Proper Motion (RA) [mas/yr] Upper Unc
case sy_pmraerr2 // Proper Motion (RA) [mas/yr] Lower Unc
case sy_pmrastr // Proper Motion (RA) [mas/yr]
case sy_pmdec // Proper Motion (Dec) [mas/yr]
case sy_pmdecerr1 // Proper Motion (Dec) [mas/yr] Upper Unc
case sy_pmdecerr2 // Proper Motion (Dec) [mas/yr] Lower Unc
case sy_pmdecstr // Proper Motion (Dec) [mas/yr]
case sy_plx // Parallax [mas]
case sy_plxerr1 // Parallax [mas] Upper Unc
case sy_plxerr2 // Parallax [mas] Lower Unc
case sy_plxstr // Parallax [mas]
case sy_dist // Distance [pc]
case sy_disterr1 // Distance [pc] Upper Unc
case sy_disterr2 // Distance [pc] Lower Unc
case sy_diststr // Distance [pc]
case sy_bmag // B (Johnson) Magnitude
case sy_bmagerr1 // B (Johnson) Magnitude Upper Unc
case sy_bmagerr2 // B (Johnson) Magnitude Lower Unc
case sy_bmagstr // B (Johnson) Magnitude
case sy_vmag // V (Johnson) Magnitude
case sy_vmagerr1 // V (Johnson) Magnitude Upper Unc
case sy_vmagerr2 // V (Johnson) Magnitude Lower Unc
case sy_vmagstr // V (Johnson) Magnitude
case sy_jmag // J (2MASS) Magnitude
case sy_jmagerr1 // J (2MASS) Magnitude Upper Unc
case sy_jmagerr2 // J (2MASS) Magnitude Lower Unc
case sy_jmagstr // J (2MASS) Magnitude
case sy_hmag // H (2MASS) Magnitude
case sy_hmagerr1 // H (2MASS) Magnitude Upper Unc
case sy_hmagerr2 // H (2MASS) Magnitude Lower Unc
case sy_hmagstr // H (2MASS) Magnitude
case sy_kmag // Ks (2MASS) Magnitude
case sy_kmagerr1 // Ks (2MASS) Magnitude Upper Unc
case sy_kmagerr2 // Ks (2MASS) Magnitude Lower Unc
case sy_kmagstr // Ks (2MASS) Magnitude
case sy_umag // u (Sloan) Magnitude
case sy_umagerr1 // u (Sloan) Magnitude Upper Unc
case sy_umagerr2 // u (Sloan) Magnitude Lower Unc
case sy_umagstr // u (Sloan) Magnitude
case sy_rmag // r (Sloan) Magnitude
case sy_rmagerr1 // r (Sloan) Magnitude Upper Unc
case sy_rmagerr2 // r (Sloan) Magnitude Lower Unc
case sy_rmagstr // r (Sloan) Magnitude
case sy_imag // i (Sloan) Magnitude
case sy_imagerr1 // i (Sloan) Magnitude Upper Unc
case sy_imagerr2 // i (Sloan) Magnitude Lower Unc
case sy_imagstr // i (Sloan) Magnitude
case sy_zmag // z (Sloan) Magnitude
case sy_zmagerr1 // z (Sloan) Magnitude Upper Unc
case sy_zmagerr2 // z (Sloan) Magnitude Lower Unc
case sy_zmagstr // z (Sloan) Magnitude
case sy_w1mag // W1 (WISE) Magnitude
case sy_w1magerr1 // W1 (WISE) Magnitude Upper Unc
case sy_w1magerr2 // W1 (WISE) Magnitude Lower Unc
case sy_w1magstr // W1 (WISE) Magnitude
case sy_w2mag // W2 (WISE) Magnitude
case sy_w2magerr1 // W2 (WISE) Magnitude Upper Unc
case sy_w2magerr2 // W2 (WISE) Magnitude Lower Unc
case sy_w2magstr // W2 (WISE) Magnitude
case sy_w3mag // W3 (WISE) Magnitude
case sy_w3magerr1 // W3 (WISE) Magnitude Upper Unc
case sy_w3magerr2 // W3 (WISE) Magnitude Lower Unc
case sy_w3magstr // W3 (WISE) Magnitude
case sy_w4mag // W4 (WISE) Magnitude
case sy_w4magerr1 // W4 (WISE) Magnitude Upper Unc
case sy_w4magerr2 // W4 (WISE) Magnitude Lower Unc
case sy_w4magstr // W4 (WISE) Magnitude
case sy_gmag // g (Sloan) Magnitude
case sy_gmagerr1 // g (Sloan) Magnitude Upper Unc
case sy_gmagerr2 // g (Sloan) Magnitude Lower Unc
case sy_gmagstr // g (Sloan) Magnitude
case sy_gaiamag // Gaia Magnitude
case sy_gaiamagerr1 // Gaia Magnitude Upper Unc
case sy_gaiamagerr2 // Gaia Magnitude Lower Unc
case sy_gaiamagstr // Gaia Magnitude
case sy_tmag // TESS Magnitude
case sy_tmagerr1 // TESS Magnitude Upper Unc
case sy_tmagerr2 // TESS Magnitude Lower Unc
case sy_tmagstr // TESS Magnitude
case pl_controv_flag // Controversial Flag
case pl_tsystemref // Time Reference Frame and Standard
case st_metratio // Stellar Metallicity Ratio
case st_spectype // Spectral Type
case sy_kepmag // Kepler Magnitude
case sy_kepmagerr1 // Kepler Magnitude Upper Unc
case sy_kepmagerr2 // Kepler Magnitude Lower Unc
case sy_kepmagstr // Kepler Magnitude
case st_rotp // Stellar Rotational Period [day]
case st_rotperr1 // Stellar Rotational Period [day] Upper Unc.
case st_rotperr2 // Stellar Rotational Period [day] Lower Unc.
case st_rotplim // Stellar Rotational Period Limit Flag
case st_rotpstr // Stellar Rotational Period [day]
case pl_projobliq // Projected Obliquity [deg]
case pl_projobliqerr1 // Projected Obliquity Upper Unc. [deg]
case pl_projobliqerr2 // Projected Obliquity Lower Unc. [deg]
case pl_projobliqlim // Projected Obliquity Limit Flag
case pl_projobliqstr // Projected Obliquity [deg]
case x // Spatial Coordinate X
case pl_trueobliq // True Obliquity [deg]
case pl_trueobliqerr1 // True Obliquity Upper Unc. [deg]
case y // Spatial Coordinate Y
case z // Spatial Coordinate Z
case pl_trueobliqerr2 // True Obliquity Lower Unc. [deg]
case htm20 // Spatial Index
case pl_trueobliqlim // True Obliquity Limit Flag
case gaia_id // GAIA ID
case cb_flag // Circumbinary Flag
case pl_trueobliqstr // True Obliquity [deg]
case sy_icmag // I (Cousins) Magnitude
case sy_icmagerr1 // I (Cousins) Magnitude Upper Unc
case sy_icmagerr2 // I (Cousins) Magnitude Lower Unc
case sy_icmagstr // I (Cousins) Magnitude
case rowupdate // Date of Last Update
case pl_pubdate // Planetary Parameter Reference Publication Date
case releasedate // Release Date
case dkin_flag // Detected by Disk Kinematics

public var id:String {
return self.rawValue
}

public var description:String {
switch self {
case .pl_name: return "Planet Name"
case .pl_letter: return "Planet Letter"
case .hostname: return "Host Name"
case .hd_name: return "HD ID"
case .hip_name: return "HIP ID"
case .tic_id: return "TIC ID"
case .default_flag: return "Default Parameter Set"
case .pl_refname: return "Planetary Parameter Reference"
case .st_refname: return "Stellar Parameter Reference"
case .sy_refname: return "System Parameter Reference"
case .disc_pubdate: return "Discovery Publication Date"
case .disc_year: return "Discovery Year"
case .discoverymethod: return "Discovery Method"
case .disc_locale: return "Discovery Locale"
case .disc_facility: return "Discovery Facility"
case .disc_instrument: return "Discovery Instrument"
case .disc_telescope: return "Discovery Telescope"
case .disc_refname: return "Discovery Reference"
case .ra: return "RA [decimal]"
case .rastr: return "RA [sexagesimal]"
case .dec: return "Dec [decimal]"
case .decstr: return "Dec [sexagesimal]"
case .glon: return "Galactic Longitude [deg]"
case .glat: return "Galactic Latitude [deg]"
case .elon: return "Ecliptic Longitude [deg]"
case .elat: return "Ecliptic Latitude [deg]"
case .pl_orbper: return "Orbital Period [day]"
case .pl_orbpererr1: return "Orbital Period Upper Unc. [day]"
case .pl_orbpererr2: return "Orbital Period Lower Unc. [day]"
case .pl_orbperlim: return "Orbital Period Limit Flag"
case .pl_orbperstr: return "Orbital Period [day]"
case .pl_orblpererr1: return "Argument of Periastron Upper Unc. [deg]"
case .pl_orblper: return "Argument of Periastron [deg]"
case .pl_orblpererr2: return "Argument of Periastron Lower Unc. [deg]"
case .pl_orblperlim: return "Argument of Periastron Limit Flag"
case .pl_orblperstr: return "Argument of Periastron [deg]"
case .pl_orbsmax: return "Orbit Semi-Major Axis [au]"
case .pl_orbsmaxerr1: return "Orbit Semi-Major Axis Upper Unc. [au]"
case .pl_orbsmaxerr2: return "Orbit Semi-Major Axis Lower Unc. [au]"
case .pl_orbsmaxlim: return "Orbit Semi-Major Axis Limit Flag"
case .pl_orbsmaxstr: return "Orbit Semi-Major Axis [au]"
case .pl_orbincl: return "Inclination [deg]"
case .pl_orbinclerr1: return "Inclination Upper Unc. [deg]"
case .pl_orbinclerr2: return "Inclination Lower Unc. [deg]"
case .pl_orbincllim: return "Inclination Limit Flag"
case .pl_orbinclstr: return "Inclination [deg]"
case .pl_orbtper: return "Epoch of Periastron [day]"
case .pl_orbtpererr1: return "Epoch of Periastron Upper Unc. [day]"
case .pl_orbtpererr2: return "Epoch of Periastron Lower Unc. [day]"
case .pl_orbtperlim: return "Epoch of Periastron Limit Flag"
case .pl_orbtperstr: return "Epoch of Periastron [day]"
case .pl_orbeccen: return "Eccentricity"
case .pl_orbeccenerr1: return "Eccentricity Upper Unc."
case .pl_orbeccenerr2: return "Eccentricity Lower Unc."
case .pl_orbeccenlim: return "Eccentricity Limit Flag"
case .pl_orbeccenstr: return "Eccentricity"
case .pl_eqt: return "Equilibrium Temperature [K]"
case .pl_eqterr1: return "Equilibrium Temperature Upper Unc. [K]"
case .pl_eqterr2: return "Equilibrium Temperature Lower Unc. [K]"
case .pl_eqtlim: return "Equilibrium Temperature Limit Flag"
case .pl_eqtstr: return "Equilibrium Temperature [K]"
case .pl_occdep: return "Occultation Depth [%]"
case .pl_occdeperr1: return "Occultation Depth Upper Unc. [%]"
case .pl_occdeperr2: return "Occultation Depth Lower Unc. [%]"
case .pl_occdeplim: return "Occultation Depth Limit Flag"
case .pl_occdepstr: return "Occultation Depth [%]"
case .pl_insol: return "Insolation Flux [Earth Flux]"
case .pl_insolerr1: return "Insolation Flux Upper Unc. [Earth Flux]"
case .pl_insolerr2: return "Insolation Flux Lower Unc. [Earth Flux]"
case .pl_insollim: return "Insolation Flux Limit Flag"
case .pl_insolstr: return "Insolation Flux [Earth Flux]"
case .pl_dens: return "Planet Density [g/cm**3]"
case .pl_denserr1: return "Planet Density Upper Unc. [g/cm**3]"
case .pl_denserr2: return "Planet Density Lower Unc. [g/cm**3]"
case .pl_denslim: return "Planet Density Limit Flag"
case .pl_densstr: return "Planet Density [g/cm**3]"
case .pl_trandep: return "Transit Depth [%]"
case .pl_trandeperr1: return "Transit Depth Upper Unc. [%]"
case .pl_trandeperr2: return "Transit Depth Lower Unc. [%]"
case .pl_trandeplim: return "Transit Depth Limit Flag"
case .pl_trandepstr: return "Transit Depth [%]"
case .pl_tranmid: return "Transit Midpoint [day]"
case .pl_tranmiderr1: return "Transit Midpoint Upper Unc. [day]"
case .pl_tranmiderr2: return "Transit Midpoint Lower Unc. [day]"
case .pl_tranmidlim: return "Transit Midpoint Limit Flag"
case .pl_tranmidstr: return "Time of Conjunction (Transit Midpoint) [day]"
case .pl_trandur: return "Transit Duration [hour]"
case .pl_trandurerr1: return "Transit Duration Upper Unc. [hour]"
case .pl_trandurerr2: return "Transit Duration Lower Unc. [hour]"
case .pl_trandurlim: return "Transit Duration Limit Flag"
case .pl_trandurstr: return "Transit Duration [hour]"
case .pl_rvamp: return "Radial Velocity Amplitude [m/s]"
case .pl_rvamperr1: return "Radial Velocity Amplitude Upper Unc. [m/s]"
case .pl_rvamperr2: return "Radial Velocity Amplitude Lower Unc. [m/s]"
case .pl_rvamplim: return "Radial Velocity Amplitude Limit Flag"
case .pl_rvampstr: return "Radial Velocity Amplitude [m/s]"
case .pl_radj: return "Planet Radius [Jupiter Radius]"
case .pl_radjerr1: return "Planet Radius Upper Unc. [Jupiter Radius]"
case .pl_radjerr2: return "Planet Radius Lower Unc. [Jupiter Radius]"
case .pl_radjlim: return "Planet Radius Limit Flag"
case .pl_radjstr: return "Planet Radius [Jupiter Radius]"
case .pl_rade: return "Planet Radius [Earth Radius]"
case .pl_radeerr1: return "Planet Radius Upper Unc. [Earth Radius]"
case .pl_radeerr2: return "Planet Radius Lower Unc. [Earth Radius]"
case .pl_radelim: return "Planet Radius Limit Flag"
case .pl_radestr: return "Planet Radius [Earth Radius]"
case .pl_ratror: return "Ratio of Planet to Stellar Radius"
case .pl_ratrorerr1: return "Ratio of Planet to Stellar Radius Upper Unc."
case .pl_ratrorerr2: return "Ratio of Planet to Stellar Radius Lower Unc."
case .pl_ratrorlim: return "Ratio of Planet to Stellar Radius Limit Flag"
case .pl_ratrorstr: return "Ratio of Planet to Stellar Radius"
case .pl_ratdor: return "Ratio of Semi-Major Axis to Stellar Radius"
case .pl_ratdorerr1: return "Ratio of Semi-Major Axis to Stellar Radius Upper Unc."
case .pl_ratdorerr2: return "Ratio of Semi-Major Axis to Stellar Radius Lower Unc."
case .pl_ratdorlim: return "Ratio of Semi-Major Axis to Stellar Radius Limit Flag"
case .pl_ratdorstr: return "Ratio of Semi-Major Axis to Stellar Radius"
case .pl_imppar: return "Impact Parameter"
case .pl_impparerr1: return "Impact Parameter Upper Unc."
case .pl_impparerr2: return "Impact Parameter Lower Unc."
case .pl_impparlim: return "Impact Parameter Limit Flag"
case .pl_impparstr: return "Impact Parameter"
case .pl_cmassj: return "Planet Mass*sin(i)/sin(i) [Jupiter Mass]"
case .pl_cmassjerr1: return "Planet Mass*sin(i)/sin(i) [Jupiter Mass] Upper Unc."
case .pl_cmassjerr2: return "Planet Mass*sin(i)/sin(i) [Jupiter Mass] Lower Unc."
case .pl_cmassjlim: return "Planet Mass*sin(i)/sin(i) [Jupiter Mass] Limit Flag"
case .pl_cmassjstr: return "Planet Mass*sin(i)/sin(i) [Jupiter Mass]"
case .pl_cmasse: return "Planet Mass*sin(i)/sin(i) [Earth Mass]"
case .pl_cmasseerr1: return "Planet Mass*sin(i)/sin(i) [Earth Mass] Upper Unc."
case .pl_cmasseerr2: return "Planet Mass*sin(i)/sin(i) [Earth Mass] Lower Unc."
case .pl_cmasselim: return "Planet Mass*sin(i)/sin(i) [Earth Mass] Limit Flag"
case .pl_cmassestr: return "Planet Mass*sin(i)/sin(i) [Earth Mass]"
case .pl_massj: return "Planet Mass [Jupiter Mass]"
case .pl_massjerr1: return "Planet Mass [Jupiter Mass] Upper Unc."
case .pl_massjerr2: return "Planet Mass [Jupiter Mass] Lower Unc."
case .pl_massjlim: return "Planet Mass [Jupiter Mass] Limit Flag"
case .pl_massjstr: return "Planet Mass [Jupiter Mass]"
case .pl_masse: return "Planet Mass [Earth Mass]"
case .pl_masseerr1: return "Planet Mass [Earth Mass] Upper Unc."
case .pl_masseerr2: return "Planet Mass [Earth Mass] Lower Unc."
case .pl_masselim: return "Planet Mass [Earth Mass] Limit Flag"
case .pl_massestr: return "Planet Mass [Earth Mass]"
case .pl_bmassj: return "Planet Mass or Mass*sin(i) [Jupiter Mass]"
case .pl_bmassjerr1: return "Planet Mass or Mass*sin(i) [Jupiter Mass] Upper Unc."
case .pl_bmassjerr2: return "Planet Mass or Mass*sin(i) [Jupiter Mass] Lower Unc."
case .pl_bmassjlim: return "Planet Mass or Mass*sin(i) [Jupiter Mass] Limit Flag"
case .pl_bmassjstr: return "Planet Mass or Mass*sin(i) [Jupiter Mass]"
case .pl_bmasse: return "Planet Mass or Mass*sin(i) [Earth Mass]"
case .pl_bmasseerr1: return "Planet Mass or Mass*sin(i) [Earth Mass] Upper Unc."
case .pl_bmasseerr2: return "Planet Mass or Mass*sin(i) [Earth Mass] Lower Unc."
case .pl_bmasselim: return "Planet Mass or Mass*sin(i) [Earth Mass] Limit Flag"
case .pl_bmassestr: return "Planet Mass or Mass*sin(i) [Earth Mass]"
case .pl_bmassprov: return "Planet Mass or Mass*sin(i) Provenance"
case .pl_msinij: return "Planet Mass*sin(i) [Jupiter Mass]"
case .pl_msinijerr1: return "Planet Mass*sin(i) [Jupiter Mass] Upper Unc."
case .pl_msinijerr2: return "Planet Mass*sin(i) [Jupiter Mass] Lower Unc."
case .pl_msinijlim: return "Planet Mass*sin(i) [Jupiter Mass] Limit Flag"
case .pl_msinijstr: return "Planet Mass*sin(i) [Jupiter Mass]"
case .pl_msinie: return "Planet Mass*sin(i) [Earth Mass]"
case .pl_msinieerr1: return "Planet Mass*sin(i) [Earth Mass] Upper Unc."
case .pl_msinieerr2: return "Planet Mass*sin(i) [Earth Mass] Lower Unc."
case .pl_msinielim: return "Planet Mass*sin(i) [Earth Mass] Limit Flag"
case .pl_msiniestr: return "Planet Mass*sin(i) [Earth Mass]"
case .st_teff: return "Stellar Effective Temperature [K]"
case .st_tefferr1: return "Stellar Effective Temperature Upper Unc. [K]"
case .st_tefferr2: return "Stellar Effective Temperature Lower Unc. [K]"
case .st_tefflim: return "Stellar Effective Temperature Limit Flag"
case .st_teffstr: return "Stellar Effective Temperature [K]"
case .st_met: return "Stellar Metallicity [dex]"
case .st_meterr1: return "Stellar Metallicity Upper Unc. [dex]"
case .st_meterr2: return "Stellar Metallicity Lower Unc. [dex]"
case .st_metlim: return "Stellar Metallicity Limit Flag"
case .st_metstr: return "Stellar Metallicity [dex]"
case .st_radv: return "Systemic Radial Velocity [km/s]"
case .st_radverr1: return "Systemic Radial Velocity Upper Unc. [km/s]"
case .st_radverr2: return "Systemic Radial Velocity Lower Unc. [km/s]"
case .st_radvlim: return "Systemic Radial Velocity Limit Flag"
case .st_radvstr: return "Systemic Radial Velocity [km/s]"
case .st_vsin: return "Stellar Rotational Velocity [km/s]"
case .st_vsinerr1: return "Stellar Rotational Velocity [km/s] Upper Unc."
case .st_vsinerr2: return "Stellar Rotational Velocity [km/s] Lower Unc."
case .st_vsinlim: return "Stellar Rotational Velocity Limit Flag"
case .st_vsinstr: return "Stellar Rotational Velocity [km/s]"
case .st_lum: return "Stellar Luminosity [log(Solar)]"
case .st_lumerr1: return "Stellar Luminosity Upper Unc. [log(Solar)]"
case .st_lumerr2: return "Stellar Luminosity Lower Unc. [log(Solar)]"
case .st_lumlim: return "Stellar Luminosity Limit Flag"
case .st_lumstr: return "Stellar Luminosity [log(Solar)]"
case .st_logg: return "Stellar Surface Gravity [log(cm/s**2)]"
case .st_loggerr1: return "Stellar Surface Gravity Upper Unc. [log(cm/s**2)]"
case .st_loggerr2: return "Stellar Surface Gravity Lower Unc. [log(cm/s**2)]"
case .st_logglim: return "Stellar Surface Gravity Limit Flag"
case .st_loggstr: return "Stellar Surface Gravity [log(cm/s**2)]"
case .st_age: return "Stellar Age [Gyr]"
case .st_ageerr1: return "Stellar Age Upper Unc. [Gyr]"
case .st_ageerr2: return "Stellar Age Lower Unc. [Gyr]"
case .st_agelim: return "Stellar Age Limit Flag"
case .st_agestr: return "Stellar Age [Gyr]"
case .st_mass: return "Stellar Mass [Solar mass]"
case .st_masserr1: return "Stellar Mass Upper Unc. [Solar mass]"
case .st_masserr2: return "Stellar Mass Lower Unc. [Solar mass]"
case .st_masslim: return "Stellar Mass Limit Flag"
case .st_massstr: return "Stellar Mass [Solar mass]"
case .st_dens: return "Stellar Density [g/cm**3]"
case .st_denserr1: return "Stellar Density Upper Unc. [g/cm**3]"
case .st_denserr2: return "Stellar Density Lower Unc. [g/cm**3]"
case .st_denslim: return "Stellar Density Limit Flag"
case .st_densstr: return "Stellar Density [g/cm**3]"
case .st_rad: return "Stellar Radius [Solar Radius]"
case .st_raderr1: return "Stellar Radius Upper Unc. [Solar Radius]"
case .st_raderr2: return "Stellar Radius Lower Unc. [Solar Radius]"
case .st_radlim: return "Stellar Radius Limit Flag"
case .st_radstr: return "Stellar Radius [Solar Radius]"
case .ttv_flag: return "Data show Transit Timing Variations"
case .ptv_flag: return "Detected by Pulsation Timing Variations"
case .tran_flag: return "Detected by Transits"
case .rv_flag: return "Detected by Radial Velocity Variations"
case .ast_flag: return "Detected by Astrometric Variations"
case .obm_flag: return "Detected by Orbital Brightness Modulations"
case .micro_flag: return "Detected by Microlensing"
case .etv_flag: return "Detected by Eclipse Timing Variations"
case .ima_flag: return "Detected by Imaging"
case .pul_flag: return "Detected by Pulsar Timing Variations"
case .soltype: return "Solution Type"
case .sy_snum: return "Number of Stars"
case .sy_pnum: return "Number of Planets"
case .sy_mnum: return "Number of Moons"
case .st_nphot: return "Number of Photometry Time Series"
case .st_nrvc: return "Number of Radial Velocity Time Series"
case .st_nspec: return "Number of Stellar Spectra Measurements"
case .pl_nnotes: return "Number of Notes"
case .pl_ntranspec: return "Number of Transmission Spectra"
case .pl_nespec: return "Number of Eclipse Spectra"
case .pl_ndispec: return "Number of Direct Imaging Spectra"
case .sy_pm: return "Total Proper Motion [mas/yr]"
case .sy_pmerr1: return "Total Proper Motion Upper Unc [mas/yr]"
case .sy_pmerr2: return "Total Proper Motion Lower Unc [mas/yr]"
case .sy_pmstr: return "Total Proper Motion [mas/yr]"
case .sy_pmra: return "Proper Motion (RA) [mas/yr]"
case .sy_pmraerr1: return "Proper Motion (RA) [mas/yr] Upper Unc"
case .sy_pmraerr2: return "Proper Motion (RA) [mas/yr] Lower Unc"
case .sy_pmrastr: return "Proper Motion (RA) [mas/yr]"
case .sy_pmdec: return "Proper Motion (Dec) [mas/yr]"
case .sy_pmdecerr1: return "Proper Motion (Dec) [mas/yr] Upper Unc"
case .sy_pmdecerr2: return "Proper Motion (Dec) [mas/yr] Lower Unc"
case .sy_pmdecstr: return "Proper Motion (Dec) [mas/yr]"
case .sy_plx: return "Parallax [mas]"
case .sy_plxerr1: return "Parallax [mas] Upper Unc"
case .sy_plxerr2: return "Parallax [mas] Lower Unc"
case .sy_plxstr: return "Parallax [mas]"
case .sy_dist: return "Distance [pc]"
case .sy_disterr1: return "Distance [pc] Upper Unc"
case .sy_disterr2: return "Distance [pc] Lower Unc"
case .sy_diststr: return "Distance [pc]"
case .sy_bmag: return "B (Johnson) Magnitude"
case .sy_bmagerr1: return "B (Johnson) Magnitude Upper Unc"
case .sy_bmagerr2: return "B (Johnson) Magnitude Lower Unc"
case .sy_bmagstr: return "B (Johnson) Magnitude"
case .sy_vmag: return "V (Johnson) Magnitude"
case .sy_vmagerr1: return "V (Johnson) Magnitude Upper Unc"
case .sy_vmagerr2: return "V (Johnson) Magnitude Lower Unc"
case .sy_vmagstr: return "V (Johnson) Magnitude"
case .sy_jmag: return "J (2MASS) Magnitude"
case .sy_jmagerr1: return "J (2MASS) Magnitude Upper Unc"
case .sy_jmagerr2: return "J (2MASS) Magnitude Lower Unc"
case .sy_jmagstr: return "J (2MASS) Magnitude"
case .sy_hmag: return "H (2MASS) Magnitude"
case .sy_hmagerr1: return "H (2MASS) Magnitude Upper Unc"
case .sy_hmagerr2: return "H (2MASS) Magnitude Lower Unc"
case .sy_hmagstr: return "H (2MASS) Magnitude"
case .sy_kmag: return "Ks (2MASS) Magnitude"
case .sy_kmagerr1: return "Ks (2MASS) Magnitude Upper Unc"
case .sy_kmagerr2: return "Ks (2MASS) Magnitude Lower Unc"
case .sy_kmagstr: return "Ks (2MASS) Magnitude"
case .sy_umag: return "u (Sloan) Magnitude"
case .sy_umagerr1: return "u (Sloan) Magnitude Upper Unc"
case .sy_umagerr2: return "u (Sloan) Magnitude Lower Unc"
case .sy_umagstr: return "u (Sloan) Magnitude"
case .sy_rmag: return "r (Sloan) Magnitude"
case .sy_rmagerr1: return "r (Sloan) Magnitude Upper Unc"
case .sy_rmagerr2: return "r (Sloan) Magnitude Lower Unc"
case .sy_rmagstr: return "r (Sloan) Magnitude"
case .sy_imag: return "i (Sloan) Magnitude"
case .sy_imagerr1: return "i (Sloan) Magnitude Upper Unc"
case .sy_imagerr2: return "i (Sloan) Magnitude Lower Unc"
case .sy_imagstr: return "i (Sloan) Magnitude"
case .sy_zmag: return "z (Sloan) Magnitude"
case .sy_zmagerr1: return "z (Sloan) Magnitude Upper Unc"
case .sy_zmagerr2: return "z (Sloan) Magnitude Lower Unc"
case .sy_zmagstr: return "z (Sloan) Magnitude"
case .sy_w1mag: return "W1 (WISE) Magnitude"
case .sy_w1magerr1: return "W1 (WISE) Magnitude Upper Unc"
case .sy_w1magerr2: return "W1 (WISE) Magnitude Lower Unc"
case .sy_w1magstr: return "W1 (WISE) Magnitude"
case .sy_w2mag: return "W2 (WISE) Magnitude"
case .sy_w2magerr1: return "W2 (WISE) Magnitude Upper Unc"
case .sy_w2magerr2: return "W2 (WISE) Magnitude Lower Unc"
case .sy_w2magstr: return "W2 (WISE) Magnitude"
case .sy_w3mag: return "W3 (WISE) Magnitude"
case .sy_w3magerr1: return "W3 (WISE) Magnitude Upper Unc"
case .sy_w3magerr2: return "W3 (WISE) Magnitude Lower Unc"
case .sy_w3magstr: return "W3 (WISE) Magnitude"
case .sy_w4mag: return "W4 (WISE) Magnitude"
case .sy_w4magerr1: return "W4 (WISE) Magnitude Upper Unc"
case .sy_w4magerr2: return "W4 (WISE) Magnitude Lower Unc"
case .sy_w4magstr: return "W4 (WISE) Magnitude"
case .sy_gmag: return "g (Sloan) Magnitude"
case .sy_gmagerr1: return "g (Sloan) Magnitude Upper Unc"
case .sy_gmagerr2: return "g (Sloan) Magnitude Lower Unc"
case .sy_gmagstr: return "g (Sloan) Magnitude"
case .sy_gaiamag: return "Gaia Magnitude"
case .sy_gaiamagerr1: return "Gaia Magnitude Upper Unc"
case .sy_gaiamagerr2: return "Gaia Magnitude Lower Unc"
case .sy_gaiamagstr: return "Gaia Magnitude"
case .sy_tmag: return "TESS Magnitude"
case .sy_tmagerr1: return "TESS Magnitude Upper Unc"
case .sy_tmagerr2: return "TESS Magnitude Lower Unc"
case .sy_tmagstr: return "TESS Magnitude"
case .pl_controv_flag: return "Controversial Flag"
case .pl_tsystemref: return "Time Reference Frame and Standard"
case .st_metratio: return "Stellar Metallicity Ratio"
case .st_spectype: return "Spectral Type"
case .sy_kepmag: return "Kepler Magnitude"
case .sy_kepmagerr1: return "Kepler Magnitude Upper Unc"
case .sy_kepmagerr2: return "Kepler Magnitude Lower Unc"
case .sy_kepmagstr: return "Kepler Magnitude"
case .st_rotp: return "Stellar Rotational Period [day]"
case .st_rotperr1: return "Stellar Rotational Period [day] Upper Unc."
case .st_rotperr2: return "Stellar Rotational Period [day] Lower Unc."
case .st_rotplim: return "Stellar Rotational Period Limit Flag"
case .st_rotpstr: return "Stellar Rotational Period [day]"
case .pl_projobliq: return "Projected Obliquity [deg]"
case .pl_projobliqerr1: return "Projected Obliquity Upper Unc. [deg]"
case .pl_projobliqerr2: return "Projected Obliquity Lower Unc. [deg]"
case .pl_projobliqlim: return "Projected Obliquity Limit Flag"
case .pl_projobliqstr: return "Projected Obliquity [deg]"
case .x: return "Spatial Coordinate X"
case .pl_trueobliq: return "True Obliquity [deg]"
case .pl_trueobliqerr1: return "True Obliquity Upper Unc. [deg]"
case .y: return "Spatial Coordinate Y"
case .z: return "Spatial Coordinate Z"
case .pl_trueobliqerr2: return "True Obliquity Lower Unc. [deg]"
case .htm20: return "Spatial Index"
case .pl_trueobliqlim: return "True Obliquity Limit Flag"
case .gaia_id: return "GAIA ID"
case .cb_flag: return "Circumbinary Flag"
case .pl_trueobliqstr: return "True Obliquity [deg]"
case .sy_icmag: return "I (Cousins) Magnitude"
case .sy_icmagerr1: return "I (Cousins) Magnitude Upper Unc"
case .sy_icmagerr2: return "I (Cousins) Magnitude Lower Unc"
case .sy_icmagstr: return "I (Cousins) Magnitude"
case .rowupdate: return "Date of Last Update"
case .pl_pubdate: return "Planetary Parameter Reference Publication Date"
case .releasedate: return "Release Date"
case .dkin_flag: return "Detected by Disk Kinematics"
}
}
}

public enum keplernames_columns:String, Codable, Identifiable, CaseIterable{
case kepid // Identification number of the host star from the Kepler Input Catalog
case pl_name // Nme of the planet as it was originally published in the literature
case koi_name // Name of the planet candidate from the Kepler Object of Interest List.
case kepler_name // Kepler name: Kepler + number(host star) + letter (planet)

public var id:String {
return self.rawValue
}

public var description:String {
switch self {
case .kepid: return "Identification number of the host star from the Kepler Input Catalog"
case .pl_name: return "Nme of the planet as it was originally published in the literature"
case .koi_name: return "Name of the planet candidate from the Kepler Object of Interest List."
case .kepler_name: return "Kepler name: Kepler + number(host star) + letter (planet)"
}
}
}

public enum k2names_columns:String, Codable, Identifiable, CaseIterable{
case k2_name // K2 Name: K2 + number(host star) + letter(planet)
case pl_name // Name of the planet as it was originally published in the literature
case epic_id // Identification number of the host star from K2 Ecliptic Plane Input Catalog

public var id:String {
return self.rawValue
}

public var description:String {
switch self {
case .k2_name: return "K2 Name: K2 + number(host star) + letter(planet)"
case .pl_name: return "Name of the planet as it was originally published in the literature"
case .epic_id: return "Identification number of the host star from K2 Ecliptic Plane Input Catalog"
}
}
}

public enum toi_columns:String, Codable, Identifiable, CaseIterable{
case tid // TESS Input Catalog Identifier (TIC ID)
case toi // TESS Object of Interest Identifier (TOI nnn.xx)
case toipfx // TESS Object of Interest Prefix (Stellar Portion of TOI Name)
case ctoi_alias // Community TESS Object of Interest Alias
case pl_pnum // Number of Planets
case tfopwg_disp // TFOPWG Disposition
case st_tmag // Stellar TESS Magnitude Value
case st_tmagerr1 // Stellar TESS Magnitude Upper Uncertainty
case st_tmagerr2 // Stellar TESS Magnitude Lower Uncertainty
case st_tmagsymerr // Stellar TESS Magnitude Symmetric Error Flag
case st_tmaglim // Stellar TESS Magnitude Limit Flag
case ra // Right Ascension (J2000) Value
case raerr1 // Right Ascension (J2000) Upper Uncertainty
case raerr2 // Right Ascension (J2000) Lower Undertainty
case rasymerr // Right Ascension (J2000) Symmetric Error Flag
case rastr // Right Ascension (J2000) String for Display
case dec // Declination (J2000) Value
case decerr1 // Declination (J2000) Upper Uncertainty
case decerr2 // Declination (J2000) Lower Uncertainty
case decsymerr // Declination (J2000) Symmetric Error Flag
case decstr // Declination (J2000) String for Display
case st_pmra // Stellar Proper Motion in Right Ascension Value
case st_pmraerr1 // Stellar Proper Motion in Right Ascension Upper Uncertainty
case st_pmraerr2 // Stellar Proper Motion in Right Ascension Lower Uncertainty
case st_pmrasymerr // Stellar Proper Motion in Right Ascension Symmetric Error Flag
case st_pmralim // stellar proper motion in right ascension limit flag
case st_pmdec // Stellar Proper Motion in Declination Value
case st_pmdecerr1 // Stellar Proper Motion in Declination Upper Uncertainty
case st_pmdecerr2 // Stellar Proper Motion in Declination Lower Uncertainty
case st_pmdecsymerr // Stellar Proper Motion in Declination Symmetric Error Flag
case st_pmdeclim // Stellar Proper Motion in Declination Limit Flag
case pl_tranmid // Planet Transit Midpoint Value
case pl_tranmiderr1 // Planet Transit Midpoint Upper Uncertainty
case pl_tranmiderr2 // Planit Transit Midpoint Lower Uncertainty
case pl_tranmidsymerr // Planet Transit Midpoint Symmetric Error Flag
case pl_tranmidlim // Planet Transit Midpoint Limit Flag
case pl_orbper // Planet Orbital Period Value
case pl_orbpererr1 // Planet Orbital Period Upper Uncertainty
case pl_orbpererr2 // Planet Orbital Period Lower Uncertainty
case pl_orbpersymerr // Planet Orbital Period Symmetric Error Flag
case pl_orbperlim // Planet Orbital Period Limit Flag
case pl_trandurh // Planet Transit Duration Value
case pl_trandurherr1 // Planet Transit Duration Upper Uncertainty
case pl_trandurherr2 // Planet Transit Duration Lower Uncertainty
case pl_trandurhsymerr // Planet Transit Duration Symmetric Error Flag
case pl_trandurhlim // Planet Transit Duration Limit Flag
case pl_trandep // Planet Transit Depth Value
case pl_trandeperr1 // Planet Transit Depth Upper Uncertainty
case pl_trandeperr2 // Planet Transit Depth Lower Uncertainty
case pl_trandepsymerr // Planet Transit Depth Symmetric Error Flag
case pl_trandeplim // Planet Transit Depth Limit Flag
case pl_rade // Planet Radius Value
case pl_radeerr1 // Planet Radius Upper Uncertainty
case pl_radeerr2 // Planet Radius Lower Uncertainty
case pl_radesymerr // Planet Radius Symmetric Error Flag
case pl_radelim // Planet Radius Limit Flag
case pl_insol // Planet Insolation Value
case pl_insolerr1 // Planet Insolation Upper Uncertainty
case pl_insolerr2 // Planet Insolation Lower Uncertainty
case pl_insolsymerr // Planet Insolation Symmetric Error Flag
case pl_insollim // Planet Insolation Limit Flag
case pl_eqt // Planet Equilibrium Temperature Value
case pl_eqterr1 // Planet Equilibrium Temperature Upper Uncertainty
case pl_eqterr2 // Planet Equilibrium Temperature Lower Uncertainty
case pl_eqtsymerr // Planet Equilibrium Temperature Symmetric Error Flag
case pl_eqtlim // Planet Equilibrium Temperature Limit Flag
case st_dist // Stellar Distance Value
case st_disterr1 // Stellar Distance Upper Uncertainty
case st_disterr2 // Stellar Distance Lower Uncertainty
case st_distsymerr // Stellar Distance Symmetric Error Flag
case st_distlim // Stellar Distance Limit Flag
case st_teff // Stellar Effective Temperature Value
case st_tefferr1 // Stellar Effective Termperature Upper Uncertainty
case st_tefferr2 // Stellar Effecitve Temperature Lower Uncertainty
case st_teffsymerr // Stellar Effective Temperature Symmetric Error Flag
case st_tefflim // Stellar Effective Temperature Limit Flag
case st_logg // Stellar log(g) Value
case st_loggerr1 // Stellar log(g) Upper Uncertanty
case st_loggerr2 // Stellar log(g) Lower Uncertainty
case st_loggsymerr // Stellar log(g) Symmetric Error Flag
case st_logglim // Stellar log(g) Limit Flag
case st_rad // Stellar Radius Value
case st_raderr1 // Stellar Radius Upper Uncertainty
case st_raderr2 // Stellar Radius Lower Uncertainty
case st_radsymerr // Stellar Radius Symmetric Error Flag
case st_radlim // Stellar Radius Limit Flag
case sectors // Sectors (TBD)
case toi_created // TOI Created Date
case rowupdate // Last Update Date
case release_date // Release Date

public var id:String {
return self.rawValue
}

public var description:String {
switch self {
case .tid: return "TESS Input Catalog Identifier (TIC ID)"
case .toi: return "TESS Object of Interest Identifier (TOI nnn.xx)"
case .toipfx: return "TESS Object of Interest Prefix (Stellar Portion of TOI Name)"
case .ctoi_alias: return "Community TESS Object of Interest Alias"
case .pl_pnum: return "Number of Planets"
case .tfopwg_disp: return "TFOPWG Disposition"
case .st_tmag: return "Stellar TESS Magnitude Value"
case .st_tmagerr1: return "Stellar TESS Magnitude Upper Uncertainty"
case .st_tmagerr2: return "Stellar TESS Magnitude Lower Uncertainty"
case .st_tmagsymerr: return "Stellar TESS Magnitude Symmetric Error Flag"
case .st_tmaglim: return "Stellar TESS Magnitude Limit Flag"
case .ra: return "Right Ascension (J2000) Value"
case .raerr1: return "Right Ascension (J2000) Upper Uncertainty"
case .raerr2: return "Right Ascension (J2000) Lower Undertainty"
case .rasymerr: return "Right Ascension (J2000) Symmetric Error Flag"
case .rastr: return "Right Ascension (J2000) String for Display"
case .dec: return "Declination (J2000) Value"
case .decerr1: return "Declination (J2000) Upper Uncertainty"
case .decerr2: return "Declination (J2000) Lower Uncertainty"
case .decsymerr: return "Declination (J2000) Symmetric Error Flag"
case .decstr: return "Declination (J2000) String for Display"
case .st_pmra: return "Stellar Proper Motion in Right Ascension Value"
case .st_pmraerr1: return "Stellar Proper Motion in Right Ascension Upper Uncertainty"
case .st_pmraerr2: return "Stellar Proper Motion in Right Ascension Lower Uncertainty"
case .st_pmrasymerr: return "Stellar Proper Motion in Right Ascension Symmetric Error Flag"
case .st_pmralim: return "stellar proper motion in right ascension limit flag"
case .st_pmdec: return "Stellar Proper Motion in Declination Value"
case .st_pmdecerr1: return "Stellar Proper Motion in Declination Upper Uncertainty"
case .st_pmdecerr2: return "Stellar Proper Motion in Declination Lower Uncertainty"
case .st_pmdecsymerr: return "Stellar Proper Motion in Declination Symmetric Error Flag"
case .st_pmdeclim: return "Stellar Proper Motion in Declination Limit Flag"
case .pl_tranmid: return "Planet Transit Midpoint Value"
case .pl_tranmiderr1: return "Planet Transit Midpoint Upper Uncertainty"
case .pl_tranmiderr2: return "Planit Transit Midpoint Lower Uncertainty"
case .pl_tranmidsymerr: return "Planet Transit Midpoint Symmetric Error Flag"
case .pl_tranmidlim: return "Planet Transit Midpoint Limit Flag"
case .pl_orbper: return "Planet Orbital Period Value"
case .pl_orbpererr1: return "Planet Orbital Period Upper Uncertainty"
case .pl_orbpererr2: return "Planet Orbital Period Lower Uncertainty"
case .pl_orbpersymerr: return "Planet Orbital Period Symmetric Error Flag"
case .pl_orbperlim: return "Planet Orbital Period Limit Flag"
case .pl_trandurh: return "Planet Transit Duration Value"
case .pl_trandurherr1: return "Planet Transit Duration Upper Uncertainty"
case .pl_trandurherr2: return "Planet Transit Duration Lower Uncertainty"
case .pl_trandurhsymerr: return "Planet Transit Duration Symmetric Error Flag"
case .pl_trandurhlim: return "Planet Transit Duration Limit Flag"
case .pl_trandep: return "Planet Transit Depth Value"
case .pl_trandeperr1: return "Planet Transit Depth Upper Uncertainty"
case .pl_trandeperr2: return "Planet Transit Depth Lower Uncertainty"
case .pl_trandepsymerr: return "Planet Transit Depth Symmetric Error Flag"
case .pl_trandeplim: return "Planet Transit Depth Limit Flag"
case .pl_rade: return "Planet Radius Value"
case .pl_radeerr1: return "Planet Radius Upper Uncertainty"
case .pl_radeerr2: return "Planet Radius Lower Uncertainty"
case .pl_radesymerr: return "Planet Radius Symmetric Error Flag"
case .pl_radelim: return "Planet Radius Limit Flag"
case .pl_insol: return "Planet Insolation Value"
case .pl_insolerr1: return "Planet Insolation Upper Uncertainty"
case .pl_insolerr2: return "Planet Insolation Lower Uncertainty"
case .pl_insolsymerr: return "Planet Insolation Symmetric Error Flag"
case .pl_insollim: return "Planet Insolation Limit Flag"
case .pl_eqt: return "Planet Equilibrium Temperature Value"
case .pl_eqterr1: return "Planet Equilibrium Temperature Upper Uncertainty"
case .pl_eqterr2: return "Planet Equilibrium Temperature Lower Uncertainty"
case .pl_eqtsymerr: return "Planet Equilibrium Temperature Symmetric Error Flag"
case .pl_eqtlim: return "Planet Equilibrium Temperature Limit Flag"
case .st_dist: return "Stellar Distance Value"
case .st_disterr1: return "Stellar Distance Upper Uncertainty"
case .st_disterr2: return "Stellar Distance Lower Uncertainty"
case .st_distsymerr: return "Stellar Distance Symmetric Error Flag"
case .st_distlim: return "Stellar Distance Limit Flag"
case .st_teff: return "Stellar Effective Temperature Value"
case .st_tefferr1: return "Stellar Effective Termperature Upper Uncertainty"
case .st_tefferr2: return "Stellar Effecitve Temperature Lower Uncertainty"
case .st_teffsymerr: return "Stellar Effective Temperature Symmetric Error Flag"
case .st_tefflim: return "Stellar Effective Temperature Limit Flag"
case .st_logg: return "Stellar log(g) Value"
case .st_loggerr1: return "Stellar log(g) Upper Uncertanty"
case .st_loggerr2: return "Stellar log(g) Lower Uncertainty"
case .st_loggsymerr: return "Stellar log(g) Symmetric Error Flag"
case .st_logglim: return "Stellar log(g) Limit Flag"
case .st_rad: return "Stellar Radius Value"
case .st_raderr1: return "Stellar Radius Upper Uncertainty"
case .st_raderr2: return "Stellar Radius Lower Uncertainty"
case .st_radsymerr: return "Stellar Radius Symmetric Error Flag"
case .st_radlim: return "Stellar Radius Limit Flag"
case .sectors: return "Sectors (TBD)"
case .toi_created: return "TOI Created Date"
case .rowupdate: return "Last Update Date"
case .release_date: return "Release Date"
}
}
}

public enum ukirttimeseries_columns:String, Codable, Identifiable, CaseIterable{
case sourceid // Mission specific source identification
case phot_method // Calendar year of observations
case obs_year // Calendar year of observations
case bulge // Bulge
case field // Time Series Minimum integer time
case ccdid // Time Series Maximum integer time
case hjdstart // Time Series Minimum Julian Date
case hjdstop // Time Series Maximum Julian Date
case hjd_ref // Base Julian Date
case ra // Object Right Ascension
case dec // Object Declination
case h_mag // H Magnitude
case j_mag // J Magnitude
case k_mag // K Magnitude
case npts // Points in Light Curve
case k2c9_flag // Flag indicating overlap with K2 C9 field
case ukirt_evt_flag // Is this a ukirt event
case ukirt_id // UKIRT survey event identification string
case ogle_evt_flag // Is this an ogle event
case ogle_id // OGLE survey event identification string
case moa_evt_flag // Is this a MOA event
case moa_id // MOA survey event identification string
case moa_star_id // MOA survey event label string
case statnpts // number of points used in MAG statistics calculations
case minvalue // minimum value of MAG column
case maxvalue // maximum value of MAG column
case mean // mean value of MAG column
case stddevwrtmean // Standard deviation with respect to mean of MAG column
case median // median value of MAG column
case stddevwrtmed // Standard deviation with respect to median of MAG column
case n5sigma // Number of points beyond 5 stddev wrt MAG median
case f5sigma // Fraction of points beyond 5 stddev wrt MAG median
case medabsdev // Median absolute deviation of MAG column
case chisquared // Reduced Chi Squared wrt MAG median
case range595 // Range of MAG, excluding 5% of minimum and 5% of maximum
case x //
case y //
case z //
case spt_ind // spatial index

public var id:String {
return self.rawValue
}

public var description:String {
switch self {
case .sourceid: return "Mission specific source identification"
case .phot_method: return "Calendar year of observations"
case .obs_year: return "Calendar year of observations"
case .bulge: return "Bulge"
case .field: return "Time Series Minimum integer time"
case .ccdid: return "Time Series Maximum integer time"
case .hjdstart: return "Time Series Minimum Julian Date"
case .hjdstop: return "Time Series Maximum Julian Date"
case .hjd_ref: return "Base Julian Date"
case .ra: return "Object Right Ascension"
case .dec: return "Object Declination"
case .h_mag: return "H Magnitude"
case .j_mag: return "J Magnitude"
case .k_mag: return "K Magnitude"
case .npts: return "Points in Light Curve"
case .k2c9_flag: return "Flag indicating overlap with K2 C9 field"
case .ukirt_evt_flag: return "Is this a ukirt event"
case .ukirt_id: return "UKIRT survey event identification string"
case .ogle_evt_flag: return "Is this an ogle event"
case .ogle_id: return "OGLE survey event identification string"
case .moa_evt_flag: return "Is this a MOA event"
case .moa_id: return "MOA survey event identification string"
case .moa_star_id: return "MOA survey event label string"
case .statnpts: return "number of points used in MAG statistics calculations"
case .minvalue: return "minimum value of MAG column"
case .maxvalue: return "maximum value of MAG column"
case .mean: return "mean value of MAG column"
case .stddevwrtmean: return "Standard deviation with respect to mean of MAG column"
case .median: return "median value of MAG column"
case .stddevwrtmed: return "Standard deviation with respect to median of MAG column"
case .n5sigma: return "Number of points beyond 5 stddev wrt MAG median"
case .f5sigma: return "Fraction of points beyond 5 stddev wrt MAG median"
case .medabsdev: return "Median absolute deviation of MAG column"
case .chisquared: return "Reduced Chi Squared wrt MAG median"
case .range595: return "Range of MAG, excluding 5% of minimum and 5% of maximum"
case .x: return ""
case .y: return ""
case .z: return ""
case .spt_ind: return "spatial index"
}
}
}

public enum ml_columns:String, Codable, Identifiable, CaseIterable{
case sy_hmag // Lens H-band [mag]
case sy_hmaglim // Lens H-band Limit Flag (0='=', +1='>', -1='<')
case sy_hmagstr // Lens H-band String for Display
case ml_maghsdef // Source H-band Default Flag (0=no, 1=yes)
case ml_maghserr1 // Source H-band Upper Uncertainty [mag]
case ml_maghserr2 // Source H-band Lower Uncertainty [mag]
case ml_maghsformat // Source H-band Format
case ml_maghslim // Source H-band Limit Flag (0='=', +1='>', -1='<')
case ml_maghsodef // Source De-Reddened H-band Default Flag (0=no, 1=yes)
case ml_maghsoerr1 // Source De-Reddened H-band Upper Uncertainty [mag]
case ml_maghsoerr2 // Source De-Reddened H-band Lower Uncertainty [mag]
case ml_maghsoformat // Source De-Reddened H-band Format
case ml_maghsolim // Source De-Reddened H-band Limit Flag (0='=', +1='>', -1='<')
case ml_maghso // Source De-Reddened H-band [mag]
case ml_maghsostr // Source De-Reddened H-band String for Display
case ml_maghs // Source H-band [mag]
case ml_maghsstr // Source H-band String for Display
case ml_magibasedef // Event Baseline I-band Default Flag (0=no, 1=yes)
case ml_magibaseerr1 // Event Baseline I-band Upper Uncertainty
case ml_magibaseerr2 // Event Baseline I-band Lower Uncertainty
case ml_magibase // Event Baseline I-band [mag]
case ml_magibaseformat // Event Baseline I-band Format
case ml_magibaselim // Event Baseline I-band Limit Flag (0='=', +1='>', -1='<')
case ml_magibasestr // Event Baseline I-band String for Display
case ml_magibl // Blend I-band [mag]
case ml_magibldef // Blend I-band Default Flag (0=no, 1=yes)
case ml_magiblerr1 // Blend I-band Upper Uncertainty [mag]
case ml_magiblerr2 // Blend I-band Lower Uncertainty [mag]
case ml_magiblformat // Blend I-band Format
case ml_magibllim // Blend I-band Limit Flag (0='=', +1='>', -1='<')
case ml_magiblstr // Blend I-band String for Display
case sy_icmagdef // Lens I-band Default Flag (0=no, 1=yes)
case sy_icmagerr1 // Lens I-band Upper Uncertainty [mag]
case sy_icmagerr2 // Lens I-band Lower Uncertainty [mag]
case sy_icmagformat // Lens I-band Format
case sy_icmag // Lens I-band [mag]
case sy_icmaglim // Lens I-band Limit Flag (0='=', +1='>', -1='<')
case sy_icmagstr // Lens I-band String for Display
case ml_magisdef // Source I-band Default Flag (0=no, 1=yes)
case ml_magiserr1 // Source I-band Upper Uncertainty [mag]
case ml_magiserr2 // Source I-band Lower Uncertainty [mag]
case ml_magisformat // Source I-band Format
case ml_magislim // Source I-band Limit Flag (0='=', +1='>', -1='<')
case ml_magisodef // Source De-Reddened I-band Default Flag (0=no, 1=yes)
case ml_magisoerr1 // Source De-Reddened I-band Upper Uncertainty [mag]
case ml_magisoerr2 // Source De-Reddened I-band Lower Uncertainty [mag]
case ml_magisoformat // Source De-Reddened I-band Format
case ml_magisolim // Source De-Reddened I-band Limit Flag (0='=', +1='>', -1='<')
case ml_magiso // Source De-Reddened I-band [mag]
case ml_magisostr // Source De-Reddened I-band String for Display
case ml_magis // Source I-band [mag]
case ml_magisstr // Source I-band String for Display
case sy_jmagdef // Lens J-band Default Flag (0=no, 1=yes)
case sy_jmagerr1 // Lens J-band Upper Uncertainty [mag]
case sy_jmagerr2 // Lens J-band Lower Uncertainty [mag]
case sy_jmagformat // Lens J-band Format
case sy_jmag // Lens J-band [mag]
case sy_jmaglim // Lens J-band Limit Flag (0='=', +1='>', -1='<')
case sy_jmagstr // Lens J-band String for Display
case ml_magjsdef // Source J-band Default Flag (0=no, 1=yes)
case ml_magjserr1 // Source J-band Upper Uncertainty [mag]
case ml_magjserr2 // Source J-band Upper Uncertainty [mag]
case ml_magjsformat // Source J-band Format
case ml_extvflddef // Line-of-Sight V-band Extinction Default Flag (0=no, 1=yes)
case ml_extvflderr1 // Line-of-Sight V-band Extinction Upper Uncertainty [mag]
case ml_extvflderr2 // Line-of-Sight V-band Extinction Lower Uncertainty [mag]
case ml_extvfldformat // Line-of-Sight V-band Extinction Format
case ml_extvfldlim // Line-of-Sight V-band Extinction Limit Flag (0='=', +1='>', -1='<'
case ml_extvfld // Line-of-Sight V-band Extinction [mag]
case ml_extvfldstr // Line-of-Sight V-band Extinction String for Display
case sy_hmagdef // Lens H-band Default Flag (0=no, 1=yes)
case sy_hmagerr1 // Lens H-band Upper Uncertainty [mag]
case sy_hmagerr2 // Lens H-band Lower Uncertainty [mag]
case sy_hmagformat // Lens H-band Format
case ml_magjslim // Source J-band Limit Flag (0='=', +1='>', -1='<')
case ml_magjsodef // Source De-Reddened J-band Default Flag (0=no, 1=yes)
case ml_magjsoerr1 // Source De-reddened J-band Upper Uncertainty [mag]
case ml_magjsoerr2 // Source De-reddened J-band Lower Uncertainty [mag]
case ml_magjsoformat // Source De-Reddened J-band Format
case ml_magjsolim // Source De-reddened J-band Limit Flag (0='=', +1='>', -1='<')
case ml_magjso // Source De-reddened J-band [mag]
case ml_magjsostr // Source De-Reddened J-band String for Display
case ml_magjs // Source J-band [mag]
case ml_magjsstr // Source J-band String for Display
case sy_kmagdef // Lens K-band Default Flag (0=no, 1=yes)
case sy_kmagerr1 // Lens K-band Upper Uncertainty [mag]
case sy_kmagerr2 // Lens K-band Lower Uncertainty [mag]
case sy_kmagformat // Lens K-band Format
case sy_kmag // Lens K-band [mag]
case sy_kmaglim // Lens K-band Limit Flag (0='=', +1='>', -1='<')
case sy_kmagstr // Lens K-band String for Display
case ml_magksdef // Source K-band Default Flag (0=no, 1=yes)
case ml_magkserr1 // Source K-band Upper Uncertainty [mag]
case ml_magkserr2 // Source K-band Lower Uncertainty [mag]
case ml_magksformat // Source K-band Format
case ml_magkslim // Source K-band Limit Flag (0='=', +1='>', -1='<')
case ml_magksodef // Source De-Reddened K-band Default Flag (0=no, 1=yes)
case ml_magksoerr1 // Source De-Reddened K-band Upper Uncertainty [mag]
case ml_magksoerr2 // Source De-Reddened K-band Lower Uncertainty [mag]
case ml_magksoformat // Source De-Reddened K-band Format
case ml_magksolim // Source De-Reddened K-band Limit Flag (0='=', +1='>', -1='<')
case ml_magkso // Source De-Reddened K-band [mag]
case ml_magksostr // Source De-Reddened K-band String for Display
case ml_magks // Source K-band [mag]
case ml_magksstr // Source K-band String for Display
case sy_vmagdef // Lens V-band Default Flag (0=no, 1=yes)
case sy_vmagerr1 // Lens V-band Upper Uncertainty [mag]
case sy_vmagerr2 // Lens V-band Lower Uncertainty [mag]
case sy_vmagformat // Lens V-band Format
case sy_vmag // Lens V-band [mag]
case sy_vmaglim // Lens V-band Limit Flag (0='=', +1='>', -1='<')
case sy_vmagstr // Lens V-band String for Display
case ml_magvsdef // Source V-band Default Flag (0=no, 1=yes)
case ml_magvserr1 // Source V-band Upper Uncertainty [mag]
case ml_magvserr2 // Source V-band Lower Uncertainty [mag]
case ml_magvsformat // Source V-band Format
case ml_magvslim // Source V-band Limit Flag (0='=', +1='>', -1='<')
case ml_magvsodef // Source De-Reddened V-band Default Flag (0=no, 1=yes)
case ml_magvsoerr1 // Source De-Reddened V-band Upper Uncertainty [mag]
case ml_magvsoerr2 // Source De-Reddened V-band Lower Uncertainty [mag]
case ml_magvsoformat // Source De-Reddened V-band Format
case ml_magvsolim // Source De-Reddened V-band Limit Flag (0='=', +1='>', -1='<')
case ml_magvso // Source De-Reddened V-band [mag]
case ml_magvsostr // Source De-Reddened V-band String for Display
case ml_magvs // Source V-band [mag]
case ml_magvsstr // Source V-band String for Display
case st_massdef // Lens Mass Default Flag (0=no, 1=yes)
case st_masserr1 // Lens Mass Upper Uncertainty [Solar Mass]
case st_masserr2 // Lens Mass Lower Uncertainty [Solar Mass]
case st_massformat // Lens Mass Format
case st_mass // Lens Mass [Solar Mass]
case st_masslim // Lens Mass Limit Flag (0='=', +1='>', -1='<')
case st_massstr // Lens Mass String for Display
case pl_massedef // Planet Mass Default Flag (0=no, 1=yes)
case pl_masseerr1 // Planet Mass Upper Uncertainty [Earth Mass]
case pl_masseerr2 // Planet Mass Lower Uncertainty [Earth Mass]
case pl_masseformat // Planet Mass Format
case pl_masselim // Planet Mass Limit Flag (0='=', +1='>', -1='<')
case pl_masse // Planet Mass [Earth mass]
case pl_massestr // Planet Mass String for Display
case pl_massjdef // Planet Mass Default Flag (0=no, 1=yes)
case pl_massjerr1 // Planet Mass Upper Uncertainty [Jupiter Mass]
case pl_massjerr2 // Planet Mass Lower Uncertainty [Jupiter Mass]
case pl_massjformat // Planet Mass Format
case pl_massjlim // Planet Mass Limit Flag (0='=', +1='>', -1='<')
case pl_massj // Planet Mass [Jupiter Mass]
case pl_massjstr // Planet Mass String for Display
case ml_massratiodef // Planet-Star Mass Ratio Default Flag (0=no, 1=yes)
case ml_massratioerr1 // Planet-Star Mass Ratio Upper Uncertainty
case ml_massratioerr2 // Planet-Star Mass Ratio Lower Uncertainty
case ml_massratioformat // Planet-Star Mass Ratio Format
case ml_massratiolim // Planet-Star Mass Ratio Limit Flag (0='=', +1='>', -1='<')
case ml_massratio // Planet-Star Mass Ratio (10**-4)
case ml_massratiostr // Planet-Star Mass Ratio String for Display
case ml_modelchisq // Model Chi-Squared
case ml_modeldef // Default Model (1 = default, 0 = non-default)
case ml_plxmicrodef // Microlens Parallax Default Flag (0=no, 1=yes)
case ml_plxmicroedef // Microlens Parallax (East component) Default Flag (0=no, 1=yes)
case ml_plxmicroeerr1 // Microlens Parallax (East component) Upper Uncertainty
case ml_plxmicroeerr2 // Microlens Parallax (East component) Lower Uncertainty
case ml_plxmicroeformat // Microlens Parallax (East component) Format
case ml_plxmicroelim // Microlens Parallax (East component) Limit Flag (0='=', +1='>', -1
case ml_plxmicroe // Microlens Parallax (East component)
case ml_plxmicroerr1 // Microlens Parallax Upper Uncertainty
case ml_plxmicroerr2 // Microlens Parallax Lower Uncertainty
case ml_plxmicroestr // Microlens Parallax (East component) String for Display
case ml_plxmicroformat // Microlens Parallax Format
case ml_plxmicrolim // Microlens Parallax Limit Flag (0='=', +1='>', -1='<')
case ml_plxmicro // Microlens Parallax
case ml_plxmicrondef // Microlens Parallax (North component) Default Flag (0=no, 1=yes)
case ml_plxmicronerr1 // Microlens Parallax (North component) Upper Uncertainty
case ml_plxmicronerr2 // Microlens Parallax (North component) Lower Uncertainty
case ml_plxmicronformat // Microlens Parallax (North component) Format
case ml_plxmicronlim // Microlens Parallax (North component) Limit Flag (0='=', +1='>', -
case ml_plxmicron // Microlens Parallax (North component)
case ml_plxmicronstr // Microlens Parallax (North component) String for Display
case ml_plxmicrostr // Microlens Parallax String for Display
case ml_plxreldef // Lens-Source Relative Parallax Default Flag (0=no, 1=yes)
case ml_plxrelerr1 // Lens-Source Relative Parallax Upper Uncertainty
case ml_plxrelerr2 // Lens-Source Relative Parallax Lower Uncertainty
case ml_plxrelformat // Lens-Source Relative Parallax Format
case ml_plxrel // Lens-Source Relative Parallax
case ml_plxrellim // Lens-Source Relative Parallax Limit Flag (0='=', +1='>', -1='<')
case ml_plxrelstr // Lens-Source Relative Parallax String for Display
case ml_pmrellsdef // Lens-source Relative Proper Motion Default Flag (0=no, 1=yes)
case ml_pmrellserr1 // Lens-source Relative Proper Motion Upper Uncertainty [mas/yr]
case ml_pmrellserr2 // Lens-source Relative Proper Motion Lower Uncertainty [mas/yr]
case ml_pmrellsformat // Lens-source Relative Proper Motion Format
case ml_pmrells // Lens-source Relative Proper Motion [mas/yr]
case ml_pmrellslim // Lens-source Relative Proper Motion Limit Flag (0='=', +1='>', -1=
case ml_pmrellsstr // Lens-source Relative Proper Motion String for Display
case ml_pmsdef // Source Proper Motion Default Flag (0=no, 1=yes)
case ml_pmserr1 // Source Proper Motion Upper Uncertainty [mas/yr]
case ml_pmserr2 // Source Proper Motion Lower Uncertainty [mas/yr]
case ml_pmsformat // Source Proper Motion Format
case ml_pmslim // Source Proper Motion Limit Flag (0='=', +1='>', -1='<')
case ml_pms // Source Proper Motion [mas/yr]
case ml_pmsstr // Source Proper Motion String for Display
case ml_radeinang // Angular Einstein radius [mas]
case ml_radeinangdef // Angular Einstein radius Default Flag (0=no, 1=yes)
case ml_radeinangerr1 // Angular Einstein radius Upper Uncertainty [mas]
case ml_radeinangerr2 // Angular Einstein radius Lower Uncertainty [mas]
case ml_radeinangformat // Angular Einstein radius Format
case ml_radeinanglim // Angular Einstein radius Limit Flag (0='=', +1='>', -1='<')
case ml_radeinangstr // Angular Einstein radius String for Display
case ml_radsangdef // Source Angular Radius Default Flag (0=no, 1=yes)
case ml_radsangerr1 // Source Angular Radius Upper Uncertainty [uas]
case ml_radsangerr2 // Source Angular Radius Lower Uncertainty [uas]
case ml_radsangformat // Source Angular Radius Format
case ml_radsanglim // Source Angular Radius Limit Flag (0='=', +1='>', -1='<')
case ml_radsang // Source Angular Radius [uas]
case ml_radsangstr // Source Angular Radius String for Display
case ml_radsnormdef // Normalized Source Angular Radius Default Flag (0=no, 1=yes)
case ml_radsnormerr1 // Normalized Source Angular Radius Upper Uncertainty
case ml_radsnormerr2 // Normalized Source Angular Radius Lower Uncertainty
case ml_radsnormformat // Normalized Source Angular Radius Format
case ml_radsnormlim // Normalized Source Angular Radius Limit Flag (0='=', +1='>', -1='<
case ml_radsnorm // Normalized Source Angular Radius (10**-3)
case ml_radsnormstr // Normalized Source Angular Radius String for Display
case ml_radsphydef // Source Physical Radius Default Flag (0=no, 1=yes)
case ml_radsphyerr1 // Source Physical Radius Upper Uncertainty [Solar Radii]
case ml_radsphyerr2 // Source Physical Radius Lower Uncertainty [Solar Radii]
case ml_radsphyformat // Source Physical Radius Format
case ml_radsphylim // Source Physical Radius Limit Flag (0='=', +1='>', -1='<')
case ml_radsphy // Source Physical Radius [Solar Radii]
case ml_radsphystr // Source Physical Radius String for Display
case ml_redhkdef // Line-of-sight Reddening E(H-K) Default Flag (0=no, 1=yes)
case ml_redhkerr1 // Line-of-sight Reddening E(H-K) Upper Uncertainty [mag]
case ml_redhkerr2 // Line-of-sight Reddening E(H-K) Lower Uncertainty [mag]
case ml_redhkformat // Line-of-sight Reddening E(H-K) Format
case ml_redhklim // Line-of-sight Reddening E(H-K) Limit Flag (0='=', +1='>', -1='<')
case ml_redhk // Line-of-sight Reddening E(H-K) [mag]
case ml_redhkstr // Line-of-sight Reddening E(H-K) String for Display
case ml_redvidef // Line-of-Sight Reddening E(V-I) Default Flag (0=no, 1=yes)
case ml_redvierr1 // Line-of-Sight Reddening E(V-I) Upper Uncertainty [mag]
case ml_redvierr2 // Line-of-Sight Reddening E(V-I) Lower Uncertainty [mag]
case ml_redviformat // Line-of-Sight Reddening E(V-I) Format
case ml_redvilim // Line-of-Sight Reddening E(V-I) Limit Flag (0='=', +1='>', -1='<')
case ml_redvi // Line-of-sight Reddening E(V-I) [mag]
case ml_redvistr // Line-of-Sight Reddening E(V-I) String for Display
case ml_redvkdef // Line-of-sight Reddening E(V-K) Default Flag (0=no, 1=yes)
case ml_redvkerr1 // Line-of-sight Reddening E(V-K) Upper Uncertainty [mag]
case ml_redvkerr2 // Line-of-sight Reddening E(V-K) Lower Uncertainty [mag]
case ml_redvkformat // Line-of-sight Reddening E(V-K) Format
case ml_redvklim // Line-of-sight Reddening E(V-K) Limit Flag (0='=', +1='>', -1='<')
case ml_redvk // Line-of-sight Reddening E(V-K) [mag]
case ml_redvkstr // Line-of-sight Reddening E(V-K) String for Display
case pl_solnid // PL_SOLNID
case st_solnid // ST_SOLNID
case sy_solnid // SY_SOLNID
case ml_solnid // ML_SOLNID
case ml_sepinsnorpdef // Planet-Star Projected, Normalized Semi-Major Axis Default Flag
case ml_sepinsnorperr1 // Planet-Star Projected, Normalized Semi-Major Axis Upper Uncertain
case ml_sepinsnorperr2 // Planet-Star Projected, Normalized Semi-Major Axis Lower Uncertain
case ml_sepinsnorpformat // Planet-Star Projected, Normalized Semi-Major Axis Format
case ml_sepinsnorplim // Planet-Star Projected, Normalized Semi-Major Axis Limit Flag (0='
case ml_sepinsnorp // Planet-Star Projected, Normalized Semi-Major Axis
case ml_sepinsnorpstr // Planet-Star Projected, Normalized Semi-Major Axis String for Disp
case ml_sepminflag // Impact Parameter Orientation (1 = positive, -1 = negative)
case ml_sepminnormdef // Normalized Lens-Source Minimum Separation Default Flag (0=no, 1=y
case ml_sepminnormerr1 // Normalized Lens-Source Minimum Separation Upper Uncertainty
case ml_sepminnormerr2 // Normalized Lens-Source Minimum Separation Lower Uncertainty
case ml_sepminnormformat // Normalized Lens-Source Minimum Separation Format
case ml_sepminnormlim // Normalized Lens-Source Minimum Separation Limit Flag (0='=', +1='
case ml_sepminnorm // Normalized Lens-Source Minimum Separation
case ml_sepminnormstr // Normalized Lens-Source Minimum Separation String for Display
case pl_orbsmaxdef // Planet-Star Projected Semi-Major Axis Default Flag (0=no, 1=yes)
case pl_orbsmaxerr1 // Planet-Star Projected Semi-Major Axis Upper Uncertainty [AU]
case pl_orbsmaxerr2 // Planet-Star Projected Semi-Major Axis Lower Uncertainty [AU]
case pl_orbsmaxformat // Planet-Star Projected Semi-Major Axis Format
case pl_orbsmaxlim // Planet-Star Projected Semi-Major Axis Limit Flag (0='=', +1='>',
case pl_orbsmax // Planet-Star Projected Semi-Major Axis [AU]
case pl_orbsmaxstr // Planet-Star Projected Semi-Major Axis String for Display
case ml_tsepmindef // Time of Lens-Source Minimum Separation Default Flag (0=no, 1=yes)
case ml_tsepminerr1 // Time of Lens-Source Minimum Separation Upper Uncertainty [day]
case ml_tsepminerr2 // Time of Lens-Source Minimum Separation Lower Uncertainty [day]
case ml_tsepminformat // Time of Lens-Source Minimum Separation Format
case ml_tsepminlim // Time of Lens-Source Minimum Separation Limit Flag (0='=', +1='>',
case ml_tsepminstr // Time of Lens-Source Minimum Separation String for Display
case ml_tsepmin // Time of Lens-Source Minimum Separation [day]
case ml_xtimeeindef // Einstein Crossing Time Default Flag (0=no, 1=yes)
case ml_xtimeein // Einstein Crossing time [day]
case ml_xtimeeinerr1 // Einstein Crossing Time Upper Uncertainty [day]
case ml_xtimeeinerr2 // Einstein Crossing Time Lower Uncertainty [day]
case ml_xtimeeinformat // Einstein Crossing Time Format
case ml_xtimeeinlim // Einstein Crossing Time Limit Flag (0='=', +1='>', -1='<')
case ml_xtimeeinstr // Einstein Crossing Time String for Display
case ml_xtimesrcdef // Source crossing time Default Flag (0=no, 1=yes)
case ml_xtimesrcerr1 // Source crossing time Upper Uncertainty [day]
case ml_xtimesrcerr2 // Source crossing time Lower Uncertainty [day]
case ml_xtimesrcformat // Source crossing time Format
case ml_xtimesrclim // Source crossing time Limit Flag (0='=', +1='>', -1='<')
case ml_xtimesrc // Source crossing time [day]
case ml_xtimesrcstr // Source crossing time String for Display
case pl_name // Planet name
case htmllink // ADS Reference link
case ra // RA Value [decimal degrees]
case rastr // RA Value [sexagesimal]
case rowupdate // Rowupdate
case spt_ind // spatial index
case x //
case y //
case z //
case dec // Dec Value [decimal degrees]
case decstr // Dec Value [sexagesimal]
case glat // Galactic Latitude [deg]
case glon // Galactic Longitude [deg]
case ml_angstlaxdef // Source Trajectory-Lens Axis Angle Default Flag (0=no, 1=yes)
case ml_angstlaxerr1 // Source Trajectory-Lens Axis Angle Upper Uncertainty [rad]
case ml_angstlaxerr2 // Source Trajectory-Lens Axis Angle Lower Uncertainty [rad]
case ml_angstlaxformat // Source Trajectory-Lens Axis Angle Format
case ml_angstlaxlim // Source Trajectory-Lens Axis Angle Limit Flag (0='=', +1='>', -1='
case ml_angstlax // Source Trajectory-Lens Axis Angle [rad]
case ml_angstlaxstr // Source Trajectory-Lens Axis Angle String for Display
case cb_flag // Circumbinary Flag (1 = yes, 0 = no)
case ml_colhksdef // Source (H-K) Default Flag (0=no, 1=yes)
case ml_colhkserr1 // Source (H-K) Upper Uncertainty [mag]
case ml_colhkserr2 // Source (H-K) Lower Uncertainty [mag]
case ml_colhksformat // Source (H-K) Format
case ml_colhkslim // Source (H-K) Limit Flag (0='=', +1='>', -1='<')
case ml_colhksodef // Source De-Reddened (H-K) Default Flag (0=no, 1=yes)
case ml_colhksoerr1 // Source De-Reddened (H-K) Upper Uncertainty [mag]
case ml_colhksoerr2 // Source De-Reddened (H-K) Lower Uncertainty [mag]
case ml_colhksoformat // Source De-Reddened (H-K) Format
case ml_colhksolim // Source De-Reddened (H-K) Limit Flag (0='=', +1='>', -1='<')
case ml_colhkso // Source De-Reddened (H-K) [mag]
case ml_colhksostr // Source De-Reddened (H-K) String for Display
case ml_colhks // Source (H-K) [mag]
case ml_colhksstr // Source (H-K) String for Display
case ml_colihsdef // Source (I-H) Default Flag (0=no, 1=yes)
case ml_colihserr1 // Source (I-H) Upper Uncertainty [mag]
case ml_colihserr2 // Source (I-H) Lower Uncertainty [mag]
case ml_colihsformat // Source (I-H) Format
case ml_colihslim // Source (I-H) Limit Flag (0='=', +1='>', -1='<')
case ml_colihsodef // Source De-Reddened (I-H) Default Flag (0=no, 1=yes)
case ml_colihsoerr1 // Source De-Reddened (I-H) Upper Uncertainty [mag]
case ml_colihsoerr2 // Source De-Reddened (I-H) Lower Uncertainty [mag]
case ml_colihsoformat // Source De-Reddened (I-H) Format
case ml_colihsolim // Source De-Reddened (I-H) Limit Flag (0='=', +1='>', -1='<')
case ml_colihso // Source De-Reddened (I-H) [mag]
case ml_colihsostr // Source De-Reddened (I-H) String for Display
case ml_colihs // Source (I-H) [mag]
case ml_colihsstr // Source (I-H) String for Display
case ml_colvibl // Blend (V-I) [mag]
case ml_colvibldef // Blend (V-I) Default Flag (0=no, 1=yes)
case ml_colviblerr1 // Blend (V-I) Upper Uncertainty [mag]
case ml_colviblerr2 // Blend (V-I) Lower Uncertainty [mag]
case ml_colviblformat // Blend (V-I) Format
case ml_colvibllim // Blend (V-I) Limit Flag (0='=', +1='>', -1='<')
case ml_colviblstr // Blend (V-I) String for Display
case ml_colvisdef // Source (V-I) Default Flag (0=no, 1=yes)
case ml_colviserr1 // Source (V-I) Upper Uncertainty [mag]
case ml_colviserr2 // Source (V-I) Lower Uncertainty [mag]
case ml_colvisformat // Source (V-I) Format
case ml_colvislim // Source (V-I) Limit Flag (0='=', +1='>', -1='<')
case ml_colvisodef // Source De-Reddened (V-I) Default Flag (0=no, 1=yes)
case ml_colvisoerr1 // Source De-Reddened (V-I) Upper Uncertainty [mag]
case ml_colvisoerr2 // Source De-Reddened (V-I) Lower Uncertainty [mag]
case ml_colvisoformat // Source De-Reddened (V-I) Format
case ml_colvisolim // Source De-Reddened (V-I) Limit Flag (0='=', +1='>', -1='<')
case ml_colviso // Source De-Reddened (V-I) [mag]
case ml_colvisostr // Source De-Reddened (V-I) String for Display
case ml_colvis // Source (V-I) [mag]
case ml_colvisstr // Source (V-I) String for Display
case ml_colvksdef // Source (V-K) Default Flag (0=no, 1=yes)
case ml_colvkserr1 // Source (V-K) Upper Uncertainty [mag]
case ml_colvkserr2 // Source (V-K) Lower Uncertainty [mag]
case ml_colvksformat // Source (V-K) Format
case ml_colvkslim // Source (V-K) Limit Flag (0='=', +1='>', -1='<')
case ml_colvksodef // Source De-Reddened (V-K) Default Flag (0=no, 1=yes)
case ml_colvksoerr1 // Source De-Reddened (V-K) Upper Uncertainty [mag]
case ml_colvksoerr2 // Source De-Reddened (V-K) Lower Uncertainty [mag]
case ml_colvksoformat // Source De-Reddened (V-K) Format
case ml_colvksolim // Source De-Reddened (V-K) Limit Flag (0='=', +1='>', -1='<')
case ml_colvkso // Source De-Reddened (V-K) [mag]
case ml_colvksostr // Source De-Reddened (V-K) String for Display
case ml_colvks // Source (V-K) [mag]
case ml_colvksstr // Source (V-K) String for Display
case ml_dalphadtdef // Source Trajectory Angle Rate of Change Default Flag (0=no, 1=yes)
case ml_dalphadterr1 // Source Trajectory Angle Rate of Change Upper Uncertainty [deg/yr]
case ml_dalphadterr2 // Source Trajectory Angle Rate of Change Lower Uncertainty [deg/yr]
case ml_dalphadtformat // Source Trajectory Angle Rate of Change Format
case ml_dalphadtlim // Source Trajectory Angle Rate of Change Limit Flag (0='=', +1='>',
case ml_dalphadt // Source Trajectory Angle Rate of Change [deg/yr]
case ml_dalphadtstr // Source Trajectory Angle Rate of Change String for Display
case ml_description // Microlensing model description
case sy_distdef // Lens Distance Default Flag (0=no, 1=yes)
case sy_disterr1 // Lens Distance Upper Uncertainty [kpc]
case sy_disterr2 // Lens Distance Lower Uncertainty [kpc]
case sy_distformat // Lens Distance Format
case sy_dist // Lens Distance [kpc]
case sy_distlim // Lens Distance Limit Flag (0='=', +1='>', -1='<')
case sy_diststr // Lens Distance String for Display
case ml_distsdef // Source Distance Default Flag (0=no, 1=yes)
case ml_distserr1 // Source Distance Upper Uncertainty [kpc]
case ml_distserr2 // Source Distance Lower Uncertainty [kpc]
case ml_distsformat // Source Distance Format
case ml_distslim // Source Distance Limit Flag (0='=', +1='>', -1='<')
case ml_dists // Source Distance [kpc]
case ml_distsstr // Source Distance String for Display
case ml_dsdtdef // Planet-Star Separation Rate of Change Default Flag (0=no, 1=yes)
case ml_dsdterr1 // Planet-Star Separation Rate of Change Upper Uncertainty [yr**-1]
case ml_dsdterr2 // Planet-Star Separation Rate of Change Lower Uncertainty [yr**-1]
case ml_dsdtformat // Planet-Star Separation Rate of Change Format
case ml_dsdtlim // Planet-Star Separation Rate of Change Limit Flag (0='=', +1='>',
case ml_dsdt // Planet-Star Separation Rate of Change [yr**-1]
case ml_dsdtstr // Planet-Star Separation Rate of Change String for Display
case ml_efftimedef // Effective Timescale Default Flag (0=no, 1=yes)
case ml_efftime // Effective Timescale [day]
case ml_efftimeerr1 // Effective Timescale Upper Uncertainty [day]
case ml_efftimeerr2 // Effective Timescale Lower Uncertainty [day]
case ml_efftimeformat // Effective Timescale Format
case ml_efftimelim // Effective Timescale Limit Flag (0='=', +1='>', -1='<') [day]
case ml_efftimestr // Effective Timescale String for Display
case ml_exthflddef // Line-of-Sight H-band Extinction Default Flag (0=no, 1=yes)
case ml_exthflderr1 // Line-of-Sight H-band Extinction Upper Uncertainty [mag]
case ml_exthflderr2 // Line-of-Sight H-band Extinction Lower Uncertainty [mag]
case ml_exthfldformat // Line-of-Sight H-band Extinction Format
case ml_exthfldlim // Line-of-Sight H-band Extinction Limit Flag (0='=', +1='>', -1='<'
case ml_exthfld // Line-of-Sight H-band Extinction [mag]
case ml_exthfldstr // Line-of-Sight H-band Extinction String for Display
case ml_extiflddef // Line-of-Sight I-band Extinction Default Flag (0=no, 1=yes)
case ml_extiflderr1 // Line-of-Sight I-band Extinction Upper Uncertainty [mag]
case ml_extiflderr2 // Line-of-Sight I-band Extinction Lower Uncertainty [mag]
case ml_extifldformat // Line-of-Sight I-band Extinction Format
case ml_extifldlim // Line-of-Sight I-band Extinction Limit Flag (0='=', +1='>', -1='<'
case ml_extifld // Line-of-Sight I-band Extinction [mag]
case ml_extifldstr // Line-of-Sight I-band Extinction String for Display
case ml_extjflddef // Line-of-Sight J-band Extinction Default Flag (0=no, 1=yes)
case ml_extjflderr1 // Line-of-Sight J-band Extinction Upper Uncertainty [mag]
case ml_extjflderr2 // Line-of-Sight J-band Extinction Lower Uncertainty [mag]
case ml_extjfldformat // Line-of-Sight J-band Extinction Format
case ml_extjfldlim // Line-of-Sight J-band Extinction Limit Flag (0='=', +1='>', -1='<'
case ml_extjfld // Line-of-Sight J-band Extinction [mag]
case ml_extjfldstr // Line-of-Sight J-band Extinction String for Display
case ml_extkflddef // Line-of-Sight K-band Extinction Default Flag (0=no, 1=yes)
case ml_extkflderr1 // Line-of-Sight K-band Extinction Upper Uncertainty [mag]
case ml_extkflderr2 // Line-of-Sight K-band Extinction Lower Uncertainty [mag]
case ml_extkfldformat // Line-of-Sight K-band Extinction Format
case ml_extkfldlim // Line-of-Sight K-band Extinction Limit Flag (0='=', +1='>', -1='<'
case ml_extkfld // Line-of-Sight K-band Extinction [mag]
case ml_extkfldstr // Line-of-Sight K-band Extinction String for Display

public var id:String {
return self.rawValue
}

public var description:String {
switch self {
case .sy_hmag: return "Lens H-band [mag]"
case .sy_hmaglim: return "Lens H-band Limit Flag (0='=', +1='>', -1='<')"
case .sy_hmagstr: return "Lens H-band String for Display"
case .ml_maghsdef: return "Source H-band Default Flag (0=no, 1=yes)"
case .ml_maghserr1: return "Source H-band Upper Uncertainty [mag]"
case .ml_maghserr2: return "Source H-band Lower Uncertainty [mag]"
case .ml_maghsformat: return "Source H-band Format"
case .ml_maghslim: return "Source H-band Limit Flag (0='=', +1='>', -1='<')"
case .ml_maghsodef: return "Source De-Reddened H-band Default Flag (0=no, 1=yes)"
case .ml_maghsoerr1: return "Source De-Reddened H-band Upper Uncertainty [mag]"
case .ml_maghsoerr2: return "Source De-Reddened H-band Lower Uncertainty [mag]"
case .ml_maghsoformat: return "Source De-Reddened H-band Format"
case .ml_maghsolim: return "Source De-Reddened H-band Limit Flag (0='=', +1='>', -1='<')"
case .ml_maghso: return "Source De-Reddened H-band [mag]"
case .ml_maghsostr: return "Source De-Reddened H-band String for Display"
case .ml_maghs: return "Source H-band [mag]"
case .ml_maghsstr: return "Source H-band String for Display"
case .ml_magibasedef: return "Event Baseline I-band Default Flag (0=no, 1=yes)"
case .ml_magibaseerr1: return "Event Baseline I-band Upper Uncertainty"
case .ml_magibaseerr2: return "Event Baseline I-band Lower Uncertainty"
case .ml_magibase: return "Event Baseline I-band [mag]"
case .ml_magibaseformat: return "Event Baseline I-band Format"
case .ml_magibaselim: return "Event Baseline I-band Limit Flag (0='=', +1='>', -1='<')"
case .ml_magibasestr: return "Event Baseline I-band String for Display"
case .ml_magibl: return "Blend I-band [mag]"
case .ml_magibldef: return "Blend I-band Default Flag (0=no, 1=yes)"
case .ml_magiblerr1: return "Blend I-band Upper Uncertainty [mag]"
case .ml_magiblerr2: return "Blend I-band Lower Uncertainty [mag]"
case .ml_magiblformat: return "Blend I-band Format"
case .ml_magibllim: return "Blend I-band Limit Flag (0='=', +1='>', -1='<')"
case .ml_magiblstr: return "Blend I-band String for Display"
case .sy_icmagdef: return "Lens I-band Default Flag (0=no, 1=yes)"
case .sy_icmagerr1: return "Lens I-band Upper Uncertainty [mag]"
case .sy_icmagerr2: return "Lens I-band Lower Uncertainty [mag]"
case .sy_icmagformat: return "Lens I-band Format"
case .sy_icmag: return "Lens I-band [mag]"
case .sy_icmaglim: return "Lens I-band Limit Flag (0='=', +1='>', -1='<')"
case .sy_icmagstr: return "Lens I-band String for Display"
case .ml_magisdef: return "Source I-band Default Flag (0=no, 1=yes)"
case .ml_magiserr1: return "Source I-band Upper Uncertainty [mag]"
case .ml_magiserr2: return "Source I-band Lower Uncertainty [mag]"
case .ml_magisformat: return "Source I-band Format"
case .ml_magislim: return "Source I-band Limit Flag (0='=', +1='>', -1='<')"
case .ml_magisodef: return "Source De-Reddened I-band Default Flag (0=no, 1=yes)"
case .ml_magisoerr1: return "Source De-Reddened I-band Upper Uncertainty [mag]"
case .ml_magisoerr2: return "Source De-Reddened I-band Lower Uncertainty [mag]"
case .ml_magisoformat: return "Source De-Reddened I-band Format"
case .ml_magisolim: return "Source De-Reddened I-band Limit Flag (0='=', +1='>', -1='<')"
case .ml_magiso: return "Source De-Reddened I-band [mag]"
case .ml_magisostr: return "Source De-Reddened I-band String for Display"
case .ml_magis: return "Source I-band [mag]"
case .ml_magisstr: return "Source I-band String for Display"
case .sy_jmagdef: return "Lens J-band Default Flag (0=no, 1=yes)"
case .sy_jmagerr1: return "Lens J-band Upper Uncertainty [mag]"
case .sy_jmagerr2: return "Lens J-band Lower Uncertainty [mag]"
case .sy_jmagformat: return "Lens J-band Format"
case .sy_jmag: return "Lens J-band [mag]"
case .sy_jmaglim: return "Lens J-band Limit Flag (0='=', +1='>', -1='<')"
case .sy_jmagstr: return "Lens J-band String for Display"
case .ml_magjsdef: return "Source J-band Default Flag (0=no, 1=yes)"
case .ml_magjserr1: return "Source J-band Upper Uncertainty [mag]"
case .ml_magjserr2: return "Source J-band Upper Uncertainty [mag]"
case .ml_magjsformat: return "Source J-band Format"
case .ml_extvflddef: return "Line-of-Sight V-band Extinction Default Flag (0=no, 1=yes)"
case .ml_extvflderr1: return "Line-of-Sight V-band Extinction Upper Uncertainty [mag]"
case .ml_extvflderr2: return "Line-of-Sight V-band Extinction Lower Uncertainty [mag]"
case .ml_extvfldformat: return "Line-of-Sight V-band Extinction Format"
case .ml_extvfldlim: return "Line-of-Sight V-band Extinction Limit Flag (0='=', +1='>', -1='<'"
case .ml_extvfld: return "Line-of-Sight V-band Extinction [mag]"
case .ml_extvfldstr: return "Line-of-Sight V-band Extinction String for Display"
case .sy_hmagdef: return "Lens H-band Default Flag (0=no, 1=yes)"
case .sy_hmagerr1: return "Lens H-band Upper Uncertainty [mag]"
case .sy_hmagerr2: return "Lens H-band Lower Uncertainty [mag]"
case .sy_hmagformat: return "Lens H-band Format"
case .ml_magjslim: return "Source J-band Limit Flag (0='=', +1='>', -1='<')"
case .ml_magjsodef: return "Source De-Reddened J-band Default Flag (0=no, 1=yes)"
case .ml_magjsoerr1: return "Source De-reddened J-band Upper Uncertainty [mag]"
case .ml_magjsoerr2: return "Source De-reddened J-band Lower Uncertainty [mag]"
case .ml_magjsoformat: return "Source De-Reddened J-band Format"
case .ml_magjsolim: return "Source De-reddened J-band Limit Flag (0='=', +1='>', -1='<')"
case .ml_magjso: return "Source De-reddened J-band [mag]"
case .ml_magjsostr: return "Source De-Reddened J-band String for Display"
case .ml_magjs: return "Source J-band [mag]"
case .ml_magjsstr: return "Source J-band String for Display"
case .sy_kmagdef: return "Lens K-band Default Flag (0=no, 1=yes)"
case .sy_kmagerr1: return "Lens K-band Upper Uncertainty [mag]"
case .sy_kmagerr2: return "Lens K-band Lower Uncertainty [mag]"
case .sy_kmagformat: return "Lens K-band Format"
case .sy_kmag: return "Lens K-band [mag]"
case .sy_kmaglim: return "Lens K-band Limit Flag (0='=', +1='>', -1='<')"
case .sy_kmagstr: return "Lens K-band String for Display"
case .ml_magksdef: return "Source K-band Default Flag (0=no, 1=yes)"
case .ml_magkserr1: return "Source K-band Upper Uncertainty [mag]"
case .ml_magkserr2: return "Source K-band Lower Uncertainty [mag]"
case .ml_magksformat: return "Source K-band Format"
case .ml_magkslim: return "Source K-band Limit Flag (0='=', +1='>', -1='<')"
case .ml_magksodef: return "Source De-Reddened K-band Default Flag (0=no, 1=yes)"
case .ml_magksoerr1: return "Source De-Reddened K-band Upper Uncertainty [mag]"
case .ml_magksoerr2: return "Source De-Reddened K-band Lower Uncertainty [mag]"
case .ml_magksoformat: return "Source De-Reddened K-band Format"
case .ml_magksolim: return "Source De-Reddened K-band Limit Flag (0='=', +1='>', -1='<')"
case .ml_magkso: return "Source De-Reddened K-band [mag]"
case .ml_magksostr: return "Source De-Reddened K-band String for Display"
case .ml_magks: return "Source K-band [mag]"
case .ml_magksstr: return "Source K-band String for Display"
case .sy_vmagdef: return "Lens V-band Default Flag (0=no, 1=yes)"
case .sy_vmagerr1: return "Lens V-band Upper Uncertainty [mag]"
case .sy_vmagerr2: return "Lens V-band Lower Uncertainty [mag]"
case .sy_vmagformat: return "Lens V-band Format"
case .sy_vmag: return "Lens V-band [mag]"
case .sy_vmaglim: return "Lens V-band Limit Flag (0='=', +1='>', -1='<')"
case .sy_vmagstr: return "Lens V-band String for Display"
case .ml_magvsdef: return "Source V-band Default Flag (0=no, 1=yes)"
case .ml_magvserr1: return "Source V-band Upper Uncertainty [mag]"
case .ml_magvserr2: return "Source V-band Lower Uncertainty [mag]"
case .ml_magvsformat: return "Source V-band Format"
case .ml_magvslim: return "Source V-band Limit Flag (0='=', +1='>', -1='<')"
case .ml_magvsodef: return "Source De-Reddened V-band Default Flag (0=no, 1=yes)"
case .ml_magvsoerr1: return "Source De-Reddened V-band Upper Uncertainty [mag]"
case .ml_magvsoerr2: return "Source De-Reddened V-band Lower Uncertainty [mag]"
case .ml_magvsoformat: return "Source De-Reddened V-band Format"
case .ml_magvsolim: return "Source De-Reddened V-band Limit Flag (0='=', +1='>', -1='<')"
case .ml_magvso: return "Source De-Reddened V-band [mag]"
case .ml_magvsostr: return "Source De-Reddened V-band String for Display"
case .ml_magvs: return "Source V-band [mag]"
case .ml_magvsstr: return "Source V-band String for Display"
case .st_massdef: return "Lens Mass Default Flag (0=no, 1=yes)"
case .st_masserr1: return "Lens Mass Upper Uncertainty [Solar Mass]"
case .st_masserr2: return "Lens Mass Lower Uncertainty [Solar Mass]"
case .st_massformat: return "Lens Mass Format"
case .st_mass: return "Lens Mass [Solar Mass]"
case .st_masslim: return "Lens Mass Limit Flag (0='=', +1='>', -1='<')"
case .st_massstr: return "Lens Mass String for Display"
case .pl_massedef: return "Planet Mass Default Flag (0=no, 1=yes)"
case .pl_masseerr1: return "Planet Mass Upper Uncertainty [Earth Mass]"
case .pl_masseerr2: return "Planet Mass Lower Uncertainty [Earth Mass]"
case .pl_masseformat: return "Planet Mass Format"
case .pl_masselim: return "Planet Mass Limit Flag (0='=', +1='>', -1='<')"
case .pl_masse: return "Planet Mass [Earth mass]"
case .pl_massestr: return "Planet Mass String for Display"
case .pl_massjdef: return "Planet Mass Default Flag (0=no, 1=yes)"
case .pl_massjerr1: return "Planet Mass Upper Uncertainty [Jupiter Mass]"
case .pl_massjerr2: return "Planet Mass Lower Uncertainty [Jupiter Mass]"
case .pl_massjformat: return "Planet Mass Format"
case .pl_massjlim: return "Planet Mass Limit Flag (0='=', +1='>', -1='<')"
case .pl_massj: return "Planet Mass [Jupiter Mass]"
case .pl_massjstr: return "Planet Mass String for Display"
case .ml_massratiodef: return "Planet-Star Mass Ratio Default Flag (0=no, 1=yes)"
case .ml_massratioerr1: return "Planet-Star Mass Ratio Upper Uncertainty"
case .ml_massratioerr2: return "Planet-Star Mass Ratio Lower Uncertainty"
case .ml_massratioformat: return "Planet-Star Mass Ratio Format"
case .ml_massratiolim: return "Planet-Star Mass Ratio Limit Flag (0='=', +1='>', -1='<')"
case .ml_massratio: return "Planet-Star Mass Ratio (10**-4)"
case .ml_massratiostr: return "Planet-Star Mass Ratio String for Display"
case .ml_modelchisq: return "Model Chi-Squared"
case .ml_modeldef: return "Default Model (1 = default, 0 = non-default)"
case .ml_plxmicrodef: return "Microlens Parallax Default Flag (0=no, 1=yes)"
case .ml_plxmicroedef: return "Microlens Parallax (East component) Default Flag (0=no, 1=yes)"
case .ml_plxmicroeerr1: return "Microlens Parallax (East component) Upper Uncertainty"
case .ml_plxmicroeerr2: return "Microlens Parallax (East component) Lower Uncertainty"
case .ml_plxmicroeformat: return "Microlens Parallax (East component) Format"
case .ml_plxmicroelim: return "Microlens Parallax (East component) Limit Flag (0='=', +1='>', -1"
case .ml_plxmicroe: return "Microlens Parallax (East component)"
case .ml_plxmicroerr1: return "Microlens Parallax Upper Uncertainty"
case .ml_plxmicroerr2: return "Microlens Parallax Lower Uncertainty"
case .ml_plxmicroestr: return "Microlens Parallax (East component) String for Display"
case .ml_plxmicroformat: return "Microlens Parallax Format"
case .ml_plxmicrolim: return "Microlens Parallax Limit Flag (0='=', +1='>', -1='<')"
case .ml_plxmicro: return "Microlens Parallax"
case .ml_plxmicrondef: return "Microlens Parallax (North component) Default Flag (0=no, 1=yes)"
case .ml_plxmicronerr1: return "Microlens Parallax (North component) Upper Uncertainty"
case .ml_plxmicronerr2: return "Microlens Parallax (North component) Lower Uncertainty"
case .ml_plxmicronformat: return "Microlens Parallax (North component) Format"
case .ml_plxmicronlim: return "Microlens Parallax (North component) Limit Flag (0='=', +1='>', -"
case .ml_plxmicron: return "Microlens Parallax (North component)"
case .ml_plxmicronstr: return "Microlens Parallax (North component) String for Display"
case .ml_plxmicrostr: return "Microlens Parallax String for Display"
case .ml_plxreldef: return "Lens-Source Relative Parallax Default Flag (0=no, 1=yes)"
case .ml_plxrelerr1: return "Lens-Source Relative Parallax Upper Uncertainty"
case .ml_plxrelerr2: return "Lens-Source Relative Parallax Lower Uncertainty"
case .ml_plxrelformat: return "Lens-Source Relative Parallax Format"
case .ml_plxrel: return "Lens-Source Relative Parallax"
case .ml_plxrellim: return "Lens-Source Relative Parallax Limit Flag (0='=', +1='>', -1='<')"
case .ml_plxrelstr: return "Lens-Source Relative Parallax String for Display"
case .ml_pmrellsdef: return "Lens-source Relative Proper Motion Default Flag (0=no, 1=yes)"
case .ml_pmrellserr1: return "Lens-source Relative Proper Motion Upper Uncertainty [mas/yr]"
case .ml_pmrellserr2: return "Lens-source Relative Proper Motion Lower Uncertainty [mas/yr]"
case .ml_pmrellsformat: return "Lens-source Relative Proper Motion Format"
case .ml_pmrells: return "Lens-source Relative Proper Motion [mas/yr]"
case .ml_pmrellslim: return "Lens-source Relative Proper Motion Limit Flag (0='=', +1='>', -1="
case .ml_pmrellsstr: return "Lens-source Relative Proper Motion String for Display"
case .ml_pmsdef: return "Source Proper Motion Default Flag (0=no, 1=yes)"
case .ml_pmserr1: return "Source Proper Motion Upper Uncertainty [mas/yr]"
case .ml_pmserr2: return "Source Proper Motion Lower Uncertainty [mas/yr]"
case .ml_pmsformat: return "Source Proper Motion Format"
case .ml_pmslim: return "Source Proper Motion Limit Flag (0='=', +1='>', -1='<')"
case .ml_pms: return "Source Proper Motion [mas/yr]"
case .ml_pmsstr: return "Source Proper Motion String for Display"
case .ml_radeinang: return "Angular Einstein radius [mas]"
case .ml_radeinangdef: return "Angular Einstein radius Default Flag (0=no, 1=yes)"
case .ml_radeinangerr1: return "Angular Einstein radius Upper Uncertainty [mas]"
case .ml_radeinangerr2: return "Angular Einstein radius Lower Uncertainty [mas]"
case .ml_radeinangformat: return "Angular Einstein radius Format"
case .ml_radeinanglim: return "Angular Einstein radius Limit Flag (0='=', +1='>', -1='<')"
case .ml_radeinangstr: return "Angular Einstein radius String for Display"
case .ml_radsangdef: return "Source Angular Radius Default Flag (0=no, 1=yes)"
case .ml_radsangerr1: return "Source Angular Radius Upper Uncertainty [uas]"
case .ml_radsangerr2: return "Source Angular Radius Lower Uncertainty [uas]"
case .ml_radsangformat: return "Source Angular Radius Format"
case .ml_radsanglim: return "Source Angular Radius Limit Flag (0='=', +1='>', -1='<')"
case .ml_radsang: return "Source Angular Radius [uas]"
case .ml_radsangstr: return "Source Angular Radius String for Display"
case .ml_radsnormdef: return "Normalized Source Angular Radius Default Flag (0=no, 1=yes)"
case .ml_radsnormerr1: return "Normalized Source Angular Radius Upper Uncertainty"
case .ml_radsnormerr2: return "Normalized Source Angular Radius Lower Uncertainty"
case .ml_radsnormformat: return "Normalized Source Angular Radius Format"
case .ml_radsnormlim: return "Normalized Source Angular Radius Limit Flag (0='=', +1='>', -1='<"
case .ml_radsnorm: return "Normalized Source Angular Radius (10**-3)"
case .ml_radsnormstr: return "Normalized Source Angular Radius String for Display"
case .ml_radsphydef: return "Source Physical Radius Default Flag (0=no, 1=yes)"
case .ml_radsphyerr1: return "Source Physical Radius Upper Uncertainty [Solar Radii]"
case .ml_radsphyerr2: return "Source Physical Radius Lower Uncertainty [Solar Radii]"
case .ml_radsphyformat: return "Source Physical Radius Format"
case .ml_radsphylim: return "Source Physical Radius Limit Flag (0='=', +1='>', -1='<')"
case .ml_radsphy: return "Source Physical Radius [Solar Radii]"
case .ml_radsphystr: return "Source Physical Radius String for Display"
case .ml_redhkdef: return "Line-of-sight Reddening E(H-K) Default Flag (0=no, 1=yes)"
case .ml_redhkerr1: return "Line-of-sight Reddening E(H-K) Upper Uncertainty [mag]"
case .ml_redhkerr2: return "Line-of-sight Reddening E(H-K) Lower Uncertainty [mag]"
case .ml_redhkformat: return "Line-of-sight Reddening E(H-K) Format"
case .ml_redhklim: return "Line-of-sight Reddening E(H-K) Limit Flag (0='=', +1='>', -1='<')"
case .ml_redhk: return "Line-of-sight Reddening E(H-K) [mag]"
case .ml_redhkstr: return "Line-of-sight Reddening E(H-K) String for Display"
case .ml_redvidef: return "Line-of-Sight Reddening E(V-I) Default Flag (0=no, 1=yes)"
case .ml_redvierr1: return "Line-of-Sight Reddening E(V-I) Upper Uncertainty [mag]"
case .ml_redvierr2: return "Line-of-Sight Reddening E(V-I) Lower Uncertainty [mag]"
case .ml_redviformat: return "Line-of-Sight Reddening E(V-I) Format"
case .ml_redvilim: return "Line-of-Sight Reddening E(V-I) Limit Flag (0='=', +1='>', -1='<')"
case .ml_redvi: return "Line-of-sight Reddening E(V-I) [mag]"
case .ml_redvistr: return "Line-of-Sight Reddening E(V-I) String for Display"
case .ml_redvkdef: return "Line-of-sight Reddening E(V-K) Default Flag (0=no, 1=yes)"
case .ml_redvkerr1: return "Line-of-sight Reddening E(V-K) Upper Uncertainty [mag]"
case .ml_redvkerr2: return "Line-of-sight Reddening E(V-K) Lower Uncertainty [mag]"
case .ml_redvkformat: return "Line-of-sight Reddening E(V-K) Format"
case .ml_redvklim: return "Line-of-sight Reddening E(V-K) Limit Flag (0='=', +1='>', -1='<')"
case .ml_redvk: return "Line-of-sight Reddening E(V-K) [mag]"
case .ml_redvkstr: return "Line-of-sight Reddening E(V-K) String for Display"
case .pl_solnid: return "PL_SOLNID"
case .st_solnid: return "ST_SOLNID"
case .sy_solnid: return "SY_SOLNID"
case .ml_solnid: return "ML_SOLNID"
case .ml_sepinsnorpdef: return "Planet-Star Projected, Normalized Semi-Major Axis Default Flag"
case .ml_sepinsnorperr1: return "Planet-Star Projected, Normalized Semi-Major Axis Upper Uncertain"
case .ml_sepinsnorperr2: return "Planet-Star Projected, Normalized Semi-Major Axis Lower Uncertain"
case .ml_sepinsnorpformat: return "Planet-Star Projected, Normalized Semi-Major Axis Format"
case .ml_sepinsnorplim: return "Planet-Star Projected, Normalized Semi-Major Axis Limit Flag (0='"
case .ml_sepinsnorp: return "Planet-Star Projected, Normalized Semi-Major Axis"
case .ml_sepinsnorpstr: return "Planet-Star Projected, Normalized Semi-Major Axis String for Disp"
case .ml_sepminflag: return "Impact Parameter Orientation (1 = positive, -1 = negative)"
case .ml_sepminnormdef: return "Normalized Lens-Source Minimum Separation Default Flag (0=no, 1=y"
case .ml_sepminnormerr1: return "Normalized Lens-Source Minimum Separation Upper Uncertainty"
case .ml_sepminnormerr2: return "Normalized Lens-Source Minimum Separation Lower Uncertainty"
case .ml_sepminnormformat: return "Normalized Lens-Source Minimum Separation Format"
case .ml_sepminnormlim: return "Normalized Lens-Source Minimum Separation Limit Flag (0='=', +1='"
case .ml_sepminnorm: return "Normalized Lens-Source Minimum Separation"
case .ml_sepminnormstr: return "Normalized Lens-Source Minimum Separation String for Display"
case .pl_orbsmaxdef: return "Planet-Star Projected Semi-Major Axis Default Flag (0=no, 1=yes)"
case .pl_orbsmaxerr1: return "Planet-Star Projected Semi-Major Axis Upper Uncertainty [AU]"
case .pl_orbsmaxerr2: return "Planet-Star Projected Semi-Major Axis Lower Uncertainty [AU]"
case .pl_orbsmaxformat: return "Planet-Star Projected Semi-Major Axis Format"
case .pl_orbsmaxlim: return "Planet-Star Projected Semi-Major Axis Limit Flag (0='=', +1='>',"
case .pl_orbsmax: return "Planet-Star Projected Semi-Major Axis [AU]"
case .pl_orbsmaxstr: return "Planet-Star Projected Semi-Major Axis String for Display"
case .ml_tsepmindef: return "Time of Lens-Source Minimum Separation Default Flag (0=no, 1=yes)"
case .ml_tsepminerr1: return "Time of Lens-Source Minimum Separation Upper Uncertainty [day]"
case .ml_tsepminerr2: return "Time of Lens-Source Minimum Separation Lower Uncertainty [day]"
case .ml_tsepminformat: return "Time of Lens-Source Minimum Separation Format"
case .ml_tsepminlim: return "Time of Lens-Source Minimum Separation Limit Flag (0='=', +1='>',"
case .ml_tsepminstr: return "Time of Lens-Source Minimum Separation String for Display"
case .ml_tsepmin: return "Time of Lens-Source Minimum Separation [day]"
case .ml_xtimeeindef: return "Einstein Crossing Time Default Flag (0=no, 1=yes)"
case .ml_xtimeein: return "Einstein Crossing time [day]"
case .ml_xtimeeinerr1: return "Einstein Crossing Time Upper Uncertainty [day]"
case .ml_xtimeeinerr2: return "Einstein Crossing Time Lower Uncertainty [day]"
case .ml_xtimeeinformat: return "Einstein Crossing Time Format"
case .ml_xtimeeinlim: return "Einstein Crossing Time Limit Flag (0='=', +1='>', -1='<')"
case .ml_xtimeeinstr: return "Einstein Crossing Time String for Display"
case .ml_xtimesrcdef: return "Source crossing time Default Flag (0=no, 1=yes)"
case .ml_xtimesrcerr1: return "Source crossing time Upper Uncertainty [day]"
case .ml_xtimesrcerr2: return "Source crossing time Lower Uncertainty [day]"
case .ml_xtimesrcformat: return "Source crossing time Format"
case .ml_xtimesrclim: return "Source crossing time Limit Flag (0='=', +1='>', -1='<')"
case .ml_xtimesrc: return "Source crossing time [day]"
case .ml_xtimesrcstr: return "Source crossing time String for Display"
case .pl_name: return "Planet name"
case .htmllink: return "ADS Reference link"
case .ra: return "RA Value [decimal degrees]"
case .rastr: return "RA Value [sexagesimal]"
case .rowupdate: return "Rowupdate"
case .spt_ind: return "spatial index"
case .x: return ""
case .y: return ""
case .z: return ""
case .dec: return "Dec Value [decimal degrees]"
case .decstr: return "Dec Value [sexagesimal]"
case .glat: return "Galactic Latitude [deg]"
case .glon: return "Galactic Longitude [deg]"
case .ml_angstlaxdef: return "Source Trajectory-Lens Axis Angle Default Flag (0=no, 1=yes)"
case .ml_angstlaxerr1: return "Source Trajectory-Lens Axis Angle Upper Uncertainty [rad]"
case .ml_angstlaxerr2: return "Source Trajectory-Lens Axis Angle Lower Uncertainty [rad]"
case .ml_angstlaxformat: return "Source Trajectory-Lens Axis Angle Format"
case .ml_angstlaxlim: return "Source Trajectory-Lens Axis Angle Limit Flag (0='=', +1='>', -1='"
case .ml_angstlax: return "Source Trajectory-Lens Axis Angle [rad]"
case .ml_angstlaxstr: return "Source Trajectory-Lens Axis Angle String for Display"
case .cb_flag: return "Circumbinary Flag (1 = yes, 0 = no)"
case .ml_colhksdef: return "Source (H-K) Default Flag (0=no, 1=yes)"
case .ml_colhkserr1: return "Source (H-K) Upper Uncertainty [mag]"
case .ml_colhkserr2: return "Source (H-K) Lower Uncertainty [mag]"
case .ml_colhksformat: return "Source (H-K) Format"
case .ml_colhkslim: return "Source (H-K) Limit Flag (0='=', +1='>', -1='<')"
case .ml_colhksodef: return "Source De-Reddened (H-K) Default Flag (0=no, 1=yes)"
case .ml_colhksoerr1: return "Source De-Reddened (H-K) Upper Uncertainty [mag]"
case .ml_colhksoerr2: return "Source De-Reddened (H-K) Lower Uncertainty [mag]"
case .ml_colhksoformat: return "Source De-Reddened (H-K) Format"
case .ml_colhksolim: return "Source De-Reddened (H-K) Limit Flag (0='=', +1='>', -1='<')"
case .ml_colhkso: return "Source De-Reddened (H-K) [mag]"
case .ml_colhksostr: return "Source De-Reddened (H-K) String for Display"
case .ml_colhks: return "Source (H-K) [mag]"
case .ml_colhksstr: return "Source (H-K) String for Display"
case .ml_colihsdef: return "Source (I-H) Default Flag (0=no, 1=yes)"
case .ml_colihserr1: return "Source (I-H) Upper Uncertainty [mag]"
case .ml_colihserr2: return "Source (I-H) Lower Uncertainty [mag]"
case .ml_colihsformat: return "Source (I-H) Format"
case .ml_colihslim: return "Source (I-H) Limit Flag (0='=', +1='>', -1='<')"
case .ml_colihsodef: return "Source De-Reddened (I-H) Default Flag (0=no, 1=yes)"
case .ml_colihsoerr1: return "Source De-Reddened (I-H) Upper Uncertainty [mag]"
case .ml_colihsoerr2: return "Source De-Reddened (I-H) Lower Uncertainty [mag]"
case .ml_colihsoformat: return "Source De-Reddened (I-H) Format"
case .ml_colihsolim: return "Source De-Reddened (I-H) Limit Flag (0='=', +1='>', -1='<')"
case .ml_colihso: return "Source De-Reddened (I-H) [mag]"
case .ml_colihsostr: return "Source De-Reddened (I-H) String for Display"
case .ml_colihs: return "Source (I-H) [mag]"
case .ml_colihsstr: return "Source (I-H) String for Display"
case .ml_colvibl: return "Blend (V-I) [mag]"
case .ml_colvibldef: return "Blend (V-I) Default Flag (0=no, 1=yes)"
case .ml_colviblerr1: return "Blend (V-I) Upper Uncertainty [mag]"
case .ml_colviblerr2: return "Blend (V-I) Lower Uncertainty [mag]"
case .ml_colviblformat: return "Blend (V-I) Format"
case .ml_colvibllim: return "Blend (V-I) Limit Flag (0='=', +1='>', -1='<')"
case .ml_colviblstr: return "Blend (V-I) String for Display"
case .ml_colvisdef: return "Source (V-I) Default Flag (0=no, 1=yes)"
case .ml_colviserr1: return "Source (V-I) Upper Uncertainty [mag]"
case .ml_colviserr2: return "Source (V-I) Lower Uncertainty [mag]"
case .ml_colvisformat: return "Source (V-I) Format"
case .ml_colvislim: return "Source (V-I) Limit Flag (0='=', +1='>', -1='<')"
case .ml_colvisodef: return "Source De-Reddened (V-I) Default Flag (0=no, 1=yes)"
case .ml_colvisoerr1: return "Source De-Reddened (V-I) Upper Uncertainty [mag]"
case .ml_colvisoerr2: return "Source De-Reddened (V-I) Lower Uncertainty [mag]"
case .ml_colvisoformat: return "Source De-Reddened (V-I) Format"
case .ml_colvisolim: return "Source De-Reddened (V-I) Limit Flag (0='=', +1='>', -1='<')"
case .ml_colviso: return "Source De-Reddened (V-I) [mag]"
case .ml_colvisostr: return "Source De-Reddened (V-I) String for Display"
case .ml_colvis: return "Source (V-I) [mag]"
case .ml_colvisstr: return "Source (V-I) String for Display"
case .ml_colvksdef: return "Source (V-K) Default Flag (0=no, 1=yes)"
case .ml_colvkserr1: return "Source (V-K) Upper Uncertainty [mag]"
case .ml_colvkserr2: return "Source (V-K) Lower Uncertainty [mag]"
case .ml_colvksformat: return "Source (V-K) Format"
case .ml_colvkslim: return "Source (V-K) Limit Flag (0='=', +1='>', -1='<')"
case .ml_colvksodef: return "Source De-Reddened (V-K) Default Flag (0=no, 1=yes)"
case .ml_colvksoerr1: return "Source De-Reddened (V-K) Upper Uncertainty [mag]"
case .ml_colvksoerr2: return "Source De-Reddened (V-K) Lower Uncertainty [mag]"
case .ml_colvksoformat: return "Source De-Reddened (V-K) Format"
case .ml_colvksolim: return "Source De-Reddened (V-K) Limit Flag (0='=', +1='>', -1='<')"
case .ml_colvkso: return "Source De-Reddened (V-K) [mag]"
case .ml_colvksostr: return "Source De-Reddened (V-K) String for Display"
case .ml_colvks: return "Source (V-K) [mag]"
case .ml_colvksstr: return "Source (V-K) String for Display"
case .ml_dalphadtdef: return "Source Trajectory Angle Rate of Change Default Flag (0=no, 1=yes)"
case .ml_dalphadterr1: return "Source Trajectory Angle Rate of Change Upper Uncertainty [deg/yr]"
case .ml_dalphadterr2: return "Source Trajectory Angle Rate of Change Lower Uncertainty [deg/yr]"
case .ml_dalphadtformat: return "Source Trajectory Angle Rate of Change Format"
case .ml_dalphadtlim: return "Source Trajectory Angle Rate of Change Limit Flag (0='=', +1='>',"
case .ml_dalphadt: return "Source Trajectory Angle Rate of Change [deg/yr]"
case .ml_dalphadtstr: return "Source Trajectory Angle Rate of Change String for Display"
case .ml_description: return "Microlensing model description"
case .sy_distdef: return "Lens Distance Default Flag (0=no, 1=yes)"
case .sy_disterr1: return "Lens Distance Upper Uncertainty [kpc]"
case .sy_disterr2: return "Lens Distance Lower Uncertainty [kpc]"
case .sy_distformat: return "Lens Distance Format"
case .sy_dist: return "Lens Distance [kpc]"
case .sy_distlim: return "Lens Distance Limit Flag (0='=', +1='>', -1='<')"
case .sy_diststr: return "Lens Distance String for Display"
case .ml_distsdef: return "Source Distance Default Flag (0=no, 1=yes)"
case .ml_distserr1: return "Source Distance Upper Uncertainty [kpc]"
case .ml_distserr2: return "Source Distance Lower Uncertainty [kpc]"
case .ml_distsformat: return "Source Distance Format"
case .ml_distslim: return "Source Distance Limit Flag (0='=', +1='>', -1='<')"
case .ml_dists: return "Source Distance [kpc]"
case .ml_distsstr: return "Source Distance String for Display"
case .ml_dsdtdef: return "Planet-Star Separation Rate of Change Default Flag (0=no, 1=yes)"
case .ml_dsdterr1: return "Planet-Star Separation Rate of Change Upper Uncertainty [yr**-1]"
case .ml_dsdterr2: return "Planet-Star Separation Rate of Change Lower Uncertainty [yr**-1]"
case .ml_dsdtformat: return "Planet-Star Separation Rate of Change Format"
case .ml_dsdtlim: return "Planet-Star Separation Rate of Change Limit Flag (0='=', +1='>',"
case .ml_dsdt: return "Planet-Star Separation Rate of Change [yr**-1]"
case .ml_dsdtstr: return "Planet-Star Separation Rate of Change String for Display"
case .ml_efftimedef: return "Effective Timescale Default Flag (0=no, 1=yes)"
case .ml_efftime: return "Effective Timescale [day]"
case .ml_efftimeerr1: return "Effective Timescale Upper Uncertainty [day]"
case .ml_efftimeerr2: return "Effective Timescale Lower Uncertainty [day]"
case .ml_efftimeformat: return "Effective Timescale Format"
case .ml_efftimelim: return "Effective Timescale Limit Flag (0='=', +1='>', -1='<') [day]"
case .ml_efftimestr: return "Effective Timescale String for Display"
case .ml_exthflddef: return "Line-of-Sight H-band Extinction Default Flag (0=no, 1=yes)"
case .ml_exthflderr1: return "Line-of-Sight H-band Extinction Upper Uncertainty [mag]"
case .ml_exthflderr2: return "Line-of-Sight H-band Extinction Lower Uncertainty [mag]"
case .ml_exthfldformat: return "Line-of-Sight H-band Extinction Format"
case .ml_exthfldlim: return "Line-of-Sight H-band Extinction Limit Flag (0='=', +1='>', -1='<'"
case .ml_exthfld: return "Line-of-Sight H-band Extinction [mag]"
case .ml_exthfldstr: return "Line-of-Sight H-band Extinction String for Display"
case .ml_extiflddef: return "Line-of-Sight I-band Extinction Default Flag (0=no, 1=yes)"
case .ml_extiflderr1: return "Line-of-Sight I-band Extinction Upper Uncertainty [mag]"
case .ml_extiflderr2: return "Line-of-Sight I-band Extinction Lower Uncertainty [mag]"
case .ml_extifldformat: return "Line-of-Sight I-band Extinction Format"
case .ml_extifldlim: return "Line-of-Sight I-band Extinction Limit Flag (0='=', +1='>', -1='<'"
case .ml_extifld: return "Line-of-Sight I-band Extinction [mag]"
case .ml_extifldstr: return "Line-of-Sight I-band Extinction String for Display"
case .ml_extjflddef: return "Line-of-Sight J-band Extinction Default Flag (0=no, 1=yes)"
case .ml_extjflderr1: return "Line-of-Sight J-band Extinction Upper Uncertainty [mag]"
case .ml_extjflderr2: return "Line-of-Sight J-band Extinction Lower Uncertainty [mag]"
case .ml_extjfldformat: return "Line-of-Sight J-band Extinction Format"
case .ml_extjfldlim: return "Line-of-Sight J-band Extinction Limit Flag (0='=', +1='>', -1='<'"
case .ml_extjfld: return "Line-of-Sight J-band Extinction [mag]"
case .ml_extjfldstr: return "Line-of-Sight J-band Extinction String for Display"
case .ml_extkflddef: return "Line-of-Sight K-band Extinction Default Flag (0=no, 1=yes)"
case .ml_extkflderr1: return "Line-of-Sight K-band Extinction Upper Uncertainty [mag]"
case .ml_extkflderr2: return "Line-of-Sight K-band Extinction Lower Uncertainty [mag]"
case .ml_extkfldformat: return "Line-of-Sight K-band Extinction Format"
case .ml_extkfldlim: return "Line-of-Sight K-band Extinction Limit Flag (0='=', +1='>', -1='<'"
case .ml_extkfld: return "Line-of-Sight K-band Extinction [mag]"
case .ml_extkfldstr: return "Line-of-Sight K-band Extinction String for Display"
}
}
}

public enum object_aliases_columns:String, Codable, Identifiable, CaseIterable{
case resolved_name // Name Resolver Alias

public var id:String {
return self.rawValue
}

public var description:String {
switch self {
case .resolved_name: return "Name Resolver Alias"
}
}
}

public enum k2pandc_columns:String, Codable, Identifiable, CaseIterable{
case sy_gmagstr // g (Sloan) Magnitude
case sy_gaiamag // Gaia Magnitude
case sy_gaiamagerr1 // Gaia Magnitude Upper Unc
case sy_gaiamagerr2 // Gaia Magnitude Lower Unc
case sy_gaiamagstr // Gaia Magnitude
case sy_tmag // TESS Magnitude
case sy_tmagerr1 // TESS Magnitude Upper Unc
case sy_tmagerr2 // TESS Magnitude Lower Unc
case sy_tmagstr // TESS Magnitude
case pl_controv_flag // Controversial Flag
case pl_tsystemref // Time Reference Frame and Standard
case st_metratio // Stellar Metallicity Ratio
case st_spectype // Spectral Type
case sy_kepmag // Kepler Magnitude
case sy_kepmagerr1 // Kepler Magnitude Upper Unc
case sy_kepmagerr2 // Kepler Magnitude Lower Unc
case sy_kepmagstr // Kepler Magnitude
case st_rotp // Stellar Rotational Period [day]
case st_rotperr1 // Stellar Rotational Period [day] Upper Unc.
case st_rotperr2 // Stellar Rotational Period [day] Lower Unc.
case st_rotplim // Stellar Rotational Period Limit Flag
case st_rotpstr // Stellar Rotational Period [day]
case pl_projobliq // Projected Obliquity [deg]
case pl_projobliqerr1 // Projected Obliquity Upper Unc. [deg]
case pl_projobliqerr2 // Projected Obliquity Lower Unc. [deg]
case pl_projobliqlim // Projected Obliquity Limit Flag
case pl_projobliqstr // Projected Obliquity [deg]
case x // Spatial Coordinate X
case pl_trueobliq // True Obliquity [deg]
case y // Spatial Coordinate Y
case pl_trueobliqerr1 // True Obliquity Upper Unc. [deg]
case z // Spatial Coordinate Z
case pl_trueobliqerr2 // True Obliquity Lower Unc. [deg]
case htm20 // Spatial Index
case gaia_id // GAIA ID
case pl_trueobliqlim // True Obliquity Limit Flag
case cb_flag // Circumbinary Flag
case pl_trueobliqstr // True Obliquity [deg]
case sy_icmag // I (Cousins) Magnitude
case sy_icmagerr1 // I (Cousins) Magnitude Upper Unc
case sy_icmagerr2 // I (Cousins) Magnitude Lower Unc
case sy_icmagstr // I (Cousins) Magnitude
case rowupdate // Date of Last Update
case pl_pubdate // Planetary Parameter Reference Publication Date
case releasedate // Release Date
case dkin_flag // Detected by Disk Kinematics
case pl_name // Planet Name
case pl_letter // Planet Letter
case hostname // Host Name
case hd_name // HD ID
case epic_candname // EPIC CANDID
case epic_hostname // EPIC HOSTID
case k2_name // K2 ID
case hip_name // HIP ID
case tic_id // TIC ID
case default_flag // Default Parameter Set
case pl_refname // Planetary Parameter Reference
case st_refname // Stellar Parameter Reference
case sy_refname // System Parameter Reference
case disc_pubdate // Discovery Publication Date
case disc_year // Discovery Year
case discoverymethod // Discovery Method
case disc_locale // Discovery Locale
case disc_facility // Discovery Facility
case disp_refname // Disposition Reference
case disposition // Disposition
case k2_campaigns // K2 Campaigns
case k2_campaigns_num // Number of K2 Campaigns
case disc_instrument // Discovery Instrument
case disc_telescope // Discovery Telescope
case disc_refname // Discovery Reference
case ra // RA [decimal]
case rastr // RA [sexagesimal]
case dec // Dec [decimal]
case decstr // Dec [sexagesimal]
case glon // Galactic Longitude [deg]
case glat // Galactic Latitude [deg]
case elon // Ecliptic Longitude [deg]
case elat // Ecliptic Latitude [deg]
case pl_orbper // Orbital Period [day]
case pl_orbpererr1 // Orbital Period Upper Unc. [day]
case pl_orbpererr2 // Orbital Period Lower Unc. [day]
case pl_orbperlim // Orbital Period Limit Flag
case pl_orbperstr // Orbital Period [day]
case pl_orblpererr1 // Argument of Periastron Upper Unc. [deg]
case pl_orblper // Argument of Periastron [deg]
case pl_orblpererr2 // Argument of Periastron Lower Unc. [deg]
case pl_orblperlim // Argument of Periastron Limit Flag
case pl_orblperstr // Argument of Periastron [deg]
case pl_orbsmax // Orbit Semi-Major Axis [au])
case pl_orbsmaxerr1 // Orbit Semi-Major Axis Upper Unc. [au]
case pl_orbsmaxerr2 // Orbit Semi-Major Axis Lower Unc. [au]
case pl_orbsmaxlim // Orbit Semi-Major Axis Limit Flag
case pl_orbsmaxstr // Orbit Semi-Major Axis [au]
case pl_orbincl // Inclination [deg]
case pl_orbinclerr1 // Inclination Upper Unc. [deg]
case pl_orbinclerr2 // Inclination Lower Unc. [deg]
case pl_orbincllim // Inclination Limit Flag
case pl_orbinclstr // Inclination [deg]
case pl_orbtper // Epoch of Periastron [day]
case pl_orbtpererr1 // Epoch of Periastron Upper Unc. [day]
case pl_orbtpererr2 // Epoch of Periastron Lower Unc. [day]
case pl_orbtperlim // Epoch of Periastron Limit Flag
case pl_orbtperstr // Epoch of Periastron [day]
case pl_orbeccen // Eccentricity
case pl_orbeccenerr1 // Eccentricity Upper Unc.
case pl_orbeccenerr2 // Eccentricity Lower Unc.
case pl_orbeccenlim // Eccentricity Limit Flag
case pl_orbeccenstr // Eccentricity
case pl_eqt // Equilibrium Temperature [K]
case pl_eqterr1 // Equilibrium Temperature Upper Unc. [K]
case pl_eqterr2 // Equilibrium Temperature Lower Unc. [K]
case pl_eqtlim // Equilibrium Temperature Limit Flag
case pl_eqtstr // Equilibrium Temperature [K]
case pl_occdep // Occultation Depth [%]
case pl_occdeperr1 // Occultation Depth Upper Unc. [%]
case pl_occdeperr2 // Occultation Depth Lower Unc. [%]
case pl_occdeplim // Occultation Depth Limit Flag
case pl_occdepstr // Occultation Depth [%]
case pl_insol // Insolation Flux [Earth Flux]
case pl_insolerr1 // Insolation Flux Upper Unc. [Earth Flux]
case pl_insolerr2 // Insolation Flux Lower Unc. [Earth Flux]
case pl_insollim // Insolation Flux Limit Flag
case pl_insolstr // Insolation Flux [Earth Flux]
case pl_dens // Planet Density [g/cm**3]
case pl_denserr1 // Planet Density Upper Unc. [g/cm**3]
case pl_denserr2 // Planet Density Lower Unc. [g/cm**3]
case pl_denslim // Planet Density Limit Flag
case pl_densstr // Planet Density [g/cm**3]
case pl_trandep // Transit Depth [%]
case pl_trandeperr1 // Transit Depth Upper Unc. [%]
case pl_trandeperr2 // Transit Depth Lower Unc. [%]
case pl_trandeplim // Transit Depth Limit Flag
case pl_trandepstr // Transit Depth [%]
case pl_tranmid // Transit Midpoint [day]
case pl_tranmiderr1 // Transit Midpoint Upper Unc. [day]
case pl_tranmiderr2 // Transit Midpoint Lower Unc. [day]
case pl_tranmidlim // Transit Midpoint Limit Flag
case pl_tranmidstr // Time of Conjunction (Transit Midpoint) [day]
case pl_trandur // Transit Duration [day]
case pl_trandurerr1 // Transit Duration Upper Unc. [day]
case pl_trandurerr2 // Transit Duration Lower Unc. [day]
case pl_trandurlim // Transit Duration Limit Flag
case pl_trandurstr // Transit Duration [day]
case pl_rvamp // Radial Velocity Amplitude [m/s]
case pl_rvamperr1 // Radial Velocity Amplitude Upper Unc. [m/s]
case pl_rvamperr2 // Radial Velocity Amplitude Lower Unc. [m/s]
case pl_rvamplim // Radial Velocity Amplitude Limit Flag
case pl_rvampstr // Radial Velocity Amplitude [m/s]
case pl_radj // Planet Radius [Jupiter Radius]
case pl_radjerr1 // Planet Radius Upper Unc. [Jupiter Radius]
case pl_radjerr2 // Planet Radius Lower Unc. [Jupiter Radius]
case pl_radjlim // Planet Radius Limit Flag
case pl_radjstr // Planet Radius [Jupiter Radius]
case pl_rade // Planet Radius [Earth Radius]
case pl_radeerr1 // Planet Radius Upper Unc. [Earth Radius]
case pl_radeerr2 // Planet Radius Lower Unc. [Earth Radius]
case pl_radelim // Planet Radius Limit Flag
case pl_radestr // Planet Radius [Earth Radius]
case pl_ratror // Ratio of Planet to Stellar Radius
case pl_ratrorerr1 // Ratio of Planet to Stellar Radius Upper Unc.
case pl_ratrorerr2 // Ratio of Planet to Stellar Radius Lower Unc.
case pl_ratrorlim // Ratio of Planet to Stellar Radius Limit Flag
case pl_ratrorstr // Ratio of Planet to Stellar Radius
case pl_ratdor // Ratio of Semi-Major Axis to Stellar Radius
case pl_ratdorerr1 // Ratio of Semi-Major Axis to Stellar Radius Upper Unc.
case pl_ratdorerr2 // Ratio of Semi-Major Axis to Stellar Radius Lower Unc.
case pl_ratdorlim // Ratio of Semi-Major Axis to Stellar Radius Limit Flag
case pl_ratdorstr // Ratio of Semi-Major Axis to Stellar Radius
case pl_imppar // Impact Parameter
case pl_impparerr1 // Impact Parameter Upper Unc.
case pl_impparerr2 // Impact Parameter Lower Unc.
case pl_impparlim // Impact Parameter Limit Flag
case pl_impparstr // Impact Parameter
case pl_cmassj // Planet Mass*sin(i)/sin(i) [Jupiter Mass]
case pl_cmassjerr1 // Planet Mass*sin(i)/sin(i) [Jupiter Mass] Upper Unc.
case pl_cmassjerr2 // Planet Mass*sin(i)/sin(i) [Jupiter Mass] Lower Unc.
case pl_cmassjlim // Planet Mass*sin(i)/sin(i) [Jupiter Mass] Limit Flag
case pl_cmassjstr // Planet Mass*sin(i)/sin(i) [Jupiter Mass]
case pl_cmasse // Planet Mass*sin(i)/sin(i) [Earth Mass]
case pl_cmasseerr1 // Planet Mass*sin(i)/sin(i) [Earth Mass] Upper Unc.
case pl_cmasseerr2 // Planet Mass*sin(i)/sin(i) [Earth Mass] Lower Unc.
case pl_cmasselim // Planet Mass*sin(i)/sin(i) [Earth Mass] Limit Flag
case pl_cmassestr // Planet Mass*sin(i)/sin(i) [Earth Mass]
case pl_massj // Planet Mass [Jupiter Mass]
case pl_massjerr1 // Planet Mass [Jupiter Mass] Upper Unc.
case pl_massjerr2 // Planet Mass [Jupiter Mass] Lower Unc.
case pl_massjlim // Planet Mass [Jupiter Mass] Limit Flag
case pl_massjstr // Planet Mass [Jupiter Mass]
case pl_masse // Planet Mass [Earth Mass]
case pl_masseerr1 // Planet Mass [Earth Mass] Upper Unc.
case pl_masseerr2 // Planet Mass [Earth Mass] Lower Unc.
case pl_masselim // Planet Mass [Earth Mass] Limit Flag
case pl_massestr // Planet Mass [Earth Mass]
case pl_bmassj // Planet Mass or Mass*sin(i) [Jupiter Mass]
case pl_bmassjerr1 // Planet Mass or Mass*sin(i) [Jupiter Mass] Upper Unc.
case pl_bmassjerr2 // Planet Mass or Mass*sin(i) [Jupiter Mass] Lower Unc.
case pl_bmassjlim // Planet Mass or Mass*sin(i) [Jupiter Mass] Limit Flag
case pl_bmassjstr // Planet Mass or Mass*sin(i) [Jupiter Mass]
case pl_bmasse // Planet Mass or Mass*sin(i) [Earth Mass]
case pl_bmasseerr1 // Planet Mass or Mass*sin(i) [Earth Mass] Upper Unc.
case pl_bmasseerr2 // Planet Mass or Mass*sin(i) [Earth Mass] Lower Unc.
case pl_bmasselim // Planet Mass or Mass*sin(i) [Earth Mass] Limit Flag
case pl_bmassestr // Planet Mass or Mass*sin(i) [Earth Mass]
case pl_bmassprov // Planet Mass or Mass*sin(i) Provenance
case pl_msinij // Planet Mass*sin(i) [Jupiter Mass]
case pl_msinijerr1 // Planet Mass*sin(i) [Jupiter Mass] Upper Unc.
case pl_msinijerr2 // Planet Mass*sin(i) [Jupiter Mass] Lower Unc.
case pl_msinijlim // Planet Mass*sin(i) [Jupiter Mass] Limit Flag
case pl_msinijstr // Planet Mass*sin(i) [Jupiter Mass]
case pl_msinie // Planet Mass*sin(i) [Earth Mass]
case pl_msinieerr1 // Planet Mass*sin(i) [Earth Mass] Upper Unc.
case pl_msinieerr2 // Planet Mass*sin(i) [Earth Mass] Lower Unc.
case pl_msinielim // Planet Mass*sin(i) [Earth Mass] Limit Flag
case pl_msiniestr // Planet Mass*sin(i) [Earth Mass]
case st_teff // Stellar Effective Temperature [K]
case st_tefferr1 // Stellar Effective Temperature Upper Unc. [K]
case st_tefferr2 // Stellar Effective Temperature Lower Unc. [K]
case st_tefflim // Stellar Effective Temperature Limit Flag
case st_teffstr // Stellar Effective Temperature [K]
case st_met // Stellar Metallicity [dex]
case st_meterr1 // Stellar Metallicity Upper Unc. [dex]
case st_meterr2 // Stellar Metallicity Lower Unc. [dex]
case st_metlim // Stellar Metallicity Limit Flag
case st_metstr // Stellar Metallicity [dex]
case st_radv // Systemic Radial Velocity [km/s]
case st_radverr1 // Systemic Radial Velocity Upper Unc. [km/s]
case st_radverr2 // Systemic Radial Velocity Lower Unc. [km/s]
case st_radvlim // Systemic Radial Velocity Limit Flag
case st_radvstr // Systemic Radial Velocity [km/s]
case st_vsin // Stellar Rotational Velocity [km/s]
case st_vsinerr1 // Stellar Rotational Velocity [km/s] Upper Unc.
case st_vsinerr2 // Stellar Rotational Velocity [km/s] Lower Unc.
case st_vsinlim // Stellar Rotational Velocity Limit Flag
case st_vsinstr // Stellar Rotational Velocity [km/s]
case st_lum // Stellar Luminosity [log(Solar)]
case st_lumerr1 // Stellar Luminosity Upper Unc. [log(Solar)]
case st_lumerr2 // Stellar Luminosity Lower Unc. [log(Solar)]
case st_lumlim // Stellar Luminosity Limit Flag
case st_lumstr // Stellar Luminosity [log(Solar)]
case st_logg // Stellar Surface Gravity [log(cm/s**2)]
case st_loggerr1 // Stellar Surface Gravity Upper Unc. [log(cm/s**2)]
case st_loggerr2 // Stellar Surface Gravity Lower Unc. [log(cm/s**2)]
case st_logglim // Stellar Surface Gravity Limit Flag
case st_loggstr // Stellar Surface Gravity [log(cm/s**2)]
case st_age // Stellar Age [Gyr]
case st_ageerr1 // Stellar Age Upper Unc. [Gyr]
case st_ageerr2 // Stellar Age Lower Unc. [Gyr]
case st_agelim // Stellar Age Limit Flag
case st_agestr // Stellar Age [Gyr]
case st_mass // Stellar Mass [Solar mass]
case st_masserr1 // Stellar Mass Upper Unc. [Solar mass]
case st_masserr2 // Stellar Mass Lower Unc. [Solar mass]
case st_masslim // Stellar Mass Limit Flag
case st_massstr // Stellar Mass [Solar mass]
case st_dens // Stellar Density [g/cm**3]
case st_denserr1 // Stellar Density Upper Unc. [g/cm**3]
case st_denserr2 // Stellar Density Lower Unc. [g/cm**3]
case st_denslim // Stellar Density Limit Flag
case st_densstr // Stellar Density [g/cm**3]
case st_rad // Stellar Radius [Solar Radius]
case st_raderr1 // Stellar Radius Upper Unc. [Solar Radius]
case st_raderr2 // Stellar Radius Lower Unc. [Solar Radius]
case st_radlim // Stellar Radius Limit Flag
case st_radstr // Stellar Radius [Solar Radius]
case ttv_flag // Data show Transit Timing Variations
case ptv_flag // Detected by Pulsation Timing Variations
case tran_flag // Detected by Transits
case rv_flag // Detected by Radial Velocity Variations
case ast_flag // Detected by Astrometric Variations
case obm_flag // Detected by Orbital Brightness Modulations
case micro_flag // Detected by Microlensing
case etv_flag // Detected by Eclipse Timing Variations
case ima_flag // Detected by Imaging
case pul_flag // Detected by Pulsar Timing Variations
case soltype // Solution Type
case sy_snum // Number of Stars
case sy_pnum // Number of Planets
case sy_mnum // Number of Moons
case st_nphot // Number of Photometry Time Series
case st_nrvc // Number of Radial Velocity Time Series
case st_nspec // Number of Stellar Spectra Measurements
case pl_nespec // Number of Emission Measurements
case pl_nnotes // Number of Notes
case pl_ntranspec // Number of Transmission Measurements
case sy_pm // Total Proper Motion [mas/yr]
case sy_pmerr1 // Total Proper Motion Upper Unc [mas/yr]
case sy_pmerr2 // Total Proper Motion Lower Unc [mas/yr]
case sy_pmstr // Total Proper Motion [mas/yr]
case sy_pmra // Proper Motion (RA) [mas/yr]
case sy_pmraerr1 // Proper Motion (RA) [mas/yr] Upper Unc
case sy_pmraerr2 // Proper Motion (RA) [mas/yr] Lower Unc
case sy_pmrastr // Proper Motion (RA) [mas/yr]
case sy_pmdec // Proper Motion (Dec) [mas/yr]
case sy_pmdecerr1 // Proper Motion (Dec) [mas/yr] Upper Unc
case sy_pmdecerr2 // Proper Motion (Dec) [mas/yr] Lower Unc
case sy_pmdecstr // Proper Motion (Dec) [mas/yr]
case sy_plx // Parallax [mas]
case sy_plxerr1 // Parallax [mas] Upper Unc
case sy_plxerr2 // Parallax [mas] Lower Unc
case sy_plxstr // Parallax [mas]
case sy_dist // Distance [pc]
case sy_disterr1 // Distance [pc] Upper Unc
case sy_disterr2 // Distance [pc] Lower Unc
case sy_diststr // Distance [pc]
case sy_bmag // B (Johnson) Magnitude
case sy_bmagerr1 // B (Johnson) Magnitude Upper Unc
case sy_bmagerr2 // B (Johnson) Magnitude Lower Unc
case sy_bmagstr // B (Johnson) Magnitude
case sy_vmag // V (Johnson) Magnitude
case sy_vmagerr1 // V (Johnson) Magnitude Upper Unc
case sy_vmagerr2 // V (Johnson) Magnitude Lower Unc
case sy_vmagstr // V (Johnson) Magnitude
case sy_jmag // J (2MASS) Magnitude
case sy_jmagerr1 // J (2MASS) Magnitude Upper Unc
case sy_jmagerr2 // J (2MASS) Magnitude Lower Unc
case sy_jmagstr // J (2MASS) Magnitude
case sy_hmag // H (2MASS) Magnitude
case sy_hmagerr1 // H (2MASS) Magnitude Upper Unc
case sy_hmagerr2 // H (2MASS) Magnitude Lower Unc
case sy_hmagstr // H (2MASS) Magnitude
case sy_kmag // Ks (2MASS) Magnitude
case sy_kmagerr1 // Ks (2MASS) Magnitude Upper Unc
case sy_kmagerr2 // Ks (2MASS) Magnitude Lower Unc
case sy_kmagstr // Ks (2MASS) Magnitude
case sy_umag // u (Sloan) Magnitude
case sy_umagerr1 // u (Sloan) Magnitude Upper Unc
case sy_umagerr2 // u (Sloan) Magnitude Lower Unc
case sy_umagstr // u (Sloan) Magnitude
case sy_rmag // r (Sloan) Magnitude
case sy_rmagerr1 // r (Sloan) Magnitude Upper Unc
case sy_rmagerr2 // r (Sloan) Magnitude Lower Unc
case sy_rmagstr // r (Sloan) Magnitude
case sy_imag // i (Sloan) Magnitude
case sy_imagerr1 // i (Sloan) Magnitude Upper Unc
case sy_imagerr2 // i (Sloan) Magnitude Lower Unc
case sy_imagstr // i (Sloan) Magnitude
case sy_zmag // z (Sloan) Magnitude
case sy_zmagerr1 // z (Sloan) Magnitude Upper Unc
case sy_zmagerr2 // z (Sloan) Magnitude Lower Unc
case sy_zmagstr // z (Sloan) Magnitude
case sy_w1mag // W1 (WISE) Magnitude
case sy_w1magerr1 // W1 (WISE) Magnitude Upper Unc
case sy_w1magerr2 // W1 (WISE) Magnitude Lower Unc
case sy_w1magstr // W1 (WISE) Magnitude
case sy_w2mag // W2 (WISE) Magnitude
case sy_w2magerr1 // W2 (WISE) Magnitude Upper Unc
case sy_w2magerr2 // W2 (WISE) Magnitude Lower Unc
case sy_w2magstr // W2 (WISE) Magnitude
case sy_w3mag // W3 (WISE) Magnitude
case sy_w3magerr1 // W3 (WISE) Magnitude Upper Unc
case sy_w3magerr2 // W3 (WISE) Magnitude Lower Unc
case sy_w3magstr // W3 (WISE) Magnitude
case sy_w4mag // W4 (WISE) Magnitude
case sy_w4magerr1 // W4 (WISE) Magnitude Upper Unc
case sy_w4magerr2 // W4 (WISE) Magnitude Lower Unc
case sy_w4magstr // W4 (WISE) Magnitude
case sy_gmag // g (Sloan) Magnitude
case sy_gmagerr1 // g (Sloan) Magnitude Upper Unc
case sy_gmagerr2 // g (Sloan) Magnitude Lower Unc

public var id:String {
return self.rawValue
}

public var description:String {
switch self {
case .sy_gmagstr: return "g (Sloan) Magnitude"
case .sy_gaiamag: return "Gaia Magnitude"
case .sy_gaiamagerr1: return "Gaia Magnitude Upper Unc"
case .sy_gaiamagerr2: return "Gaia Magnitude Lower Unc"
case .sy_gaiamagstr: return "Gaia Magnitude"
case .sy_tmag: return "TESS Magnitude"
case .sy_tmagerr1: return "TESS Magnitude Upper Unc"
case .sy_tmagerr2: return "TESS Magnitude Lower Unc"
case .sy_tmagstr: return "TESS Magnitude"
case .pl_controv_flag: return "Controversial Flag"
case .pl_tsystemref: return "Time Reference Frame and Standard"
case .st_metratio: return "Stellar Metallicity Ratio"
case .st_spectype: return "Spectral Type"
case .sy_kepmag: return "Kepler Magnitude"
case .sy_kepmagerr1: return "Kepler Magnitude Upper Unc"
case .sy_kepmagerr2: return "Kepler Magnitude Lower Unc"
case .sy_kepmagstr: return "Kepler Magnitude"
case .st_rotp: return "Stellar Rotational Period [day]"
case .st_rotperr1: return "Stellar Rotational Period [day] Upper Unc."
case .st_rotperr2: return "Stellar Rotational Period [day] Lower Unc."
case .st_rotplim: return "Stellar Rotational Period Limit Flag"
case .st_rotpstr: return "Stellar Rotational Period [day]"
case .pl_projobliq: return "Projected Obliquity [deg]"
case .pl_projobliqerr1: return "Projected Obliquity Upper Unc. [deg]"
case .pl_projobliqerr2: return "Projected Obliquity Lower Unc. [deg]"
case .pl_projobliqlim: return "Projected Obliquity Limit Flag"
case .pl_projobliqstr: return "Projected Obliquity [deg]"
case .x: return "Spatial Coordinate X"
case .pl_trueobliq: return "True Obliquity [deg]"
case .y: return "Spatial Coordinate Y"
case .pl_trueobliqerr1: return "True Obliquity Upper Unc. [deg]"
case .z: return "Spatial Coordinate Z"
case .pl_trueobliqerr2: return "True Obliquity Lower Unc. [deg]"
case .htm20: return "Spatial Index"
case .gaia_id: return "GAIA ID"
case .pl_trueobliqlim: return "True Obliquity Limit Flag"
case .cb_flag: return "Circumbinary Flag"
case .pl_trueobliqstr: return "True Obliquity [deg]"
case .sy_icmag: return "I (Cousins) Magnitude"
case .sy_icmagerr1: return "I (Cousins) Magnitude Upper Unc"
case .sy_icmagerr2: return "I (Cousins) Magnitude Lower Unc"
case .sy_icmagstr: return "I (Cousins) Magnitude"
case .rowupdate: return "Date of Last Update"
case .pl_pubdate: return "Planetary Parameter Reference Publication Date"
case .releasedate: return "Release Date"
case .dkin_flag: return "Detected by Disk Kinematics"
case .pl_name: return "Planet Name"
case .pl_letter: return "Planet Letter"
case .hostname: return "Host Name"
case .hd_name: return "HD ID"
case .epic_candname: return "EPIC CANDID"
case .epic_hostname: return "EPIC HOSTID"
case .k2_name: return "K2 ID"
case .hip_name: return "HIP ID"
case .tic_id: return "TIC ID"
case .default_flag: return "Default Parameter Set"
case .pl_refname: return "Planetary Parameter Reference"
case .st_refname: return "Stellar Parameter Reference"
case .sy_refname: return "System Parameter Reference"
case .disc_pubdate: return "Discovery Publication Date"
case .disc_year: return "Discovery Year"
case .discoverymethod: return "Discovery Method"
case .disc_locale: return "Discovery Locale"
case .disc_facility: return "Discovery Facility"
case .disp_refname: return "Disposition Reference"
case .disposition: return "Disposition"
case .k2_campaigns: return "K2 Campaigns"
case .k2_campaigns_num: return "Number of K2 Campaigns"
case .disc_instrument: return "Discovery Instrument"
case .disc_telescope: return "Discovery Telescope"
case .disc_refname: return "Discovery Reference"
case .ra: return "RA [decimal]"
case .rastr: return "RA [sexagesimal]"
case .dec: return "Dec [decimal]"
case .decstr: return "Dec [sexagesimal]"
case .glon: return "Galactic Longitude [deg]"
case .glat: return "Galactic Latitude [deg]"
case .elon: return "Ecliptic Longitude [deg]"
case .elat: return "Ecliptic Latitude [deg]"
case .pl_orbper: return "Orbital Period [day]"
case .pl_orbpererr1: return "Orbital Period Upper Unc. [day]"
case .pl_orbpererr2: return "Orbital Period Lower Unc. [day]"
case .pl_orbperlim: return "Orbital Period Limit Flag"
case .pl_orbperstr: return "Orbital Period [day]"
case .pl_orblpererr1: return "Argument of Periastron Upper Unc. [deg]"
case .pl_orblper: return "Argument of Periastron [deg]"
case .pl_orblpererr2: return "Argument of Periastron Lower Unc. [deg]"
case .pl_orblperlim: return "Argument of Periastron Limit Flag"
case .pl_orblperstr: return "Argument of Periastron [deg]"
case .pl_orbsmax: return "Orbit Semi-Major Axis [au])"
case .pl_orbsmaxerr1: return "Orbit Semi-Major Axis Upper Unc. [au]"
case .pl_orbsmaxerr2: return "Orbit Semi-Major Axis Lower Unc. [au]"
case .pl_orbsmaxlim: return "Orbit Semi-Major Axis Limit Flag"
case .pl_orbsmaxstr: return "Orbit Semi-Major Axis [au]"
case .pl_orbincl: return "Inclination [deg]"
case .pl_orbinclerr1: return "Inclination Upper Unc. [deg]"
case .pl_orbinclerr2: return "Inclination Lower Unc. [deg]"
case .pl_orbincllim: return "Inclination Limit Flag"
case .pl_orbinclstr: return "Inclination [deg]"
case .pl_orbtper: return "Epoch of Periastron [day]"
case .pl_orbtpererr1: return "Epoch of Periastron Upper Unc. [day]"
case .pl_orbtpererr2: return "Epoch of Periastron Lower Unc. [day]"
case .pl_orbtperlim: return "Epoch of Periastron Limit Flag"
case .pl_orbtperstr: return "Epoch of Periastron [day]"
case .pl_orbeccen: return "Eccentricity"
case .pl_orbeccenerr1: return "Eccentricity Upper Unc."
case .pl_orbeccenerr2: return "Eccentricity Lower Unc."
case .pl_orbeccenlim: return "Eccentricity Limit Flag"
case .pl_orbeccenstr: return "Eccentricity"
case .pl_eqt: return "Equilibrium Temperature [K]"
case .pl_eqterr1: return "Equilibrium Temperature Upper Unc. [K]"
case .pl_eqterr2: return "Equilibrium Temperature Lower Unc. [K]"
case .pl_eqtlim: return "Equilibrium Temperature Limit Flag"
case .pl_eqtstr: return "Equilibrium Temperature [K]"
case .pl_occdep: return "Occultation Depth [%]"
case .pl_occdeperr1: return "Occultation Depth Upper Unc. [%]"
case .pl_occdeperr2: return "Occultation Depth Lower Unc. [%]"
case .pl_occdeplim: return "Occultation Depth Limit Flag"
case .pl_occdepstr: return "Occultation Depth [%]"
case .pl_insol: return "Insolation Flux [Earth Flux]"
case .pl_insolerr1: return "Insolation Flux Upper Unc. [Earth Flux]"
case .pl_insolerr2: return "Insolation Flux Lower Unc. [Earth Flux]"
case .pl_insollim: return "Insolation Flux Limit Flag"
case .pl_insolstr: return "Insolation Flux [Earth Flux]"
case .pl_dens: return "Planet Density [g/cm**3]"
case .pl_denserr1: return "Planet Density Upper Unc. [g/cm**3]"
case .pl_denserr2: return "Planet Density Lower Unc. [g/cm**3]"
case .pl_denslim: return "Planet Density Limit Flag"
case .pl_densstr: return "Planet Density [g/cm**3]"
case .pl_trandep: return "Transit Depth [%]"
case .pl_trandeperr1: return "Transit Depth Upper Unc. [%]"
case .pl_trandeperr2: return "Transit Depth Lower Unc. [%]"
case .pl_trandeplim: return "Transit Depth Limit Flag"
case .pl_trandepstr: return "Transit Depth [%]"
case .pl_tranmid: return "Transit Midpoint [day]"
case .pl_tranmiderr1: return "Transit Midpoint Upper Unc. [day]"
case .pl_tranmiderr2: return "Transit Midpoint Lower Unc. [day]"
case .pl_tranmidlim: return "Transit Midpoint Limit Flag"
case .pl_tranmidstr: return "Time of Conjunction (Transit Midpoint) [day]"
case .pl_trandur: return "Transit Duration [day]"
case .pl_trandurerr1: return "Transit Duration Upper Unc. [day]"
case .pl_trandurerr2: return "Transit Duration Lower Unc. [day]"
case .pl_trandurlim: return "Transit Duration Limit Flag"
case .pl_trandurstr: return "Transit Duration [day]"
case .pl_rvamp: return "Radial Velocity Amplitude [m/s]"
case .pl_rvamperr1: return "Radial Velocity Amplitude Upper Unc. [m/s]"
case .pl_rvamperr2: return "Radial Velocity Amplitude Lower Unc. [m/s]"
case .pl_rvamplim: return "Radial Velocity Amplitude Limit Flag"
case .pl_rvampstr: return "Radial Velocity Amplitude [m/s]"
case .pl_radj: return "Planet Radius [Jupiter Radius]"
case .pl_radjerr1: return "Planet Radius Upper Unc. [Jupiter Radius]"
case .pl_radjerr2: return "Planet Radius Lower Unc. [Jupiter Radius]"
case .pl_radjlim: return "Planet Radius Limit Flag"
case .pl_radjstr: return "Planet Radius [Jupiter Radius]"
case .pl_rade: return "Planet Radius [Earth Radius]"
case .pl_radeerr1: return "Planet Radius Upper Unc. [Earth Radius]"
case .pl_radeerr2: return "Planet Radius Lower Unc. [Earth Radius]"
case .pl_radelim: return "Planet Radius Limit Flag"
case .pl_radestr: return "Planet Radius [Earth Radius]"
case .pl_ratror: return "Ratio of Planet to Stellar Radius"
case .pl_ratrorerr1: return "Ratio of Planet to Stellar Radius Upper Unc."
case .pl_ratrorerr2: return "Ratio of Planet to Stellar Radius Lower Unc."
case .pl_ratrorlim: return "Ratio of Planet to Stellar Radius Limit Flag"
case .pl_ratrorstr: return "Ratio of Planet to Stellar Radius"
case .pl_ratdor: return "Ratio of Semi-Major Axis to Stellar Radius"
case .pl_ratdorerr1: return "Ratio of Semi-Major Axis to Stellar Radius Upper Unc."
case .pl_ratdorerr2: return "Ratio of Semi-Major Axis to Stellar Radius Lower Unc."
case .pl_ratdorlim: return "Ratio of Semi-Major Axis to Stellar Radius Limit Flag"
case .pl_ratdorstr: return "Ratio of Semi-Major Axis to Stellar Radius"
case .pl_imppar: return "Impact Parameter"
case .pl_impparerr1: return "Impact Parameter Upper Unc."
case .pl_impparerr2: return "Impact Parameter Lower Unc."
case .pl_impparlim: return "Impact Parameter Limit Flag"
case .pl_impparstr: return "Impact Parameter"
case .pl_cmassj: return "Planet Mass*sin(i)/sin(i) [Jupiter Mass]"
case .pl_cmassjerr1: return "Planet Mass*sin(i)/sin(i) [Jupiter Mass] Upper Unc."
case .pl_cmassjerr2: return "Planet Mass*sin(i)/sin(i) [Jupiter Mass] Lower Unc."
case .pl_cmassjlim: return "Planet Mass*sin(i)/sin(i) [Jupiter Mass] Limit Flag"
case .pl_cmassjstr: return "Planet Mass*sin(i)/sin(i) [Jupiter Mass]"
case .pl_cmasse: return "Planet Mass*sin(i)/sin(i) [Earth Mass]"
case .pl_cmasseerr1: return "Planet Mass*sin(i)/sin(i) [Earth Mass] Upper Unc."
case .pl_cmasseerr2: return "Planet Mass*sin(i)/sin(i) [Earth Mass] Lower Unc."
case .pl_cmasselim: return "Planet Mass*sin(i)/sin(i) [Earth Mass] Limit Flag"
case .pl_cmassestr: return "Planet Mass*sin(i)/sin(i) [Earth Mass]"
case .pl_massj: return "Planet Mass [Jupiter Mass]"
case .pl_massjerr1: return "Planet Mass [Jupiter Mass] Upper Unc."
case .pl_massjerr2: return "Planet Mass [Jupiter Mass] Lower Unc."
case .pl_massjlim: return "Planet Mass [Jupiter Mass] Limit Flag"
case .pl_massjstr: return "Planet Mass [Jupiter Mass]"
case .pl_masse: return "Planet Mass [Earth Mass]"
case .pl_masseerr1: return "Planet Mass [Earth Mass] Upper Unc."
case .pl_masseerr2: return "Planet Mass [Earth Mass] Lower Unc."
case .pl_masselim: return "Planet Mass [Earth Mass] Limit Flag"
case .pl_massestr: return "Planet Mass [Earth Mass]"
case .pl_bmassj: return "Planet Mass or Mass*sin(i) [Jupiter Mass]"
case .pl_bmassjerr1: return "Planet Mass or Mass*sin(i) [Jupiter Mass] Upper Unc."
case .pl_bmassjerr2: return "Planet Mass or Mass*sin(i) [Jupiter Mass] Lower Unc."
case .pl_bmassjlim: return "Planet Mass or Mass*sin(i) [Jupiter Mass] Limit Flag"
case .pl_bmassjstr: return "Planet Mass or Mass*sin(i) [Jupiter Mass]"
case .pl_bmasse: return "Planet Mass or Mass*sin(i) [Earth Mass]"
case .pl_bmasseerr1: return "Planet Mass or Mass*sin(i) [Earth Mass] Upper Unc."
case .pl_bmasseerr2: return "Planet Mass or Mass*sin(i) [Earth Mass] Lower Unc."
case .pl_bmasselim: return "Planet Mass or Mass*sin(i) [Earth Mass] Limit Flag"
case .pl_bmassestr: return "Planet Mass or Mass*sin(i) [Earth Mass]"
case .pl_bmassprov: return "Planet Mass or Mass*sin(i) Provenance"
case .pl_msinij: return "Planet Mass*sin(i) [Jupiter Mass]"
case .pl_msinijerr1: return "Planet Mass*sin(i) [Jupiter Mass] Upper Unc."
case .pl_msinijerr2: return "Planet Mass*sin(i) [Jupiter Mass] Lower Unc."
case .pl_msinijlim: return "Planet Mass*sin(i) [Jupiter Mass] Limit Flag"
case .pl_msinijstr: return "Planet Mass*sin(i) [Jupiter Mass]"
case .pl_msinie: return "Planet Mass*sin(i) [Earth Mass]"
case .pl_msinieerr1: return "Planet Mass*sin(i) [Earth Mass] Upper Unc."
case .pl_msinieerr2: return "Planet Mass*sin(i) [Earth Mass] Lower Unc."
case .pl_msinielim: return "Planet Mass*sin(i) [Earth Mass] Limit Flag"
case .pl_msiniestr: return "Planet Mass*sin(i) [Earth Mass]"
case .st_teff: return "Stellar Effective Temperature [K]"
case .st_tefferr1: return "Stellar Effective Temperature Upper Unc. [K]"
case .st_tefferr2: return "Stellar Effective Temperature Lower Unc. [K]"
case .st_tefflim: return "Stellar Effective Temperature Limit Flag"
case .st_teffstr: return "Stellar Effective Temperature [K]"
case .st_met: return "Stellar Metallicity [dex]"
case .st_meterr1: return "Stellar Metallicity Upper Unc. [dex]"
case .st_meterr2: return "Stellar Metallicity Lower Unc. [dex]"
case .st_metlim: return "Stellar Metallicity Limit Flag"
case .st_metstr: return "Stellar Metallicity [dex]"
case .st_radv: return "Systemic Radial Velocity [km/s]"
case .st_radverr1: return "Systemic Radial Velocity Upper Unc. [km/s]"
case .st_radverr2: return "Systemic Radial Velocity Lower Unc. [km/s]"
case .st_radvlim: return "Systemic Radial Velocity Limit Flag"
case .st_radvstr: return "Systemic Radial Velocity [km/s]"
case .st_vsin: return "Stellar Rotational Velocity [km/s]"
case .st_vsinerr1: return "Stellar Rotational Velocity [km/s] Upper Unc."
case .st_vsinerr2: return "Stellar Rotational Velocity [km/s] Lower Unc."
case .st_vsinlim: return "Stellar Rotational Velocity Limit Flag"
case .st_vsinstr: return "Stellar Rotational Velocity [km/s]"
case .st_lum: return "Stellar Luminosity [log(Solar)]"
case .st_lumerr1: return "Stellar Luminosity Upper Unc. [log(Solar)]"
case .st_lumerr2: return "Stellar Luminosity Lower Unc. [log(Solar)]"
case .st_lumlim: return "Stellar Luminosity Limit Flag"
case .st_lumstr: return "Stellar Luminosity [log(Solar)]"
case .st_logg: return "Stellar Surface Gravity [log(cm/s**2)]"
case .st_loggerr1: return "Stellar Surface Gravity Upper Unc. [log(cm/s**2)]"
case .st_loggerr2: return "Stellar Surface Gravity Lower Unc. [log(cm/s**2)]"
case .st_logglim: return "Stellar Surface Gravity Limit Flag"
case .st_loggstr: return "Stellar Surface Gravity [log(cm/s**2)]"
case .st_age: return "Stellar Age [Gyr]"
case .st_ageerr1: return "Stellar Age Upper Unc. [Gyr]"
case .st_ageerr2: return "Stellar Age Lower Unc. [Gyr]"
case .st_agelim: return "Stellar Age Limit Flag"
case .st_agestr: return "Stellar Age [Gyr]"
case .st_mass: return "Stellar Mass [Solar mass]"
case .st_masserr1: return "Stellar Mass Upper Unc. [Solar mass]"
case .st_masserr2: return "Stellar Mass Lower Unc. [Solar mass]"
case .st_masslim: return "Stellar Mass Limit Flag"
case .st_massstr: return "Stellar Mass [Solar mass]"
case .st_dens: return "Stellar Density [g/cm**3]"
case .st_denserr1: return "Stellar Density Upper Unc. [g/cm**3]"
case .st_denserr2: return "Stellar Density Lower Unc. [g/cm**3]"
case .st_denslim: return "Stellar Density Limit Flag"
case .st_densstr: return "Stellar Density [g/cm**3]"
case .st_rad: return "Stellar Radius [Solar Radius]"
case .st_raderr1: return "Stellar Radius Upper Unc. [Solar Radius]"
case .st_raderr2: return "Stellar Radius Lower Unc. [Solar Radius]"
case .st_radlim: return "Stellar Radius Limit Flag"
case .st_radstr: return "Stellar Radius [Solar Radius]"
case .ttv_flag: return "Data show Transit Timing Variations"
case .ptv_flag: return "Detected by Pulsation Timing Variations"
case .tran_flag: return "Detected by Transits"
case .rv_flag: return "Detected by Radial Velocity Variations"
case .ast_flag: return "Detected by Astrometric Variations"
case .obm_flag: return "Detected by Orbital Brightness Modulations"
case .micro_flag: return "Detected by Microlensing"
case .etv_flag: return "Detected by Eclipse Timing Variations"
case .ima_flag: return "Detected by Imaging"
case .pul_flag: return "Detected by Pulsar Timing Variations"
case .soltype: return "Solution Type"
case .sy_snum: return "Number of Stars"
case .sy_pnum: return "Number of Planets"
case .sy_mnum: return "Number of Moons"
case .st_nphot: return "Number of Photometry Time Series"
case .st_nrvc: return "Number of Radial Velocity Time Series"
case .st_nspec: return "Number of Stellar Spectra Measurements"
case .pl_nespec: return "Number of Emission Measurements"
case .pl_nnotes: return "Number of Notes"
case .pl_ntranspec: return "Number of Transmission Measurements"
case .sy_pm: return "Total Proper Motion [mas/yr]"
case .sy_pmerr1: return "Total Proper Motion Upper Unc [mas/yr]"
case .sy_pmerr2: return "Total Proper Motion Lower Unc [mas/yr]"
case .sy_pmstr: return "Total Proper Motion [mas/yr]"
case .sy_pmra: return "Proper Motion (RA) [mas/yr]"
case .sy_pmraerr1: return "Proper Motion (RA) [mas/yr] Upper Unc"
case .sy_pmraerr2: return "Proper Motion (RA) [mas/yr] Lower Unc"
case .sy_pmrastr: return "Proper Motion (RA) [mas/yr]"
case .sy_pmdec: return "Proper Motion (Dec) [mas/yr]"
case .sy_pmdecerr1: return "Proper Motion (Dec) [mas/yr] Upper Unc"
case .sy_pmdecerr2: return "Proper Motion (Dec) [mas/yr] Lower Unc"
case .sy_pmdecstr: return "Proper Motion (Dec) [mas/yr]"
case .sy_plx: return "Parallax [mas]"
case .sy_plxerr1: return "Parallax [mas] Upper Unc"
case .sy_plxerr2: return "Parallax [mas] Lower Unc"
case .sy_plxstr: return "Parallax [mas]"
case .sy_dist: return "Distance [pc]"
case .sy_disterr1: return "Distance [pc] Upper Unc"
case .sy_disterr2: return "Distance [pc] Lower Unc"
case .sy_diststr: return "Distance [pc]"
case .sy_bmag: return "B (Johnson) Magnitude"
case .sy_bmagerr1: return "B (Johnson) Magnitude Upper Unc"
case .sy_bmagerr2: return "B (Johnson) Magnitude Lower Unc"
case .sy_bmagstr: return "B (Johnson) Magnitude"
case .sy_vmag: return "V (Johnson) Magnitude"
case .sy_vmagerr1: return "V (Johnson) Magnitude Upper Unc"
case .sy_vmagerr2: return "V (Johnson) Magnitude Lower Unc"
case .sy_vmagstr: return "V (Johnson) Magnitude"
case .sy_jmag: return "J (2MASS) Magnitude"
case .sy_jmagerr1: return "J (2MASS) Magnitude Upper Unc"
case .sy_jmagerr2: return "J (2MASS) Magnitude Lower Unc"
case .sy_jmagstr: return "J (2MASS) Magnitude"
case .sy_hmag: return "H (2MASS) Magnitude"
case .sy_hmagerr1: return "H (2MASS) Magnitude Upper Unc"
case .sy_hmagerr2: return "H (2MASS) Magnitude Lower Unc"
case .sy_hmagstr: return "H (2MASS) Magnitude"
case .sy_kmag: return "Ks (2MASS) Magnitude"
case .sy_kmagerr1: return "Ks (2MASS) Magnitude Upper Unc"
case .sy_kmagerr2: return "Ks (2MASS) Magnitude Lower Unc"
case .sy_kmagstr: return "Ks (2MASS) Magnitude"
case .sy_umag: return "u (Sloan) Magnitude"
case .sy_umagerr1: return "u (Sloan) Magnitude Upper Unc"
case .sy_umagerr2: return "u (Sloan) Magnitude Lower Unc"
case .sy_umagstr: return "u (Sloan) Magnitude"
case .sy_rmag: return "r (Sloan) Magnitude"
case .sy_rmagerr1: return "r (Sloan) Magnitude Upper Unc"
case .sy_rmagerr2: return "r (Sloan) Magnitude Lower Unc"
case .sy_rmagstr: return "r (Sloan) Magnitude"
case .sy_imag: return "i (Sloan) Magnitude"
case .sy_imagerr1: return "i (Sloan) Magnitude Upper Unc"
case .sy_imagerr2: return "i (Sloan) Magnitude Lower Unc"
case .sy_imagstr: return "i (Sloan) Magnitude"
case .sy_zmag: return "z (Sloan) Magnitude"
case .sy_zmagerr1: return "z (Sloan) Magnitude Upper Unc"
case .sy_zmagerr2: return "z (Sloan) Magnitude Lower Unc"
case .sy_zmagstr: return "z (Sloan) Magnitude"
case .sy_w1mag: return "W1 (WISE) Magnitude"
case .sy_w1magerr1: return "W1 (WISE) Magnitude Upper Unc"
case .sy_w1magerr2: return "W1 (WISE) Magnitude Lower Unc"
case .sy_w1magstr: return "W1 (WISE) Magnitude"
case .sy_w2mag: return "W2 (WISE) Magnitude"
case .sy_w2magerr1: return "W2 (WISE) Magnitude Upper Unc"
case .sy_w2magerr2: return "W2 (WISE) Magnitude Lower Unc"
case .sy_w2magstr: return "W2 (WISE) Magnitude"
case .sy_w3mag: return "W3 (WISE) Magnitude"
case .sy_w3magerr1: return "W3 (WISE) Magnitude Upper Unc"
case .sy_w3magerr2: return "W3 (WISE) Magnitude Lower Unc"
case .sy_w3magstr: return "W3 (WISE) Magnitude"
case .sy_w4mag: return "W4 (WISE) Magnitude"
case .sy_w4magerr1: return "W4 (WISE) Magnitude Upper Unc"
case .sy_w4magerr2: return "W4 (WISE) Magnitude Lower Unc"
case .sy_w4magstr: return "W4 (WISE) Magnitude"
case .sy_gmag: return "g (Sloan) Magnitude"
case .sy_gmagerr1: return "g (Sloan) Magnitude Upper Unc"
case .sy_gmagerr2: return "g (Sloan) Magnitude Lower Unc"
}
}
}

enum tic_v8column:String, CaseIterable {
    case id
    case version
    case twomass
    case tycho2
    case sdss
    case gaia
    case apass
    case hip
    case ra
    case dec
    case pmRA
    case pmDec
    case plx
    case gallong
    case gallat
    case eclong
    case eclat
    case bmag
    case vmag
    case umag
    case gmag
    case rmag
    case imag
    case zmag
    case jmag
    case hmag
    case kmag
    case twomflag
    case spt
    case tmag
    case tessflag
    case teff
    case eTeff
    case logg
    case eLogg
    case feh
    case eFeh
    case rad
    case eRad
    case mass
    case eMass
    case rho
    case lum
    case d
    case eD
    case ebv
    case numcont
    case contratio
    case priority
    case disposition
    case duplicateID
    case eneg
    case epos
    case gaiaqflag
    case gaiaAstroSig
    case gaiaAstroDr
    case gaiaDupsource
    case gaiaRp
    case gaiaBp
    case gaiaEbp
    case gaiaErp
    case gaiaEbpRp
    case gaiaAg
    case gaiaEAg
    case gaiaSpar
    case gaiaESpar
    case gaiaRUWE
    case raOriginal
    case decOriginal
    case eRaOriginal
    case eDecOriginal

    var description: String {
        switch self {
        case .id: return "TIC Identifier"
        case .version: return "Catalog version"
        case .twomass: return "2MASS catalog identifier"
        case .tycho2: return "Tycho-2 catalog identifier"
        case .sdss: return "SDSS catalog identifier"
        case .gaia: return "Gaia catalog identifier"
        case .apass: return "APASS catalog identifier"
        case .hip: return "HIPPARCOS catalog identifier"
        case .ra: return "Right Ascension (J2000) in degrees"
        case .dec: return "Declination (J2000) in degrees"
        case .pmRA: return "Proper motion in Right Ascension in mas/year"
        case .pmDec: return "Proper motion in Declination in mas/year"
        case .plx: return "Parallax in mas"
        case .gallong: return "Galactic Longitude in degrees"
        case .gallat: return "Galactic Latitude in degrees"
        case .eclong: return "Ecliptic Longitude in degrees"
        case .eclat: return "Ecliptic Latitude in degrees"
        case .bmag: return "B magnitude"
        case .vmag: return "V magnitude"
        case .umag: return "U magnitude"
        case .gmag: return "G magnitude"
        case .rmag: return "R magnitude"
        case .imag: return "I magnitude"
        case .zmag: return "Z magnitude"
        case .jmag: return "J magnitude from 2MASS"
        case .hmag: return "H magnitude from 2MASS"
        case .kmag: return "K magnitude from 2MASS"
        case .twomflag: return "2MASS quality flags"
        case .spt: return "Spectral type"
        case .tmag: return "TESS magnitude"
        case .tessflag: return "TESS-specific flag"
        case .teff: return "Stellar effective temperature in Kelvin"
        case .eTeff: return "Uncertainty in effective temperature"
        case .logg: return "Surface gravity in cm/s²"
        case .eLogg: return "Uncertainty in surface gravity"
        case .feh: return "Stellar metallicity [Fe/H]"
        case .eFeh: return "Uncertainty in metallicity"
        case .rad: return "Stellar radius in solar radii"
        case .eRad: return "Uncertainty in stellar radius"
        case .mass: return "Stellar mass in solar masses"
        case .eMass: return "Uncertainty in stellar mass"
        case .rho: return "Stellar density in g/cm³"
        case .lum: return "Stellar luminosity in solar luminosities"
        case .d: return "Distance in parsecs"
        case .eD: return "Uncertainty in distance"
        case .ebv: return "Reddening (E(B-V))"
        case .numcont: return "Number of nearby contaminating stars"
        case .contratio: return "Contamination ratio"
        case .priority: return "Priority score for TESS targets"
        case .disposition: return "Object disposition"
        case .duplicateID: return "Duplicate TIC ID"
        case .eneg: return "Negative energy correction"
        case .epos: return "Positive energy correction"
        case .gaiaqflag: return "Gaia quality flag"
        case .gaiaAstroSig: return "Gaia astrometric signal"
        case .gaiaAstroDr: return "Gaia astrometric dimension"
        case .gaiaDupsource: return "Gaia duplicate source flag"
        case .gaiaRp: return "Gaia RP magnitude"
        case .gaiaBp: return "Gaia BP magnitude"
        case .gaiaEbp: return "Uncertainty in Gaia BP magnitude"
        case .gaiaErp: return "Uncertainty in Gaia RP magnitude"
        case .gaiaEbpRp: return "Uncertainty in Gaia BP-RP color"
        case .gaiaAg: return "Gaia extinction coefficient (G band)"
        case .gaiaEAg: return "Uncertainty in Gaia extinction coefficient"
        case .gaiaSpar: return "Gaia parallax"
        case .gaiaESpar: return "Uncertainty in Gaia parallax"
        case .gaiaRUWE: return "Gaia RUWE (Renormalized Unit Weight Error)"
        case .raOriginal: return "Original Right Ascension"
        case .decOriginal: return "Original Declination"
        case .eRaOriginal: return "Uncertainty in original Right Ascension"
        case .eDecOriginal: return "Uncertainty in original Declination"
        }
    }
}

