
package Paws::DataZone::ListEnvironmentActionsOutput;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::EnvironmentActionSummary]', traits => ['NameInRequest'], request_name => 'items');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListEnvironmentActionsOutput

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::DataZone::EnvironmentActionSummary>]

The results of C<ListEnvironmentActions>.


=head2 NextToken => Str

When the number of environment actions is greater than the default
value for the C<MaxResults> parameter, or if you explicitly specify a
value for C<MaxResults> that is less than the number of environment
actions, the response includes a pagination token named C<NextToken>.
You can specify this C<NextToken> value in a subsequent call to
C<ListEnvironmentActions> to list the next set of environment actions.


=head2 _request_id => Str


=cut

