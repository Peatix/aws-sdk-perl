package Paws::EC2::ByoipCidr;
  use Moose;
  has AsnAssociations => (is => 'ro', isa => 'ArrayRef[Paws::EC2::AsnAssociation]', request_name => 'asnAssociationSet', traits => ['NameInRequest']);
  has Cidr => (is => 'ro', isa => 'Str', request_name => 'cidr', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has NetworkBorderGroup => (is => 'ro', isa => 'Str', request_name => 'networkBorderGroup', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has StatusMessage => (is => 'ro', isa => 'Str', request_name => 'statusMessage', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ByoipCidr

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ByoipCidr object:

  $service_obj->Method(Att1 => { AsnAssociations => $value, ..., StatusMessage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ByoipCidr object:

  $result = $service_obj->Method(...);
  $result->Att1->AsnAssociations

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AsnAssociations => ArrayRef[L<Paws::EC2::AsnAssociation>]

The BYOIP CIDR associations with ASNs.


=head2 Cidr => Str

The address range, in CIDR notation.


=head2 Description => Str

The description of the address range.


=head2 NetworkBorderGroup => Str

If you have Local Zones
(https://docs.aws.amazon.com/local-zones/latest/ug/how-local-zones-work.html)
enabled, you can choose a network border group for Local Zones when you
provision and advertise a BYOIPv4 CIDR. Choose the network border group
carefully as the EIP and the Amazon Web Services resource it is
associated with must reside in the same network border group.

You can provision BYOIP address ranges to and advertise them in the
following Local Zone network border groups:

=over

=item *

us-east-1-dfw-2

=item *

us-west-2-lax-1

=item *

us-west-2-phx-2

=back

You cannot provision or advertise BYOIPv6 address ranges in Local Zones
at this time.


=head2 State => Str

The state of the address range.

=over

=item *

C<advertised>: The address range is being advertised to the internet by
Amazon Web Services.

=item *

C<deprovisioned>: The address range is deprovisioned.

=item *

C<failed-deprovision>: The request to deprovision the address range was
unsuccessful. Ensure that all EIPs from the range have been deallocated
and try again.

=item *

C<failed-provision>: The request to provision the address range was
unsuccessful.

=item *

C<pending-deprovision>: YouE<rsquo>ve submitted a request to
deprovision an address range and it's pending.

=item *

C<pending-provision>: YouE<rsquo>ve submitted a request to provision an
address range and it's pending.

=item *

C<provisioned>: The address range is provisioned and can be advertised.
The range is not currently advertised.

=item *

C<provisioned-not-publicly-advertisable>: The address range is
provisioned and cannot be advertised.

=back



=head2 StatusMessage => Str

Upon success, contains the ID of the address pool. Otherwise, contains
an error message.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
