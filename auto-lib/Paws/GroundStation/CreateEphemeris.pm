
package Paws::GroundStation::CreateEphemeris;
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enabled');
  has Ephemeris => (is => 'ro', isa => 'Paws::GroundStation::EphemerisData', traits => ['NameInRequest'], request_name => 'ephemeris');
  has ExpirationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'expirationTime');
  has KmsKeyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyArn');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Priority => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'priority');
  has SatelliteId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'satelliteId', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::GroundStation::TagsMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEphemeris');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ephemeris');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GroundStation::EphemerisIdResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::CreateEphemeris - Arguments for method CreateEphemeris on L<Paws::GroundStation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEphemeris on the
L<AWS Ground Station|Paws::GroundStation> service. Use the attributes of this class
as arguments to method CreateEphemeris.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEphemeris.

=head1 SYNOPSIS

    my $groundstation = Paws->service('GroundStation');
    my $EphemerisIdResponse = $groundstation->CreateEphemeris(
      Name        => 'MySafeName',
      SatelliteId => 'MyUuid',
      Enabled     => 1,              # OPTIONAL
      Ephemeris   => {
        Oem => {
          OemData  => 'MyUnboundedString',    # min: 1; OPTIONAL
          S3Object => {
            Bucket  => 'MyS3BucketName',      # min: 3, max: 63; OPTIONAL
            Key     => 'MyS3ObjectKey',       # min: 1, max: 1024; OPTIONAL
            Version => 'MyS3VersionId',       # min: 1, max: 1024; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        Tle => {
          S3Object => {
            Bucket  => 'MyS3BucketName',    # min: 3, max: 63; OPTIONAL
            Key     => 'MyS3ObjectKey',     # min: 1, max: 1024; OPTIONAL
            Version => 'MyS3VersionId',     # min: 1, max: 1024; OPTIONAL
          },    # OPTIONAL
          TleData => [
            {
              TleLine1       => 'MyTleLineOne',    # min: 69, max: 69
              TleLine2       => 'MyTleLineTwo',    # min: 69, max: 69
              ValidTimeRange => {
                EndTime   => '1970-01-01T01:00:00',
                StartTime => '1970-01-01T01:00:00',

              },

            },
            ...
          ],    # min: 1, max: 500; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      ExpirationTime => '1970-01-01T01:00:00',            # OPTIONAL
      KmsKeyArn      => 'MyKeyArn',                       # OPTIONAL
      Priority       => 1,                                # OPTIONAL
      Tags           => { 'MyString' => 'MyString', },    # OPTIONAL
    );

    # Results:
    my $EphemerisId = $EphemerisIdResponse->EphemerisId;

    # Returns a L<Paws::GroundStation::EphemerisIdResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/groundstation/CreateEphemeris>

=head1 ATTRIBUTES


=head2 Enabled => Bool

Whether to set the ephemeris status to C<ENABLED> after validation.

Setting this to false will set the ephemeris status to C<DISABLED>
after validation.



=head2 Ephemeris => L<Paws::GroundStation::EphemerisData>

Ephemeris data.



=head2 ExpirationTime => Str

An overall expiration time for the ephemeris in UTC, after which it
will become C<EXPIRED>.



=head2 KmsKeyArn => Str

The ARN of a KMS key used to encrypt the ephemeris in Ground Station.



=head2 B<REQUIRED> Name => Str

A name string associated with the ephemeris. Used as a human-readable
identifier for the ephemeris.



=head2 Priority => Int

Customer-provided priority score to establish the order in which
overlapping ephemerides should be used.

The default for customer-provided ephemeris priority is 1, and higher
numbers take precedence.

Priority must be 1 or greater



=head2 B<REQUIRED> SatelliteId => Str

AWS Ground Station satellite ID for this ephemeris.



=head2 Tags => L<Paws::GroundStation::TagsMap>

Tags assigned to an ephemeris.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEphemeris in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

