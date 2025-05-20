
package Paws::KMS::RotateKeyOnDemandResponse;
  use Moose;
  has KeyId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KMS::RotateKeyOnDemandResponse

=head1 ATTRIBUTES


=head2 KeyId => Str

Identifies the symmetric encryption KMS key that you initiated
on-demand rotation on.


=head2 _request_id => Str


=cut

1;