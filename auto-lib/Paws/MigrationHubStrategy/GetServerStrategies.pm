
package Paws::MigrationHubStrategy::GetServerStrategies;
  use Moose;
  has ServerId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'serverId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetServerStrategies');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/get-server-strategies/{serverId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubStrategy::GetServerStrategiesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubStrategy::GetServerStrategies - Arguments for method GetServerStrategies on L<Paws::MigrationHubStrategy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetServerStrategies on the
L<Migration Hub Strategy Recommendations|Paws::MigrationHubStrategy> service. Use the attributes of this class
as arguments to method GetServerStrategies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetServerStrategies.

=head1 SYNOPSIS

    my $migrationhub-strategy = Paws->service('MigrationHubStrategy');
    my $GetServerStrategiesResponse =
      $migrationhub -strategy->GetServerStrategies(
      ServerId => 'MyServerId',

      );

    # Results:
    my $ServerStrategies = $GetServerStrategiesResponse->ServerStrategies;

  # Returns a L<Paws::MigrationHubStrategy::GetServerStrategiesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/migrationhub-strategy/GetServerStrategies>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServerId => Str

The ID of the server.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetServerStrategies in L<Paws::MigrationHubStrategy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

