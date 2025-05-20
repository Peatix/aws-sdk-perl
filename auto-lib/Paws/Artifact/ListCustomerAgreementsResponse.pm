
package Paws::Artifact::ListCustomerAgreementsResponse;
  use Moose;
  has CustomerAgreements => (is => 'ro', isa => 'ArrayRef[Paws::Artifact::CustomerAgreementSummary]', traits => ['NameInRequest'], request_name => 'customerAgreements', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Artifact::ListCustomerAgreementsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CustomerAgreements => ArrayRef[L<Paws::Artifact::CustomerAgreementSummary>]

List of customer-agreement resources.


=head2 NextToken => Str

Pagination token to request the next page of resources.


=head2 _request_id => Str


=cut

