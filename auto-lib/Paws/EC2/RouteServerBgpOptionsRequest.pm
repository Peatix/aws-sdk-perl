package Paws::EC2::RouteServerBgpOptionsRequest;
  use Moose;
  has PeerAsn => (is => 'ro', isa => 'Int', required => 1);
  has PeerLivenessDetection => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RouteServerBgpOptionsRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::RouteServerBgpOptionsRequest object:

  $service_obj->Method(Att1 => { PeerAsn => $value, ..., PeerLivenessDetection => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::RouteServerBgpOptionsRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->PeerAsn

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 B<REQUIRED> PeerAsn => Int

The Border Gateway Protocol (BGP) Autonomous System Number (ASN) for
the appliance. Valid values are from 1 to 4294967295. We recommend
using a private ASN in the 64512E<ndash>65534 (16-bit ASN) or
4200000000E<ndash>4294967294 (32-bit ASN) range.


=head2 PeerLivenessDetection => Str

The requested liveness detection protocol for the BGP peer.

=over

=item *

C<bgp-keepalive>: The standard BGP keep alive mechanism (RFC4271
(https://www.rfc-editor.org/rfc/rfc4271#page-21)) that is stable but
may take longer to fail-over in cases of network impact or router
failure.

=item *

C<bfd>: An additional Bidirectional Forwarding Detection (BFD) protocol
(RFC5880 (https://www.rfc-editor.org/rfc/rfc5880)) that enables fast
failover by using more sensitive liveness detection.

=back

Defaults to C<bgp-keepalive>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
