
package Paws::SecurityHub::BatchUpdateStandardsControlAssociationsResponse;
  use Moose;
  has UnprocessedAssociationUpdates => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::UnprocessedStandardsControlAssociationUpdate]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::BatchUpdateStandardsControlAssociationsResponse

=head1 ATTRIBUTES


=head2 UnprocessedAssociationUpdates => ArrayRef[L<Paws::SecurityHub::UnprocessedStandardsControlAssociationUpdate>]

A security control (identified with C<SecurityControlId>,
C<SecurityControlArn>, or a mix of both parameters) whose enablement
status in a specified standard couldn't be updated.


=head2 _request_id => Str


=cut

