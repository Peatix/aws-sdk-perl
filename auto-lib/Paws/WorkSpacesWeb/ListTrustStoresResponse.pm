
package Paws::WorkSpacesWeb::ListTrustStoresResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has TrustStores => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpacesWeb::TrustStoreSummary]', traits => ['NameInRequest'], request_name => 'trustStores');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::ListTrustStoresResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token used to retrieve the next page of results for this
operation.


=head2 TrustStores => ArrayRef[L<Paws::WorkSpacesWeb::TrustStoreSummary>]

The trust stores.


=head2 _request_id => Str


=cut

