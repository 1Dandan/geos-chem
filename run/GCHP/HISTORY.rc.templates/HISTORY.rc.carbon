EXPID:  OutputDir/GEOSChem
EXPDSC: GEOS-Chem_devel
CoresPerNode: 6
Allow_Overwrite: .true.
VERSION: 1

#==============================================================================
# Define grid labels
#
# Define output grids different from the native cubed sphere in this section.
# Each diagnostics collection is output on the native resolution global cubed
# sphere grid unless a different grid defined here is set for that collection
# in the collections section of this file.
#
# See the examples below for defining different types of grid at different
# resolutions. See the collections section later on in this file for
# instructions on using an alternative grid for output.
#
# Beware that the online regridding is area-conserving. Only diagnostics
# independent of grid cell area should be output on a custom grid. For more
# information see the HISTORY.rc page at gchp.readthedocs.io/.
#==============================================================================
GRID_LABELS: #PE24x144-CF
             #PC360x181-DC
             #REGIONAL1x1
    ::

    # Example of cubed-sphere grid at c24 resolution
    PE24x144-CF.GRID_TYPE: Cubed-Sphere
    PE24x144-CF.IM_WORLD: 24
    PE24x144-CF.JM_WORLD: 144
    PE24x144-CF.LM: 72

    # Example of lat-lon global grid at 1x1 resolution
    PC360x181-DC.GRID_TYPE: LatLon
    PC360x181-DC.IM_WORLD: 360
    PC360x181-DC.JM_WORLD: 181
    PC360x181-DC.POLE: PC
    PC360x181-DC.DATELINE: DC
    PC360x181-DC.LM: 72

    # Example of lat-lon regional grid at 1x1 resolution
    REGIONAL1x1.GRID_TYPE: LatLon
    REGIONAL1x1.IM_WORLD: 80
    REGIONAL1x1.JM_WORLD: 40
    REGIONAL1x1.POLE: XY
    REGIONAL1x1.DATELINE: XY
    REGIONAL1x1.LON_RANGE:   0 80
    REGIONAL1x1.LAT_RANGE: -30 10
    REGIONAL1x1.LM: 72

#==============================================================================
# Declare collection names and toggle on/off with #
#==============================================================================
COLLECTIONS: 'Emissions',
             'SpeciesConc',
             #'Metrics',
             #'Budget',
             #'Carbon',
             #'CloudConvFlux',
             #'ConcAfterChem',
             #'FV3Dynamics',
             #'GCHPctmEnvLevCenter',
             #'GCHPctmEnvLevEdge',
             #'KppDiags',
             #'LevelEdgeDiags',
             #'RxnConst',
             #'RxnRates',
             'StateMet',
