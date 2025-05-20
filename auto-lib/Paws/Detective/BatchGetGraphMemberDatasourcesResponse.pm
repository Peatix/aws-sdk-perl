
package Paws::Detective::BatchGetGraphMemberDatasourcesResponse;
  use Moose;
  has MemberDatasources => (is => 'ro', isa => 'ArrayRef[Paws::Detective::MembershipDatasources]');
  has UnprocessedAccounts => (is => 'ro', isa => 'ArrayRef[Paws::Detective::UnprocessedAccount]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Detective::BatchGetGraphMemberDatasourcesResponse

=head1 ATTRIBUTES


=head2 MemberDatasources => ArrayRef[L<Paws::Detective::MembershipDatasources>]

Details on the status of data source packages for members of the
behavior graph.


=head2 UnprocessedAccounts => ArrayRef[L<Paws::Detective::UnprocessedAccount>]

Accounts that data source package information could not be retrieved
for.


=head2 _request_id => Str


=cut

