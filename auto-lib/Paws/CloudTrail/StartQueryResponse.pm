
package Paws::CloudTrail::StartQueryResponse;
  use Moose;
  has EventDataStoreOwnerAccountId => (is => 'ro', isa => 'Str');
  has QueryId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::StartQueryResponse

=head1 ATTRIBUTES


=head2 EventDataStoreOwnerAccountId => Str

The account ID of the event data store owner.


=head2 QueryId => Str

The ID of the started query.


=head2 _request_id => Str


=cut

1;