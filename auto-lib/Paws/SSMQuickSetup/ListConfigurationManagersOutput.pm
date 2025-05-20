
package Paws::SSMQuickSetup::ListConfigurationManagersOutput;
  use Moose;
  has ConfigurationManagersList => (is => 'ro', isa => 'ArrayRef[Paws::SSMQuickSetup::ConfigurationManagerSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMQuickSetup::ListConfigurationManagersOutput

=head1 ATTRIBUTES


=head2 ConfigurationManagersList => ArrayRef[L<Paws::SSMQuickSetup::ConfigurationManagerSummary>]

The configuration managers returned by the request.


=head2 NextToken => Str

The token to use when requesting the next set of configuration
managers. If there are no additional operations to return, the string
is empty.


=head2 _request_id => Str


=cut