::
#==============================================================================
# Define collections
#
# The rest of this file consists of collection definitions.
# Above collections whose declarations are commented out will be ignored.
# You can skip individual diagnostics by commenting out their names.
#
# WARNING: Frequency, duration, and mode will be over-written with
# settings in setCommonRunSettings.sh. Edit settings in that file. You can execute the
# script to update this file and then inspect results before submitting a
# run. Collection names are hard-coded in that file; if you add more
# collections then you must also add them there for auto-update, or manually
# change settings for the new collection in this file.
#
# NOTES:
#    (1) Template keyword defines suffix of output filename, appended to
#        '{EXPID}.{collection}.'. See top of this file for EXPID definition.
#
#    (2) Frequency keyword sets frequency of data in each output file
#
#    (3) Duration keyword sets frequency of output file
#  
#    (4) Mode keyword may be 'time-averaged' or 'instantaneous'
#
#    (5) See the GRID_LABELS sections above for details about output grids
#
#    (6) To output data on a grid other than native res global cubed sphere
#        include the 'grid_label' field. For example, 
#
#           SpeciesConc.grid_label:   REGIONAL1x1
#
#    (7) If you are outputting on a lat/lon grid, be sure to specify
#        conservative regridding. Otherwise regridding will be bi-linear.
#
#           SpeciesConc.conservative: 1
#
#    (8) To output a reduced set of levels, use the levels keyword, e.g.:
#
#           SpeciesConc.levels: 1 2 3
#
#==============================================================================
# Emissions (see HEMCO_Diagn.rc for additional config settings)
  Emissions.template:         '%y4%m2%d2_%h2%n2z.nc4',
  Emissions.format:           'CFIO',
  Emissions.timestampStart:   .true.
  Emissions.monthly:          1
  Emissions.frequency:        010000
  Emissions.duration:         010000
  Emissions.mode:             'time-averaged'
  Emissions.fields:           'EmisCH4_Total        ', 'GCHPchem',
                              'EmisCH4_Oil          ', 'GCHPchem',
                              'EmisCH4_Gas          ', 'GCHPchem',
                              'EmisCH4_Coal         ', 'GCHPchem',
                              'EmisCH4_Livestock    ', 'GCHPchem',
                              'EmisCH4_Landfills    ', 'GCHPchem',
                              'EmisCH4_Wastewater   ', 'GCHPchem',
                              'EmisCH4_Rice         ', 'GCHPchem',
                              'EmisCH4_OtherAnth    ', 'GCHPchem',
                              'EmisCH4_BiomassBurn  ', 'GCHPchem',
                              'EmisCH4_Wetlands     ', 'GCHPchem',
                              'EmisCH4_Seeps        ', 'GCHPchem',
                              'EmisCH4_Lakes        ', 'GCHPchem',
                              'EmisCH4_Termites     ', 'GCHPchem',
                              'EmisCH4_SoilAbsorb   ', 'GCHPchem',
                              'EmisCH4_Reservoirs   ', 'GCHPchem',
                              'EmisCO_Total         ', 'GCHPchem',
                              'EmisCO_Aircraft      ', 'GCHPchem',
                              'EmisCO_Anthro        ', 'GCHPchem',
                              'EmisCO_BiomassBurn   ', 'GCHPchem',
                              'EmisCO_Ship          ', 'GCHPchem',
                              'EmisCO2_Total        ', 'GCHPchem',
                              'EmisCO2_FossilFuel   ', 'GCHPchem',
                              'EmisCO2_Ocean        ', 'GCHPchem',
                              'EmisCO2_BalBiosph    ', 'GCHPchem',
                              'EmisCO2_NetTerrExch  ', 'GCHPchem',
                              'EmisCO2_Ship         ', 'GCHPchem',
                              'EmisCO2_Aviation     ', 'GCHPchem',
                              'EmisCO2_CO2SurfCorr  ', 'GCHPchem',
                              'EmisCO2_BiomassBurn  ', 'GCHPchem',
                              'EmisOCS_Anthro       ', 'GCHPchem',
                              'EmisOCS_Bioburn      ', 'GCHPchem',
                              'EmisOCS_MissingOcean ', 'GCHPchem',
                              'EmisOCS_Ocean        ', 'GCHPchem',
                              'EmisOCS_Total        ', 'GCHPchem',
::
#==============================================================================
  Metrics.template:           '%y4%m2%d2_%h2%n2z.nc4',
  Metrics.frequency:          'End',
  Metrics.duration:           'End',
  Metrics.mode:               'time-averaged'
  Metrics.fields:             'AirMassColumnFull         ', 'GCHPchem',
                              'CH4emission               ', 'GCHPchem',
                              'CH4massColumnFull         ', 'GCHPchem',
                              'CH4massColumnTrop         ', 'GCHPchem',
                              'LossOHbyCH4columnTrop     ', 'GCHPchem',
                              'LossOHbyMCFcolumnTrop     ', 'GCHPchem',
                              'OHwgtByAirMassColumnFull  ', 'GCHPchem',
::
#==============================================================================
  SpeciesConc.template:       '%y4%m2%d2_%h2%n2z.nc4',
  SpeciesConc.format:         'CFIO',
  SpeciesConc.timestampStart: .true.
  SpeciesConc.monthly:        1
  SpeciesConc.frequency:      010000
  SpeciesConc.duration:       240000
  SpeciesConc.mode:           'time-averaged'
  SpeciesConc.fields:         'SpeciesConcVV_CH4    ', 'GCHPchem',
                              'SpeciesConcVV_CO     ', 'GCHPchem',
                              'SpeciesConcVV_CO2    ', 'GCHPchem',
                              'SpeciesConcVV_OCS    ', 'GCHPchem',
                              ##'SpeciesConcMND_CH4 ', 'GCHPchem',
                              ##'SpeciesConcMND_CO  ', 'GCHPchem',
                              ##'SpeciesConcMND_CO2 ', 'GCHPchem',
                              ##'SpeciesConcMND_OCS ', 'GCHPchem',
