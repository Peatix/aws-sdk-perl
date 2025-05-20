
package Paws::Datasync::StartDiscoveryJobResponse;
  use Moose;
  has DiscoveryJobArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::StartDiscoveryJobResponse

=head1 ATTRIBUTES


=head2 DiscoveryJobArn => Str

The ARN of the discovery job that you started.


=head2 _request_id => Str


=cut

1;