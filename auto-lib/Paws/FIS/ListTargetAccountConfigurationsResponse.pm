
package Paws::FIS::ListTargetAccountConfigurationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has TargetAccountConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::FIS::TargetAccountConfigurationSummary]', traits => ['NameInRequest'], request_name => 'targetAccountConfigurations');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FIS::ListTargetAccountConfigurationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
null when there are no more results to return.


=head2 TargetAccountConfigurations => ArrayRef[L<Paws::FIS::TargetAccountConfigurationSummary>]

The target account configurations.


=head2 _request_id => Str


=cut

