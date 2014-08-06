package TravisCI::Helpers::InstallerTest;
use strict;
use warnings;
our $VERSION = '0.001';
our $BRANCH = 'master';

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
