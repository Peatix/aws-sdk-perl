
package Paws::MigrationHubStrategy::GetApplicationComponentStrategies;
  use Moose;
  has ApplicationComponentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationComponentId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetApplicationComponentStrategies');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/get-applicationcomponent-strategies/{applicationComponentId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubStrategy::GetApplicationComponentStrategiesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubStrategy::GetApplicationComponentStrategies - Arguments for method GetApplicationComponentStrategies on L<Paws::MigrationHubStrategy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetApplicationComponentStrategies on the
L<Migration Hub Strategy Recommendations|Paws::MigrationHubStrategy> service. Use the attributes of this class
as arguments to method GetApplicationComponentStrategies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetApplicationComponentStrategies.

=head1 SYNOPSIS

    my $migrationhub-strategy = Paws->service('MigrationHubStrategy');
    my $GetApplicationComponentStrategiesResponse =
      $migrationhub -strategy->GetApplicationComponentStrategies(
      ApplicationComponentId => 'MyApplicationComponentId',

      );

    # Results:
    my $ApplicationComponentStrategies =
      $GetApplicationComponentStrategiesResponse
      ->ApplicationComponentStrategies;

# Returns a L<Paws::MigrationHubStrategy::GetApplicationComponentStrategiesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/migrationhub-strategy/GetApplicationComponentStrategies>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationComponentId => Str

The ID of the application component. The ID is unique within an AWS
account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetApplicationComponentStrategies in L<Paws::MigrationHubStrategy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

