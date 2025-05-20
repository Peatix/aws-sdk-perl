
package Paws::MigrationHubStrategy::GetApplicationComponentDetails;
  use Moose;
  has ApplicationComponentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationComponentId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetApplicationComponentDetails');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/get-applicationcomponent-details/{applicationComponentId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubStrategy::GetApplicationComponentDetailsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubStrategy::GetApplicationComponentDetails - Arguments for method GetApplicationComponentDetails on L<Paws::MigrationHubStrategy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetApplicationComponentDetails on the
L<Migration Hub Strategy Recommendations|Paws::MigrationHubStrategy> service. Use the attributes of this class
as arguments to method GetApplicationComponentDetails.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetApplicationComponentDetails.

=head1 SYNOPSIS

    my $migrationhub-strategy = Paws->service('MigrationHubStrategy');
    my $GetApplicationComponentDetailsResponse =
      $migrationhub -strategy->GetApplicationComponentDetails(
      ApplicationComponentId => 'MyApplicationComponentId',

      );

    # Results:
    my $ApplicationComponentDetail =
      $GetApplicationComponentDetailsResponse->ApplicationComponentDetail;
    my $AssociatedApplications =
      $GetApplicationComponentDetailsResponse->AssociatedApplications;
    my $AssociatedServerIds =
      $GetApplicationComponentDetailsResponse->AssociatedServerIds;
    my $MoreApplicationResource =
      $GetApplicationComponentDetailsResponse->MoreApplicationResource;

# Returns a L<Paws::MigrationHubStrategy::GetApplicationComponentDetailsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/migrationhub-strategy/GetApplicationComponentDetails>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationComponentId => Str

The ID of the application component. The ID is unique within an AWS
account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetApplicationComponentDetails in L<Paws::MigrationHubStrategy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

