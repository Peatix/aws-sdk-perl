
package Paws::FinspaceData::ListChangesetsResponse;
  use Moose;
  has Changesets => (is => 'ro', isa => 'ArrayRef[Paws::FinspaceData::ChangesetSummary]', traits => ['NameInRequest'], request_name => 'changesets');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::ListChangesetsResponse

=head1 ATTRIBUTES


=head2 Changesets => ArrayRef[L<Paws::FinspaceData::ChangesetSummary>]

List of Changesets found.


=head2 NextToken => Str

A token that indicates where a results page should begin.


=head2 _request_id => Str


=cut

