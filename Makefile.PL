use strict;
BEGIN { $^W = 1 }
use ExtUtils::MakeMaker;
WriteMakefile(
  NAME => 'TravisCI::Helpers::InstallerTest',
  VERSION_FROM => 'lib/TravisCI/Helpers/InstallerTest.pm',
);
