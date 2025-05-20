
package Paws::MigrationHubRefactorSpaces::GetEnvironment;
  use Moose;
  has EnvironmentIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EnvironmentIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEnvironment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/environments/{EnvironmentIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubRefactorSpaces::GetEnvironmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubRefactorSpaces::GetEnvironment - Arguments for method GetEnvironment on L<Paws::MigrationHubRefactorSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEnvironment on the
L<AWS Migration Hub Refactor Spaces|Paws::MigrationHubRefactorSpaces> service. Use the attributes of this class
as arguments to method GetEnvironment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEnvironment.

=head1 SYNOPSIS

    my $refactor-spaces = Paws->service('MigrationHubRefactorSpaces');
    my $GetEnvironmentResponse = $refactor -spaces->GetEnvironment(
      EnvironmentIdentifier => 'MyEnvironmentId',

    );

    # Results:
    my $Arn               = $GetEnvironmentResponse->Arn;
    my $CreatedTime       = $GetEnvironmentResponse->CreatedTime;
    my $Description       = $GetEnvironmentResponse->Description;
    my $EnvironmentId     = $GetEnvironmentResponse->EnvironmentId;
    my $Error             = $GetEnvironmentResponse->Error;
    my $LastUpdatedTime   = $GetEnvironmentResponse->LastUpdatedTime;
    my $Name              = $GetEnvironmentResponse->Name;
    my $NetworkFabricType = $GetEnvironmentResponse->NetworkFabricType;
    my $OwnerAccountId    = $GetEnvironmentResponse->OwnerAccountId;
    my $State             = $GetEnvironmentResponse->State;
    my $Tags              = $GetEnvironmentResponse->Tags;
    my $TransitGatewayId  = $GetEnvironmentResponse->TransitGatewayId;

 # Returns a L<Paws::MigrationHubRefactorSpaces::GetEnvironmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/refactor-spaces/GetEnvironment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EnvironmentIdentifier => Str

The ID of the environment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEnvironment in L<Paws::MigrationHubRefactorSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

