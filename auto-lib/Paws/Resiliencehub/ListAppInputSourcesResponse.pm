
package Paws::Resiliencehub::ListAppInputSourcesResponse;
  use Moose;
  has AppInputSources => (is => 'ro', isa => 'ArrayRef[Paws::Resiliencehub::AppInputSource]', traits => ['NameInRequest'], request_name => 'appInputSources', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::ListAppInputSourcesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppInputSources => ArrayRef[L<Paws::Resiliencehub::AppInputSource>]

The list of Resilience Hub application input sources.


=head2 NextToken => Str

Token for the next set of results, or null if there are no more
results.


=head2 _request_id => Str


=cut

