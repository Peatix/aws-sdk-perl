
package Paws::IoTFleetWise::ListVehicles;
  use Moose;
  has AttributeNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'attributeNames' );
  has AttributeValues => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'attributeValues' );
  has ListResponseScope => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'listResponseScope' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has ModelManifestArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelManifestArn' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListVehicles');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTFleetWise::ListVehiclesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::ListVehicles - Arguments for method ListVehicles on L<Paws::IoTFleetWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListVehicles on the
L<AWS IoT FleetWise|Paws::IoTFleetWise> service. Use the attributes of this class
as arguments to method ListVehicles.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListVehicles.

=head1 SYNOPSIS

    my $iotfleetwise = Paws->service('IoTFleetWise');
    my $ListVehiclesResponse = $iotfleetwise->ListVehicles(
      AttributeNames => [
        'MyattributeName', ...    # min: 1, max: 150
      ],    # OPTIONAL
      AttributeValues   => [ 'MyattributeValue', ... ],    # OPTIONAL
      ListResponseScope => 'METADATA_ONLY',                # OPTIONAL
      MaxResults        => 1,                              # OPTIONAL
      ModelManifestArn  => 'Myarn',                        # OPTIONAL
      NextToken         => 'MynextToken',                  # OPTIONAL
    );

    # Results:
    my $NextToken        = $ListVehiclesResponse->NextToken;
    my $VehicleSummaries = $ListVehiclesResponse->VehicleSummaries;

    # Returns a L<Paws::IoTFleetWise::ListVehiclesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotfleetwise/ListVehicles>

=head1 ATTRIBUTES


=head2 AttributeNames => ArrayRef[Str|Undef]

The fully qualified names of the attributes. You can use this optional
parameter to list the vehicles containing all the attributes in the
request. For example, C<attributeNames> could be
"C<Vehicle.Body.Engine.Type, Vehicle.Color>" and the corresponding
C<attributeValues> could be "C<1.3 L R2, Blue>" . In this case, the API
will filter vehicles with an attribute name C<Vehicle.Body.Engine.Type>
that contains a value of C<1.3 L R2> AND an attribute name
C<Vehicle.Color> that contains a value of "C<Blue>". A request must
contain unique values for the C<attributeNames> filter and the matching
number of C<attributeValues> filters to return the subset of vehicles
that match the attributes filter condition.



=head2 AttributeValues => ArrayRef[Str|Undef]

Static information about a vehicle attribute value in string format.
You can use this optional parameter in conjunction with
C<attributeNames> to list the vehicles containing all the
C<attributeValues> corresponding to the C<attributeNames> filter. For
example, C<attributeValues> could be "C<1.3 L R2, Blue>" and the
corresponding C<attributeNames> filter could be
"C<Vehicle.Body.Engine.Type, Vehicle.Color>". In this case, the API
will filter vehicles with attribute name C<Vehicle.Body.Engine.Type>
that contains a value of C<1.3 L R2> AND an attribute name
C<Vehicle.Color> that contains a value of "C<Blue>". A request must
contain unique values for the C<attributeNames> filter and the matching
number of C<attributeValues> filter to return the subset of vehicles
that match the attributes filter condition.



=head2 ListResponseScope => Str

When you set the C<listResponseScope> parameter to C<METADATA_ONLY>,
the list response includes: vehicle name, Amazon Resource Name (ARN),
creation time, and last modification time.

Valid values are: C<"METADATA_ONLY">

=head2 MaxResults => Int

The maximum number of items to return, between 1 and 100, inclusive.



=head2 ModelManifestArn => Str

The Amazon Resource Name (ARN) of a vehicle model (model manifest). You
can use this optional parameter to list only the vehicles created from
a certain vehicle model.



=head2 NextToken => Str

A pagination token for the next set of results.

If the results of a search are large, only a portion of the results are
returned, and a C<nextToken> pagination token is returned in the
response. To retrieve the next set of results, reissue the search
request and include the returned token. When all results have been
returned, the response does not contain a pagination token value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListVehicles in L<Paws::IoTFleetWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

