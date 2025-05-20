
package Paws::Omics::ListReadSetActivationJobsResponse;
  use Moose;
  has ActivationJobs => (is => 'ro', isa => 'ArrayRef[Paws::Omics::ActivateReadSetJobItem]', traits => ['NameInRequest'], request_name => 'activationJobs');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::ListReadSetActivationJobsResponse

=head1 ATTRIBUTES


=head2 ActivationJobs => ArrayRef[L<Paws::Omics::ActivateReadSetJobItem>]

A list of jobs.


=head2 NextToken => Str

A pagination token that's included if more results are available.


=head2 _request_id => Str


=cut

