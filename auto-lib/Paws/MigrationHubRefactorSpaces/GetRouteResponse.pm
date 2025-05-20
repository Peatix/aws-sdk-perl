
package Paws::MigrationHubRefactorSpaces::GetRouteResponse;
  use Moose;
  has AppendSourcePath => (is => 'ro', isa => 'Bool');
  has ApplicationId => (is => 'ro', isa => 'Str');
  has Arn => (is => 'ro', isa => 'Str');
  has CreatedByAccountId => (is => 'ro', isa => 'Str');
  has CreatedTime => (is => 'ro', isa => 'Str');
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has Error => (is => 'ro', isa => 'Paws::MigrationHubRefactorSpaces::ErrorResponse');
  has IncludeChildPaths => (is => 'ro', isa => 'Bool');
  has LastUpdatedTime => (is => 'ro', isa => 'Str');
  has Methods => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has OwnerAccountId => (is => 'ro', isa => 'Str');
  has PathResourceToId => (is => 'ro', isa => 'Paws::MigrationHubRefactorSpaces::PathResourceToId');
  has RouteId => (is => 'ro', isa => 'Str');
  has RouteType => (is => 'ro', isa => 'Str');
  has ServiceId => (is => 'ro', isa => 'Str');
  has SourcePath => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::MigrationHubRefactorSpaces::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubRefactorSpaces::GetRouteResponse

=head1 ATTRIBUTES


=head2 AppendSourcePath => Bool

If set to C<true>, this option appends the source path to the service
URL endpoint.


=head2 ApplicationId => Str

The ID of the application that the route belongs to.


=head2 Arn => Str

The Amazon Resource Name (ARN) of the route.


=head2 CreatedByAccountId => Str

The Amazon Web Services account ID of the route creator.


=head2 CreatedTime => Str

The timestamp of when the route is created.


=head2 EnvironmentId => Str

Unique identifier of the environment.


=head2 Error => L<Paws::MigrationHubRefactorSpaces::ErrorResponse>

Any error associated with the route resource.


=head2 IncludeChildPaths => Bool

Indicates whether to match all subpaths of the given source path. If
this value is C<false>, requests must match the source path exactly
before they are forwarded to this route's service.


=head2 LastUpdatedTime => Str

A timestamp that indicates when the route was last updated.


=head2 Methods => ArrayRef[Str|Undef]

A list of HTTP methods to match. An empty list matches all values. If a
method is present, only HTTP requests using that method are forwarded
to this routeE<rsquo>s service.


=head2 OwnerAccountId => Str

The Amazon Web Services account ID of the route owner.


=head2 PathResourceToId => L<Paws::MigrationHubRefactorSpaces::PathResourceToId>

A mapping of Amazon API Gateway path resources to resource IDs.


=head2 RouteId => Str

The unique identifier of the route.

B<DEFAULT>: All traffic that does not match another route is forwarded
to the default route. Applications must have a default route before any
other routes can be created.

B<URI_PATH>: A route that is based on a URI path.


=head2 RouteType => Str

The type of route.

Valid values are: C<"DEFAULT">, C<"URI_PATH">
=head2 ServiceId => Str

The unique identifier of the service.


=head2 SourcePath => Str

This is the path that Refactor Spaces uses to match traffic. Paths must
start with C</> and are relative to the base of the application. To use
path parameters in the source path, add a variable in curly braces. For
example, the resource path {user} represents a path parameter called
'user'.


=head2 State => Str

The current state of the route.

Valid values are: C<"CREATING">, C<"ACTIVE">, C<"DELETING">, C<"FAILED">, C<"UPDATING">, C<"INACTIVE">
=head2 Tags => L<Paws::MigrationHubRefactorSpaces::TagMap>

The tags assigned to the route. A tag is a label that you assign to an
Amazon Web Services resource. Each tag consists of a key-value pair.


=head2 _request_id => Str


=cut

