
package Paws::XRay::GetRetrievedTracesGraphResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RetrievalStatus => (is => 'ro', isa => 'Str');
  has Services => (is => 'ro', isa => 'ArrayRef[Paws::XRay::RetrievedService]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::GetRetrievedTracesGraphResult

=head1 ATTRIBUTES


=head2 NextToken => Str

Specify the pagination token returned by a previous request to retrieve
the next page of indexes.


=head2 RetrievalStatus => Str

Status of the retrieval.

Valid values are: C<"SCHEDULED">, C<"RUNNING">, C<"COMPLETE">, C<"FAILED">, C<"CANCELLED">, C<"TIMEOUT">
=head2 Services => ArrayRef[L<Paws::XRay::RetrievedService>]

Retrieved services.


=head2 _request_id => Str


=cut

