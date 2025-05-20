package Paws::EC2::VpcEncryptionControl;
  use Moose;
  has Mode => (is => 'ro', isa => 'Str', request_name => 'mode', traits => ['NameInRequest']);
  has ResourceExclusions => (is => 'ro', isa => 'Paws::EC2::VpcEncryptionControlExclusions', request_name => 'resourceExclusions', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has StateMessage => (is => 'ro', isa => 'Str', request_name => 'stateMessage', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has VpcEncryptionControlId => (is => 'ro', isa => 'Str', request_name => 'vpcEncryptionControlId', traits => ['NameInRequest']);
  has VpcId => (is => 'ro', isa => 'Str', request_name => 'vpcId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VpcEncryptionControl

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::VpcEncryptionControl object:

  $service_obj->Method(Att1 => { Mode => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::VpcEncryptionControl object:

  $result = $service_obj->Method(...);
  $result->Att1->Mode

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Mode => Str




=head2 ResourceExclusions => L<Paws::EC2::VpcEncryptionControlExclusions>




=head2 State => Str




=head2 StateMessage => Str




=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]




=head2 VpcEncryptionControlId => Str




=head2 VpcId => Str





=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
