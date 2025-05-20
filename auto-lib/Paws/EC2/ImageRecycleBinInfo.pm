package Paws::EC2::ImageRecycleBinInfo;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has ImageId => (is => 'ro', isa => 'Str', request_name => 'imageId', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has RecycleBinEnterTime => (is => 'ro', isa => 'Str', request_name => 'recycleBinEnterTime', traits => ['NameInRequest']);
  has RecycleBinExitTime => (is => 'ro', isa => 'Str', request_name => 'recycleBinExitTime', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ImageRecycleBinInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ImageRecycleBinInfo object:

  $service_obj->Method(Att1 => { Description => $value, ..., RecycleBinExitTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ImageRecycleBinInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Description => Str

The description of the AMI.


=head2 ImageId => Str

The ID of the AMI.


=head2 Name => Str

The name of the AMI.


=head2 RecycleBinEnterTime => Str

The date and time when the AMI entered the Recycle Bin.


=head2 RecycleBinExitTime => Str

The date and time when the AMI is to be permanently deleted from the
Recycle Bin.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
