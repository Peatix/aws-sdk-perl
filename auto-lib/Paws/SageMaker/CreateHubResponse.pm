
package Paws::SageMaker::CreateHubResponse;
  use Moose;
  has HubArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateHubResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> HubArn => Str

The Amazon Resource Name (ARN) of the hub.


=head2 _request_id => Str


=cut

1;