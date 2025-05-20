
package Paws::MigrationHubRefactorSpaces::GetApplicationResponse;
  use Moose;
  has ApiGatewayProxy => (is => 'ro', isa => 'Paws::MigrationHubRefactorSpaces::ApiGatewayProxyConfig');
  has ApplicationId => (is => 'ro', isa => 'Str');
  has Arn => (is => 'ro', isa => 'Str');
  has CreatedByAccountId => (is => 'ro', isa => 'Str');
  has CreatedTime => (is => 'ro', isa => 'Str');
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has Error => (is => 'ro', isa => 'Paws::MigrationHubRefactorSpaces::ErrorResponse');
  has LastUpdatedTime => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has OwnerAccountId => (is => 'ro', isa => 'Str');
  has ProxyType => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::MigrationHubRefactorSpaces::TagMap');
  has VpcId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubRefactorSpaces::GetApplicationResponse

=head1 ATTRIBUTES


=head2 ApiGatewayProxy => L<Paws::MigrationHubRefactorSpaces::ApiGatewayProxyConfig>

The endpoint URL of the API Gateway proxy.


=head2 ApplicationId => Str

The unique identifier of the application.


=head2 Arn => Str

The Amazon Resource Name (ARN) of the application.


=head2 CreatedByAccountId => Str

The Amazon Web Services account ID of the application creator.


=head2 CreatedTime => Str

A timestamp that indicates when the application is created.


=head2 EnvironmentId => Str

The unique identifier of the environment.


=head2 Error => L<Paws::MigrationHubRefactorSpaces::ErrorResponse>

Any error associated with the application resource.


=head2 LastUpdatedTime => Str

A timestamp that indicates when the application was last updated.


=head2 Name => Str

The name of the application.


=head2 OwnerAccountId => Str

The Amazon Web Services account ID of the application owner (which is
always the same as the environment owner account ID).


=head2 ProxyType => Str

The proxy type of the proxy created within the application.

Valid values are: C<"API_GATEWAY">
=head2 State => Str

The current state of the application.

Valid values are: C<"CREATING">, C<"ACTIVE">, C<"DELETING">, C<"FAILED">, C<"UPDATING">
=head2 Tags => L<Paws::MigrationHubRefactorSpaces::TagMap>

The tags assigned to the application. A tag is a label that you assign
to an Amazon Web Services resource. Each tag consists of a key-value
pair.


=head2 VpcId => Str

The ID of the virtual private cloud (VPC).


=head2 _request_id => Str


=cut

