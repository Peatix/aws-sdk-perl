
package Paws::SageMaker::ImportHubContentResponse;
  use Moose;
  has HubArn => (is => 'ro', isa => 'Str', required => 1);
  has HubContentArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ImportHubContentResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> HubArn => Str

The ARN of the hub that the content was imported into.


=head2 B<REQUIRED> HubContentArn => Str

The ARN of the hub content that was imported.


=head2 _request_id => Str


=cut

1;