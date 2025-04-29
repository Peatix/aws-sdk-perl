package Paws::Credential::None;
  use Moose;
  with 'Paws::Credential';

  sub refresh { return undef; }

  no Moose;
1;
