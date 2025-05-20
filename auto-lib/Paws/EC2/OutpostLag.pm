package Paws::EC2::OutpostLag;
  use Moose;
  has LocalGatewayVirtualInterfaceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'localGatewayVirtualInterfaceIdSet', traits => ['NameInRequest']);
  has OutpostArn => (is => 'ro', isa => 'Str', request_name => 'outpostArn', traits => ['NameInRequest']);
  has OutpostLagId => (is => 'ro', isa => 'Str', request_name => 'outpostLagId', traits => ['NameInRequest']);
  has OwnerId => (is => 'ro', isa => 'Str', request_name => 'ownerId', traits => ['NameInRequest']);
  has ServiceLinkVirtualInterfaceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'serviceLinkVirtualInterfaceIdSet', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::OutpostLag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::OutpostLag object:

  $service_obj->Method(Att1 => { LocalGatewayVirtualInterfaceIds => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::OutpostLag object:

  $result = $service_obj->Method(...);
  $result->Att1->LocalGatewayVirtualInterfaceIds

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 LocalGatewayVirtualInterfaceIds => ArrayRef[Str|Undef]

The IDs of the local gateway virtual interfaces associated with the
Outpost LAG.


=head2 OutpostArn => Str

The Amazon Resource Number (ARN) of the Outpost LAG.


=head2 OutpostLagId => Str

The ID of the Outpost LAG.


=head2 OwnerId => Str

The ID of the Outpost LAG owner.


=head2 ServiceLinkVirtualInterfaceIds => ArrayRef[Str|Undef]

The service link virtual interface IDs associated with the Outpost LAG.


=head2 State => Str

The current state of the Outpost LAG.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

The tags associated with the Outpost LAG.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
