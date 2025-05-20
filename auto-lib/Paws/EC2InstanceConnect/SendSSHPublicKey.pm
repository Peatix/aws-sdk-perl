
package Paws::EC2InstanceConnect::SendSSHPublicKey;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceOSUser => (is => 'ro', isa => 'Str', required => 1);
  has SSHPublicKey => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendSSHPublicKey');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2InstanceConnect::SendSSHPublicKeyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2InstanceConnect::SendSSHPublicKey - Arguments for method SendSSHPublicKey on L<Paws::EC2InstanceConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendSSHPublicKey on the
L<AWS EC2 Instance Connect|Paws::EC2InstanceConnect> service. Use the attributes of this class
as arguments to method SendSSHPublicKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendSSHPublicKey.

=head1 SYNOPSIS

    my $ec2-instance-connect = Paws->service('EC2InstanceConnect');
    # To push an SSH key to an EC2 instance
    # The following example pushes a sample SSH public key to the EC2 instance
    # i-abcd1234 in AZ us-west-2b for use by the instance OS user ec2-user.
    my $SendSSHPublicKeyResponse = $ec2 -instance-connect->SendSSHPublicKey(
      'AvailabilityZone' => 'us-west-2a',
      'InstanceId'       => 'i-abcd1234',
      'InstanceOSUser'   => 'ec2-user',
      'SSHPublicKey'     =>
'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC3FlHqj2eqCdrGHuA6dRjfZXQ4HX5lXEIRHaNbxEwE5Te7xNF7StwhrDtiV7IdT5fDqbRyGw/szPj3xGkNTVoElCZ2dDFb2qYZ1WLIpZwj/UhO9l2mgfjR56UojjQut5Jvn2KZ1OcyrNO0J83kCaJCV7JoVbXY79FBMUccYNY45zmv9+1FMCfY6i2jdIhwR6+yLk8oubL8lIPyq7X+6b9S0yKCkB7Peml1DvghlybpAIUrC9vofHt6XP4V1i0bImw1IlljQS+DUmULRFSccATDscCX9ajnj7Crhm0HAZC0tBPXpFdHkPwL3yzYo546SCS9LKEwz62ymxxbL9k7h09t'
    );

    # Results:
    my $RequestId = $SendSSHPublicKeyResponse->RequestId;
    my $Success   = $SendSSHPublicKeyResponse->Success;

    # Returns a L<Paws::EC2InstanceConnect::SendSSHPublicKeyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2-instance-connect/SendSSHPublicKey>

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

The Availability Zone in which the EC2 instance was launched.



=head2 B<REQUIRED> InstanceId => Str

The ID of the EC2 instance.



=head2 B<REQUIRED> InstanceOSUser => Str

The OS user on the EC2 instance for whom the key can be used to
authenticate.



=head2 B<REQUIRED> SSHPublicKey => Str

The public key material. To use the public key, you must have the
matching private key.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendSSHPublicKey in L<Paws::EC2InstanceConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

