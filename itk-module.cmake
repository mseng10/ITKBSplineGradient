# the top-level README is used for describing this module, just
# re-used it for documentation here
get_filename_component(MY_CURRENT_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
file(READ "${MY_CURRENT_DIR}/README.rst" DOCUMENTATION)

# itk_module() defines the module dependencies in BSplineGradient
# BSplineGradient depends on ITKCommon
# The testing module in BSplineGradient depends on ITKTestKernel
# and ITKMetaIO(besides BSplineGradient and ITKCore)
# By convention those modules outside of ITK are not prefixed with
# ITK.

# define the dependencies of the include module and the tests
itk_module(BSplineGradient
  DEPENDS
    ITKCommon
    ITKMesh
  COMPILE_DEPENDS
  TEST_DEPENDS
    ITKTestKernel
    ITKMetaIO
    ITKIOMeshVTK
  DESCRIPTION
    "${DOCUMENTATION}"
  EXCLUDE_FROM_DEFAULT
)