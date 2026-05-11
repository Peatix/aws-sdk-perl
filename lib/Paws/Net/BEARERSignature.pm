package Paws::Net::BEARERSignature;
  # Stub role consumed by services whose model metadata declares
  # signatureVersion=bearer (e.g. CodeCatalyst). Bearer-token auth is
  # not implemented end-to-end; this role is sufficient to make the
  # service class load. Calls that actually need a bearer token will
  # have to provide an Authorization header out of band.
  use Moose::Role;

  sub sign {
  }
1;
