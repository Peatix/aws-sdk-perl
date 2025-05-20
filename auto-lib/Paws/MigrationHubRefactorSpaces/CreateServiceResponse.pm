
package Paws::MigrationHubRefactorSpaces::CreateServiceResponse;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str');
  has Arn => (is => 'ro', isa => 'Str');
  has CreatedByAccountId => (is => 'ro', isa => 'Str');
  has CreatedTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EndpointType => (is => 'ro', isa => 'Str');
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has LambdaEndpoint => (is => 'ro', isa => 'Paws::MigrationHubRefactorSpaces::LambdaEndpointInput');
  has LastUpdatedTime => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has OwnerAccountId => (is => 'ro', isa => 'Str');
  has ServiceId => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::MigrationHubRefactorSpaces::TagMap');
  has UrlEndpoint => (is => 'ro', isa => 'Paws::MigrationHubRefactorSpaces::UrlEndpointInput');
  has VpcId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubRefactorSpaces::CreateServiceResponse

=head1 ATTRIBUTES


=head2 ApplicationId => Str

The ID of the application that the created service belongs to.


=head2 Arn => Str

The Amazon Resource Name (ARN) of the service.


=head2 CreatedByAccountId => Str

The Amazon Web Services account ID of the service creator.


=head2 CreatedTime => Str

A timestamp that indicates when the service is created.


=head2 Description => Str

The description of the created service.


=head2 EndpointType => Str

The endpoint type of the service.

Valid values are: C<"LAMBDA">, C<"URL">
=head2 EnvironmentId => Str

The unique identifier of the environment.


=head2 LambdaEndpoint => L<Paws::MigrationHubRefactorSpaces::LambdaEndpointInput>

The configuration for the Lambda endpoint type.


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

The tags assigned to the created service. A tag is a label that you
assign to an Amazon Web Services resource. Each tag consists of a
key-value pair..


=head2 UrlEndpoint => L<Paws::MigrationHubRefactorSpaces::UrlEndpointInput>

The configuration for the URL endpoint type.


=head2 VpcId => Str

The ID of the VPC.


=head2 _request_id => Str


=cut

