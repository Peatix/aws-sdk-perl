
package Paws::MigrationHubRefactorSpaces::GetService;
  use Moose;
  has ApplicationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ApplicationIdentifier', required => 1);
  has EnvironmentIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EnvironmentIdentifier', required => 1);
  has ServiceIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ServiceIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetService');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/services/{ServiceIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubRefactorSpaces::GetServiceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubRefactorSpaces::GetService - Arguments for method GetService on L<Paws::MigrationHubRefactorSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetService on the
L<AWS Migration Hub Refactor Spaces|Paws::MigrationHubRefactorSpaces> service. Use the attributes of this class
as arguments to method GetService.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetService.

=head1 SYNOPSIS

    my $refactor-spaces = Paws->service('MigrationHubRefactorSpaces');
    my $GetServiceResponse = $refactor -spaces->GetService(
      ApplicationIdentifier => 'MyApplicationId',
      EnvironmentIdentifier => 'MyEnvironmentId',
      ServiceIdentifier     => 'MyServiceId',

    );

    # Results:
    my $ApplicationId      = $GetServiceResponse->ApplicationId;
    my $Arn                = $GetServiceResponse->Arn;
    my $CreatedByAccountId = $GetServiceResponse->CreatedByAccountId;
    my $CreatedTime        = $GetServiceResponse->CreatedTime;
    my $Description        = $GetServiceResponse->Description;
    my $EndpointType       = $GetServiceResponse->EndpointType;
    my $EnvironmentId      = $GetServiceResponse->EnvironmentId;
    my $Error              = $GetServiceResponse->Error;
    my $LambdaEndpoint     = $GetServiceResponse->LambdaEndpoint;
    my $LastUpdatedTime    = $GetServiceResponse->LastUpdatedTime;
    my $Name               = $GetServiceResponse->Name;
    my $OwnerAccountId     = $GetServiceResponse->OwnerAccountId;
    my $ServiceId          = $GetServiceResponse->ServiceId;
    my $State              = $GetServiceResponse->State;
    my $Tags               = $GetServiceResponse->Tags;
    my $UrlEndpoint        = $GetServiceResponse->UrlEndpoint;
    my $VpcId              = $GetServiceResponse->VpcId;

    # Returns a L<Paws::MigrationHubRefactorSpaces::GetServiceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/refactor-spaces/GetService>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationIdentifier => Str

The ID of the application.



=head2 B<REQUIRED> EnvironmentIdentifier => Str

The ID of the environment.



=head2 B<REQUIRED> ServiceIdentifier => Str

The ID of the service.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetService in L<Paws::MigrationHubRefactorSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

