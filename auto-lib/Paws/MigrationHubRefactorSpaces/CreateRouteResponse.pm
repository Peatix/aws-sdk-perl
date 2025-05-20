
package Paws::MigrationHubRefactorSpaces::CreateRouteResponse;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str');
  has Arn => (is => 'ro', isa => 'Str');
  has CreatedByAccountId => (is => 'ro', isa => 'Str');
  has CreatedTime => (is => 'ro', isa => 'Str');
  has LastUpdatedTime => (is => 'ro', isa => 'Str');
  has OwnerAccountId => (is => 'ro', isa => 'Str');
  has RouteId => (is => 'ro', isa => 'Str');
  has RouteType => (is => 'ro', isa => 'Str');
  has ServiceId => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::MigrationHubRefactorSpaces::TagMap');
  has UriPathRoute => (is => 'ro', isa => 'Paws::MigrationHubRefactorSpaces::UriPathRouteInput');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubRefactorSpaces::CreateRouteResponse

=head1 ATTRIBUTES


=head2 ApplicationId => Str

The ID of the application in which the route is created.


=head2 Arn => Str

The Amazon Resource Name (ARN) of the route. The format for this ARN is
C<arn:aws:refactor-spaces:I<region>:I<account-id>:I<resource-type/resource-id>
>. For more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference>.


=head2 CreatedByAccountId => Str

The Amazon Web Services account ID of the route creator.


=head2 CreatedTime => Str

A timestamp that indicates when the route is created.


=head2 LastUpdatedTime => Str

A timestamp that indicates when the route was last updated.


=head2 OwnerAccountId => Str

The Amazon Web Services account ID of the route owner.


=head2 RouteId => Str

The unique identifier of the route.


=head2 RouteType => Str

The route type of the route.

Valid values are: C<"DEFAULT">, C<"URI_PATH">
=head2 ServiceId => Str

The ID of service in which the route is created. Traffic that matches
this route is forwarded to this service.


=head2 State => Str

The current state of the route. Activation state only allows C<ACTIVE>
or C<INACTIVE> as user inputs. C<FAILED> is a route state that is
system generated.

Valid values are: C<"CREATING">, C<"ACTIVE">, C<"DELETING">, C<"FAILED">, C<"UPDATING">, C<"INACTIVE">
=head2 Tags => L<Paws::MigrationHubRefactorSpaces::TagMap>

The tags assigned to the created route. A tag is a label that you
assign to an Amazon Web Services resource. Each tag consists of a
key-value pair.


=head2 UriPathRoute => L<Paws::MigrationHubRefactorSpaces::UriPathRouteInput>

Configuration for the URI path route type.


=head2 _request_id => Str


=cut

