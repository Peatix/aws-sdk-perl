
package Paws::ELBv2::GetTrustStoreRevocationContentOutput;
  use Moose;
  has Location => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::GetTrustStoreRevocationContentOutput

=head1 ATTRIBUTES


=head2 Location => Str

The revocation files Amazon S3 URI.


=head2 _request_id => Str


=cut

