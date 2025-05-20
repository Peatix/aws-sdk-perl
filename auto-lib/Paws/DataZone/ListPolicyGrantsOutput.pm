
package Paws::DataZone::ListPolicyGrantsOutput;
  use Moose;
  has GrantList => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::PolicyGrantMember]', traits => ['NameInRequest'], request_name => 'grantList', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListPolicyGrantsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> GrantList => ArrayRef[L<Paws::DataZone::PolicyGrantMember>]

The results of this action - the listed grants.


=head2 NextToken => Str

When the number of grants is greater than the default value for the
C<MaxResults> parameter, or if you explicitly specify a value for
C<MaxResults> that is less than the number of grants, the response
includes a pagination token named C<NextToken>. You can specify this
C<NextToken> value in a subsequent call to C<ListPolicyGrants> to list
the next set of grants.


=head2 _request_id => Str


=cut

