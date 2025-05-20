
package Paws::SecurityHub::BatchGetStandardsControlAssociationsResponse;
  use Moose;
  has StandardsControlAssociationDetails => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StandardsControlAssociationDetail]', required => 1);
  has UnprocessedAssociations => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::UnprocessedStandardsControlAssociation]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::BatchGetStandardsControlAssociationsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> StandardsControlAssociationDetails => ArrayRef[L<Paws::SecurityHub::StandardsControlAssociationDetail>]

Provides the enablement status of a security control in a specified
standard and other details for the control in relation to the specified
standard.


=head2 UnprocessedAssociations => ArrayRef[L<Paws::SecurityHub::UnprocessedStandardsControlAssociation>]

A security control (identified with C<SecurityControlId>,
C<SecurityControlArn>, or a mix of both parameters) whose enablement
status in a specified standard cannot be returned.


=head2 _request_id => Str


=cut

