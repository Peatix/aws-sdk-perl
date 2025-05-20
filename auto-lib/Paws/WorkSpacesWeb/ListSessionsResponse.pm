
package Paws::WorkSpacesWeb::ListSessionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Sessions => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpacesWeb::SessionSummary]', traits => ['NameInRequest'], request_name => 'sessions', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::ListSessionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token used to retrieve the next page of results for this
operation.


=head2 B<REQUIRED> Sessions => ArrayRef[L<Paws::WorkSpacesWeb::SessionSummary>]

The sessions in a list.


=head2 _request_id => Str


=cut

