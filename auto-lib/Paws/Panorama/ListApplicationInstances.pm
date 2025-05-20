
package Paws::Panorama::ListApplicationInstances;
  use Moose;
  has DeviceId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'deviceId');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has StatusFilter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'statusFilter');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListApplicationInstances');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/application-instances');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Panorama::ListApplicationInstancesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::ListApplicationInstances - Arguments for method ListApplicationInstances on L<Paws::Panorama>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListApplicationInstances on the
L<AWS Panorama|Paws::Panorama> service. Use the attributes of this class
as arguments to method ListApplicationInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListApplicationInstances.

=head1 SYNOPSIS

    my $panorama = Paws->service('Panorama');
    my $ListApplicationInstancesResponse = $panorama->ListApplicationInstances(
      DeviceId     => 'MyDeviceId',              # OPTIONAL
      MaxResults   => 1,                         # OPTIONAL
      NextToken    => 'MyNextToken',             # OPTIONAL
      StatusFilter => 'DEPLOYMENT_SUCCEEDED',    # OPTIONAL
    );

    # Results:
    my $ApplicationInstances =
      $ListApplicationInstancesResponse->ApplicationInstances;
    my $NextToken = $ListApplicationInstancesResponse->NextToken;

    # Returns a L<Paws::Panorama::ListApplicationInstancesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/panorama/ListApplicationInstances>

=head1 ATTRIBUTES


=head2 DeviceId => Str

The application instances' device ID.



=head2 MaxResults => Int

The maximum number of application instances to return in one page of
results.



=head2 NextToken => Str

Specify the pagination token from a previous request to retrieve the
next page of results.



=head2 StatusFilter => Str

Only include instances with a specific status.

Valid values are: C<"DEPLOYMENT_SUCCEEDED">, C<"DEPLOYMENT_ERROR">, C<"REMOVAL_SUCCEEDED">, C<"REMOVAL_FAILED">, C<"PROCESSING_DEPLOYMENT">, C<"PROCESSING_REMOVAL">, C<"DEPLOYMENT_FAILED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListApplicationInstances in L<Paws::Panorama>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

