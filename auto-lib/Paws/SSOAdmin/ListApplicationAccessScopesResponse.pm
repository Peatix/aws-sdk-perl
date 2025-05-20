
package Paws::SSOAdmin::ListApplicationAccessScopesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Scopes => (is => 'ro', isa => 'ArrayRef[Paws::SSOAdmin::ScopeDetails]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::ListApplicationAccessScopesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If present, this value indicates that more output is available than is
included in the current response. Use this value in the C<NextToken>
request parameter in a subsequent call to the operation to get the next
part of the output. You should repeat this until the C<NextToken>
response element comes back as C<null>. This indicates that this is the
last page of results.


=head2 B<REQUIRED> Scopes => ArrayRef[L<Paws::SSOAdmin::ScopeDetails>]

An array list of access scopes and their authorized targets that are
associated with the application.


=head2 _request_id => Str


=cut

1;