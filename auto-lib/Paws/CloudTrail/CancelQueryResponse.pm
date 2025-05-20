
package Paws::CloudTrail::CancelQueryResponse;
  use Moose;
  has EventDataStoreOwnerAccountId => (is => 'ro', isa => 'Str');
  has QueryId => (is => 'ro', isa => 'Str', required => 1);
  has QueryStatus => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::CancelQueryResponse

=head1 ATTRIBUTES


=head2 EventDataStoreOwnerAccountId => Str

The account ID of the event data store owner.


=head2 B<REQUIRED> QueryId => Str

The ID of the canceled query.


=head2 B<REQUIRED> QueryStatus => Str

Shows the status of a query after a C<CancelQuery> request. Typically,
the values shown are either C<RUNNING> or C<CANCELLED>.

Valid values are: C<"QUEUED">, C<"RUNNING">, C<"FINISHED">, C<"FAILED">, C<"CANCELLED">, C<"TIMED_OUT">
=head2 _request_id => Str


=cut

1;