::
#==============================================================================
# Budget defined as species kg/s in the column (full, troposphere, or PBL)
# due to a single component (e.g. chemistry); default = ozone only; add more
# species as needed to the example below (advected only)
  Budget.template:            '%y4%m2%d2_%h2%n2z.nc4',
  Budget.format:              'CFIO',
  Budget.timestampStart:      .true.
  Budget.monthly:             1
  Budget.frequency:           010000
  Budget.duration:            010000
  Budget.mode:                'time-averaged'
  Budget.fields:              'BudgetEmisDryDepFull_CH4      ', 'GCHPchem',
                              'BudgetEmisDryDepTrop_CH4      ', 'GCHPchem',
                              'BudgetEmisDryDepPBL_CH4       ', 'GCHPchem',
                              'BudgetEmisDryDepLevs1to35_CH4 ', 'GCHPchem',
                              'BudgetMixingFull_CH4          ', 'GCHPchem',
                              'BudgetMixingTrop_CH4          ', 'GCHPchem',
                              'BudgetMixingPBL_CH4           ', 'GCHPchem',
                              'BudgetMixingLevs1to35_CH4     ', 'GCHPchem',
                              'BudgetConvectionFull_CH4      ', 'GCHPchem',
                              'BudgetConvectionTrop_CH4      ', 'GCHPchem',
                              'BudgetConvectionPBL_CH4       ', 'GCHPchem',
                              'BudgetConvectionLevs1to35_CH4 ', 'GCHPchem',
                              'BudgetEmisDryDepFull_CO       ', 'GCHPchem',
                              'BudgetEmisDryDepTrop_CO       ', 'GCHPchem',
                              'BudgetEmisDryDepPBL_CO        ', 'GCHPchem',
                              'BudgetEmisDryDepLevs1to35_CO  ', 'GCHPchem',
                              'BudgetMixingFull_CO           ', 'GCHPchem',
                              'BudgetMixingTrop_CO           ', 'GCHPchem',
                              'BudgetMixingPBL_CO            ', 'GCHPchem',
                              'BudgetMixingLevs1to35_CO      ', 'GCHPchem',
                              'BudgetConvectionFull_CO       ', 'GCHPchem',
                              'BudgetConvectionTrop_CO       ', 'GCHPchem',
                              'BudgetConvectionPBL_CO        ', 'GCHPchem',
                              'BudgetConvectionLevs1to35_CO  ', 'GCHPchem',
                              'BudgetEmisDryDepFull_CO2      ', 'GCHPchem',
                              'BudgetEmisDryDepTrop_CO2      ', 'GCHPchem',
                              'BudgetEmisDryDepPBL_CO2       ', 'GCHPchem',
                              'BudgetEmisDryDepLevs1to35_CO2 ', 'GCHPchem',
                              'BudgetMixingFull_CO2          ', 'GCHPchem',
                              'BudgetMixingTrop_CO2          ', 'GCHPchem',
                              'BudgetMixingPBL_CO2           ', 'GCHPchem',
                              'BudgetMixingLevs1to35_CO2     ', 'GCHPchem',
                              'BudgetConvectionFull_CO2      ', 'GCHPchem',
                              'BudgetConvectionTrop_CO2      ', 'GCHPchem',
                              'BudgetConvectionPBL_CO2       ', 'GCHPchem',
                              'BudgetConvectionLevs1to35_CO2 ', 'GCHPchem',
			      'BudgetEmisDryDepFull_OCS      ', 'GCHPchem',
                              'BudgetEmisDryDepTrop_OCS      ', 'GCHPchem',
                              'BudgetEmisDryDepPBL_OCS       ', 'GCHPchem',
                              'BudgetEmisDryDepLevs1to35_OCS ', 'GCHPchem',
                              'BudgetMixingFull_OCS          ', 'GCHPchem',
                              'BudgetMixingTrop_OCS          ', 'GCHPchem',
                              'BudgetMixingPBL_OCS           ', 'GCHPchem',
                              'BudgetMixingLevs1to35_OCS     ', 'GCHPchem',
                              'BudgetConvectionFull_OCS      ', 'GCHPchem',
                              'BudgetConvectionTrop_OCS      ', 'GCHPchem',
                              'BudgetConvectionPBL_OCS       ', 'GCHPchem',
                              'BudgetConvectionLevs1to35_OCS ', 'GCHPchem',
