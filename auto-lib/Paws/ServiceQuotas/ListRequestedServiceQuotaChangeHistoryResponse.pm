
package Paws::ServiceQuotas::ListRequestedServiceQuotaChangeHistoryResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RequestedQuotas => (is => 'ro', isa => 'ArrayRef[Paws::ServiceQuotas::RequestedServiceQuotaChange]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceQuotas::ListRequestedServiceQuotaChangeHistoryResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If present, indicates that more output is available than is included in
the current response. Use this value in the C<NextToken> request
parameter in a subsequent call to the operation to get the next part of
the output. You should repeat this until the C<NextToken> response
element comes back as C<null>.


=head2 RequestedQuotas => ArrayRef[L<Paws::ServiceQuotas::RequestedServiceQuotaChange>]

Information about the quota increase requests.


=head2 _request_id => Str


=cut

1;