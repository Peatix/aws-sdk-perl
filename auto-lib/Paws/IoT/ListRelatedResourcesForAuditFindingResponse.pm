
package Paws::IoT::ListRelatedResourcesForAuditFindingResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has RelatedResources => (is => 'ro', isa => 'ArrayRef[Paws::IoT::RelatedResource]', traits => ['NameInRequest'], request_name => 'relatedResources');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListRelatedResourcesForAuditFindingResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that can be used to retrieve the next set of results, or
C<null> for the first API call.


=head2 RelatedResources => ArrayRef[L<Paws::IoT::RelatedResource>]

The related resources.


=head2 _request_id => Str


=cut

