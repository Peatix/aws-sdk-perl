
package Paws::SSMIncidents::ListIncidentFindingsOutput;
  use Moose;
  has Findings => (is => 'ro', isa => 'ArrayRef[Paws::SSMIncidents::FindingSummary]', traits => ['NameInRequest'], request_name => 'findings', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMIncidents::ListIncidentFindingsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Findings => ArrayRef[L<Paws::SSMIncidents::FindingSummary>]

A list of findings that represent deployments that might be the
potential cause of the incident.


=head2 NextToken => Str

The pagination token to use when requesting the next set of items. If
there are no additional items to return, the string is null.


=head2 _request_id => Str


=cut

