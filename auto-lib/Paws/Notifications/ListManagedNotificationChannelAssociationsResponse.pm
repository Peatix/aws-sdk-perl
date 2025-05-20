
package Paws::Notifications::ListManagedNotificationChannelAssociationsResponse;
  use Moose;
  has ChannelAssociations => (is => 'ro', isa => 'ArrayRef[Paws::Notifications::ManagedNotificationChannelAssociationSummary]', traits => ['NameInRequest'], request_name => 'channelAssociations', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Notifications::ListManagedNotificationChannelAssociationsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelAssociations => ArrayRef[L<Paws::Notifications::ManagedNotificationChannelAssociationSummary>]

A list that contains the following information about a channel
association.


=head2 NextToken => Str

A pagination token. If a non-null pagination token is returned in a
result, pass its value in another request to retrieve more entries.


=head2 _request_id => Str


=cut

