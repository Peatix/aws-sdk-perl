package Paws::Credential::None;
  use Moose;
  with 'Paws::Credential';

  sub credentials { return undef; }

  no Moose;
1;
