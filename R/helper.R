# Get `datashield.privacyLevel` from DESCRIPTION file. Note that we do not set the option
# as DataSHIELD does because of the risk of highjacking the R environment. Instead, when
# a function is called that uses the privacy level, the function gets it directly from the
# DESCRIPTION file.
.getPrivacyLevel = function() {
  pl = utils::packageDescription("dsCalibration")$Options
  pl = as.integer(gsub("\\D", "", pl))
  if (is.na(pl)) stop("No privacy level specified in DESCRIPTION.")
  return(pl)
}
#.onAttach = function(libname, pkgname) {
  #options(datashield.privacyLevel = 5L)
#}
#.onDetach = function(libpath) {
  #options(datashield.privacyLevel = NULL)
#}
