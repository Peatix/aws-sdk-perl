
package Paws::Evidently::ListSegmentReferencesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ReferencedBy => (is => 'ro', isa => 'ArrayRef[Paws::Evidently::RefResource]', traits => ['NameInRequest'], request_name => 'referencedBy');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::ListSegmentReferencesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use in a subsequent C<ListSegmentReferences> operation to
return the next set of results.


=head2 ReferencedBy => ArrayRef[L<Paws::Evidently::RefResource>]

An array of structures, where each structure contains information about
one experiment or launch that uses this segment.


=head2 _request_id => Str


=cut

