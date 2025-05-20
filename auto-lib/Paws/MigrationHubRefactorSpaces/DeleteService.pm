
package Paws::MigrationHubRefactorSpaces::DeleteService;
  use Moose;
  has ApplicationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ApplicationIdentifier', required => 1);
  has EnvironmentIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EnvironmentIdentifier', required => 1);
  has ServiceIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ServiceIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteService');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/services/{ServiceIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubRefactorSpaces::DeleteServiceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubRefactorSpaces::DeleteService - Arguments for method DeleteService on L<Paws::MigrationHubRefactorSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteService on the
L<AWS Migration Hub Refactor Spaces|Paws::MigrationHubRefactorSpaces> service. Use the attributes of this class
as arguments to method DeleteService.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteService.

=head1 SYNOPSIS

    my $refactor-spaces = Paws->service('MigrationHubRefactorSpaces');
    my $DeleteServiceResponse = $refactor -spaces->DeleteService(
      ApplicationIdentifier => 'MyApplicationId',
      EnvironmentIdentifier => 'MyEnvironmentId',
      ServiceIdentifier     => 'MyServiceId',

    );

    # Results:
    my $ApplicationId   = $DeleteServiceResponse->ApplicationId;
    my $Arn             = $DeleteServiceResponse->Arn;
    my $EnvironmentId   = $DeleteServiceResponse->EnvironmentId;
    my $LastUpdatedTime = $DeleteServiceResponse->LastUpdatedTime;
    my $Name            = $DeleteServiceResponse->Name;
    my $ServiceId       = $DeleteServiceResponse->ServiceId;
    my $State           = $DeleteServiceResponse->State;

  # Returns a L<Paws::MigrationHubRefactorSpaces::DeleteServiceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/refactor-spaces/DeleteService>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationIdentifier => Str

Deletes a Refactor Spaces service.

The C<RefactorSpacesSecurityGroup> security group must be removed from
all Amazon Web Services resources in the virtual private cloud (VPC)
prior to deleting a service with a URL endpoint in a VPC.



=head2 B<REQUIRED> EnvironmentIdentifier => Str

The ID of the environment that the service is in.



=head2 B<REQUIRED> ServiceIdentifier => Str

The ID of the service to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteService in L<Paws::MigrationHubRefactorSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

