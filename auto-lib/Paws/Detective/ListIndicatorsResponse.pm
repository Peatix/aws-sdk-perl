
package Paws::Detective::ListIndicatorsResponse;
  use Moose;
  has GraphArn => (is => 'ro', isa => 'Str');
  has Indicators => (is => 'ro', isa => 'ArrayRef[Paws::Detective::Indicator]');
  has InvestigationId => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Detective::ListIndicatorsResponse

=head1 ATTRIBUTES


=head2 GraphArn => Str

The Amazon Resource Name (ARN) of the behavior graph.


=head2 Indicators => ArrayRef[L<Paws::Detective::Indicator>]

Lists the indicators of compromise.


=head2 InvestigationId => Str

The investigation ID of the investigation report.


=head2 NextToken => Str

Lists if there are more results available. The value of nextToken is a
unique pagination token for each page. Repeat the call using the
returned token to retrieve the next page. Keep all other arguments
unchanged.

Each pagination token expires after 24 hours. Using an expired
pagination token will return a Validation Exception error.


=head2 _request_id => Str


=cut

