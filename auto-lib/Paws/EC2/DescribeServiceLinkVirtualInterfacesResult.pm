
package Paws::EC2::DescribeServiceLinkVirtualInterfacesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has ServiceLinkVirtualInterfaces => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ServiceLinkVirtualInterface]', request_name => 'serviceLinkVirtualInterfaceSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeServiceLinkVirtualInterfacesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 ServiceLinkVirtualInterfaces => ArrayRef[L<Paws::EC2::ServiceLinkVirtualInterface>]

Describes the service link virtual interfaces.


=head2 _request_id => Str


=cut

