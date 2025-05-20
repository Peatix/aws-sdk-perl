
package Paws::Chatbot::ListMicrosoftTeamsConfiguredTeamsResult;
  use Moose;
  has ConfiguredTeams => (is => 'ro', isa => 'ArrayRef[Paws::Chatbot::ConfiguredTeam]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chatbot::ListMicrosoftTeamsConfiguredTeamsResult

=head1 ATTRIBUTES


=head2 ConfiguredTeams => ArrayRef[L<Paws::Chatbot::ConfiguredTeam>]

A list of teams in Microsoft Teams that are configured with AWS
Chatbot.


=head2 NextToken => Str

An optional token returned from a prior request. Use this token for
pagination of results from this action. If this parameter is specified,
the response includes only results beyond the token, up to the value
specified by MaxResults.


=head2 _request_id => Str


=cut

