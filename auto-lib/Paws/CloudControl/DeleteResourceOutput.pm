
package Paws::CloudControl::DeleteResourceOutput;
  use Moose;
  has ProgressEvent => (is => 'ro', isa => 'Paws::CloudControl::ProgressEvent');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudControl::DeleteResourceOutput

=head1 ATTRIBUTES


=head2 ProgressEvent => L<Paws::CloudControl::ProgressEvent>

Represents the current status of the resource deletion request.

After you have initiated a resource deletion request, you can monitor
the progress of your request by calling GetResourceRequestStatus
(https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_GetResourceRequestStatus.html)
using the C<RequestToken> of the C<ProgressEvent> returned by
C<DeleteResource>.


=head2 _request_id => Str


=cut

1;