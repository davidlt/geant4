#------------------------------------------------------------------------------
# sources.cmake
# Module : G4hntools
# Package: Geant4.src.G4analysis.G4hntools
#
# Sources description for a library.
# Lists the sources and headers of the code explicitely.
# Lists include paths needed.
# Lists the internal granular and global dependencies of the library.
# Source specific properties should be added at the end.
#
# Generated on : 15/07/2013
#
# $Id: sources.cmake 91489 2015-07-20 12:53:29Z ihrivnac $
#
#------------------------------------------------------------------------------

# List external includes needed.
include_directories(${CLHEP_INCLUDE_DIRS})

# List internal includes needed.
include_directories(${CMAKE_SOURCE_DIR}/source/global/management/include)
include_directories(${CMAKE_SOURCE_DIR}/source/intercoms/include)
include_directories(${CMAKE_SOURCE_DIR}/source/analysis/g4tools/include)
include_directories(${CMAKE_SOURCE_DIR}/source/analysis/management/include)

#
# Define the Geant4 Module.
#

include(Geant4MacroDefineModule)
GEANT4_DEFINE_MODULE(NAME G4hntools
    HEADERS
        G4MergeMode.hh
        G4ParameterManager.hh
        G4ParameterManager.icc
        G4Parameter.hh
        G4Parameter.icc
        G4VParameter.hh
        G4VParameter.icc
    SOURCES
        G4MergeMode.cc
        G4ParameterManager.cc
    GRANULAR_DEPENDENCIES
        G4globman
        G4intercoms
        G4analysismng
    GLOBAL_DEPENDENCIES
        G4global
        G4intercoms
    LINK_LIBRARIES
)

# List any source specific properties here
