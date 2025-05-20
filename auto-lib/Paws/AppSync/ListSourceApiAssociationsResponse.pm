
package Paws::AppSync::ListSourceApiAssociationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SourceApiAssociationSummaries => (is => 'ro', isa => 'ArrayRef[Paws::AppSync::SourceApiAssociationSummary]', traits => ['NameInRequest'], request_name => 'sourceApiAssociationSummaries');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::ListSourceApiAssociationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which you can use to return the next set of items in the
list.


=head2 SourceApiAssociationSummaries => ArrayRef[L<Paws::AppSync::SourceApiAssociationSummary>]

The C<SourceApiAssociationSummary> object data.


=head2 _request_id => Str


=cut

