package Paws::EC2::InstanceSpecification;
  use Moose;
  has ExcludeBootVolume => (is => 'ro', isa => 'Bool');
  has ExcludeDataVolumeIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'ExcludeDataVolumeId', traits => ['NameInRequest']);
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::InstanceSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::InstanceSpecification object:

  $service_obj->Method(Att1 => { ExcludeBootVolume => $value, ..., InstanceId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::InstanceSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->ExcludeBootVolume

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ExcludeBootVolume => Bool

Excludes the root volume from being snapshotted.


=head2 ExcludeDataVolumeIds => ArrayRef[Str|Undef]

The IDs of the data (non-root) volumes to exclude from the multi-volume
snapshot set. If you specify the ID of the root volume, the request
fails. To exclude the root volume, use B<ExcludeBootVolume>.

You can specify up to 40 volume IDs per request.


=head2 B<REQUIRED> InstanceId => Str

The instance to specify which volumes should be snapshotted.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
