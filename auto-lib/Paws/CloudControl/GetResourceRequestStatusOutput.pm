
package Paws::CloudControl::GetResourceRequestStatusOutput;
  use Moose;
  has HooksProgressEvent => (is => 'ro', isa => 'ArrayRef[Paws::CloudControl::HookProgressEvent]');
  has ProgressEvent => (is => 'ro', isa => 'Paws::CloudControl::ProgressEvent');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudControl::GetResourceRequestStatusOutput

=head1 ATTRIBUTES


=head2 HooksProgressEvent => ArrayRef[L<Paws::CloudControl::HookProgressEvent>]

Lists Hook invocations for the specified target in the request. This is
a list since the same target can invoke multiple Hooks.


=head2 ProgressEvent => L<Paws::CloudControl::ProgressEvent>

Represents the current status of the resource operation request.


=head2 _request_id => Str


=cut

1;