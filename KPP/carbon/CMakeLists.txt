# KPP/carbon/CMakeLists.txt

#----------------------------------------------------------------------------
# Determine the KPP integrator name and set corresponding variables
# This is for informational purposes only.
#----------------------------------------------------------------------------

# Get integrator name
EXECUTE_PROCESS(
  COMMAND grep \#INTEGRATOR ${CMAKE_CURRENT_SOURCE_DIR}/carbon.kpp
  OUTPUT_VARIABLE RESULT
)
separate_arguments(SUBSTRINGS UNIX_COMMAND "${RESULT}")
list(GET SUBSTRINGS 1 KPP_INTEGRATOR_NAME)
string(TOLOWER "${KPP_INTEGRATOR_NAME}" KPP_INTEGRATOR_NAME)

# Print result
gc_pretty_print(SECTION "KPP integrator (read from carbon.kpp)")
gc_pretty_print(VARIABLE KPP_INTEGRATOR_NAME)

#----------------------------------------------------------------------------
# Add libKPPFirstPass.a -- carbon mechanism
#----------------------------------------------------------------------------
add_library(KPP_FirstPass
  STATIC EXCLUDE_FROM_ALL
  gckpp_Precision.F90
  gckpp_Parameters.F90
  gckpp_Monitor.F90
)

# Define dependencies for libKPP_FirstPass.a
target_link_libraries(KPP_FirstPass
  PUBLIC
  GEOSChemBuildProperties
)

#----------------------------------------------------------------------------
# Add libKPP.a -- carbon mechanism
#----------------------------------------------------------------------------
add_library(KPP
  STATIC EXCLUDE_FROM_ALL
  carbon_Funcs.F90
  gckpp_Function.F90
  gckpp_Global.F90
  gckpp_Initialize.F90
  gckpp_Integrator.F90
  gckpp_Jacobian.F90
  gckpp_LinearAlgebra.F90
  gckpp_Model.F90
  gckpp_Monitor.F90
  gckpp_Parameters.F90
  gckpp_Precision.F90
  gckpp_Rates.F90
  gckpp_Util.F90
  rateLawUtilFuncs.F90
  #
  # Build these stub modules to avoid compilation errors.
  # These are symbolic links to files in the ../stubs folder.
  #
  stub_aciduptake_DustChemFuncs.F90
  stub_fullchem_AutoReduceFuncs.F90
  stub_fullchem_HetStateFuncs.F90
  stub_fullchem_SulfurChemFuncs.F90
  stub_Hg_HetStateFuncs.F90
)

# Add dependencies
target_link_libraries(KPP
  PUBLIC
  GeosUtil
)

# When building libKPP.a, treat REAL as if it were REAL*8
target_compile_options(KPP
  PRIVATE ""
  $<$<STREQUAL:"${CMAKE_Fortran_COMPILER_ID}","Intel">:-r8>
  $<$<STREQUAL:"${CMAKE_Fortran_COMPILER_ID}","GNU">:-fdefault-real-8 -fdefault-double-8>
)
