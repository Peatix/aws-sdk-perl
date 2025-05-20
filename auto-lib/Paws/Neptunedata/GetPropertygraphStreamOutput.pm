
package Paws::Neptunedata::GetPropertygraphStreamOutput;
  use Moose;
  has Format => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'format', required => 1);
  has LastEventId => (is => 'ro', isa => 'Paws::Neptunedata::StringValuedMap', traits => ['NameInRequest'], request_name => 'lastEventId', required => 1);
  has LastTrxTimestampInMillis => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'lastTrxTimestamp', required => 1);
  has Records => (is => 'ro', isa => 'ArrayRef[Paws::Neptunedata::PropertygraphRecord]', traits => ['NameInRequest'], request_name => 'records', required => 1);
  has TotalRecords => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'totalRecords', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::GetPropertygraphStreamOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Format => Str

Serialization format for the change records being returned. Currently,
the only supported value is C<PG_JSON>.


=head2 B<REQUIRED> LastEventId => L<Paws::Neptunedata::StringValuedMap>

Sequence identifier of the last change in the stream response.

An event ID is composed of two fields: a C<commitNum>, which identifies
a transaction that changed the graph, and an C<opNum>, which identifies
a specific operation within that transaction:


=head2 B<REQUIRED> LastTrxTimestampInMillis => Int

The time at which the commit for the transaction was requested, in
milliseconds from the Unix epoch.


=head2 B<REQUIRED> Records => ArrayRef[L<Paws::Neptunedata::PropertygraphRecord>]

An array of serialized change-log stream records included in the
response.


=head2 B<REQUIRED> TotalRecords => Int

The total number of records in the response.


=head2 _request_id => Str


=cut

