
package Paws::IVSRealTime::ListStagesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Stages => (is => 'ro', isa => 'ArrayRef[Paws::IVSRealTime::StageSummary]', traits => ['NameInRequest'], request_name => 'stages', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVSRealTime::ListStagesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are more stages than C<maxResults>, use C<nextToken> in the
request to get the next set.


=head2 B<REQUIRED> Stages => ArrayRef[L<Paws::IVSRealTime::StageSummary>]

List of the matching stages (summary information only).


=head2 _request_id => Str


=cut

