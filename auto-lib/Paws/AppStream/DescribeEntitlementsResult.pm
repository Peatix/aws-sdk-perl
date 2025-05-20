
package Paws::AppStream::DescribeEntitlementsResult;
  use Moose;
  has Entitlements => (is => 'ro', isa => 'ArrayRef[Paws::AppStream::Entitlement]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DescribeEntitlementsResult

=head1 ATTRIBUTES


=head2 Entitlements => ArrayRef[L<Paws::AppStream::Entitlement>]

The entitlements.


=head2 NextToken => Str

The pagination token used to retrieve the next page of results for this
operation.


=head2 _request_id => Str


=cut

1;