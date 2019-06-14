package TravisCI::Helpers::InstallerTest;
use strict;
BEGIN { $^W = 1 }
use vars qw($VERSION $BRANCH);
$VERSION = '0.001';
$BRANCH = 'master';
$BRANCH = 'another-branch';

sub import {
  my ($class, $want) = @_;
  if ($want && $want ne $BRANCH) {
    warn "This is $BRANCH, not $want!\n";
    exit 1;
  }
  exit 0
    if $0 eq '-';
}

1;
__END__
