
package Paws::Chatbot::DescribeSlackWorkspacesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SlackWorkspaces => (is => 'ro', isa => 'ArrayRef[Paws::Chatbot::SlackWorkspace]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chatbot::DescribeSlackWorkspacesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

An optional token returned from a prior request. Use this token for
pagination of results from this action. If this parameter is specified,
the response includes only results beyond the token, up to the value
specified by MaxResults.


=head2 SlackWorkspaces => ArrayRef[L<Paws::Chatbot::SlackWorkspace>]

A list of Slack workspaces registered with AWS Chatbot.


=head2 _request_id => Str


=cut

