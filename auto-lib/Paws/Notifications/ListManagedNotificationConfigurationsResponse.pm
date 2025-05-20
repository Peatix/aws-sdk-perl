
package Paws::Notifications::ListManagedNotificationConfigurationsResponse;
  use Moose;
  has ManagedNotificationConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::Notifications::ManagedNotificationConfigurationStructure]', traits => ['NameInRequest'], request_name => 'managedNotificationConfigurations', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Notifications::ListManagedNotificationConfigurationsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ManagedNotificationConfigurations => ArrayRef[L<Paws::Notifications::ManagedNotificationConfigurationStructure>]

A list of Managed Notification Configurations matching the request
criteria.


=head2 NextToken => Str

A pagination token. If a non-null pagination token is returned in a
result, pass its value in another request to retrieve more entries.


=head2 _request_id => Str


=cut

