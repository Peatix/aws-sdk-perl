
package Paws::CodeCommit::ListFileCommitHistoryResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has RevisionDag => (is => 'ro', isa => 'ArrayRef[Paws::CodeCommit::FileVersion]', traits => ['NameInRequest'], request_name => 'revisionDag' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::ListFileCommitHistoryResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

An enumeration token that can be used to return the next batch of
results.


=head2 B<REQUIRED> RevisionDag => ArrayRef[L<Paws::CodeCommit::FileVersion>]

An array of FileVersion objects that form a directed acyclic graph
(DAG) of the changes to the file made by the commits that changed the
file.


=head2 _request_id => Str


=cut

1;