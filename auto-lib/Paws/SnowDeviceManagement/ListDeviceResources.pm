
package Paws::SnowDeviceManagement::ListDeviceResources;
  use Moose;
  has ManagedDeviceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'managedDeviceId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has Type => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'type');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDeviceResources');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/managed-device/{managedDeviceId}/resources');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SnowDeviceManagement::ListDeviceResourcesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SnowDeviceManagement::ListDeviceResources - Arguments for method ListDeviceResources on L<Paws::SnowDeviceManagement>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDeviceResources on the
L<AWS Snow Device Management|Paws::SnowDeviceManagement> service. Use the attributes of this class
as arguments to method ListDeviceResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDeviceResources.

=head1 SYNOPSIS

    my $snow-device-management = Paws->service('SnowDeviceManagement');
    my $ListDeviceResourcesOutput =
      $snow -device-management->ListDeviceResources(
      ManagedDeviceId => 'MyManagedDeviceId',
      MaxResults      => 1,                                         # OPTIONAL
      NextToken       => 'MyNextToken',                             # OPTIONAL
      Type            => 'MyListDeviceResourcesInputTypeString',    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListDeviceResourcesOutput->NextToken;
    my $Resources = $ListDeviceResourcesOutput->Resources;

    # Returns a L<Paws::SnowDeviceManagement::ListDeviceResourcesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/snow-device-management/ListDeviceResources>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ManagedDeviceId => Str

The ID of the managed device that you are listing the resources of.



=head2 MaxResults => Int

The maximum number of resources per page.



=head2 NextToken => Str

A pagination token to continue to the next page of results.



=head2 Type => Str

A structure used to filter the results by type of resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDeviceResources in L<Paws::SnowDeviceManagement>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

