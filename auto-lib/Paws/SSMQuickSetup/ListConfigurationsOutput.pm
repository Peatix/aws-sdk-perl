
package Paws::SSMQuickSetup::ListConfigurationsOutput;
  use Moose;
  has ConfigurationsList => (is => 'ro', isa => 'ArrayRef[Paws::SSMQuickSetup::ConfigurationSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMQuickSetup::ListConfigurationsOutput

=head1 ATTRIBUTES


=head2 ConfigurationsList => ArrayRef[L<Paws::SSMQuickSetup::ConfigurationSummary>]

An array of configurations.


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 _request_id => Str


=cut

