
package Paws::ConnectCases::ListLayoutsResponse;
  use Moose;
  has Layouts => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCases::LayoutSummary]', traits => ['NameInRequest'], request_name => 'layouts', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::ListLayoutsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Layouts => ArrayRef[L<Paws::ConnectCases::LayoutSummary>]

The layouts for the domain.


=head2 NextToken => Str

The token for the next set of results. This is null if there are no
more results to return.


=head2 _request_id => Str


=cut

