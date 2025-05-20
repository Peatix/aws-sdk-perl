
package Paws::MigrationHubRefactorSpaces::DeleteRouteResponse;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str');
  has Arn => (is => 'ro', isa => 'Str');
  has LastUpdatedTime => (is => 'ro', isa => 'Str');
  has RouteId => (is => 'ro', isa => 'Str');
  has ServiceId => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubRefactorSpaces::DeleteRouteResponse

=head1 ATTRIBUTES


=head2 ApplicationId => Str

The ID of the application that the route belongs to.


=head2 Arn => Str

The Amazon Resource Name (ARN) of the route.


=head2 LastUpdatedTime => Str

A timestamp that indicates when the route was last updated.


=head2 RouteId => Str

The ID of the route to delete.


=head2 ServiceId => Str

The ID of the service that the route belongs to.


=head2 State => Str

The current state of the route.

Valid values are: C<"CREATING">, C<"ACTIVE">, C<"DELETING">, C<"FAILED">, C<"UPDATING">, C<"INACTIVE">
=head2 _request_id => Str


=cut

