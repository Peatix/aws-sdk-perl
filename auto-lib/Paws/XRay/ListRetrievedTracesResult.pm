
package Paws::XRay::ListRetrievedTracesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RetrievalStatus => (is => 'ro', isa => 'Str');
  has TraceFormat => (is => 'ro', isa => 'Str');
  has Traces => (is => 'ro', isa => 'ArrayRef[Paws::XRay::RetrievedTrace]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::ListRetrievedTracesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

Specify the pagination token returned by a previous request to retrieve
the next page of indexes.


=head2 RetrievalStatus => Str

Status of the retrieval.

Valid values are: C<"SCHEDULED">, C<"RUNNING">, C<"COMPLETE">, C<"FAILED">, C<"CANCELLED">, C<"TIMEOUT">
=head2 TraceFormat => Str

Format of the requested traces.

Valid values are: C<"XRAY">, C<"OTEL">
=head2 Traces => ArrayRef[L<Paws::XRay::RetrievedTrace>]

Full traces for the specified requests.


=head2 _request_id => Str


=cut

