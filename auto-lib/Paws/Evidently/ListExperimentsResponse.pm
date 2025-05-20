
package Paws::Evidently::ListExperimentsResponse;
  use Moose;
  has Experiments => (is => 'ro', isa => 'ArrayRef[Paws::Evidently::Experiment]', traits => ['NameInRequest'], request_name => 'experiments');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::ListExperimentsResponse

=head1 ATTRIBUTES


=head2 Experiments => ArrayRef[L<Paws::Evidently::Experiment>]

An array of structures that contain the configuration details of the
experiments in the specified project.


=head2 NextToken => Str

The token to use in a subsequent C<ListExperiments> operation to return
the next set of results.


=head2 _request_id => Str


=cut

