
package Paws::SecurityHub::ListStandardsControlAssociationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has StandardsControlAssociationSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StandardsControlAssociationSummary]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::ListStandardsControlAssociationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination parameter that's included in the response only if it was
included in the request.


=head2 B<REQUIRED> StandardsControlAssociationSummaries => ArrayRef[L<Paws::SecurityHub::StandardsControlAssociationSummary>]

An array that provides the enablement status and other details for each
security control that applies to each enabled standard.


=head2 _request_id => Str


=cut

