
package Paws::FIS::ListExperimentResolvedTargetsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ResolvedTargets => (is => 'ro', isa => 'ArrayRef[Paws::FIS::ResolvedTarget]', traits => ['NameInRequest'], request_name => 'resolvedTargets');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FIS::ListExperimentResolvedTargetsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
null when there are no more results to return.


=head2 ResolvedTargets => ArrayRef[L<Paws::FIS::ResolvedTarget>]

The resolved targets.


=head2 _request_id => Str


=cut

