
package Paws::CognitoIdp::GetCSVHeaderResponse;
  use Moose;
  has CSVHeader => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has UserPoolId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::GetCSVHeaderResponse

=head1 ATTRIBUTES


=head2 CSVHeader => ArrayRef[Str|Undef]

A comma-separated list of attributes from your user pool. Save this
output to a C<.csv> file and populate it with the attributes of the
users that you want to import.


=head2 UserPoolId => Str

The ID of the requested user pool.


=head2 _request_id => Str


=cut

1;