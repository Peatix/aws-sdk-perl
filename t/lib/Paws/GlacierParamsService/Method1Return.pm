package Paws::GlacierParamsService::Method1Return;
  use Moose;

  has VaultName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;
