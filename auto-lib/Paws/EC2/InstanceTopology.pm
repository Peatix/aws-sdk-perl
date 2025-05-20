package Paws::EC2::InstanceTopology;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', request_name => 'availabilityZone', traits => ['NameInRequest']);
  has GroupName => (is => 'ro', isa => 'Str', request_name => 'groupName', traits => ['NameInRequest']);
  has InstanceId => (is => 'ro', isa => 'Str', request_name => 'instanceId', traits => ['NameInRequest']);
  has InstanceType => (is => 'ro', isa => 'Str', request_name => 'instanceType', traits => ['NameInRequest']);
  has NetworkNodes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'networkNodeSet', traits => ['NameInRequest']);
  has ZoneId => (is => 'ro', isa => 'Str', request_name => 'zoneId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::InstanceTopology

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::InstanceTopology object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., ZoneId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::InstanceTopology object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

The name of the Availability Zone or Local Zone that the instance is
in.


=head2 GroupName => Str

The name of the placement group that the instance is in.


=head2 InstanceId => Str

The instance ID.


=head2 InstanceType => Str

The instance type.


=head2 NetworkNodes => ArrayRef[Str|Undef]

The network nodes. The nodes are hashed based on your account.
Instances from different accounts running under the same server will
return a different hashed list of strings.


=head2 ZoneId => Str

The ID of the Availability Zone or Local Zone that the instance is in.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
