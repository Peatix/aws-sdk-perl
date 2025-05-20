
package Paws::MigrationHubRefactorSpaces::CreateApplication;
  use Moose;
  has ApiGatewayProxy => (is => 'ro', isa => 'Paws::MigrationHubRefactorSpaces::ApiGatewayProxyInput');
  has ClientToken => (is => 'ro', isa => 'Str');
  has EnvironmentIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EnvironmentIdentifier', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ProxyType => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::MigrationHubRefactorSpaces::TagMap');
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/environments/{EnvironmentIdentifier}/applications');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubRefactorSpaces::CreateApplicationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubRefactorSpaces::CreateApplication - Arguments for method CreateApplication on L<Paws::MigrationHubRefactorSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateApplication on the
L<AWS Migration Hub Refactor Spaces|Paws::MigrationHubRefactorSpaces> service. Use the attributes of this class
as arguments to method CreateApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateApplication.

=head1 SYNOPSIS

    my $refactor-spaces = Paws->service('MigrationHubRefactorSpaces');
    my $CreateApplicationResponse = $refactor -spaces->CreateApplication(
      EnvironmentIdentifier => 'MyEnvironmentId',
      Name                  => 'MyApplicationName',
      ProxyType             => 'API_GATEWAY',
      VpcId                 => 'MyVpcId',
      ApiGatewayProxy       => {
        EndpointType => 'REGIONAL',       # values: REGIONAL, PRIVATE; OPTIONAL
        StageName    => 'MyStageName',    # min: 1, max: 128; OPTIONAL
      },    # OPTIONAL
      ClientToken => 'MyClientToken',    # OPTIONAL
      Tags        => {
        'MyTagMapKeyString' =>
          'MyTagMapValueString',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $ApiGatewayProxy    = $CreateApplicationResponse->ApiGatewayProxy;
    my $ApplicationId      = $CreateApplicationResponse->ApplicationId;
    my $Arn                = $CreateApplicationResponse->Arn;
    my $CreatedByAccountId = $CreateApplicationResponse->CreatedByAccountId;
    my $CreatedTime        = $CreateApplicationResponse->CreatedTime;
    my $EnvironmentId      = $CreateApplicationResponse->EnvironmentId;
    my $LastUpdatedTime    = $CreateApplicationResponse->LastUpdatedTime;
    my $Name               = $CreateApplicationResponse->Name;
    my $OwnerAccountId     = $CreateApplicationResponse->OwnerAccountId;
    my $ProxyType          = $CreateApplicationResponse->ProxyType;
    my $State              = $CreateApplicationResponse->State;
    my $Tags               = $CreateApplicationResponse->Tags;
    my $VpcId              = $CreateApplicationResponse->VpcId;

# Returns a L<Paws::MigrationHubRefactorSpaces::CreateApplicationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/refactor-spaces/CreateApplication>

=head1 ATTRIBUTES


=head2 ApiGatewayProxy => L<Paws::MigrationHubRefactorSpaces::ApiGatewayProxyInput>

A wrapper object holding the API Gateway endpoint type and stage name
for the proxy.



=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 B<REQUIRED> EnvironmentIdentifier => Str

The unique identifier of the environment.



=head2 B<REQUIRED> Name => Str

The name to use for the application.



=head2 B<REQUIRED> ProxyType => Str

The proxy type of the proxy created within the application.

Valid values are: C<"API_GATEWAY">

=head2 Tags => L<Paws::MigrationHubRefactorSpaces::TagMap>

The tags to assign to the application. A tag is a label that you assign
to an Amazon Web Services resource. Each tag consists of a key-value
pair.



=head2 B<REQUIRED> VpcId => Str

The ID of the virtual private cloud (VPC).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApplication in L<Paws::MigrationHubRefactorSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

