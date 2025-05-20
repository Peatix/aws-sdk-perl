
package Paws::SageMaker::UpdateHubContentResponse;
  use Moose;
  has HubArn => (is => 'ro', isa => 'Str', required => 1);
  has HubContentArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateHubContentResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> HubArn => Str

The ARN of the private model hub that contains the updated hub content.


=head2 B<REQUIRED> HubContentArn => Str

The ARN of the hub content resource that was updated.


=head2 _request_id => Str


=cut

1;