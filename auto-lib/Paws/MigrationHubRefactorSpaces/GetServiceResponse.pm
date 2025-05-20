
package Paws::MigrationHubRefactorSpaces::GetServiceResponse;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str');
  has Arn => (is => 'ro', isa => 'Str');
  has CreatedByAccountId => (is => 'ro', isa => 'Str');
  has CreatedTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EndpointType => (is => 'ro', isa => 'Str');
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has Error => (is => 'ro', isa => 'Paws::MigrationHubRefactorSpaces::ErrorResponse');
  has LambdaEndpoint => (is => 'ro', isa => 'Paws::MigrationHubRefactorSpaces::LambdaEndpointConfig');
  has LastUpdatedTime => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has OwnerAccountId => (is => 'ro', isa => 'Str');
  has ServiceId => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::MigrationHubRefactorSpaces::TagMap');
  has UrlEndpoint => (is => 'ro', isa => 'Paws::MigrationHubRefactorSpaces::UrlEndpointConfig');
  has VpcId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubRefactorSpaces::GetServiceResponse

=head1 ATTRIBUTES


=head2 ApplicationId => Str

The ID of the application.


=head2 Arn => Str

The Amazon Resource Name (ARN) of the service.


=head2 CreatedByAccountId => Str

The Amazon Web Services account ID of the service creator.


=head2 CreatedTime => Str

The timestamp of when the service is created.


=head2 Description => Str

The description of the service.


=head2 EndpointType => Str

The endpoint type of the service.

Valid values are: C<"LAMBDA">, C<"URL">
=head2 EnvironmentId => Str

The unique identifier of the environment.


=head2 Error => L<Paws::MigrationHubRefactorSpaces::ErrorResponse>

Any error associated with the service resource.


=head2 LambdaEndpoint => L<Paws::MigrationHubRefactorSpaces::LambdaEndpointConfig>

The configuration for the Lambda endpoint type.

The B<Arn> is the Amazon Resource Name (ARN) of the Lambda function
associated with this service.


=head2 LastUpdatedTime => Str

A timestamp that indicates when the service was last updated.


=head2 Name => Str

The name of the service.


=head2 OwnerAccountId => Str

The Amazon Web Services account ID of the service owner.


=head2 ServiceId => Str

The unique identifier of the service.


=head2 State => Str

The current state of the service.

Valid values are: C<"CREATING">, C<"ACTIVE">, C<"DELETING">, C<"FAILED">
=head2 Tags => L<Paws::MigrationHubRefactorSpaces::TagMap>

The tags assigned to the service. A tag is a label that you assign to
an Amazon Web Services resource. Each tag consists of a key-value pair.


=head2 UrlEndpoint => L<Paws::MigrationHubRefactorSpaces::UrlEndpointConfig>

The configuration for the URL endpoint type.

The B<Url> isthe URL of the endpoint type.

The B<HealthUrl> is the health check URL of the endpoint type.


=head2 VpcId => Str

The ID of the virtual private cloud (VPC).


=head2 _request_id => Str


=cut

