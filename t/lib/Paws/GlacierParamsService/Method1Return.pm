package Paws::GlacierParamsService::Method1Return;
  use Moo;
  use Types::Standard qw(Str);

  has VaultName => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
1;
