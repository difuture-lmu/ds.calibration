.onAttach = function(libname, pkgname) {
  options(datashield.privacyLevel = 5L)
}
.onDetach = function(libpath) {
  options(datashield.privacyLevel = NULL)
}
