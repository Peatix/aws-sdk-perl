package Paws::EC2::PacketHeaderStatement;
  use Moose;
  has DestinationAddresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'destinationAddressSet', traits => ['NameInRequest']);
  has DestinationPorts => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'destinationPortSet', traits => ['NameInRequest']);
  has DestinationPrefixLists => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'destinationPrefixListSet', traits => ['NameInRequest']);
  has Protocols => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'protocolSet', traits => ['NameInRequest']);
  has SourceAddresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'sourceAddressSet', traits => ['NameInRequest']);
  has SourcePorts => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'sourcePortSet', traits => ['NameInRequest']);
  has SourcePrefixLists => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'sourcePrefixListSet', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::PacketHeaderStatement

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::PacketHeaderStatement object:

  $service_obj->Method(Att1 => { DestinationAddresses => $value, ..., SourcePrefixLists => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::PacketHeaderStatement object:

  $result = $service_obj->Method(...);
  $result->Att1->DestinationAddresses

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 DestinationAddresses => ArrayRef[Str|Undef]

The destination addresses.


=head2 DestinationPorts => ArrayRef[Str|Undef]

The destination ports.


=head2 DestinationPrefixLists => ArrayRef[Str|Undef]

The destination prefix lists.


=head2 Protocols => ArrayRef[Str|Undef]

The protocols.


=head2 SourceAddresses => ArrayRef[Str|Undef]

The source addresses.


=head2 SourcePorts => ArrayRef[Str|Undef]

The source ports.


=head2 SourcePrefixLists => ArrayRef[Str|Undef]

The source prefix lists.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
