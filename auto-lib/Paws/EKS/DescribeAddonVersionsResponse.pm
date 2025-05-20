
package Paws::EKS::DescribeAddonVersionsResponse;
  use Moose;
  has Addons => (is => 'ro', isa => 'ArrayRef[Paws::EKS::AddonInfo]', traits => ['NameInRequest'], request_name => 'addons');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::DescribeAddonVersionsResponse

=head1 ATTRIBUTES


=head2 Addons => ArrayRef[L<Paws::EKS::AddonInfo>]

The list of available versions with Kubernetes version compatibility
and other properties.


=head2 NextToken => Str

The C<nextToken> value to include in a future C<DescribeAddonVersions>
request. When the results of a C<DescribeAddonVersions> request exceed
C<maxResults>, you can use this value to retrieve the next page of
results. This value is C<null> when there are no more results to
return.

This token should be treated as an opaque identifier that is used only
to retrieve the next items in a list and not for other programmatic
purposes.


=head2 _request_id => Str


=cut

