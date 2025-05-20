
package Paws::Route53Domains::ListOperationsResponse;
  use Moose;
  has NextPageMarker => (is => 'ro', isa => 'Str');
  has Operations => (is => 'ro', isa => 'ArrayRef[Paws::Route53Domains::OperationSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::ListOperationsResponse

=head1 ATTRIBUTES


=head2 NextPageMarker => Str

If there are more operations than you specified for C<MaxItems> in the
request, submit another request and include the value of
C<NextPageMarker> in the value of C<Marker>.


=head2 Operations => ArrayRef[L<Paws::Route53Domains::OperationSummary>]

Lists summaries of the operations.


=head2 _request_id => Str


=cut

1;