::
#==============================================================================
# Prod and loss terms from the carbon simulation (plus OH conc)
  Carbon.template:        '%y4%m2%d2_%h2%n2z.nc4',
  Carbon.format:          'CFIO',
  Carbon.timestampStart:  .true.
  Carbon.monthly:         1
  Carbon.frequency:       010000
  Carbon.duration:        010000
  Carbon.mode:            'time-averaged'
  Carbon.fields:          'OHconcAfterChem', 'GCHPchem',
                          'ProdCOfromCH4  ', 'GCHPchem',
                          'ProdCOfromNMVOC', 'GCHPchem',
                          'ProdCO2fromCO  ', 'GCHPchem',
::
#===============================================================================
# Cloud convective fluxes
  CloudConvFlux.template:       '%y4%m2%d2_%h2%n2z.nc4',
  CloudConvFlux.format:         'CFIO',
  CloudConvFlux.timestampStart: .true.
  CloudConvFlux.monthly:        1
  CloudConvFlux.frequency:      010000
  CloudConvFlux.duration:       010000
  CloudConvFlux.mode:           'time-averaged'
  CloudConvFlux.fields:         'CloudConvFlux_CH4 ', 'GCHPchem',
                                'CloudConvFlux_CO  ', 'GCHPchem',
                                'CloudConvFlux_CO2 ', 'GCHPchem',
                                'CloudConvFlux_OCS ', 'GCHPchem',
::
#==============================================================================
# Concentrations of OH immediately after exiting the KPP solver
  ConcAfterChem.template:       '%y4%m2%d2_%h2%n2z.nc4',
  ConcAfterChem.format:         'CFIO',
  ConcAfterChem.timestampStart: .true.
  ConcAfterChem.monthly:        1
  ConcAfterChem.frequency:      010000
  ConcAfterChem.duration:       010000
  ConcAfterChem.mode:           'time-averaged'
  ConcAfterChem.fields:         'OHconcAfterChem', 'GCHPchem',
::
#==============================================================================
  FV3Dynamics.template:       '%y4%m2%d2_%h2%n2z.nc4',
  FV3Dynamics.format:         'CFIO',
  FV3Dynamics.timestampStart: .true.
  FV3Dynamics.monthly:        1
  FV3Dynamics.frequency:      010000
  FV3Dynamics.duration:       010000
  FV3Dynamics.mode:           'time-averaged'
  FV3Dynamics.fields:         'PLE    ', 'DYNAMICS',
                              'DryPLE ', 'DYNAMICS',
                              'PLEadv ', 'DYNAMICS',
::
#==============================================================================
  GCHPctmEnvLevEdge.template:       '%y4%m2%d2_%h2%n2z.nc4',
  GCHPctmEnvLevEdge.format:         'CFIO',
  GCHPctmEnvLevEdge.timestampStart: .true.
  GCHPctmEnvLevEdge.monthly:        1
  GCHPctmEnvLevEdge.frequency:      010000
  GCHPctmEnvLevEdge.duration:       010000
  GCHPctmEnvLevEdge.mode:           'time-averaged'
  GCHPctmEnvLevEdge.fields:         'UpwardsMassFlux    ', 'GCHPctmEnv',
                                    'PLE0               ', 'GCHPctmEnv',
                                    'PLE1               ', 'GCHPctmEnv',
                                    'DryPLE0            ', 'GCHPctmEnv',
                                    'DryPLE1            ', 'GCHPctmEnv',
