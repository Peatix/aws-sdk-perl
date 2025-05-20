
package Paws::IoTFleetWise::GetVehicleResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' );
  has Attributes => (is => 'ro', isa => 'Paws::IoTFleetWise::AttributesMap', traits => ['NameInRequest'], request_name => 'attributes' );
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime' );
  has DecoderManifestArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'decoderManifestArn' );
  has LastModificationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModificationTime' );
  has ModelManifestArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelManifestArn' );
  has StateTemplates => (is => 'ro', isa => 'ArrayRef[Paws::IoTFleetWise::StateTemplateAssociation]', traits => ['NameInRequest'], request_name => 'stateTemplates' );
  has VehicleName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vehicleName' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::GetVehicleResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the vehicle to retrieve information
about.


=head2 Attributes => L<Paws::IoTFleetWise::AttributesMap>

Static information about a vehicle in a key-value pair. For example:

C<"engineType"> : C<"1.3 L R2">


=head2 CreationTime => Str

The time the vehicle was created in seconds since epoch (January 1,
1970 at midnight UTC time).


=head2 DecoderManifestArn => Str

The ARN of a decoder manifest associated with the vehicle.


=head2 LastModificationTime => Str

The time the vehicle was last updated in seconds since epoch (January
1, 1970 at midnight UTC time).


=head2 ModelManifestArn => Str

The ARN of a vehicle model (model manifest) associated with the
vehicle.


=head2 StateTemplates => ArrayRef[L<Paws::IoTFleetWise::StateTemplateAssociation>]

State templates associated with the vehicle.


=head2 VehicleName => Str

The ID of the vehicle.


=head2 _request_id => Str


=cut

1;