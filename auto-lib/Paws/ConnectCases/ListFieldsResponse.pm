
package Paws::ConnectCases::ListFieldsResponse;
  use Moose;
  has Fields => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCases::FieldSummary]', traits => ['NameInRequest'], request_name => 'fields', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::ListFieldsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Fields => ArrayRef[L<Paws::ConnectCases::FieldSummary>]

List of detailed field information.


=head2 NextToken => Str

The token for the next set of results. This is null if there are no
more results to return.


=head2 _request_id => Str


=cut

