
package Paws::Evidently::GetExperimentResultsResponse;
  use Moose;
  has Details => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'details');
  has Reports => (is => 'ro', isa => 'ArrayRef[Paws::Evidently::ExperimentReport]', traits => ['NameInRequest'], request_name => 'reports');
  has ResultsData => (is => 'ro', isa => 'ArrayRef[Paws::Evidently::ExperimentResultsData]', traits => ['NameInRequest'], request_name => 'resultsData');
  has Timestamps => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'timestamps');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::GetExperimentResultsResponse

=head1 ATTRIBUTES


=head2 Details => Str

If the experiment doesn't yet have enough events to provide valid
results, this field is returned with the message C<Not enough events to
generate results>. If there are enough events to provide valid results,
this field is not returned.


=head2 Reports => ArrayRef[L<Paws::Evidently::ExperimentReport>]

An array of structures that include the reports that you requested.


=head2 ResultsData => ArrayRef[L<Paws::Evidently::ExperimentResultsData>]

An array of structures that include experiment results including metric
names and values.


=head2 Timestamps => ArrayRef[Str|Undef]

The timestamps of each result returned.


=head2 _request_id => Str


=cut

