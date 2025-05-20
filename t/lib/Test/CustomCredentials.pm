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
