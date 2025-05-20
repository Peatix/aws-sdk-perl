
package Paws::M2::ListBatchJobDefinitionsResponse;
  use Moose;
  has BatchJobDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::M2::BatchJobDefinition]', traits => ['NameInRequest'], request_name => 'batchJobDefinitions', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::ListBatchJobDefinitionsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> BatchJobDefinitions => ArrayRef[L<Paws::M2::BatchJobDefinition>]

The list of batch job definitions.


=head2 NextToken => Str

If there are more items to return, this contains a token that is passed
to a subsequent call to this operation to retrieve the next set of
items.


=head2 _request_id => Str


=cut

