
package Paws::Omics::ListWorkflowsResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::Omics::WorkflowListItem]', traits => ['NameInRequest'], request_name => 'items');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::ListWorkflowsResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::Omics::WorkflowListItem>]

A list of workflow items.


=head2 NextToken => Str

A pagination token that's included if more results are available.


=head2 _request_id => Str


=cut

