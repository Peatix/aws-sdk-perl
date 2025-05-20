
package Paws::ConnectCases::ListCasesForContactResponse;
  use Moose;
  has Cases => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCases::CaseSummary]', traits => ['NameInRequest'], request_name => 'cases', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::ListCasesForContactResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Cases => ArrayRef[L<Paws::ConnectCases::CaseSummary>]

A list of Case summary information.


=head2 NextToken => Str

The token for the next set of results. This is null if there are no
more results to return.


=head2 _request_id => Str


=cut