::
#==============================================================================
  GCHPctmEnvLevCenter.template:       '%y4%m2%d2_%h2%n2z.nc4',
  GCHPctmEnvLevCenter.format:         'CFIO',
  GCHPctmEnvLevCenter.timestampStart: .true.
  GCHPctmEnvLevCenter.monthly:        1
  GCHPctmEnvLevCenter.frequency:      010000
  GCHPctmEnvLevCenter.duration:       010000
  GCHPctmEnvLevCenter.mode:           'time-averaged'
  GCHPctmEnvLevCenter.fields:         'SPHU0    ', 'GCHPctmEnv',
                                      'CX       ', 'GCHPctmEnv',
                                      'CY       ', 'GCHPctmEnv',
                                      'MFX      ', 'GCHPctmEnv',
                                      'MFY      ', 'GCHPctmEnv',
::
#==============================================================================
# Diagnostics on level edges
  LevelEdgeDiags.template:       '%y4%m2%d2_%h2%n2z.nc4',
  LevelEdgeDiags.format:         'CFIO',
  LevelEdgeDiags.timestampStart: .true.
  LevelEdgeDiags.monthly:        1
  LevelEdgeDiags.frequency:      010000
  LevelEdgeDiags.duration:       010000
  LevelEdgeDiags.mode:           'time-averaged'
  LevelEdgeDiags.fields:         'Met_CMFMC   ', 'GCHPchem',
                                 'Met_PEDGE   ', 'GCHPchem',
                                 'Met_PEDGEDRY', 'GCHPchem',
                                 'Met_PFICU   ', 'GCHPchem',
                                 'Met_PFILSAN ', 'GCHPchem',
                                 'Met_PFLCU   ', 'GCHPchem',
                                 'Met_PFLLSAN ', 'GCHPchem',
::
#==============================================================================
  KppDiags.template:          '%y4%m2%d2_%h2%n2z.nc4',
  KppDiags.format:            'CFIO',
  KppDiags.monthly:           1
  KppDiags.frequency:         010000
  KppDiags.duration:          010000
  KppDiags.mode:              'time-averaged'
  KppDiags.fields:            'KppIntCounts                  ',
                              'KppJacCounts                  ',
                              'KppTotSteps                   ',
                              'KppAccSteps                   ',
                              'KppRejSteps                   ',
                              'KppLuDecomps                  ',
                              'KppSubsts                     ',
                              'KppSmDecomps                  ',
                              'KppTime                       ',
::
#==============================================================================
  RxnRates.template:          '%y4%m2%d2_%h2%n2z.nc4',
  RxnRates.format:            'CFIO',
  RxnRates.monthly:           1
  RxnRates.frequency:         010000
  RxnRates.duration:          010000
  RxnRates.mode:              'time-averaged'
  RxnRates.fields:            'RxnRate_EQ0001                  ',
                              'RxnRate_EQ0002                  ',
			      # ... add others as needed ...
::
#==============================================================================
  RxnConst.template:          '%y4%m2%d2_%h2%n2z.nc4',
  RxnConst.format:            'CFIO',
  RxnConst.monthly:           1
  RxnConst.frequency:         010000
  RxnConst.duration:          010000
  RxnConst.mode:              'time-averaged'
  RxnConst.fields:            'RxnConst_EQ0001                ',
                              'RxnConst_EQ0002                ',
			      # ... add others as needed ...
