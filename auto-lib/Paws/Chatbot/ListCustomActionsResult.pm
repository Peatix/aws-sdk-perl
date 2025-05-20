
package Paws::Chatbot::ListCustomActionsResult;
  use Moose;
  has CustomActions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chatbot::ListCustomActionsResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> CustomActions => ArrayRef[Str|Undef]

A list of custom actions.


=head2 NextToken => Str

An optional token returned from a prior request. Use this token for
pagination of results from this action. If this parameter is specified,
the response includes only results beyond the token, up to the value
specified by MaxResults.


=head2 _request_id => Str


=cut

