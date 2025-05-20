
package Paws::CloudTrail::ListEventDataStoresResponse;
  use Moose;
  has EventDataStores => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::EventDataStore]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::ListEventDataStoresResponse

=head1 ATTRIBUTES


=head2 EventDataStores => ArrayRef[L<Paws::CloudTrail::EventDataStore>]

Contains information about event data stores in the account, in the
current Region.


=head2 NextToken => Str

A token you can use to get the next page of results.


=head2 _request_id => Str


=cut

1;