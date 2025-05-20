package Paws::EC2::ReferencedSecurityGroup;
  use Moose;
  has GroupId => (is => 'ro', isa => 'Str', request_name => 'groupId', traits => ['NameInRequest']);
  has PeeringStatus => (is => 'ro', isa => 'Str', request_name => 'peeringStatus', traits => ['NameInRequest']);
  has UserId => (is => 'ro', isa => 'Str', request_name => 'userId', traits => ['NameInRequest']);
  has VpcId => (is => 'ro', isa => 'Str', request_name => 'vpcId', traits => ['NameInRequest']);
  has VpcPeeringConnectionId => (is => 'ro', isa => 'Str', request_name => 'vpcPeeringConnectionId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ReferencedSecurityGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ReferencedSecurityGroup object:

  $service_obj->Method(Att1 => { GroupId => $value, ..., VpcPeeringConnectionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ReferencedSecurityGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->GroupId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 GroupId => Str

The ID of the security group.


=head2 PeeringStatus => Str

The status of a VPC peering connection, if applicable.


=head2 UserId => Str

The Amazon Web Services account ID.


=head2 VpcId => Str

The ID of the VPC.


=head2 VpcPeeringConnectionId => Str

The ID of the VPC peering connection (if applicable).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
