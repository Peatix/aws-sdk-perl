package Paws::EC2::VpcEncryptionControlExclusions;
  use Moose;
  has EgressOnlyInternetGateway => (is => 'ro', isa => 'Paws::EC2::VpcEncryptionControlExclusion', request_name => 'egressOnlyInternetGateway', traits => ['NameInRequest']);
  has InternetGateway => (is => 'ro', isa => 'Paws::EC2::VpcEncryptionControlExclusion', request_name => 'internetGateway', traits => ['NameInRequest']);
  has NatGateway => (is => 'ro', isa => 'Paws::EC2::VpcEncryptionControlExclusion', request_name => 'natGateway', traits => ['NameInRequest']);
  has VirtualPrivateGateway => (is => 'ro', isa => 'Paws::EC2::VpcEncryptionControlExclusion', request_name => 'virtualPrivateGateway', traits => ['NameInRequest']);
  has VpcPeering => (is => 'ro', isa => 'Paws::EC2::VpcEncryptionControlExclusion', request_name => 'vpcPeering', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VpcEncryptionControlExclusions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::VpcEncryptionControlExclusions object:

  $service_obj->Method(Att1 => { EgressOnlyInternetGateway => $value, ..., VpcPeering => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::VpcEncryptionControlExclusions object:

  $result = $service_obj->Method(...);
  $result->Att1->EgressOnlyInternetGateway

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 EgressOnlyInternetGateway => L<Paws::EC2::VpcEncryptionControlExclusion>




=head2 InternetGateway => L<Paws::EC2::VpcEncryptionControlExclusion>




=head2 NatGateway => L<Paws::EC2::VpcEncryptionControlExclusion>




=head2 VirtualPrivateGateway => L<Paws::EC2::VpcEncryptionControlExclusion>




=head2 VpcPeering => L<Paws::EC2::VpcEncryptionControlExclusion>





=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
