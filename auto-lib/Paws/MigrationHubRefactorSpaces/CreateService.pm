
package Paws::MigrationHubRefactorSpaces::CreateService;
  use Moose;
  has ApplicationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ApplicationIdentifier', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EndpointType => (is => 'ro', isa => 'Str', required => 1);
  has EnvironmentIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EnvironmentIdentifier', required => 1);
  has LambdaEndpoint => (is => 'ro', isa => 'Paws::MigrationHubRefactorSpaces::LambdaEndpointInput');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::MigrationHubRefactorSpaces::TagMap');
  has UrlEndpoint => (is => 'ro', isa => 'Paws::MigrationHubRefactorSpaces::UrlEndpointInput');
  has VpcId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateService');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/services');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubRefactorSpaces::CreateServiceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubRefactorSpaces::CreateService - Arguments for method CreateService on L<Paws::MigrationHubRefactorSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateService on the
L<AWS Migration Hub Refactor Spaces|Paws::MigrationHubRefactorSpaces> service. Use the attributes of this class
as arguments to method CreateService.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateService.

=head1 SYNOPSIS

    my $refactor-spaces = Paws->service('MigrationHubRefactorSpaces');
    my $CreateServiceResponse = $refactor -spaces->CreateService(
      ApplicationIdentifier => 'MyApplicationId',
      EndpointType          => 'LAMBDA',
      EnvironmentIdentifier => 'MyEnvironmentId',
      Name                  => 'MyServiceName',
      ClientToken           => 'MyClientToken',     # OPTIONAL
      Description           => 'MyDescription',     # OPTIONAL
      LambdaEndpoint        => {
        Arn => 'MyLambdaArn',                       # min: 1, max: 2048

      },    # OPTIONAL
      Tags => {
        'MyTagMapKeyString' =>
          'MyTagMapValueString',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      UrlEndpoint => {
        Url       => 'MyUri',    # min: 1, max: 2048
        HealthUrl => 'MyUri',    # min: 1, max: 2048
      },    # OPTIONAL
      VpcId => 'MyVpcId',    # OPTIONAL
    );

    # Results:
    my $ApplicationId      = $CreateServiceResponse->ApplicationId;
    my $Arn                = $CreateServiceResponse->Arn;
    my $CreatedByAccountId = $CreateServiceResponse->CreatedByAccountId;
    my $CreatedTime        = $CreateServiceResponse->CreatedTime;
    my $Description        = $CreateServiceResponse->Description;
    my $EndpointType       = $CreateServiceResponse->EndpointType;
    my $EnvironmentId      = $CreateServiceResponse->EnvironmentId;
    my $LambdaEndpoint     = $CreateServiceResponse->LambdaEndpoint;
    my $LastUpdatedTime    = $CreateServiceResponse->LastUpdatedTime;
    my $Name               = $CreateServiceResponse->Name;
    my $OwnerAccountId     = $CreateServiceResponse->OwnerAccountId;
    my $ServiceId          = $CreateServiceResponse->ServiceId;
    my $State              = $CreateServiceResponse->State;
    my $Tags               = $CreateServiceResponse->Tags;
    my $UrlEndpoint        = $CreateServiceResponse->UrlEndpoint;
    my $VpcId              = $CreateServiceResponse->VpcId;

  # Returns a L<Paws::MigrationHubRefactorSpaces::CreateServiceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/refactor-spaces/CreateService>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationIdentifier => Str

The ID of the application which the service is created.



=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 Description => Str

The description of the service.



=head2 B<REQUIRED> EndpointType => Str

The type of endpoint to use for the service. The type can be a URL in a
VPC or an Lambda function.

Valid values are: C<"LAMBDA">, C<"URL">

=head2 B<REQUIRED> EnvironmentIdentifier => Str

The ID of the environment in which the service is created.



=head2 LambdaEndpoint => L<Paws::MigrationHubRefactorSpaces::LambdaEndpointInput>

The configuration for the Lambda endpoint type.



=head2 B<REQUIRED> Name => Str

The name of the service.



=head2 Tags => L<Paws::MigrationHubRefactorSpaces::TagMap>

The tags to assign to the service. A tag is a label that you assign to
an Amazon Web Services resource. Each tag consists of a key-value
pair..



=head2 UrlEndpoint => L<Paws::MigrationHubRefactorSpaces::UrlEndpointInput>

The configuration for the URL endpoint type. When creating a route to a
service, Refactor Spaces automatically resolves the address in the
C<UrlEndpointInput> object URL when the Domain Name System (DNS)
time-to-live (TTL) expires, or every 60 seconds for TTLs less than 60
seconds.



=head2 VpcId => Str

The ID of the VPC.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateService in L<Paws::MigrationHubRefactorSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

