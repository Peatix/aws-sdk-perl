
package Paws::SupportApp::RegisterSlackWorkspaceForOrganizationResult;
  use Moose;
  has AccountType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accountType');
  has TeamId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'teamId');
  has TeamName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'teamName');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupportApp::RegisterSlackWorkspaceForOrganizationResult

=head1 ATTRIBUTES


=head2 AccountType => Str

Whether the Amazon Web Services account is a management or member
account that's part of an organization in Organizations.

Valid values are: C<"management">, C<"member">
=head2 TeamId => Str

The team ID in Slack. This ID uniquely identifies a Slack workspace,
such as C<T012ABCDEFG>.


=head2 TeamName => Str

The name of the Slack workspace.


=head2 _request_id => Str


=cut

