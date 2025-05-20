
package Paws::DS::DescribeClientAuthenticationSettingsResult;
  use Moose;
  has ClientAuthenticationSettingsInfo => (is => 'ro', isa => 'ArrayRef[Paws::DS::ClientAuthenticationSettingInfo]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DS::DescribeClientAuthenticationSettingsResult

=head1 ATTRIBUTES


=head2 ClientAuthenticationSettingsInfo => ArrayRef[L<Paws::DS::ClientAuthenticationSettingInfo>]

Information about the type of client authentication for the specified
directory. The following information is retrieved: The date and time
when the status of the client authentication type was last updated,
whether the client authentication type is enabled or disabled, and the
type of client authentication.


=head2 NextToken => Str

The next token used to retrieve the client authentication settings if
the number of setting types exceeds page limit and there is another
page.


=head2 _request_id => Str


=cut

1;