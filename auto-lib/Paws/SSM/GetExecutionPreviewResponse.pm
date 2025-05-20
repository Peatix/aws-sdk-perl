
package Paws::SSM::GetExecutionPreviewResponse;
  use Moose;
  has EndedAt => (is => 'ro', isa => 'Str');
  has ExecutionPreview => (is => 'ro', isa => 'Paws::SSM::ExecutionPreview');
  has ExecutionPreviewId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetExecutionPreviewResponse

=head1 ATTRIBUTES


=head2 EndedAt => Str

A UTC timestamp indicating when the execution preview operation ended.


=head2 ExecutionPreview => L<Paws::SSM::ExecutionPreview>




=head2 ExecutionPreviewId => Str

The generated ID for the existing execution preview.


=head2 Status => Str

The current status of the execution preview operation.

Valid values are: C<"Pending">, C<"InProgress">, C<"Success">, C<"Failed">
=head2 StatusMessage => Str

Supplemental information about the current status of the execution
preview.


=head2 _request_id => Str


=cut

1;