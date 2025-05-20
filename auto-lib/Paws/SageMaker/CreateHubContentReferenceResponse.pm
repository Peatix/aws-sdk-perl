
package Paws::SageMaker::CreateHubContentReferenceResponse;
  use Moose;
  has HubArn => (is => 'ro', isa => 'Str', required => 1);
  has HubContentArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateHubContentReferenceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> HubArn => Str

The ARN of the hub that the hub content reference was added to.


=head2 B<REQUIRED> HubContentArn => Str

The ARN of the hub content.


=head2 _request_id => Str


=cut

1;