
package Paws::Detective::ListInvestigationsResponse;
  use Moose;
  has InvestigationDetails => (is => 'ro', isa => 'ArrayRef[Paws::Detective::InvestigationDetail]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Detective::ListInvestigationsResponse

=head1 ATTRIBUTES


=head2 InvestigationDetails => ArrayRef[L<Paws::Detective::InvestigationDetail>]

Lists the summary of uncommon behavior or malicious activity which
indicates a compromise.


=head2 NextToken => Str

Lists if there are more results available. The value of nextToken is a
unique pagination token for each page. Repeat the call using the
returned token to retrieve the next page. Keep all other arguments
unchanged.

Each pagination token expires after 24 hours.


=head2 _request_id => Str


=cut

