
package Paws::MigrationHubRefactorSpaces::DeleteApplication;
  use Moose;
  has ApplicationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ApplicationIdentifier', required => 1);
  has EnvironmentIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EnvironmentIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteApplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubRefactorSpaces::DeleteApplicationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubRefactorSpaces::DeleteApplication - Arguments for method DeleteApplication on L<Paws::MigrationHubRefactorSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteApplication on the
L<AWS Migration Hub Refactor Spaces|Paws::MigrationHubRefactorSpaces> service. Use the attributes of this class
as arguments to method DeleteApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteApplication.

=head1 SYNOPSIS

    my $refactor-spaces = Paws->service('MigrationHubRefactorSpaces');
    my $DeleteApplicationResponse = $refactor -spaces->DeleteApplication(
      ApplicationIdentifier => 'MyApplicationId',
      EnvironmentIdentifier => 'MyEnvironmentId',

    );

    # Results:
    my $ApplicationId   = $DeleteApplicationResponse->ApplicationId;
    my $Arn             = $DeleteApplicationResponse->Arn;
    my $EnvironmentId   = $DeleteApplicationResponse->EnvironmentId;
    my $LastUpdatedTime = $DeleteApplicationResponse->LastUpdatedTime;
    my $Name            = $DeleteApplicationResponse->Name;
    my $State           = $DeleteApplicationResponse->State;

# Returns a L<Paws::MigrationHubRefactorSpaces::DeleteApplicationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/refactor-spaces/DeleteApplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationIdentifier => Str

The ID of the application.



=head2 B<REQUIRED> EnvironmentIdentifier => Str

The ID of the environment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteApplication in L<Paws::MigrationHubRefactorSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

