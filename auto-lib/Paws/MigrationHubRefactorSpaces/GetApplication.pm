
package Paws::MigrationHubRefactorSpaces::GetApplication;
  use Moose;
  has ApplicationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ApplicationIdentifier', required => 1);
  has EnvironmentIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EnvironmentIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetApplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubRefactorSpaces::GetApplicationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubRefactorSpaces::GetApplication - Arguments for method GetApplication on L<Paws::MigrationHubRefactorSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetApplication on the
L<AWS Migration Hub Refactor Spaces|Paws::MigrationHubRefactorSpaces> service. Use the attributes of this class
as arguments to method GetApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetApplication.

=head1 SYNOPSIS

    my $refactor-spaces = Paws->service('MigrationHubRefactorSpaces');
    my $GetApplicationResponse = $refactor -spaces->GetApplication(
      ApplicationIdentifier => 'MyApplicationId',
      EnvironmentIdentifier => 'MyEnvironmentId',

    );

    # Results:
    my $ApiGatewayProxy    = $GetApplicationResponse->ApiGatewayProxy;
    my $ApplicationId      = $GetApplicationResponse->ApplicationId;
    my $Arn                = $GetApplicationResponse->Arn;
    my $CreatedByAccountId = $GetApplicationResponse->CreatedByAccountId;
    my $CreatedTime        = $GetApplicationResponse->CreatedTime;
    my $EnvironmentId      = $GetApplicationResponse->EnvironmentId;
    my $Error              = $GetApplicationResponse->Error;
    my $LastUpdatedTime    = $GetApplicationResponse->LastUpdatedTime;
    my $Name               = $GetApplicationResponse->Name;
    my $OwnerAccountId     = $GetApplicationResponse->OwnerAccountId;
    my $ProxyType          = $GetApplicationResponse->ProxyType;
    my $State              = $GetApplicationResponse->State;
    my $Tags               = $GetApplicationResponse->Tags;
    my $VpcId              = $GetApplicationResponse->VpcId;

 # Returns a L<Paws::MigrationHubRefactorSpaces::GetApplicationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/refactor-spaces/GetApplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationIdentifier => Str

The ID of the application.



=head2 B<REQUIRED> EnvironmentIdentifier => Str

The ID of the environment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetApplication in L<Paws::MigrationHubRefactorSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

