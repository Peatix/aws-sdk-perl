
package Paws::MigrationHubRefactorSpaces::UpdateRouteResponse;
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

Paws::MigrationHubRefactorSpaces::UpdateRouteResponse

=head1 ATTRIBUTES


=head2 ApplicationId => Str

The ID of the application in which the route is being updated.


=head2 Arn => Str

The Amazon Resource Name (ARN) of the route. The format for this ARN is
C<arn:aws:refactor-spaces:I<region>:I<account-id>:I<resource-type/resource-id>
>. For more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference>.


=head2 LastUpdatedTime => Str

A timestamp that indicates when the route was last updated.


=head2 RouteId => Str

The unique identifier of the route.


=head2 ServiceId => Str

The ID of service in which the route was created. Traffic that matches
this route is forwarded to this service.


=head2 State => Str

The current state of the route.

Valid values are: C<"CREATING">, C<"ACTIVE">, C<"DELETING">, C<"FAILED">, C<"UPDATING">, C<"INACTIVE">
=head2 _request_id => Str


=cut

