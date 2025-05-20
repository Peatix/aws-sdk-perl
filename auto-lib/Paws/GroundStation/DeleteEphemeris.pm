
package Paws::GroundStation::DeleteEphemeris;
  use Moose;
  has EphemerisId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ephemerisId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteEphemeris');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ephemeris/{ephemerisId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GroundStation::EphemerisIdResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::DeleteEphemeris - Arguments for method DeleteEphemeris on L<Paws::GroundStation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteEphemeris on the
L<AWS Ground Station|Paws::GroundStation> service. Use the attributes of this class
as arguments to method DeleteEphemeris.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteEphemeris.

=head1 SYNOPSIS

    my $groundstation = Paws->service('GroundStation');
    my $EphemerisIdResponse = $groundstation->DeleteEphemeris(
      EphemerisId => 'MyUuid',

    );

    # Results:
    my $EphemerisId = $EphemerisIdResponse->EphemerisId;

    # Returns a L<Paws::GroundStation::EphemerisIdResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/groundstation/DeleteEphemeris>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EphemerisId => Str

The AWS Ground Station ephemeris ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteEphemeris in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

