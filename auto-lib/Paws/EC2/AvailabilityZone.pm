package Paws::EC2::AvailabilityZone;
  use Moose;
  has GroupLongName => (is => 'ro', isa => 'Str', request_name => 'groupLongName', traits => ['NameInRequest']);
  has GroupName => (is => 'ro', isa => 'Str', request_name => 'groupName', traits => ['NameInRequest']);
  has Messages => (is => 'ro', isa => 'ArrayRef[Paws::EC2::AvailabilityZoneMessage]', request_name => 'messageSet', traits => ['NameInRequest']);
  has NetworkBorderGroup => (is => 'ro', isa => 'Str', request_name => 'networkBorderGroup', traits => ['NameInRequest']);
  has OptInStatus => (is => 'ro', isa => 'Str', request_name => 'optInStatus', traits => ['NameInRequest']);
  has ParentZoneId => (is => 'ro', isa => 'Str', request_name => 'parentZoneId', traits => ['NameInRequest']);
  has ParentZoneName => (is => 'ro', isa => 'Str', request_name => 'parentZoneName', traits => ['NameInRequest']);
  has RegionName => (is => 'ro', isa => 'Str', request_name => 'regionName', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'zoneState', traits => ['NameInRequest']);
  has ZoneId => (is => 'ro', isa => 'Str', request_name => 'zoneId', traits => ['NameInRequest']);
  has ZoneName => (is => 'ro', isa => 'Str', request_name => 'zoneName', traits => ['NameInRequest']);
  has ZoneType => (is => 'ro', isa => 'Str', request_name => 'zoneType', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AvailabilityZone

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::AvailabilityZone object:

  $service_obj->Method(Att1 => { GroupLongName => $value, ..., ZoneType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::AvailabilityZone object:

  $result = $service_obj->Method(...);
  $result->Att1->GroupLongName

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 GroupLongName => Str

The long name of the Availability Zone group, Local Zone group, or
Wavelength Zone group.


=head2 GroupName => Str

The name of the zone group. For example:

=over

=item *

Availability Zones - C<us-east-1-zg-1>

=item *

Local Zones - C<us-west-2-lax-1>

=item *

Wavelength Zones - C<us-east-1-wl1-bos-wlz-1>

=back



=head2 Messages => ArrayRef[L<Paws::EC2::AvailabilityZoneMessage>]

Any messages about the Availability Zone, Local Zone, or Wavelength
Zone.


=head2 NetworkBorderGroup => Str

The name of the network border group.


=head2 OptInStatus => Str

For Availability Zones, this parameter always has the value of
C<opt-in-not-required>.

For Local Zones and Wavelength Zones, this parameter is the opt-in
status. The possible values are C<opted-in> and C<not-opted-in>.


=head2 ParentZoneId => Str

The ID of the zone that handles some of the Local Zone or Wavelength
Zone control plane operations, such as API calls.


=head2 ParentZoneName => Str

The name of the zone that handles some of the Local Zone or Wavelength
Zone control plane operations, such as API calls.


=head2 RegionName => Str

The name of the Region.


=head2 State => Str

The state of the Availability Zone, Local Zone, or Wavelength Zone. The
possible values are C<available>, C<unavailable>, and C<constrained>.


=head2 ZoneId => Str

The ID of the Availability Zone, Local Zone, or Wavelength Zone.


=head2 ZoneName => Str

The name of the Availability Zone, Local Zone, or Wavelength Zone.


=head2 ZoneType => Str

The type of zone.

Valid values: C<availability-zone> | C<local-zone> | C<wavelength-zone>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
