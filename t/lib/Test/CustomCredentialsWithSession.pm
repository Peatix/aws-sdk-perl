package Test::CustomCredentialsWithSession;

# Variant of Test::CustomCredentials that also returns a session
# token. Used by t/s3/signature.t to assert that V4-signed requests
# pick up the `X-Amz-Security-Token` header.

  use Moose;
  use Paws::Credential;
  use Paws::Credential::Explicit;
  with 'Paws::Credential';

  sub refresh {
    return Paws::Credential::Explicit->new(
      access_key    => 'CustomAK',
      secret_key    => 'CustomSK',
      session_token => 'CustomST',
    );
  }
1;
