
package Paws::ConnectCases::ListTemplatesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Templates => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCases::TemplateSummary]', traits => ['NameInRequest'], request_name => 'templates', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::ListTemplatesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of results. This is null if there are no
more results to return.


=head2 B<REQUIRED> Templates => ArrayRef[L<Paws::ConnectCases::TemplateSummary>]

List of template summary objects.


=head2 _request_id => Str


=cut

