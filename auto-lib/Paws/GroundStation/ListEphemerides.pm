
package Paws::GroundStation::ListEphemerides;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has SatelliteId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'satelliteId', required => 1);
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime', required => 1);
  has StatusList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'statusList');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEphemerides');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ephemerides');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GroundStation::ListEphemeridesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::ListEphemerides - Arguments for method ListEphemerides on L<Paws::GroundStation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEphemerides on the
L<AWS Ground Station|Paws::GroundStation> service. Use the attributes of this class
as arguments to method ListEphemerides.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEphemerides.

=head1 SYNOPSIS

    my $groundstation = Paws->service('GroundStation');
    my $ListEphemeridesResponse = $groundstation->ListEphemerides(
      EndTime     => '1970-01-01T01:00:00',
      SatelliteId => 'MyUuid',
      StartTime   => '1970-01-01T01:00:00',
      MaxResults  => 1,                       # OPTIONAL
      NextToken   => 'MyPaginationToken',     # OPTIONAL
      StatusList  => [
        'VALIDATING',
        ...    # values: VALIDATING, INVALID, ERROR, ENABLED, DISABLED, EXPIRED
      ],    # OPTIONAL
    );

    # Results:
    my $Ephemerides = $ListEphemeridesResponse->Ephemerides;
    my $NextToken   = $ListEphemeridesResponse->NextToken;

    # Returns a L<Paws::GroundStation::ListEphemeridesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/groundstation/ListEphemerides>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Str

The end time to list in UTC. The operation will return an ephemeris if
its expiration time is within the time range defined by the
C<startTime> and C<endTime>.



=head2 MaxResults => Int

Maximum number of ephemerides to return.



=head2 NextToken => Str

Pagination token.



=head2 B<REQUIRED> SatelliteId => Str

The AWS Ground Station satellite ID to list ephemeris for.



=head2 B<REQUIRED> StartTime => Str

The start time to list in UTC. The operation will return an ephemeris
if its expiration time is within the time range defined by the
C<startTime> and C<endTime>.



=head2 StatusList => ArrayRef[Str|Undef]

The list of ephemeris status to return.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEphemerides in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

