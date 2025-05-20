
package Paws::AppSync::DisassociateSourceGraphqlApiResponse;
  use Moose;
  has SourceApiAssociationStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceApiAssociationStatus');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::DisassociateSourceGraphqlApiResponse

=head1 ATTRIBUTES


=head2 SourceApiAssociationStatus => Str

The state of the source API association.

Valid values are: C<"MERGE_SCHEDULED">, C<"MERGE_FAILED">, C<"MERGE_SUCCESS">, C<"MERGE_IN_PROGRESS">, C<"AUTO_MERGE_SCHEDULE_FAILED">, C<"DELETION_SCHEDULED">, C<"DELETION_IN_PROGRESS">, C<"DELETION_FAILED">
=head2 _request_id => Str


=cut

