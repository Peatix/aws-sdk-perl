
package Paws::GroundStation::UpdateEphemeris;
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enabled', required => 1);
  has EphemerisId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ephemerisId', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Priority => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'priority');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEphemeris');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ephemeris/{ephemerisId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GroundStation::EphemerisIdResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::UpdateEphemeris - Arguments for method UpdateEphemeris on L<Paws::GroundStation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEphemeris on the
L<AWS Ground Station|Paws::GroundStation> service. Use the attributes of this class
as arguments to method UpdateEphemeris.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEphemeris.

=head1 SYNOPSIS

    my $groundstation = Paws->service('GroundStation');
    my $EphemerisIdResponse = $groundstation->UpdateEphemeris(
      Enabled     => 1,
      EphemerisId => 'MyUuid',
      Name        => 'MySafeName',    # OPTIONAL
      Priority    => 1,               # OPTIONAL
    );

    # Results:
    my $EphemerisId = $EphemerisIdResponse->EphemerisId;

    # Returns a L<Paws::GroundStation::EphemerisIdResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/groundstation/UpdateEphemeris>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Enabled => Bool

Whether the ephemeris is enabled or not. Changing this value will not
require the ephemeris to be re-validated.



=head2 B<REQUIRED> EphemerisId => Str

The AWS Ground Station ephemeris ID.



=head2 Name => Str

A name string associated with the ephemeris. Used as a human-readable
identifier for the ephemeris.



=head2 Priority => Int

Customer-provided priority score to establish the order in which
overlapping ephemerides should be used.

The default for customer-provided ephemeris priority is 1, and higher
numbers take precedence.

Priority must be 1 or greater




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEphemeris in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

