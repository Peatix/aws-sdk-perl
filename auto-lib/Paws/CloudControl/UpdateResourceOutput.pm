
package Paws::CloudControl::UpdateResourceOutput;
  use Moose;
  has ProgressEvent => (is => 'ro', isa => 'Paws::CloudControl::ProgressEvent');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudControl::UpdateResourceOutput

=head1 ATTRIBUTES


=head2 ProgressEvent => L<Paws::CloudControl::ProgressEvent>

Represents the current status of the resource update request.

Use the C<RequestToken> of the C<ProgressEvent> with
GetResourceRequestStatus
(https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_GetResourceRequestStatus.html)
to return the current status of a resource operation request.


=head2 _request_id => Str


=cut

1;