::
#==============================================================================
  StateMet.template:       '%y4%m2%d2_%h2%n2z.nc4',
  StateMet.format:         'CFIO',
  StateMet.timestampStart: .true.
  StateMet.monthly:        1
  StateMet.frequency:      010000
  StateMet.duration:       010000
  StateMet.mode:           'time-averaged'
  StateMet.fields:         'Met_AD         ', 'GCHPchem',
                           'Met_AIRDEN     ', 'GCHPchem',
                           'Met_AIRVOL     ', 'GCHPchem',
                           'Met_ALBD       ', 'GCHPchem',
                           'Met_AREAM2     ', 'GCHPchem',
                           'Met_AVGW       ', 'GCHPchem',
                           'Met_BXHEIGHT   ', 'GCHPchem',
                           'Met_ChemGridLev', 'GCHPchem',
                           'Met_CLDF       ', 'GCHPchem',
                           'Met_CLDFRC     ', 'GCHPchem',
                           'Met_CLDTOPS    ', 'GCHPchem',
                           'Met_DELP       ', 'GCHPchem',
                           'Met_DQRCU      ', 'GCHPchem',
                           'Met_DQRLSAN    ', 'GCHPchem',
                           'Met_DTRAIN     ', 'GCHPchem',
                           'Met_EFLUX      ', 'GCHPchem',
                           'Met_FRCLND     ', 'GCHPchem',
                           'Met_FRLAKE     ', 'GCHPchem',
                           'Met_FRLAND     ', 'GCHPchem',
                           'Met_FRLANDICE  ', 'GCHPchem',
                           'Met_FROCEAN    ', 'GCHPchem',
                           'Met_FRSEAICE   ', 'GCHPchem',
                           'Met_FRSNOW     ', 'GCHPchem',
                           'Met_GWETROOT   ', 'GCHPchem',
                           'Met_GWETTOP    ', 'GCHPchem',
                           'Met_HFLUX      ', 'GCHPchem',
                           'Met_LAI        ', 'GCHPchem',
                           'Met_PARDR      ', 'GCHPchem',
                           'Met_PARDF      ', 'GCHPchem',
                           'Met_PBLTOPL    ', 'GCHPchem',
                           'Met_PBLH       ', 'GCHPchem',
                           'Met_PHIS       ', 'GCHPchem',
                           'Met_PMID       ', 'GCHPchem',
                           'Met_PMIDDRY    ', 'GCHPchem',
                           'Met_PRECANV    ', 'GCHPchem',
                           'Met_PRECCON    ', 'GCHPchem',
                           'Met_PRECLSC    ', 'GCHPchem',
                           'Met_PRECTOT    ', 'GCHPchem',
                           'Met_PS1DRY     ', 'GCHPchem',
                           'Met_PS1WET     ', 'GCHPchem',
                           'Met_PS2DRY     ', 'GCHPchem',
                           'Met_PS2WET     ', 'GCHPchem',
                           'Met_PSC2WET    ', 'GCHPchem',
                           'Met_PSC2DRY    ', 'GCHPchem',
                           'Met_QI         ', 'GCHPchem',
                           'Met_QL         ', 'GCHPchem',
                           'Met_OMEGA      ', 'GCHPchem',
                           'Met_OPTD       ', 'GCHPchem',
                           'Met_REEVAPCN   ', 'GCHPchem',
                           'Met_REEVAPLS   ', 'GCHPchem',
                           'Met_SLP        ', 'GCHPchem',
                           'Met_SNODP      ', 'GCHPchem',
                           'Met_SNOMAS     ', 'GCHPchem',
                           'Met_SPHU       ', 'GCHPchem',
                           'Met_SPHU1      ', 'GCHPchem',
                           'Met_SPHU2      ', 'GCHPchem',
                           'Met_SUNCOS     ', 'GCHPchem',
                           'Met_SUNCOSmid  ', 'GCHPchem',
                           'Met_SWGDN      ', 'GCHPchem',
                           'Met_T          ', 'GCHPchem',
                           'Met_TAUCLI     ', 'GCHPchem',
                           'Met_TAUCLW     ', 'GCHPchem',
                           'Met_THETA      ', 'GCHPchem',
                           'Met_TMPU1      ', 'GCHPchem',
                           'Met_TMPU2      ', 'GCHPchem',
                           'Met_TO3        ', 'GCHPchem',
                           'Met_TropHt     ', 'GCHPchem',
                           'Met_TropLev    ', 'GCHPchem',
                           'Met_TropP      ', 'GCHPchem',
                           'Met_TS         ', 'GCHPchem',
                           'Met_TSKIN      ', 'GCHPchem',
                           'Met_TV         ', 'GCHPchem',
                           'Met_U          ', 'GCHPchem',
                           'Met_U10M       ', 'GCHPchem',
                           'Met_USTAR      ', 'GCHPchem',
                           'Met_UVALBEDO   ', 'GCHPchem',
                           'Met_V          ', 'GCHPchem',
                           'Met_V10M       ', 'GCHPchem',
                           'Met_Z0         ', 'GCHPchem',
::
