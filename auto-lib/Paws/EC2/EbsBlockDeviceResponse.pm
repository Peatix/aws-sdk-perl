package Paws::EC2::EbsBlockDeviceResponse;
  use Moose;
  has DeleteOnTermination => (is => 'ro', isa => 'Bool', request_name => 'deleteOnTermination', traits => ['NameInRequest']);
  has Encrypted => (is => 'ro', isa => 'Bool', request_name => 'encrypted', traits => ['NameInRequest']);
  has Iops => (is => 'ro', isa => 'Int', request_name => 'iops', traits => ['NameInRequest']);
  has KmsKeyId => (is => 'ro', isa => 'Str', request_name => 'kmsKeyId', traits => ['NameInRequest']);
  has SnapshotId => (is => 'ro', isa => 'Str', request_name => 'snapshotId', traits => ['NameInRequest']);
  has Throughput => (is => 'ro', isa => 'Int', request_name => 'throughput', traits => ['NameInRequest']);
  has VolumeSize => (is => 'ro', isa => 'Int', request_name => 'volumeSize', traits => ['NameInRequest']);
  has VolumeType => (is => 'ro', isa => 'Str', request_name => 'volumeType', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::EbsBlockDeviceResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::EbsBlockDeviceResponse object:

  $service_obj->Method(Att1 => { DeleteOnTermination => $value, ..., VolumeType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::EbsBlockDeviceResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->DeleteOnTermination

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 DeleteOnTermination => Bool

Indicates whether the volume is deleted on instance termination.


=head2 Encrypted => Bool

Indicates whether the volume is encrypted.


=head2 Iops => Int

The number of I/O operations per second (IOPS). For C<gp3>, C<io1>, and
C<io2> volumes, this represents the number of IOPS that are provisioned
for the volume. For C<gp2> volumes, this represents the baseline
performance of the volume and the rate at which the volume accumulates
I/O credits for bursting.


=head2 KmsKeyId => Str

Identifier (key ID, key alias, key ARN, or alias ARN) of the customer
managed KMS key to use for EBS encryption.


=head2 SnapshotId => Str

The ID of the snapshot.


=head2 Throughput => Int

The throughput that the volume supports, in MiB/s.


=head2 VolumeSize => Int

The size of the volume, in GiBs.


=head2 VolumeType => Str

The volume type. For more information, see Amazon EBS volume types
(https://docs.aws.amazon.com/ebs/latest/userguide/ebs-volume-types.html)
in the I<Amazon EBS User Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
