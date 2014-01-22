#%Module1.0#####################################################################
##
## vcflib modulefile
##

source /sw/mf/common/includes/functions.tcl
getCluster

set components [ file split [ module-info name ] ]
#set version [ lindex $components 1 ]

set     modroot         /proj/a2010002/nobackup/sw/mf/bioinfo-tools/vcflib/bin

proc ModulesHelp { } {
        global version modroot

        puts stderr "\tvcflib - use vcflib $version"
}

module-whatis   "Loads vcflib environment."

# Only one version at a time
conflict vcflib

#Log loading to syslog
logToSyslog

if [module-info mode load] {
    prepend-path    PATH            $modroot
}

if [module-info mode remove] {
    remove-path     PATH            $modroot
}
