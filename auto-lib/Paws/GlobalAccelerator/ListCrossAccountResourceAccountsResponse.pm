
package Paws::GlobalAccelerator::ListCrossAccountResourceAccountsResponse;
  use Moose;
  has ResourceOwnerAwsAccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::ListCrossAccountResourceAccountsResponse

=head1 ATTRIBUTES


=head2 ResourceOwnerAwsAccountIds => ArrayRef[Str|Undef]

The account IDs of principals (resource owners) in a cross-account
attachment who can work with resources listed in the same attachment.


=head2 _request_id => Str


=cut

1;