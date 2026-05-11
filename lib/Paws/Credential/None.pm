# This file has been modified from the original upstream distribution
# by Peatix, Inc. See the git log for this file for details of changes.

package Paws::Credential::None;
  use Moose;
  with 'Paws::Credential';

  sub refresh { return undef; }

  no Moose;
1;
