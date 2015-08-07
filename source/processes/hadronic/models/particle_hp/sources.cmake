#-----------------------------------------------------------------------
# sources.cmake
# Module : G4had_par_hp
# Package: Geant4.src.G4processes.G4hadronic.G4hadronic_models.G4had_par_hp
#
# Sources description for a library.
# Lists the sources and headers of the code explicitely.
# Lists include paths needed.
# Lists the internal granular and global dependencies of the library.
# Source specific properties should be added at the end.
#
# Generated on : 24/9/2010
#
# $Id: sources.cmake 78874 2014-01-29 15:22:01Z gunter $
#
#-----------------------------------------------------------------------

# List external includes needed.
include_directories(${CLHEP_INCLUDE_DIRS})
include_directories(${ZLIB_INCLUDE_DIRS})

# List internal includes needed.
include_directories(${CMAKE_SOURCE_DIR}/source/geometry/management/include)
include_directories(${CMAKE_SOURCE_DIR}/source/geometry/volumes/include)
include_directories(${CMAKE_SOURCE_DIR}/source/global/HEPGeometry/include)
include_directories(${CMAKE_SOURCE_DIR}/source/global/HEPRandom/include)
include_directories(${CMAKE_SOURCE_DIR}/source/global/management/include)
include_directories(${CMAKE_SOURCE_DIR}/source/materials/include)
include_directories(${CMAKE_SOURCE_DIR}/source/particles/bosons/include)
include_directories(${CMAKE_SOURCE_DIR}/source/particles/hadrons/barions/include)
include_directories(${CMAKE_SOURCE_DIR}/source/particles/hadrons/ions/include)
include_directories(${CMAKE_SOURCE_DIR}/source/particles/hadrons/mesons/include)
include_directories(${CMAKE_SOURCE_DIR}/source/particles/leptons/include)
include_directories(${CMAKE_SOURCE_DIR}/source/particles/management/include)
include_directories(${CMAKE_SOURCE_DIR}/source/processes/hadronic/cross_sections/include)
include_directories(${CMAKE_SOURCE_DIR}/source/processes/hadronic/management/include)
include_directories(${CMAKE_SOURCE_DIR}/source/processes/hadronic/models/de_excitation/management/include)
include_directories(${CMAKE_SOURCE_DIR}/source/processes/hadronic/models/de_excitation/photon_evaporation/include)
include_directories(${CMAKE_SOURCE_DIR}/source/processes/hadronic/models/de_excitation/util/include)
include_directories(${CMAKE_SOURCE_DIR}/source/processes/hadronic/models/neutron_hp/include)
include_directories(${CMAKE_SOURCE_DIR}/source/processes/hadronic/models/management/include)
include_directories(${CMAKE_SOURCE_DIR}/source/processes/hadronic/models/util/include)
include_directories(${CMAKE_SOURCE_DIR}/source/processes/hadronic/processes/include)
include_directories(${CMAKE_SOURCE_DIR}/source/processes/hadronic/util/include)
include_directories(${CMAKE_SOURCE_DIR}/source/processes/management/include)
include_directories(${CMAKE_SOURCE_DIR}/source/track/include)

