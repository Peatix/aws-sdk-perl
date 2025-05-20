package Paws::EC2::IpamResourceDiscoveryAssociation;
  use Moose;
  has IpamArn => (is => 'ro', isa => 'Str', request_name => 'ipamArn', traits => ['NameInRequest']);
  has IpamId => (is => 'ro', isa => 'Str', request_name => 'ipamId', traits => ['NameInRequest']);
  has IpamRegion => (is => 'ro', isa => 'Str', request_name => 'ipamRegion', traits => ['NameInRequest']);
  has IpamResourceDiscoveryAssociationArn => (is => 'ro', isa => 'Str', request_name => 'ipamResourceDiscoveryAssociationArn', traits => ['NameInRequest']);
  has IpamResourceDiscoveryAssociationId => (is => 'ro', isa => 'Str', request_name => 'ipamResourceDiscoveryAssociationId', traits => ['NameInRequest']);
  has IpamResourceDiscoveryId => (is => 'ro', isa => 'Str', request_name => 'ipamResourceDiscoveryId', traits => ['NameInRequest']);
  has IsDefault => (is => 'ro', isa => 'Bool', request_name => 'isDefault', traits => ['NameInRequest']);
  has OwnerId => (is => 'ro', isa => 'Str', request_name => 'ownerId', traits => ['NameInRequest']);
  has ResourceDiscoveryStatus => (is => 'ro', isa => 'Str', request_name => 'resourceDiscoveryStatus', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::IpamResourceDiscoveryAssociation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::IpamResourceDiscoveryAssociation object:

  $service_obj->Method(Att1 => { IpamArn => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::IpamResourceDiscoveryAssociation object:

  $result = $service_obj->Method(...);
  $result->Att1->IpamArn

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 IpamArn => Str

The IPAM ARN.


=head2 IpamId => Str

The IPAM ID.


=head2 IpamRegion => Str

The IPAM home Region.


=head2 IpamResourceDiscoveryAssociationArn => Str

The resource discovery association Amazon Resource Name (ARN).


=head2 IpamResourceDiscoveryAssociationId => Str

The resource discovery association ID.


=head2 IpamResourceDiscoveryId => Str

The resource discovery ID.


=head2 IsDefault => Bool

Defines if the resource discovery is the default. When you create an
IPAM, a default resource discovery is created for your IPAM and it's
associated with your IPAM.


=head2 OwnerId => Str

The Amazon Web Services account ID of the resource discovery owner.


=head2 ResourceDiscoveryStatus => Str

The resource discovery status.

=over

=item *

C<active> - Connection or permissions required to read the results of
the resource discovery are intact.

=item *

C<not-found> - Connection or permissions required to read the results
of the resource discovery are broken. This may happen if the owner of
the resource discovery stopped sharing it or deleted the resource
discovery. Verify the resource discovery still exists and the Amazon
Web Services RAM resource share is still intact.

=back



=head2 State => Str

The lifecycle state of the association when you associate or
disassociate a resource discovery.

=over

=item *

C<associate-in-progress> - Resource discovery is being associated.

=item *

C<associate-complete> - Resource discovery association is complete.

=item *

C<associate-failed> - Resource discovery association has failed.

=item *

C<disassociate-in-progress> - Resource discovery is being
disassociated.

=item *

C<disassociate-complete> - Resource discovery disassociation is
complete.

=item *

C<disassociate-failed > - Resource discovery disassociation has failed.

=item *

C<isolate-in-progress> - Amazon Web Services account that created the
resource discovery association has been removed and the resource
discovery associatation is being isolated.

=item *

C<isolate-complete> - Resource discovery isolation is complete..

=item *

C<restore-in-progress> - Resource discovery is being restored.

=back



=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

A tag is a label that you assign to an Amazon Web Services resource.
Each tag consists of a key and an optional value. You can use tags to
search and filter your resources or track your Amazon Web Services
costs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
