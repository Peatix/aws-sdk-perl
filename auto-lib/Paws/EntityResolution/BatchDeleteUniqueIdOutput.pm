
package Paws::EntityResolution::BatchDeleteUniqueIdOutput;
  use Moose;
  has Deleted => (is => 'ro', isa => 'ArrayRef[Paws::EntityResolution::DeletedUniqueId]', traits => ['NameInRequest'], request_name => 'deleted', required => 1);
  has DisconnectedUniqueIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'disconnectedUniqueIds', required => 1);
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::EntityResolution::DeleteUniqueIdError]', traits => ['NameInRequest'], request_name => 'errors', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::BatchDeleteUniqueIdOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Deleted => ArrayRef[L<Paws::EntityResolution::DeletedUniqueId>]

The unique IDs that were deleted.


=head2 B<REQUIRED> DisconnectedUniqueIds => ArrayRef[Str|Undef]

The unique IDs that were disconnected.


=head2 B<REQUIRED> Errors => ArrayRef[L<Paws::EntityResolution::DeleteUniqueIdError>]

The errors from deleting multiple unique IDs.


=head2 B<REQUIRED> Status => Str

The status of the batch delete unique ID operation.

Valid values are: C<"COMPLETED">, C<"ACCEPTED">
=head2 _request_id => Str


=cut

