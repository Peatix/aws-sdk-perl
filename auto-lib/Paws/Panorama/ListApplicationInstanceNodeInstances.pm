
package Paws::Panorama::ListApplicationInstanceNodeInstances;
  use Moose;
  has ApplicationInstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ApplicationInstanceId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListApplicationInstanceNodeInstances');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/application-instances/{ApplicationInstanceId}/node-instances');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Panorama::ListApplicationInstanceNodeInstancesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::ListApplicationInstanceNodeInstances - Arguments for method ListApplicationInstanceNodeInstances on L<Paws::Panorama>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListApplicationInstanceNodeInstances on the
L<AWS Panorama|Paws::Panorama> service. Use the attributes of this class
as arguments to method ListApplicationInstanceNodeInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListApplicationInstanceNodeInstances.

=head1 SYNOPSIS

    my $panorama = Paws->service('Panorama');
    my $ListApplicationInstanceNodeInstancesResponse =
      $panorama->ListApplicationInstanceNodeInstances(
      ApplicationInstanceId => 'MyApplicationInstanceId',
      MaxResults            => 1,                           # OPTIONAL
      NextToken             => 'MyNextToken',               # OPTIONAL
      );

    # Results:
    my $NextToken = $ListApplicationInstanceNodeInstancesResponse->NextToken;
    my $NodeInstances =
      $ListApplicationInstanceNodeInstancesResponse->NodeInstances;

# Returns a L<Paws::Panorama::ListApplicationInstanceNodeInstancesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/panorama/ListApplicationInstanceNodeInstances>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationInstanceId => Str

The node instances' application instance ID.



=head2 MaxResults => Int

The maximum number of node instances to return in one page of results.



=head2 NextToken => Str

Specify the pagination token from a previous request to retrieve the
next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListApplicationInstanceNodeInstances in L<Paws::Panorama>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