#
# Define the Geant4 Module.
#
include(Geant4MacroDefineModule)
GEANT4_DEFINE_MODULE(NAME G4had_par_hp
  HEADERS
    G4ParticleHPList.hh
    G4ParticleHPIsoData.hh
    G4ParticleHPLevel.hh
    G4ParticleHP2AInelasticFS.hh
    G4ParticleHPNames.hh
    G4ParticleHP2N2AInelasticFS.hh
    G4ParticleHPPartial.hh
    G4ParticleHP2NAInelasticFS.hh
    G4ParticleHPProduct.hh
    G4ParticleHP2NDInelasticFS.hh
    G4ParticleHPVector.hh
    G4ParticleHP2NInelasticFS.hh
    G4VParticleHPEDis.hh
    G4ParticleHP2NPInelasticFS.hh
    G4ParticleHP2PInelasticFS.hh
    G4ParticleHP3AInelasticFS.hh
    G4ParticleHP3NAInelasticFS.hh
    G4ParticleHP3NInelasticFS.hh
    G4ParticleHP3NPInelasticFS.hh
    G4ParticleHP4NInelasticFS.hh
    G4ParticleHPAInelasticFS.hh
    G4ParticleHPAngular.hh
    G4ParticleHPAngularP.hh
    G4ParticleHPArbitaryTab.hh
    G4ParticleHPCapture.hh
    G4ParticleHPCaptureData.hh
    G4ParticleHPCaptureFS.hh
    G4ParticleHPChannel.hh
    G4ParticleHPChannelList.hh
    G4ParticleHPContAngularPar.hh
    G4ParticleHPContEnergyAngular.hh
    G4ParticleHPD2AInelasticFS.hh
    G4ParticleHPDAInelasticFS.hh
    G4ParticleHPDInelasticFS.hh
    G4ParticleHPData.hh
    G4ParticleHPDataPoint.hh
    G4ParticleHPDataUsed.hh
    G4ParticleHPDeExGammas.hh
    G4ParticleHPDiscreteTwoBody.hh
    G4ParticleHPElastic.hh
    G4ParticleHPElasticData.hh
    G4ParticleHPElasticFS.hh
    G4ParticleHPElementData.hh
    G4ParticleHPEnAngCorrelation.hh
    G4ParticleHPEnergyDistribution.hh
    G4ParticleHPEvapSpectrum.hh
    G4ParticleHPFCFissionFS.hh
    G4ParticleHPFFFissionFS.hh
    G4ParticleHPFSFissionFS.hh
    G4ParticleHPFastLegendre.hh
    G4ParticleHPField.hh
    G4ParticleHPFieldPoint.hh
    G4ParticleHPFinalState.hh
    G4ParticleHPFission.hh
    G4ParticleHPFissionBaseFS.hh
    G4ParticleHPFissionData.hh
    G4ParticleHPFissionERelease.hh
    G4ParticleHPFissionFS.hh
    G4ParticleHPFissionSpectrum.hh
    G4ParticleHPGamma.hh
    G4ParticleHPHash.hh
    G4ParticleHPHe3InelasticFS.hh
    G4ParticleHPInelastic.hh
    G4ParticleHPInelasticBaseFS.hh
    G4ParticleHPInelasticCompFS.hh
    G4ParticleHPInelasticData.hh
    G4ParticleHPInterpolator.hh
    G4ParticleHPIsotropic.hh
    G4ParticleHPJENDLHEData.hh
    G4ParticleHPJENDLHEElasticData.hh
    G4ParticleHPJENDLHEInelasticData.hh
    G4ParticleHPKallbachMannSyst.hh
    G4ParticleHPLCFissionFS.hh
    G4ParticleHPLabAngularEnergy.hh
    G4ParticleHPLegendreStore.hh
    G4ParticleHPLegendreTable.hh
    G4ParticleHPMadlandNixSpectrum.hh
    G4ParticleHPN2AInelasticFS.hh
    G4ParticleHPN2PInelasticFS.hh
    G4ParticleHPN3AInelasticFS.hh
    G4ParticleHPNAInelasticFS.hh
    G4ParticleHPNBodyPhaseSpace.hh
    G4ParticleHPND2AInelasticFS.hh
    G4ParticleHPNDInelasticFS.hh
    G4ParticleHPNHe3InelasticFS.hh
    G4ParticleHPNInelasticFS.hh
    G4ParticleHPNPAInelasticFS.hh
    G4ParticleHPNPInelasticFS.hh
    G4ParticleHPNT2AInelasticFS.hh
    G4ParticleHPNTInelasticFS.hh
    G4ParticleHPNXInelasticFS.hh
    G4ParticleHPParticleYield.hh
    G4ParticleHPPAInelasticFS.hh
    G4ParticleHPPDInelasticFS.hh
    G4ParticleHPPInelasticFS.hh
    G4ParticleHPPTInelasticFS.hh
    G4ParticleHPPhotonDist.hh
    G4ParticleHPPolynomExpansion.hh
    G4ParticleHPSCFissionFS.hh
    G4ParticleHPSimpleEvapSpectrum.hh
    G4ParticleHPT2AInelasticFS.hh
    G4ParticleHPTCFissionFS.hh
    G4ParticleHPTInelasticFS.hh
    G4ParticleHPThermalBoost.hh
    G4ParticleHPThermalScattering.hh
    G4ParticleHPThermalScatteringData.hh
    G4ParticleHPThermalScatteringNames.hh
    G4ParticleHPWattSpectrum.hh
    G4VParticleHPEnergyAngular.hh
    G4ParticleHPBGGNucleonInelasticXS.hh
    G4ParticleHPManager.hh
    G4ParticleHPReactionWhiteBoard.hh
### Fission Fragment Generator - start
### FissionFragment Generator - end
  SOURCES
    G4ParticleHPIsoData.cc
    G4ParticleHPLevel.cc
    G4ParticleHP2AInelasticFS.cc
    G4ParticleHPList.cc
    G4ParticleHP2N2AInelasticFS.cc
    G4ParticleHPPartial.cc
    G4ParticleHP2NAInelasticFS.cc
    G4ParticleHPNames.cc
    G4ParticleHP2NDInelasticFS.cc
    G4ParticleHP2NInelasticFS.cc
    G4ParticleHPProduct.cc
    G4ParticleHP2NPInelasticFS.cc
    G4ParticleHPVector.cc
    G4ParticleHP2PInelasticFS.cc
    G4ParticleHP3AInelasticFS.cc
    G4ParticleHP3NAInelasticFS.cc
    G4ParticleHP3NInelasticFS.cc
    G4ParticleHP3NPInelasticFS.cc
    G4ParticleHP4NInelasticFS.cc
    G4ParticleHPAInelasticFS.cc
    G4ParticleHPAngular.cc
    G4ParticleHPArbitaryTab.cc
    G4ParticleHPCapture.cc
    G4ParticleHPCaptureData.cc
    G4ParticleHPCaptureFS.cc
    G4ParticleHPChannel.cc
    G4ParticleHPChannelList.cc
    G4ParticleHPContAngularPar.cc
    G4ParticleHPContEnergyAngular.cc
    G4ParticleHPD2AInelasticFS.cc
    G4ParticleHPDAInelasticFS.cc
    G4ParticleHPDInelasticFS.cc
    G4ParticleHPData.cc
    G4ParticleHPDeExGammas.cc
    G4ParticleHPDiscreteTwoBody.cc
    G4ParticleHPElastic.cc
    G4ParticleHPElasticData.cc
    G4ParticleHPElasticFS.cc
    G4ParticleHPElementData.cc
    G4ParticleHPEnAngCorrelation.cc
    G4ParticleHPFCFissionFS.cc
    G4ParticleHPFFFissionFS.cc
    G4ParticleHPFSFissionFS.cc
    G4ParticleHPFastLegendre.cc
    G4ParticleHPFastLegendre_14.cc
    G4ParticleHPFastLegendre_18.cc
    G4ParticleHPFastLegendre_21.cc
    G4ParticleHPFastLegendre_24.cc
    G4ParticleHPFastLegendre_26.cc
    G4ParticleHPFastLegendre_28.cc
    G4ParticleHPFastLegendre_30.cc
    G4ParticleHPField.cc
    G4ParticleHPFieldPoint.cc
    G4ParticleHPFinalState.cc
    G4ParticleHPFission.cc
    G4ParticleHPFissionBaseFS.cc
    G4ParticleHPFissionData.cc
    G4ParticleHPFissionFS.cc
    G4ParticleHPGamma.cc
    G4ParticleHPHe3InelasticFS.cc
    G4ParticleHPInelastic.cc
    G4ParticleHPInelasticBaseFS.cc
    G4ParticleHPInelasticCompFS.cc
    G4ParticleHPInelasticData.cc
    G4ParticleHPInterpolator.cc
    G4ParticleHPIsotropic.cc
    G4ParticleHPJENDLHEData.cc
    G4ParticleHPJENDLHEElasticData.cc
    G4ParticleHPJENDLHEInelasticData.cc
    G4ParticleHPKallbachMannSyst.cc
    G4ParticleHPLCFissionFS.cc
    G4ParticleHPLabAngularEnergy.cc
    G4ParticleHPLegendreStore.cc
    G4ParticleHPMadlandNixSpectrum.cc
    G4ParticleHPN2AInelasticFS.cc
    G4ParticleHPN2PInelasticFS.cc
    G4ParticleHPN3AInelasticFS.cc
    G4ParticleHPNAInelasticFS.cc
    G4ParticleHPNBodyPhaseSpace.cc
    G4ParticleHPND2AInelasticFS.cc
    G4ParticleHPNDInelasticFS.cc
    G4ParticleHPNHe3InelasticFS.cc
    G4ParticleHPNInelasticFS.cc
    G4ParticleHPNPAInelasticFS.cc
    G4ParticleHPNPInelasticFS.cc
    G4ParticleHPNT2AInelasticFS.cc
    G4ParticleHPNTInelasticFS.cc
    G4ParticleHPNXInelasticFS.cc
    G4ParticleHPPAInelasticFS.cc
    G4ParticleHPPDInelasticFS.cc
    G4ParticleHPPInelasticFS.cc
    G4ParticleHPPTInelasticFS.cc
    G4ParticleHPPhotonDist.cc
    G4ParticleHPSCFissionFS.cc
    G4ParticleHPT2AInelasticFS.cc
    G4ParticleHPTCFissionFS.cc
    G4ParticleHPTInelasticFS.cc
    G4ParticleHPThermalScattering.cc
    G4ParticleHPThermalScatteringData.cc
    G4ParticleHPThermalScatteringNames.cc
    G4ParticleHPWattSpectrum.cc
    G4ParticleHPBGGNucleonInelasticXS.cc
    G4ParticleHPManager.cc
    G4ParticleHPReactionWhiteBoard.cc
### Fission Fragment Generator - start
### Fission Fragment Generator - end
  GRANULAR_DEPENDENCIES
    G4baryons
    G4bosons
    G4geometrymng
    G4globman
    G4had_mod_man
    G4had_mod_util
    G4had_neu_hp
    G4hadronic_LE
    G4hadronic_deex_management
    G4hadronic_deex_photon_evaporation
    G4hadronic_deex_util
    G4hadronic_mgt
    G4hadronic_proc
    G4hadronic_util
    G4hadronic_xsect
    G4ions
    G4leptons
    G4materials
    G4mesons
    G4partman
    G4procman
    G4track
    G4volumes
  GLOBAL_DEPENDENCIES
    G4geometry
    G4global
    G4materials
    G4particles
    G4track
  LINK_LIBRARIES
    ${ZLIB_LIBRARIES}
  )

# List any source specific properties here

