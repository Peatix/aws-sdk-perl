
package Paws::Panorama::ListDevices;
  use Moose;
  has DeviceAggregatedStatusFilter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'DeviceAggregatedStatusFilter');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NameFilter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NameFilter');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has SortBy => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'SortBy');
  has SortOrder => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'SortOrder');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDevices');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/devices');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Panorama::ListDevicesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::ListDevices - Arguments for method ListDevices on L<Paws::Panorama>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDevices on the
L<AWS Panorama|Paws::Panorama> service. Use the attributes of this class
as arguments to method ListDevices.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDevices.

=head1 SYNOPSIS

    my $panorama = Paws->service('Panorama');
    my $ListDevicesResponse = $panorama->ListDevices(
      DeviceAggregatedStatusFilter => 'ERROR',           # OPTIONAL
      MaxResults                   => 1,                 # OPTIONAL
      NameFilter                   => 'MyNameFilter',    # OPTIONAL
      NextToken                    => 'MyNextToken',     # OPTIONAL
      SortBy                       => 'DEVICE_ID',       # OPTIONAL
      SortOrder                    => 'ASCENDING',       # OPTIONAL
    );

    # Results:
    my $Devices   = $ListDevicesResponse->Devices;
    my $NextToken = $ListDevicesResponse->NextToken;

    # Returns a L<Paws::Panorama::ListDevicesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/panorama/ListDevices>

=head1 ATTRIBUTES


=head2 DeviceAggregatedStatusFilter => Str

Filter based on a device's status.

Valid values are: C<"ERROR">, C<"AWAITING_PROVISIONING">, C<"PENDING">, C<"FAILED">, C<"DELETING">, C<"ONLINE">, C<"OFFLINE">, C<"LEASE_EXPIRED">, C<"UPDATE_NEEDED">, C<"REBOOTING">

=head2 MaxResults => Int

The maximum number of devices to return in one page of results.



=head2 NameFilter => Str

Filter based on device's name. Prefixes supported.



=head2 NextToken => Str

Specify the pagination token from a previous request to retrieve the
next page of results.



=head2 SortBy => Str

The target column to be sorted on. Default column sort is CREATED_TIME.

Valid values are: C<"DEVICE_ID">, C<"CREATED_TIME">, C<"NAME">, C<"DEVICE_AGGREGATED_STATUS">

=head2 SortOrder => Str

The sorting order for the returned list. SortOrder is DESCENDING by
default based on CREATED_TIME. Otherwise, SortOrder is ASCENDING.

Valid values are: C<"ASCENDING">, C<"DESCENDING">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDevices in L<Paws::Panorama>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

