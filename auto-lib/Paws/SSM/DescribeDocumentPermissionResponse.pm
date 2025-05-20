
package Paws::SSM::DescribeDocumentPermissionResponse;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AccountSharingInfoList => (is => 'ro', isa => 'ArrayRef[Paws::SSM::AccountSharingInfo]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeDocumentPermissionResponse

=head1 ATTRIBUTES


=head2 AccountIds => ArrayRef[Str|Undef]

The account IDs that have permission to use this document. The ID can
be either an Amazon Web Services account or I<All>.


=head2 AccountSharingInfoList => ArrayRef[L<Paws::SSM::AccountSharingInfo>]

A list of Amazon Web Services accounts where the current document is
shared and the version shared with each account.


=head2 NextToken => Str

The token for the next set of items to return. Use this token to get
the next set of results.


=head2 _request_id => Str


=cut

1;