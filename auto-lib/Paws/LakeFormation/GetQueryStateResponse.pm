
package Paws::LakeFormation::GetQueryStateResponse;
  use Moose;
  has Error => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::GetQueryStateResponse

=head1 ATTRIBUTES


=head2 Error => Str

An error message when the operation fails.


=head2 B<REQUIRED> State => Str

The state of a query previously submitted. The possible states are:

=over

=item *

PENDING: the query is pending.

=item *

WORKUNITS_AVAILABLE: some work units are ready for retrieval and
execution.

=item *

FINISHED: the query planning finished successfully, and all work units
are ready for retrieval and execution.

=item *

ERROR: an error occurred with the query, such as an invalid query ID or
a backend error.

=back


Valid values are: C<"PENDING">, C<"WORKUNITS_AVAILABLE">, C<"ERROR">, C<"FINISHED">, C<"EXPIRED">
=head2 _request_id => Str


=cut

