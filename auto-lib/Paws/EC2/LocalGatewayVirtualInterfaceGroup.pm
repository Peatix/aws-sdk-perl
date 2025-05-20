package Paws::EC2::LocalGatewayVirtualInterfaceGroup;
  use Moose;
  has ConfigurationState => (is => 'ro', isa => 'Str', request_name => 'configurationState', traits => ['NameInRequest']);
  has LocalBgpAsn => (is => 'ro', isa => 'Int', request_name => 'localBgpAsn', traits => ['NameInRequest']);
  has LocalBgpAsnExtended => (is => 'ro', isa => 'Int', request_name => 'localBgpAsnExtended', traits => ['NameInRequest']);
  has LocalGatewayId => (is => 'ro', isa => 'Str', request_name => 'localGatewayId', traits => ['NameInRequest']);
  has LocalGatewayVirtualInterfaceGroupArn => (is => 'ro', isa => 'Str', request_name => 'localGatewayVirtualInterfaceGroupArn', traits => ['NameInRequest']);
  has LocalGatewayVirtualInterfaceGroupId => (is => 'ro', isa => 'Str', request_name => 'localGatewayVirtualInterfaceGroupId', traits => ['NameInRequest']);
  has LocalGatewayVirtualInterfaceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'localGatewayVirtualInterfaceIdSet', traits => ['NameInRequest']);
  has OwnerId => (is => 'ro', isa => 'Str', request_name => 'ownerId', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::LocalGatewayVirtualInterfaceGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::LocalGatewayVirtualInterfaceGroup object:

  $service_obj->Method(Att1 => { ConfigurationState => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::LocalGatewayVirtualInterfaceGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->ConfigurationState

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ConfigurationState => Str

The current state of the local gateway virtual interface group.


=head2 LocalBgpAsn => Int

The Autonomous System Number(ASN) for the local Border Gateway Protocol
(BGP).


=head2 LocalBgpAsnExtended => Int

The extended 32-bit ASN for the local BGP configuration.


=head2 LocalGatewayId => Str

The ID of the local gateway.


=head2 LocalGatewayVirtualInterfaceGroupArn => Str

The Amazon Resource Number (ARN) of the local gateway virtual interface
group.


=head2 LocalGatewayVirtualInterfaceGroupId => Str

The ID of the virtual interface group.


=head2 LocalGatewayVirtualInterfaceIds => ArrayRef[Str|Undef]

The IDs of the virtual interfaces.


=head2 OwnerId => Str

The ID of the Amazon Web Services account that owns the local gateway
virtual interface group.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

The tags assigned to the virtual interface group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
