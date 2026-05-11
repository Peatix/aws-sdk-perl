# This file has been modified from the original upstream distribution
# by Peatix, Inc. See the git log for this file for details of changes.

package Test::CustomCredentials;
  use Moose;
  use Paws::Credential;
  use Paws::Credential::Explicit;
  with 'Paws::Credential';

  sub refresh {
    return Paws::Credential::Explicit->new(
      access_key => 'CustomAK',
      secret_key => 'CustomSK',
    );
  }
1;
