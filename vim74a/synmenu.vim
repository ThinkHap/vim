" Vim support file to define the syntax selection menu
" This file is normally sourced from menu.vim.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last Change:	2013 Jun 24

" Define the SetSyn function, used for the Syntax menu entries.
" Set 'filetype' and also 'syntax' if it is manually selected.
fun! SetSyn(name)
  if a:name == "fvwm1"
    let use_fvwm_1 = 1
    let use_fvwm_2 = 0
    let name = "fvwm"
  elseif a:name == "fvwm2"
    let use_fvwm_2 = 1
    let use_fvwm_1 = 0
    let name = "fvwm"
  else
    let name = a:name
  endif
  if !exists("s:syntax_menu_synonly")
    exe "set ft=" . name
    if exists("g:syntax_manual")
      exe "set syn=" . name
    endif
  else
    exe "set syn=" . name
  endif
endfun

" <> notation is used here, remove '<' from 'cpoptions'
let s:cpo_save = &cpo
set cpo&vim

" The following menu items are generated by makemenu.vim.
" The Start Of The Syntax Menu

an 50.10.100 &Syntax.AB.A2ps\ config :cal SetSyn("a2ps")<CR>
an 50.10.110 &Syntax.AB.Aap :cal SetSyn("aap")<CR>
an 50.10.120 &Syntax.AB.ABAP/4 :cal SetSyn("abap")<CR>
an 50.10.130 &Syntax.AB.Abaqus :cal SetSyn("abaqus")<CR>
an 50.10.140 &Syntax.AB.ABC\ music\ notation :cal SetSyn("abc")<CR>
an 50.10.150 &Syntax.AB.ABEL :cal SetSyn("abel")<CR>
an 50.10.160 &Syntax.AB.AceDB\ model :cal SetSyn("acedb")<CR>
an 50.10.170 &Syntax.AB.Ada :cal SetSyn("ada")<CR>
an 50.10.180 &Syntax.AB.AfLex :cal SetSyn("aflex")<CR>
an 50.10.190 &Syntax.AB.ALSA\ config :cal SetSyn("alsaconf")<CR>
an 50.10.200 &Syntax.AB.Altera\ AHDL :cal SetSyn("ahdl")<CR>
an 50.10.210 &Syntax.AB.Amiga\ DOS :cal SetSyn("amiga")<CR>
an 50.10.220 &Syntax.AB.AMPL :cal SetSyn("ampl")<CR>
an 50.10.230 &Syntax.AB.Ant\ build\ file :cal SetSyn("ant")<CR>
an 50.10.240 &Syntax.AB.ANTLR :cal SetSyn("antlr")<CR>
an 50.10.250 &Syntax.AB.Apache\ config :cal SetSyn("apache")<CR>
an 50.10.260 &Syntax.AB.Apache-style\ config :cal SetSyn("apachestyle")<CR>
an 50.10.270 &Syntax.AB.Applix\ ELF :cal SetSyn("elf")<CR>
an 50.10.280 &Syntax.AB.Arc\ Macro\ Language :cal SetSyn("aml")<CR>
an 50.10.290 &Syntax.AB.Arch\ inventory :cal SetSyn("arch")<CR>
an 50.10.300 &Syntax.AB.ART :cal SetSyn("art")<CR>
an 50.10.310 &Syntax.AB.ASP\ with\ VBScript :cal SetSyn("aspvbs")<CR>
an 50.10.320 &Syntax.AB.ASP\ with\ Perl :cal SetSyn("aspperl")<CR>
an 50.10.330 &Syntax.AB.Assembly.680x0 :cal SetSyn("asm68k")<CR>
an 50.10.340 &Syntax.AB.Assembly.Flat :cal SetSyn("fasm")<CR>
an 50.10.350 &Syntax.AB.Assembly.GNU :cal SetSyn("asm")<CR>
an 50.10.360 &Syntax.AB.Assembly.GNU\ H-8300 :cal SetSyn("asmh8300")<CR>
an 50.10.370 &Syntax.AB.Assembly.Intel\ IA-64 :cal SetSyn("ia64")<CR>
an 50.10.380 &Syntax.AB.Assembly.Microsoft :cal SetSyn("masm")<CR>
an 50.10.390 &Syntax.AB.Assembly.Netwide :cal SetSyn("nasm")<CR>
an 50.10.400 &Syntax.AB.Assembly.PIC :cal SetSyn("pic")<CR>
an 50.10.410 &Syntax.AB.Assembly.Turbo :cal SetSyn("tasm")<CR>
an 50.10.420 &Syntax.AB.Assembly.VAX\ Macro\ Assembly :cal SetSyn("vmasm")<CR>
an 50.10.430 &Syntax.AB.Assembly.Z-80 :cal SetSyn("z8a")<CR>
an 50.10.440 &Syntax.AB.Assembly.xa\ 6502\ cross\ assember :cal SetSyn("a65")<CR>
an 50.10.450 &Syntax.AB.ASN\.1 :cal SetSyn("asn")<CR>
an 50.10.460 &Syntax.AB.Asterisk\ config :cal SetSyn("asterisk")<CR>
an 50.10.470 &Syntax.AB.Asterisk\ voicemail\ config :cal SetSyn("asteriskvm")<CR>
an 50.10.480 &Syntax.AB.Atlas :cal SetSyn("atlas")<CR>
an 50.10.490 &Syntax.AB.AutoHotKey :cal SetSyn("autohotkey")<CR>
an 50.10.500 &Syntax.AB.AutoIt :cal SetSyn("autoit")<CR>
an 50.10.510 &Syntax.AB.Automake :cal SetSyn("automake")<CR>
an 50.10.520 &Syntax.AB.Avenue :cal SetSyn("ave")<CR>
an 50.10.530 &Syntax.AB.Awk :cal SetSyn("awk")<CR>
an 50.10.540 &Syntax.AB.AYacc :cal SetSyn("ayacc")<CR>
an 50.10.560 &Syntax.AB.B :cal SetSyn("b")<CR>
an 50.10.570 &Syntax.AB.Baan :cal SetSyn("baan")<CR>
an 50.10.580 &Syntax.AB.Basic.FreeBasic :cal SetSyn("freebasic")<CR>
an 50.10.590 &Syntax.AB.Basic.IBasic :cal SetSyn("ibasic")<CR>
an 50.10.600 &Syntax.AB.Basic.QBasic :cal SetSyn("basic")<CR>
an 50.10.610 &Syntax.AB.Basic.Visual\ Basic :cal SetSyn("vb")<CR>
an 50.10.620 &Syntax.AB.Bazaar\ commit\ file :cal SetSyn("bzr")<CR>
an 50.10.630 &Syntax.AB.BC\ calculator :cal SetSyn("bc")<CR>
an 50.10.640 &Syntax.AB.BDF\ font :cal SetSyn("bdf")<CR>
an 50.10.650 &Syntax.AB.BibTeX.Bibliography\ database :cal SetSyn("bib")<CR>
an 50.10.660 &Syntax.AB.BibTeX.Bibliography\ Style :cal SetSyn("bst")<CR>
an 50.10.670 &Syntax.AB.BIND.BIND\ config :cal SetSyn("named")<CR>
an 50.10.680 &Syntax.AB.BIND.BIND\ zone :cal SetSyn("bindzone")<CR>
an 50.10.690 &Syntax.AB.Blank :cal SetSyn("blank")<CR>
an 50.20.100 &Syntax.C.C :cal SetSyn("c")<CR>
an 50.20.110 &Syntax.C.C++ :cal SetSyn("cpp")<CR>
an 50.20.120 &Syntax.C.C# :cal SetSyn("cs")<CR>
an 50.20.130 &Syntax.C.Cabal\ Haskell\ build\ file :cal SetSyn("cabal")<CR>
an 50.20.140 &Syntax.C.Calendar :cal SetSyn("calendar")<CR>
an 50.20.150 &Syntax.C.Cascading\ Style\ Sheets :cal SetSyn("css")<CR>
an 50.20.160 &Syntax.C.CDL :cal SetSyn("cdl")<CR>
an 50.20.170 &Syntax.C.Cdrdao\ TOC :cal SetSyn("cdrtoc")<CR>
an 50.20.180 &Syntax.C.Cdrdao\ config :cal SetSyn("cdrdaoconf")<CR>
an 50.20.190 &Syntax.C.Century\ Term :cal SetSyn("cterm")<CR>
an 50.20.200 &Syntax.C.CH\ script :cal SetSyn("ch")<CR>
an 50.20.210 &Syntax.C.ChaiScript :cal SetSyn("chaiscript")<CR>
an 50.20.220 &Syntax.C.ChangeLog :cal SetSyn("changelog")<CR>
an 50.20.230 &Syntax.C.Cheetah\ template :cal SetSyn("cheetah")<CR>
an 50.20.240 &Syntax.C.CHILL :cal SetSyn("chill")<CR>
an 50.20.250 &Syntax.C.ChordPro :cal SetSyn("chordpro")<CR>
an 50.20.260 &Syntax.C.Clean :cal SetSyn("clean")<CR>
an 50.20.270 &Syntax.C.Clever :cal SetSyn("cl")<CR>
an 50.20.280 &Syntax.C.Clipper :cal SetSyn("clipper")<CR>
an 50.20.290 &Syntax.C.Cmake :cal SetSyn("cmake")<CR>
an 50.20.300 &Syntax.C.Cmusrc :cal SetSyn("cmusrc")<CR>
an 50.20.310 &Syntax.C.Cobol :cal SetSyn("cobol")<CR>
an 50.20.320 &Syntax.C.Coco/R :cal SetSyn("coco")<CR>
an 50.20.330 &Syntax.C.Cold\ Fusion :cal SetSyn("cf")<CR>
an 50.20.340 &Syntax.C.Conary\ Recipe :cal SetSyn("conaryrecipe")<CR>
an 50.20.350 &Syntax.C.Config.Cfg\ Config\ file :cal SetSyn("cfg")<CR>
an 50.20.360 &Syntax.C.Config.Configure\.in :cal SetSyn("config")<CR>
an 50.20.370 &Syntax.C.Config.Generic\ Config\ file :cal SetSyn("conf")<CR>
an 50.20.380 &Syntax.C.CRM114 :cal SetSyn("crm")<CR>
an 50.20.390 &Syntax.C.Crontab :cal SetSyn("crontab")<CR>
an 50.20.400 &Syntax.C.CSP :cal SetSyn("csp")<CR>
an 50.20.410 &Syntax.C.Ctrl-H :cal SetSyn("ctrlh")<CR>
an 50.20.420 &Syntax.C.Cucumber :cal SetSyn("cucumber")<CR>
an 50.20.430 &Syntax.C.CUDA :cal SetSyn("cuda")<CR>
an 50.20.440 &Syntax.C.CUPL.CUPL :cal SetSyn("cupl")<CR>
an 50.20.450 &Syntax.C.CUPL.Simulation :cal SetSyn("cuplsim")<CR>
an 50.20.460 &Syntax.C.CVS.commit\ file :cal SetSyn("cvs")<CR>
an 50.20.470 &Syntax.C.CVS.cvsrc :cal SetSyn("cvsrc")<CR>
an 50.20.480 &Syntax.C.Cyn++ :cal SetSyn("cynpp")<CR>
an 50.20.490 &Syntax.C.Cynlib :cal SetSyn("cynlib")<CR>
an 50.30.100 &Syntax.DE.D :cal SetSyn("d")<CR>
an 50.30.110 &Syntax.DE.Datascript :cal SetSyn("datascript")<CR>
an 50.30.120 &Syntax.DE.Debian.Debian\ ChangeLog :cal SetSyn("debchangelog")<CR>
an 50.30.130 &Syntax.DE.Debian.Debian\ Control :cal SetSyn("debcontrol")<CR>
an 50.30.140 &Syntax.DE.Debian.Debian\ Sources\.list :cal SetSyn("debsources")<CR>
an 50.30.150 &Syntax.DE.Denyhosts :cal SetSyn("denyhosts")<CR>
an 50.30.160 &Syntax.DE.Desktop :cal SetSyn("desktop")<CR>
an 50.30.170 &Syntax.DE.Dict\ config :cal SetSyn("dictconf")<CR>
an 50.30.180 &Syntax.DE.Dictd\ config :cal SetSyn("dictdconf")<CR>
an 50.30.190 &Syntax.DE.Diff :cal SetSyn("diff")<CR>
an 50.30.200 &Syntax.DE.Digital\ Command\ Lang :cal SetSyn("dcl")<CR>
an 50.30.210 &Syntax.DE.Dircolors :cal SetSyn("dircolors")<CR>
an 50.30.220 &Syntax.DE.Django\ template :cal SetSyn("django")<CR>
an 50.30.230 &Syntax.DE.DNS/BIND\ zone :cal SetSyn("bindzone")<CR>
an 50.30.240 &Syntax.DE.DocBook.auto-detect :cal SetSyn("docbk")<CR>
an 50.30.250 &Syntax.DE.DocBook.SGML :cal SetSyn("docbksgml")<CR>
an 50.30.260 &Syntax.DE.DocBook.XML :cal SetSyn("docbkxml")<CR>
an 50.30.270 &Syntax.DE.Dot :cal SetSyn("dot")<CR>
an 50.30.280 &Syntax.DE.Doxygen.C\ with\ doxygen :cal SetSyn("c.doxygen")<CR>
an 50.30.290 &Syntax.DE.Doxygen.C++\ with\ doxygen :cal SetSyn("cpp.doxygen")<CR>
an 50.30.300 &Syntax.DE.Doxygen.IDL\ with\ doxygen :cal SetSyn("idl.doxygen")<CR>
an 50.30.310 &Syntax.DE.Doxygen.Java\ with\ doxygen :cal SetSyn("java.doxygen")<CR>
an 50.30.320 &Syntax.DE.Dracula :cal SetSyn("dracula")<CR>
an 50.30.330 &Syntax.DE.DSSSL :cal SetSyn("dsl")<CR>
an 50.30.340 &Syntax.DE.DTD :cal SetSyn("dtd")<CR>
an 50.30.350 &Syntax.DE.DTML\ (Zope) :cal SetSyn("dtml")<CR>
an 50.30.360 &Syntax.DE.DTrace :cal SetSyn("dtrace")<CR>
an 50.30.370 &Syntax.DE.Dylan.Dylan :cal SetSyn("dylan")<CR>
an 50.30.380 &Syntax.DE.Dylan.Dylan\ interface :cal SetSyn("dylanintr")<CR>
an 50.30.390 &Syntax.DE.Dylan.Dylan\ lid :cal SetSyn("dylanlid")<CR>
an 50.30.410 &Syntax.DE.EDIF :cal SetSyn("edif")<CR>
an 50.30.420 &Syntax.DE.Eiffel :cal SetSyn("eiffel")<CR>
an 50.30.430 &Syntax.DE.Elinks\ config :cal SetSyn("elinks")<CR>
an 50.30.440 &Syntax.DE.Elm\ filter\ rules :cal SetSyn("elmfilt")<CR>
an 50.30.450 &Syntax.DE.Embedix\ Component\ Description :cal SetSyn("ecd")<CR>
an 50.30.460 &Syntax.DE.ERicsson\ LANGuage :cal SetSyn("erlang")<CR>
an 50.30.470 &Syntax.DE.ESMTP\ rc :cal SetSyn("esmtprc")<CR>
an 50.30.480 &Syntax.DE.ESQL-C :cal SetSyn("esqlc")<CR>
an 50.30.490 &Syntax.DE.Essbase\ script :cal SetSyn("csc")<CR>
an 50.30.500 &Syntax.DE.Esterel :cal SetSyn("esterel")<CR>
an 50.30.510 &Syntax.DE.Eterm\ config :cal SetSyn("eterm")<CR>
an 50.30.520 &Syntax.DE.Eviews :cal SetSyn("eviews")<CR>
an 50.30.530 &Syntax.DE.Exim\ conf :cal SetSyn("exim")<CR>
an 50.30.540 &Syntax.DE.Expect :cal SetSyn("expect")<CR>
an 50.30.550 &Syntax.DE.Exports :cal SetSyn("exports")<CR>
an 50.40.100 &Syntax.FG.Fantom :cal SetSyn("fan")<CR>
an 50.40.110 &Syntax.FG.Fetchmail :cal SetSyn("fetchmail")<CR>
an 50.40.120 &Syntax.FG.FlexWiki :cal SetSyn("flexwiki")<CR>
an 50.40.130 &Syntax.FG.Focus\ Executable :cal SetSyn("focexec")<CR>
an 50.40.140 &Syntax.FG.Focus\ Master :cal SetSyn("master")<CR>
an 50.40.150 &Syntax.FG.FORM :cal SetSyn("form")<CR>
an 50.40.160 &Syntax.FG.Forth :cal SetSyn("forth")<CR>
an 50.40.170 &Syntax.FG.Fortran :cal SetSyn("fortran")<CR>
an 50.40.180 &Syntax.FG.FoxPro :cal SetSyn("foxpro")<CR>
an 50.40.190 &Syntax.FG.FrameScript :cal SetSyn("framescript")<CR>
an 50.40.200 &Syntax.FG.Fstab :cal SetSyn("fstab")<CR>
an 50.40.210 &Syntax.FG.Fvwm.Fvwm\ configuration :cal SetSyn("fvwm1")<CR>
an 50.40.220 &Syntax.FG.Fvwm.Fvwm2\ configuration :cal SetSyn("fvwm2")<CR>
an 50.40.230 &Syntax.FG.Fvwm.Fvwm2\ configuration\ with\ M4 :cal SetSyn("fvwm2m4")<CR>
an 50.40.250 &Syntax.FG.GDB\ command\ file :cal SetSyn("gdb")<CR>
an 50.40.260 &Syntax.FG.GDMO :cal SetSyn("gdmo")<CR>
an 50.40.270 &Syntax.FG.Gedcom :cal SetSyn("gedcom")<CR>
an 50.40.280 &Syntax.FG.Git.Output :cal SetSyn("git")<CR>
an 50.40.290 &Syntax.FG.Git.Commit :cal SetSyn("gitcommit")<CR>
an 50.40.300 &Syntax.FG.Git.Config :cal SetSyn("gitconfig")<CR>
an 50.40.310 &Syntax.FG.Git.Rebase :cal SetSyn("gitrebase")<CR>
an 50.40.320 &Syntax.FG.Git.Send\ Email :cal SetSyn("gitsendemail")<CR>
an 50.40.330 &Syntax.FG.Gkrellmrc :cal SetSyn("gkrellmrc")<CR>
an 50.40.340 &Syntax.FG.GP :cal SetSyn("gp")<CR>
an 50.40.350 &Syntax.FG.GPG :cal SetSyn("gpg")<CR>
an 50.40.360 &Syntax.FG.Group\ file :cal SetSyn("group")<CR>
an 50.40.370 &Syntax.FG.Grub :cal SetSyn("grub")<CR>
an 50.40.380 &Syntax.FG.GNU\ Server\ Pages :cal SetSyn("gsp")<CR>
an 50.40.390 &Syntax.FG.GNUplot :cal SetSyn("gnuplot")<CR>
an 50.40.400 &Syntax.FG.GrADS\ scripts :cal SetSyn("grads")<CR>
an 50.40.410 &Syntax.FG.Gretl :cal SetSyn("gretl")<CR>
an 50.40.420 &Syntax.FG.Groff :cal SetSyn("groff")<CR>
an 50.40.430 &Syntax.FG.Groovy :cal SetSyn("groovy")<CR>
an 50.40.440 &Syntax.FG.GTKrc :cal SetSyn("gtkrc")<CR>
an 50.50.100 &Syntax.HIJK.Haml :cal SetSyn("haml")<CR>
an 50.50.110 &Syntax.HIJK.Hamster :cal SetSyn("hamster")<CR>
an 50.50.120 &Syntax.HIJK.Haskell.Haskell :cal SetSyn("haskell")<CR>
an 50.50.130 &Syntax.HIJK.Haskell.Haskell-c2hs :cal SetSyn("chaskell")<CR>
an 50.50.140 &Syntax.HIJK.Haskell.Haskell-literate :cal SetSyn("lhaskell")<CR>
an 50.50.150 &Syntax.HIJK.HASTE :cal SetSyn("haste")<CR>
an 50.50.160 &Syntax.HIJK.HASTE\ preproc :cal SetSyn("hastepreproc")<CR>
an 50.50.170 &Syntax.HIJK.Hercules :cal SetSyn("hercules")<CR>
an 50.50.180 &Syntax.HIJK.Hex\ dump.XXD :cal SetSyn("xxd")<CR>
an 50.50.190 &Syntax.HIJK.Hex\ dump.Intel\ MCS51 :cal SetSyn("hex")<CR>
an 50.50.200 &Syntax.HIJK.HTML.HTML :cal SetSyn("html")<CR>
an 50.50.210 &Syntax.HIJK.HTML.HTML\ with\ M4 :cal SetSyn("htmlm4")<CR>
an 50.50.220 &Syntax.HIJK.HTML.HTML\ with\ Ruby\ (eRuby) :cal SetSyn("eruby")<CR>
an 50.50.230 &Syntax.HIJK.HTML.Cheetah\ HTML\ template :cal SetSyn("htmlcheetah")<CR>
an 50.50.240 &Syntax.HIJK.HTML.Django\ HTML\ template :cal SetSyn("htmldjango")<CR>
an 50.50.250 &Syntax.HIJK.HTML.HTML/OS :cal SetSyn("htmlos")<CR>
an 50.50.260 &Syntax.HIJK.HTML.XHTML :cal SetSyn("xhtml")<CR>
an 50.50.270 &Syntax.HIJK.Host\.conf :cal SetSyn("hostconf")<CR>
an 50.50.280 &Syntax.HIJK.Hyper\ Builder :cal SetSyn("hb")<CR>
an 50.50.300 &Syntax.HIJK.Icewm\ menu :cal SetSyn("icemenu")<CR>
an 50.50.310 &Syntax.HIJK.Icon :cal SetSyn("icon")<CR>
an 50.50.320 &Syntax.HIJK.IDL\Generic\ IDL :cal SetSyn("idl")<CR>
an 50.50.330 &Syntax.HIJK.IDL\Microsoft\ IDL :cal SetSyn("msidl")<CR>
an 50.50.340 &Syntax.HIJK.Indent\ profile :cal SetSyn("indent")<CR>
an 50.50.350 &Syntax.HIJK.Inform :cal SetSyn("inform")<CR>
an 50.50.360 &Syntax.HIJK.Informix\ 4GL :cal SetSyn("fgl")<CR>
an 50.50.370 &Syntax.HIJK.Initng :cal SetSyn("initng")<CR>
an 50.50.380 &Syntax.HIJK.Inittab :cal SetSyn("inittab")<CR>
an 50.50.390 &Syntax.HIJK.Inno\ setup :cal SetSyn("iss")<CR>
an 50.50.400 &Syntax.HIJK.InstallShield\ script :cal SetSyn("ishd")<CR>
an 50.50.410 &Syntax.HIJK.Interactive\ Data\ Lang :cal SetSyn("idlang")<CR>
an 50.50.420 &Syntax.HIJK.IPfilter :cal SetSyn("ipfilter")<CR>
an 50.50.440 &Syntax.HIJK.JAL :cal SetSyn("jal")<CR>
an 50.50.450 &Syntax.HIJK.JAM :cal SetSyn("jam")<CR>
an 50.50.460 &Syntax.HIJK.Jargon :cal SetSyn("jargon")<CR>
an 50.50.470 &Syntax.HIJK.Java.Java :cal SetSyn("java")<CR>
an 50.50.480 &Syntax.HIJK.Java.JavaCC :cal SetSyn("javacc")<CR>
an 50.50.490 &Syntax.HIJK.Java.Java\ Server\ Pages :cal SetSyn("jsp")<CR>
an 50.50.500 &Syntax.HIJK.Java.Java\ Properties :cal SetSyn("jproperties")<CR>
an 50.50.510 &Syntax.HIJK.JavaScript :cal SetSyn("javascript")<CR>
an 50.50.520 &Syntax.HIJK.Jess :cal SetSyn("jess")<CR>
an 50.50.530 &Syntax.HIJK.Jgraph :cal SetSyn("jgraph")<CR>
an 50.50.550 &Syntax.HIJK.Kconfig :cal SetSyn("kconfig")<CR>
an 50.50.560 &Syntax.HIJK.KDE\ script :cal SetSyn("kscript")<CR>
an 50.50.570 &Syntax.HIJK.Kimwitu++ :cal SetSyn("kwt")<CR>
an 50.50.580 &Syntax.HIJK.KixTart :cal SetSyn("kix")<CR>
an 50.60.100 &Syntax.L.Lace :cal SetSyn("lace")<CR>
an 50.60.110 &Syntax.L.LamdaProlog :cal SetSyn("lprolog")<CR>
an 50.60.120 &Syntax.L.Latte :cal SetSyn("latte")<CR>
an 50.60.130 &Syntax.L.Ld\ script :cal SetSyn("ld")<CR>
an 50.60.140 &Syntax.L.LDAP.LDIF :cal SetSyn("ldif")<CR>
an 50.60.150 &Syntax.L.LDAP.Configuration :cal SetSyn("ldapconf")<CR>
an 50.60.160 &Syntax.L.Lex :cal SetSyn("lex")<CR>
an 50.60.170 &Syntax.L.LFTP\ config :cal SetSyn("lftp")<CR>
an 50.60.180 &Syntax.L.Libao :cal SetSyn("libao")<CR>
an 50.60.190 &Syntax.L.LifeLines\ script :cal SetSyn("lifelines")<CR>
an 50.60.200 &Syntax.L.Lilo :cal SetSyn("lilo")<CR>
an 50.60.210 &Syntax.L.Limits\ config :cal SetSyn("limits")<CR>
an 50.60.220 &Syntax.L.Linden\ scripting :cal SetSyn("lsl")<CR>
an 50.60.230 &Syntax.L.Liquid :cal SetSyn("liquid")<CR>
an 50.60.240 &Syntax.L.Lisp :cal SetSyn("lisp")<CR>
an 50.60.250 &Syntax.L.Lite :cal SetSyn("lite")<CR>
an 50.60.260 &Syntax.L.LiteStep\ RC :cal SetSyn("litestep")<CR>
an 50.60.270 &Syntax.L.Locale\ Input :cal SetSyn("fdcc")<CR>
an 50.60.280 &Syntax.L.Login\.access :cal SetSyn("loginaccess")<CR>
an 50.60.290 &Syntax.L.Login\.defs :cal SetSyn("logindefs")<CR>
an 50.60.300 &Syntax.L.Logtalk :cal SetSyn("logtalk")<CR>
an 50.60.310 &Syntax.L.LOTOS :cal SetSyn("lotos")<CR>
an 50.60.320 &Syntax.L.LotusScript :cal SetSyn("lscript")<CR>
an 50.60.330 &Syntax.L.Lout :cal SetSyn("lout")<CR>
an 50.60.340 &Syntax.L.LPC :cal SetSyn("lpc")<CR>
an 50.60.350 &Syntax.L.Lua :cal SetSyn("lua")<CR>
an 50.60.360 &Syntax.L.Lynx\ Style :cal SetSyn("lss")<CR>
an 50.60.370 &Syntax.L.Lynx\ config :cal SetSyn("lynx")<CR>
an 50.70.100 &Syntax.M.M4 :cal SetSyn("m4")<CR>
an 50.70.110 &Syntax.M.MaGic\ Point :cal SetSyn("mgp")<CR>
an 50.70.120 &Syntax.M.Mail :cal SetSyn("mail")<CR>
an 50.70.130 &Syntax.M.Mail\ aliases :cal SetSyn("mailaliases")<CR>
an 50.70.140 &Syntax.M.Mailcap :cal SetSyn("mailcap")<CR>
an 50.70.150 &Syntax.M.Makefile :cal SetSyn("make")<CR>
an 50.70.160 &Syntax.M.MakeIndex :cal SetSyn("ist")<CR>
an 50.70.170 &Syntax.M.Man\ page :cal SetSyn("man")<CR>
an 50.70.180 &Syntax.M.Man\.conf :cal SetSyn("manconf")<CR>
an 50.70.190 &Syntax.M.Maple\ V :cal SetSyn("maple")<CR>
an 50.70.200 &Syntax.M.Markdown :cal SetSyn("markdown")<CR>
an 50.70.210 &Syntax.M.Mason :cal SetSyn("mason")<CR>
an 50.70.220 &Syntax.M.Mathematica :cal SetSyn("mma")<CR>
an 50.70.230 &Syntax.M.Matlab :cal SetSyn("matlab")<CR>
an 50.70.240 &Syntax.M.Maxima :cal SetSyn("maxima")<CR>
an 50.70.250 &Syntax.M.MEL\ (for\ Maya) :cal SetSyn("mel")<CR>
an 50.70.260 &Syntax.M.Messages\ (/var/log) :cal SetSyn("messages")<CR>
an 50.70.270 &Syntax.M.Metafont :cal SetSyn("mf")<CR>
an 50.70.280 &Syntax.M.MetaPost :cal SetSyn("mp")<CR>
an 50.70.290 &Syntax.M.MGL :cal SetSyn("mgl")<CR>
an 50.70.300 &Syntax.M.MMIX :cal SetSyn("mmix")<CR>
an 50.70.310 &Syntax.M.Modconf :cal SetSyn("modconf")<CR>
an 50.70.320 &Syntax.M.Model :cal SetSyn("model")<CR>
an 50.70.330 &Syntax.M.Modsim\ III :cal SetSyn("modsim3")<CR>
an 50.70.340 &Syntax.M.Modula\ 2 :cal SetSyn("modula2")<CR>
an 50.70.350 &Syntax.M.Modula\ 3 :cal SetSyn("modula3")<CR>
an 50.70.360 &Syntax.M.Monk :cal SetSyn("monk")<CR>
an 50.70.370 &Syntax.M.Mplayer\ config :cal SetSyn("mplayerconf")<CR>
an 50.70.380 &Syntax.M.MOO :cal SetSyn("moo")<CR>
an 50.70.390 &Syntax.M.Mrxvtrc :cal SetSyn("mrxvtrc")<CR>
an 50.70.400 &Syntax.M.MS-DOS/Windows.4DOS\ \.bat\ file :cal SetSyn("btm")<CR>
an 50.70.410 &Syntax.M.MS-DOS/Windows.\.bat\/\.cmd\ file :cal SetSyn("dosbatch")<CR>
an 50.70.420 &Syntax.M.MS-DOS/Windows.\.ini\ file :cal SetSyn("dosini")<CR>
an 50.70.430 &Syntax.M.MS-DOS/Windows.Message\ text :cal SetSyn("msmessages")<CR>
an 50.70.440 &Syntax.M.MS-DOS/Windows.Module\ Definition :cal SetSyn("def")<CR>
an 50.70.450 &Syntax.M.MS-DOS/Windows.Registry :cal SetSyn("registry")<CR>
an 50.70.460 &Syntax.M.MS-DOS/Windows.Resource\ file :cal SetSyn("rc")<CR>
an 50.70.470 &Syntax.M.Msql :cal SetSyn("msql")<CR>
an 50.70.480 &Syntax.M.MuPAD :cal SetSyn("mupad")<CR>
an 50.70.490 &Syntax.M.MUSHcode :cal SetSyn("mush")<CR>
an 50.70.500 &Syntax.M.Muttrc :cal SetSyn("muttrc")<CR>
an 50.80.100 &Syntax.NO.Nanorc :cal SetSyn("nanorc")<CR>
an 50.80.110 &Syntax.NO.Nastran\ input/DMAP :cal SetSyn("nastran")<CR>
an 50.80.120 &Syntax.NO.Natural :cal SetSyn("natural")<CR>
an 50.80.130 &Syntax.NO.Netrc :cal SetSyn("netrc")<CR>
an 50.80.140 &Syntax.NO.Novell\ NCF\ batch :cal SetSyn("ncf")<CR>
an 50.80.150 &Syntax.NO.Not\ Quite\ C\ (LEGO) :cal SetSyn("nqc")<CR>
an 50.80.160 &Syntax.NO.Nroff :cal SetSyn("nroff")<CR>
an 50.80.170 &Syntax.NO.NSIS\ script :cal SetSyn("nsis")<CR>
an 50.80.190 &Syntax.NO.Obj\ 3D\ wavefront :cal SetSyn("obj")<CR>
an 50.80.200 &Syntax.NO.Objective\ C :cal SetSyn("objc")<CR>
an 50.80.210 &Syntax.NO.Objective\ C++ :cal SetSyn("objcpp")<CR>
an 50.80.220 &Syntax.NO.OCAML :cal SetSyn("ocaml")<CR>
an 50.80.230 &Syntax.NO.Occam :cal SetSyn("occam")<CR>
an 50.80.240 &Syntax.NO.Omnimark :cal SetSyn("omnimark")<CR>
an 50.80.250 &Syntax.NO.OpenROAD :cal SetSyn("openroad")<CR>
an 50.80.260 &Syntax.NO.Open\ Psion\ Lang :cal SetSyn("opl")<CR>
an 50.80.270 &Syntax.NO.Oracle\ config :cal SetSyn("ora")<CR>
an 50.90.100 &Syntax.PQ.Packet\ filter\ conf :cal SetSyn("pf")<CR>
an 50.90.110 &Syntax.PQ.Palm\ resource\ compiler :cal SetSyn("pilrc")<CR>
an 50.90.120 &Syntax.PQ.Pam\ config :cal SetSyn("pamconf")<CR>
an 50.90.130 &Syntax.PQ.PApp :cal SetSyn("papp")<CR>
an 50.90.140 &Syntax.PQ.Pascal :cal SetSyn("pascal")<CR>
an 50.90.150 &Syntax.PQ.Password\ file :cal SetSyn("passwd")<CR>
an 50.90.160 &Syntax.PQ.PCCTS :cal SetSyn("pccts")<CR>
an 50.90.170 &Syntax.PQ.PDF :cal SetSyn("pdf")<CR>
an 50.90.180 &Syntax.PQ.Perl.Perl :cal SetSyn("perl")<CR>
an 50.90.190 &Syntax.PQ.Perl.Perl\ 6 :cal SetSyn("perl6")<CR>
an 50.90.200 &Syntax.PQ.Perl.Perl\ POD :cal SetSyn("pod")<CR>
an 50.90.210 &Syntax.PQ.Perl.Perl\ XS :cal SetSyn("xs")<CR>
an 50.90.220 &Syntax.PQ.PHP.PHP\ 3-4 :cal SetSyn("php")<CR>
an 50.90.230 &Syntax.PQ.PHP.Phtml\ (PHP\ 2) :cal SetSyn("phtml")<CR>
an 50.90.240 &Syntax.PQ.Pike :cal SetSyn("pike")<CR>
an 50.90.250 &Syntax.PQ.Pine\ RC :cal SetSyn("pine")<CR>
an 50.90.260 &Syntax.PQ.Pinfo\ RC :cal SetSyn("pinfo")<CR>
an 50.90.270 &Syntax.PQ.PL/M :cal SetSyn("plm")<CR>
an 50.90.280 &Syntax.PQ.PL/SQL :cal SetSyn("plsql")<CR>
an 50.90.290 &Syntax.PQ.PLP :cal SetSyn("plp")<CR>
an 50.90.300 &Syntax.PQ.PO\ (GNU\ gettext) :cal SetSyn("po")<CR>
an 50.90.310 &Syntax.PQ.Postfix\ main\ config :cal SetSyn("pfmain")<CR>
an 50.90.320 &Syntax.PQ.PostScript.PostScript :cal SetSyn("postscr")<CR>
an 50.90.330 &Syntax.PQ.PostScript.PostScript\ Printer\ Description :cal SetSyn("ppd")<CR>
an 50.90.340 &Syntax.PQ.Povray.Povray\ scene\ descr :cal SetSyn("pov")<CR>
an 50.90.350 &Syntax.PQ.Povray.Povray\ configuration :cal SetSyn("povini")<CR>
an 50.90.360 &Syntax.PQ.PPWizard :cal SetSyn("ppwiz")<CR>
an 50.90.370 &Syntax.PQ.Prescribe\ (Kyocera) :cal SetSyn("prescribe")<CR>
an 50.90.380 &Syntax.PQ.Printcap :cal SetSyn("pcap")<CR>
an 50.90.390 &Syntax.PQ.Privoxy :cal SetSyn("privoxy")<CR>
an 50.90.400 &Syntax.PQ.Procmail :cal SetSyn("procmail")<CR>
an 50.90.410 &Syntax.PQ.Product\ Spec\ File :cal SetSyn("psf")<CR>
an 50.90.420 &Syntax.PQ.Progress :cal SetSyn("progress")<CR>
an 50.90.430 &Syntax.PQ.Prolog :cal SetSyn("prolog")<CR>
an 50.90.440 &Syntax.PQ.ProMeLa :cal SetSyn("promela")<CR>
an 50.90.450 &Syntax.PQ.Protocols :cal SetSyn("protocols")<CR>
an 50.90.460 &Syntax.PQ.Purify\ log :cal SetSyn("purifylog")<CR>
an 50.90.470 &Syntax.PQ.Pyrex :cal SetSyn("pyrex")<CR>
an 50.90.480 &Syntax.PQ.Python :cal SetSyn("python")<CR>
an 50.90.500 &Syntax.PQ.Quake :cal SetSyn("quake")<CR>
an 50.90.510 &Syntax.PQ.Quickfix\ window :cal SetSyn("qf")<CR>
an 50.100.100 &Syntax.R.R.R :cal SetSyn("r")<CR>
an 50.100.110 &Syntax.R.R.R\ help :cal SetSyn("rhelp")<CR>
an 50.100.120 &Syntax.R.R.R\ noweb :cal SetSyn("rnoweb")<CR>
an 50.100.130 &Syntax.R.Racc\ input :cal SetSyn("racc")<CR>
an 50.100.140 &Syntax.R.Radiance :cal SetSyn("radiance")<CR>
an 50.100.150 &Syntax.R.Ratpoison :cal SetSyn("ratpoison")<CR>
an 50.100.160 &Syntax.R.RCS.RCS\ log\ output :cal SetSyn("rcslog")<CR>
an 50.100.170 &Syntax.R.RCS.RCS\ file :cal SetSyn("rcs")<CR>
an 50.100.180 &Syntax.R.Readline\ config :cal SetSyn("readline")<CR>
an 50.100.190 &Syntax.R.Rebol :cal SetSyn("rebol")<CR>
an 50.100.200 &Syntax.R.Remind :cal SetSyn("remind")<CR>
an 50.100.210 &Syntax.R.Relax\ NG\ compact :cal SetSyn("rnc")<CR>
an 50.100.220 &Syntax.R.Renderman.Renderman\ Shader\ Lang :cal SetSyn("sl")<CR>
an 50.100.230 &Syntax.R.Renderman.Renderman\ Interface\ Bytestream :cal SetSyn("rib")<CR>
an 50.100.240 &Syntax.R.Resolv\.conf :cal SetSyn("resolv")<CR>
an 50.100.250 &Syntax.R.Reva\ Forth :cal SetSyn("reva")<CR>
an 50.100.260 &Syntax.R.Rexx :cal SetSyn("rexx")<CR>
an 50.100.270 &Syntax.R.Robots\.txt :cal SetSyn("robots")<CR>
an 50.100.280 &Syntax.R.RockLinux\ package\ desc\. :cal SetSyn("desc")<CR>
an 50.100.290 &Syntax.R.Rpcgen :cal SetSyn("rpcgen")<CR>
an 50.100.300 &Syntax.R.RPL/2 :cal SetSyn("rpl")<CR>
an 50.100.310 &Syntax.R.ReStructuredText :cal SetSyn("rst")<CR>
an 50.100.320 &Syntax.R.RTF :cal SetSyn("rtf")<CR>
an 50.100.330 &Syntax.R.Ruby :cal SetSyn("ruby")<CR>
an 50.110.100 &Syntax.S-Sm.S-Lang :cal SetSyn("slang")<CR>
an 50.110.110 &Syntax.S-Sm.Samba\ config :cal SetSyn("samba")<CR>
an 50.110.120 &Syntax.S-Sm.SAS :cal SetSyn("sas")<CR>
an 50.110.130 &Syntax.S-Sm.Sass :cal SetSyn("sass")<CR>
an 50.110.140 &Syntax.S-Sm.Sather :cal SetSyn("sather")<CR>
an 50.110.150 &Syntax.S-Sm.Scheme :cal SetSyn("scheme")<CR>
an 50.110.160 &Syntax.S-Sm.Scilab :cal SetSyn("scilab")<CR>
an 50.110.170 &Syntax.S-Sm.Screen\ RC :cal SetSyn("screen")<CR>
an 50.110.180 &Syntax.S-Sm.SCSS :cal SetSyn("scss")<CR>
an 50.110.190 &Syntax.S-Sm.SDC\ Synopsys\ Design\ Constraints :cal SetSyn("sdc")<CR>
an 50.110.200 &Syntax.S-Sm.SDL :cal SetSyn("sdl")<CR>
an 50.110.210 &Syntax.S-Sm.Sed :cal SetSyn("sed")<CR>
an 50.110.220 &Syntax.S-Sm.Sendmail\.cf :cal SetSyn("sm")<CR>
an 50.110.230 &Syntax.S-Sm.Send-pr :cal SetSyn("sendpr")<CR>
an 50.110.240 &Syntax.S-Sm.Sensors\.conf :cal SetSyn("sensors")<CR>
an 50.110.250 &Syntax.S-Sm.Service\ Location\ config :cal SetSyn("slpconf")<CR>
an 50.110.260 &Syntax.S-Sm.Service\ Location\ registration :cal SetSyn("slpreg")<CR>
an 50.110.270 &Syntax.S-Sm.Service\ Location\ SPI :cal SetSyn("slpspi")<CR>
an 50.110.280 &Syntax.S-Sm.Services :cal SetSyn("services")<CR>
an 50.110.290 &Syntax.S-Sm.Setserial\ config :cal SetSyn("setserial")<CR>
an 50.110.300 &Syntax.S-Sm.SGML.SGML\ catalog :cal SetSyn("catalog")<CR>
an 50.110.310 &Syntax.S-Sm.SGML.SGML\ DTD :cal SetSyn("sgml")<CR>
an 50.110.320 &Syntax.S-Sm.SGML.SGML\ Declaration :cal SetSyn("sgmldecl")<CR>
an 50.110.330 &Syntax.S-Sm.SGML.SGML-linuxdoc :cal SetSyn("sgmllnx")<CR>
an 50.110.340 &Syntax.S-Sm.Shell\ script.sh\ and\ ksh :cal SetSyn("sh")<CR>
an 50.110.350 &Syntax.S-Sm.Shell\ script.csh :cal SetSyn("csh")<CR>
an 50.110.360 &Syntax.S-Sm.Shell\ script.tcsh :cal SetSyn("tcsh")<CR>
an 50.110.370 &Syntax.S-Sm.Shell\ script.zsh :cal SetSyn("zsh")<CR>
an 50.110.380 &Syntax.S-Sm.SiCAD :cal SetSyn("sicad")<CR>
an 50.110.390 &Syntax.S-Sm.Sieve :cal SetSyn("sieve")<CR>
an 50.110.400 &Syntax.S-Sm.Simula :cal SetSyn("simula")<CR>
an 50.110.410 &Syntax.S-Sm.Sinda.Sinda\ compare :cal SetSyn("sindacmp")<CR>
an 50.110.420 &Syntax.S-Sm.Sinda.Sinda\ input :cal SetSyn("sinda")<CR>
an 50.110.430 &Syntax.S-Sm.Sinda.Sinda\ output :cal SetSyn("sindaout")<CR>
an 50.110.440 &Syntax.S-Sm.SiSU :cal SetSyn("sisu")<CR>
an 50.110.450 &Syntax.S-Sm.SKILL.SKILL :cal SetSyn("skill")<CR>
an 50.110.460 &Syntax.S-Sm.SKILL.SKILL\ for\ Diva :cal SetSyn("diva")<CR>
an 50.110.470 &Syntax.S-Sm.Slice :cal SetSyn("slice")<CR>
an 50.110.480 &Syntax.S-Sm.SLRN.Slrn\ rc :cal SetSyn("slrnrc")<CR>
an 50.110.490 &Syntax.S-Sm.SLRN.Slrn\ score :cal SetSyn("slrnsc")<CR>
an 50.110.500 &Syntax.S-Sm.SmallTalk :cal SetSyn("st")<CR>
an 50.110.510 &Syntax.S-Sm.Smarty\ Templates :cal SetSyn("smarty")<CR>
an 50.110.520 &Syntax.S-Sm.SMIL :cal SetSyn("smil")<CR>
an 50.110.530 &Syntax.S-Sm.SMITH :cal SetSyn("smith")<CR>
an 50.120.100 &Syntax.Sn-Sy.SNMP\ MIB :cal SetSyn("mib")<CR>
an 50.120.110 &Syntax.Sn-Sy.SNNS.SNNS\ network :cal SetSyn("snnsnet")<CR>
an 50.120.120 &Syntax.Sn-Sy.SNNS.SNNS\ pattern :cal SetSyn("snnspat")<CR>
an 50.120.130 &Syntax.Sn-Sy.SNNS.SNNS\ result :cal SetSyn("snnsres")<CR>
an 50.120.140 &Syntax.Sn-Sy.Snobol4 :cal SetSyn("snobol4")<CR>
an 50.120.150 &Syntax.Sn-Sy.Snort\ Configuration :cal SetSyn("hog")<CR>
an 50.120.160 &Syntax.Sn-Sy.SPEC\ (Linux\ RPM) :cal SetSyn("spec")<CR>
an 50.120.170 &Syntax.Sn-Sy.Specman :cal SetSyn("specman")<CR>
an 50.120.180 &Syntax.Sn-Sy.Spice :cal SetSyn("spice")<CR>
an 50.120.190 &Syntax.Sn-Sy.Spyce :cal SetSyn("spyce")<CR>
an 50.120.200 &Syntax.Sn-Sy.Speedup :cal SetSyn("spup")<CR>
an 50.120.210 &Syntax.Sn-Sy.Splint :cal SetSyn("splint")<CR>
an 50.120.220 &Syntax.Sn-Sy.Squid\ config :cal SetSyn("squid")<CR>
an 50.120.230 &Syntax.Sn-Sy.SQL.ESQL-C :cal SetSyn("esqlc")<CR>
an 50.120.240 &Syntax.Sn-Sy.SQL.MySQL :cal SetSyn("mysql")<CR>
an 50.120.250 &Syntax.Sn-Sy.SQL.PL/SQL :cal SetSyn("plsql")<CR>
an 50.120.260 &Syntax.Sn-Sy.SQL.SQL\ Anywhere :cal SetSyn("sqlanywhere")<CR>
an 50.120.270 &Syntax.Sn-Sy.SQL.SQL\ (automatic) :cal SetSyn("sql")<CR>
an 50.120.280 &Syntax.Sn-Sy.SQL.SQL\ (Oracle) :cal SetSyn("sqloracle")<CR>
an 50.120.290 &Syntax.Sn-Sy.SQL.SQL\ Forms :cal SetSyn("sqlforms")<CR>
an 50.120.300 &Syntax.Sn-Sy.SQL.SQLJ :cal SetSyn("sqlj")<CR>
an 50.120.310 &Syntax.Sn-Sy.SQL.SQL-Informix :cal SetSyn("sqlinformix")<CR>
an 50.120.320 &Syntax.Sn-Sy.SQR :cal SetSyn("sqr")<CR>
an 50.120.330 &Syntax.Sn-Sy.Ssh.ssh_config :cal SetSyn("sshconfig")<CR>
an 50.120.340 &Syntax.Sn-Sy.Ssh.sshd_config :cal SetSyn("sshdconfig")<CR>
an 50.120.350 &Syntax.Sn-Sy.Standard\ ML :cal SetSyn("sml")<CR>
an 50.120.360 &Syntax.Sn-Sy.Stata.SMCL :cal SetSyn("smcl")<CR>
an 50.120.370 &Syntax.Sn-Sy.Stata.Stata :cal SetSyn("stata")<CR>
an 50.120.380 &Syntax.Sn-Sy.Stored\ Procedures :cal SetSyn("stp")<CR>
an 50.120.390 &Syntax.Sn-Sy.Strace :cal SetSyn("strace")<CR>
an 50.120.400 &Syntax.Sn-Sy.Streaming\ descriptor\ file :cal SetSyn("sd")<CR>
an 50.120.410 &Syntax.Sn-Sy.Subversion\ commit :cal SetSyn("svn")<CR>
an 50.120.420 &Syntax.Sn-Sy.Sudoers :cal SetSyn("sudoers")<CR>
an 50.120.430 &Syntax.Sn-Sy.SVG :cal SetSyn("svg")<CR>
an 50.120.440 &Syntax.Sn-Sy.Symbian\ meta-makefile :cal SetSyn("mmp")<CR>
an 50.120.450 &Syntax.Sn-Sy.Sysctl\.conf :cal SetSyn("sysctl")<CR>
an 50.130.100 &Syntax.T.TADS :cal SetSyn("tads")<CR>
an 50.130.110 &Syntax.T.Tags :cal SetSyn("tags")<CR>
an 50.130.120 &Syntax.T.TAK.TAK\ compare :cal SetSyn("takcmp")<CR>
an 50.130.130 &Syntax.T.TAK.TAK\ input :cal SetSyn("tak")<CR>
an 50.130.140 &Syntax.T.TAK.TAK\ output :cal SetSyn("takout")<CR>
an 50.130.150 &Syntax.T.Task\ data :cal SetSyn("taskdata")<CR>
an 50.130.160 &Syntax.T.Task\ 42\ edit :cal SetSyn("taskedit")<CR>
an 50.130.170 &Syntax.T.Tcl/Tk :cal SetSyn("tcl")<CR>
an 50.130.180 &Syntax.T.TealInfo :cal SetSyn("tli")<CR>
an 50.130.190 &Syntax.T.Telix\ Salt :cal SetSyn("tsalt")<CR>
an 50.130.200 &Syntax.T.Termcap/Printcap :cal SetSyn("ptcap")<CR>
an 50.130.210 &Syntax.T.Terminfo :cal SetSyn("terminfo")<CR>
an 50.130.220 &Syntax.T.TeX.TeX/LaTeX :cal SetSyn("tex")<CR>
an 50.130.230 &Syntax.T.TeX.plain\ TeX :cal SetSyn("plaintex")<CR>
an 50.130.240 &Syntax.T.TeX.ConTeXt :cal SetSyn("context")<CR>
an 50.130.250 &Syntax.T.TeX.TeX\ configuration :cal SetSyn("texmf")<CR>
an 50.130.260 &Syntax.T.TeX.Texinfo :cal SetSyn("texinfo")<CR>
an 50.130.270 &Syntax.T.TF\ mud\ client :cal SetSyn("tf")<CR>
an 50.130.280 &Syntax.T.Tidy\ configuration :cal SetSyn("tidy")<CR>
an 50.130.290 &Syntax.T.Tilde :cal SetSyn("tilde")<CR>
an 50.130.300 &Syntax.T.TPP :cal SetSyn("tpp")<CR>
an 50.130.310 &Syntax.T.Trasys\ input :cal SetSyn("trasys")<CR>
an 50.130.320 &Syntax.T.Trustees :cal SetSyn("trustees")<CR>
an 50.130.330 &Syntax.T.TSS.Command\ Line :cal SetSyn("tsscl")<CR>
an 50.130.340 &Syntax.T.TSS.Geometry :cal SetSyn("tssgm")<CR>
an 50.130.350 &Syntax.T.TSS.Optics :cal SetSyn("tssop")<CR>
an 50.140.100 &Syntax.UV.Udev\ config :cal SetSyn("udevconf")<CR>
an 50.140.110 &Syntax.UV.Udev\ permissions :cal SetSyn("udevperm")<CR>
an 50.140.120 &Syntax.UV.Udev\ rules :cal SetSyn("udevrules")<CR>
an 50.140.130 &Syntax.UV.UIT/UIL :cal SetSyn("uil")<CR>
an 50.140.140 &Syntax.UV.UnrealScript :cal SetSyn("uc")<CR>
an 50.140.150 &Syntax.UV.Updatedb\.conf :cal SetSyn("updatedb")<CR>
an 50.140.170 &Syntax.UV.Valgrind :cal SetSyn("valgrind")<CR>
an 50.140.180 &Syntax.UV.Vera :cal SetSyn("vera")<CR>
an 50.140.190 &Syntax.UV.Verilog-AMS\ HDL :cal SetSyn("verilogams")<CR>
an 50.140.200 &Syntax.UV.Verilog\ HDL :cal SetSyn("verilog")<CR>
an 50.140.210 &Syntax.UV.Vgrindefs :cal SetSyn("vgrindefs")<CR>
an 50.140.220 &Syntax.UV.VHDL :cal SetSyn("vhdl")<CR>
an 50.140.230 &Syntax.UV.Vim.Vim\ help\ file :cal SetSyn("help")<CR>
an 50.140.240 &Syntax.UV.Vim.Vim\ script :cal SetSyn("vim")<CR>
an 50.140.250 &Syntax.UV.Vim.Viminfo\ file :cal SetSyn("viminfo")<CR>
an 50.140.260 &Syntax.UV.Virata\ config :cal SetSyn("virata")<CR>
an 50.140.270 &Syntax.UV.Visual\ Basic :cal SetSyn("vb")<CR>
an 50.140.280 &Syntax.UV.VOS\ CM\ macro :cal SetSyn("voscm")<CR>
an 50.140.290 &Syntax.UV.VRML :cal SetSyn("vrml")<CR>
an 50.140.300 &Syntax.UV.VSE\ JCL :cal SetSyn("vsejcl")<CR>
an 50.150.100 &Syntax.WXYZ.WEB.CWEB :cal SetSyn("cweb")<CR>
an 50.150.110 &Syntax.WXYZ.WEB.WEB :cal SetSyn("web")<CR>
an 50.150.120 &Syntax.WXYZ.WEB.WEB\ Changes :cal SetSyn("change")<CR>
an 50.150.130 &Syntax.WXYZ.Webmacro :cal SetSyn("webmacro")<CR>
an 50.150.140 &Syntax.WXYZ.Website\ MetaLanguage :cal SetSyn("wml")<CR>
an 50.150.160 &Syntax.WXYZ.wDiff :cal SetSyn("wdiff")<CR>
an 50.150.180 &Syntax.WXYZ.Wget\ config :cal SetSyn("wget")<CR>
an 50.150.190 &Syntax.WXYZ.Whitespace\ (add) :cal SetSyn("whitespace")<CR>
an 50.150.200 &Syntax.WXYZ.WildPackets\ EtherPeek\ Decoder :cal SetSyn("dcd")<CR>
an 50.150.210 &Syntax.WXYZ.WinBatch/Webbatch :cal SetSyn("winbatch")<CR>
an 50.150.220 &Syntax.WXYZ.Windows\ Scripting\ Host :cal SetSyn("wsh")<CR>
an 50.150.230 &Syntax.WXYZ.WSML :cal SetSyn("wsml")<CR>
an 50.150.240 &Syntax.WXYZ.WvDial :cal SetSyn("wvdial")<CR>
an 50.150.260 &Syntax.WXYZ.X\ Keyboard\ Extension :cal SetSyn("xkb")<CR>
an 50.150.270 &Syntax.WXYZ.X\ Pixmap :cal SetSyn("xpm")<CR>
an 50.150.280 &Syntax.WXYZ.X\ Pixmap\ (2) :cal SetSyn("xpm2")<CR>
an 50.150.290 &Syntax.WXYZ.X\ resources :cal SetSyn("xdefaults")<CR>
an 50.150.300 &Syntax.WXYZ.XBL :cal SetSyn("xbl")<CR>
an 50.150.310 &Syntax.WXYZ.Xinetd\.conf :cal SetSyn("xinetd")<CR>
an 50.150.320 &Syntax.WXYZ.Xmodmap :cal SetSyn("xmodmap")<CR>
an 50.150.330 &Syntax.WXYZ.Xmath :cal SetSyn("xmath")<CR>
an 50.150.340 &Syntax.WXYZ.XML :cal SetSyn("xml")<CR>
an 50.150.350 &Syntax.WXYZ.XML\ Schema\ (XSD) :cal SetSyn("xsd")<CR>
an 50.150.360 &Syntax.WXYZ.XQuery :cal SetSyn("xquery")<CR>
an 50.150.370 &Syntax.WXYZ.Xslt :cal SetSyn("xslt")<CR>
an 50.150.380 &Syntax.WXYZ.XFree86\ Config :cal SetSyn("xf86conf")<CR>
an 50.150.400 &Syntax.WXYZ.YAML :cal SetSyn("yaml")<CR>
an 50.150.410 &Syntax.WXYZ.Yacc :cal SetSyn("yacc")<CR>

" The End Of The Syntax Menu


an 50.195 &Syntax.-SEP1-			<Nop>

an <silent> 50.200 &Syntax.Set\ '&syntax'\ only :call <SID>Setsynonly()<CR>
fun! s:Setsynonly()
  let s:syntax_menu_synonly = 1
endfun
an <silent> 50.202 &Syntax.Set\ '&filetype'\ too :call <SID>Nosynonly()<CR>
fun! s:Nosynonly()
  if exists("s:syntax_menu_synonly")
    unlet s:syntax_menu_synonly
  endif
endfun

" Restore 'cpoptions'
let &cpo = s:cpo_save
unlet s:cpo_save
