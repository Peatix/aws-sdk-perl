package Paws::EC2::InstanceImageMetadata;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', request_name => 'availabilityZone', traits => ['NameInRequest']);
  has ImageMetadata => (is => 'ro', isa => 'Paws::EC2::ImageMetadata', request_name => 'imageMetadata', traits => ['NameInRequest']);
  has InstanceId => (is => 'ro', isa => 'Str', request_name => 'instanceId', traits => ['NameInRequest']);
  has InstanceType => (is => 'ro', isa => 'Str', request_name => 'instanceType', traits => ['NameInRequest']);
  has LaunchTime => (is => 'ro', isa => 'Str', request_name => 'launchTime', traits => ['NameInRequest']);
  has Operator => (is => 'ro', isa => 'Paws::EC2::OperatorResponse', request_name => 'operator', traits => ['NameInRequest']);
  has OwnerId => (is => 'ro', isa => 'Str', request_name => 'instanceOwnerId', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Paws::EC2::InstanceState', request_name => 'instanceState', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has ZoneId => (is => 'ro', isa => 'Str', request_name => 'zoneId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::InstanceImageMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::InstanceImageMetadata object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., ZoneId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::InstanceImageMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

The Availability Zone or Local Zone of the instance.


=head2 ImageMetadata => L<Paws::EC2::ImageMetadata>

Information about the AMI used to launch the instance.


=head2 InstanceId => Str

The ID of the instance.


=head2 InstanceType => Str

The instance type.


=head2 LaunchTime => Str

The time the instance was launched.


=head2 Operator => L<Paws::EC2::OperatorResponse>

The entity that manages the instance.


=head2 OwnerId => Str

The ID of the Amazon Web Services account that owns the instance.


=head2 State => L<Paws::EC2::InstanceState>

The current state of the instance.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

Any tags assigned to the instance.


=head2 ZoneId => Str

The ID of the Availability Zone or Local Zone of the instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
