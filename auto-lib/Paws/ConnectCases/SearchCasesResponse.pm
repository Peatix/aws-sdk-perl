
package Paws::ConnectCases::SearchCasesResponse;
  use Moose;
  has Cases => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCases::SearchCasesResponseItem]', traits => ['NameInRequest'], request_name => 'cases', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::SearchCasesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Cases => ArrayRef[L<Paws::ConnectCases::SearchCasesResponseItem>]

A list of case documents where each case contains the properties
C<CaseId> and C<Fields> where each field is a complex union structure.


=head2 NextToken => Str

The token for the next set of results. This is null if there are no
more results to return.


=head2 _request_id => Str


=cut

