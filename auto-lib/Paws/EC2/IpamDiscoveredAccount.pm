package Paws::EC2::IpamDiscoveredAccount;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', request_name => 'accountId', traits => ['NameInRequest']);
  has DiscoveryRegion => (is => 'ro', isa => 'Str', request_name => 'discoveryRegion', traits => ['NameInRequest']);
  has FailureReason => (is => 'ro', isa => 'Paws::EC2::IpamDiscoveryFailureReason', request_name => 'failureReason', traits => ['NameInRequest']);
  has LastAttemptedDiscoveryTime => (is => 'ro', isa => 'Str', request_name => 'lastAttemptedDiscoveryTime', traits => ['NameInRequest']);
  has LastSuccessfulDiscoveryTime => (is => 'ro', isa => 'Str', request_name => 'lastSuccessfulDiscoveryTime', traits => ['NameInRequest']);
  has OrganizationalUnitId => (is => 'ro', isa => 'Str', request_name => 'organizationalUnitId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::IpamDiscoveredAccount

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::IpamDiscoveredAccount object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., OrganizationalUnitId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::IpamDiscoveredAccount object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AccountId => Str

The account ID.


=head2 DiscoveryRegion => Str

The Amazon Web Services Region that the account information is returned
from. An account can be discovered in multiple regions and will have a
separate discovered account for each Region.


=head2 FailureReason => L<Paws::EC2::IpamDiscoveryFailureReason>

The resource discovery failure reason.


=head2 LastAttemptedDiscoveryTime => Str

The last attempted resource discovery time.


=head2 LastSuccessfulDiscoveryTime => Str

The last successful resource discovery time.


=head2 OrganizationalUnitId => Str

The ID of an Organizational Unit in Amazon Web Services Organizations.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
