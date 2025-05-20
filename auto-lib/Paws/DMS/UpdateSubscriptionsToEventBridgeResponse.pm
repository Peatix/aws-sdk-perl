
package Paws::DMS::UpdateSubscriptionsToEventBridgeResponse;
  use Moose;
  has Result => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::UpdateSubscriptionsToEventBridgeResponse

=head1 ATTRIBUTES


=head2 Result => Str

A string that indicates how many event subscriptions were migrated and
how many remain to be migrated.


=head2 _request_id => Str


=cut

1;