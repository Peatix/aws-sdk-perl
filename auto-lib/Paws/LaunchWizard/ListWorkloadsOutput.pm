
package Paws::LaunchWizard::ListWorkloadsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Workloads => (is => 'ro', isa => 'ArrayRef[Paws::LaunchWizard::WorkloadDataSummary]', traits => ['NameInRequest'], request_name => 'workloads');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LaunchWizard::ListWorkloadsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to include in another request to get the next page of items.
This value is C<null> when there are no more items to return.


=head2 Workloads => ArrayRef[L<Paws::LaunchWizard::WorkloadDataSummary>]

Information about the workloads.


=head2 _request_id => Str


=cut

