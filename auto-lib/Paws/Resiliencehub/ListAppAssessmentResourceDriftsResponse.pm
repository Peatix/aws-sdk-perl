
package Paws::Resiliencehub::ListAppAssessmentResourceDriftsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ResourceDrifts => (is => 'ro', isa => 'ArrayRef[Paws::Resiliencehub::ResourceDrift]', traits => ['NameInRequest'], request_name => 'resourceDrifts', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::ListAppAssessmentResourceDriftsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Null, or the token from a previous call to get the next set of results.


=head2 B<REQUIRED> ResourceDrifts => ArrayRef[L<Paws::Resiliencehub::ResourceDrift>]

Indicates all the resource drifts detected for an assessed entity.


=head2 _request_id => Str


=cut

