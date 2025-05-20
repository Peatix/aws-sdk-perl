
package Paws::ControlTower::ListEnabledControlsOutput;
  use Moose;
  has EnabledControls => (is => 'ro', isa => 'ArrayRef[Paws::ControlTower::EnabledControlSummary]', traits => ['NameInRequest'], request_name => 'enabledControls', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlTower::ListEnabledControlsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> EnabledControls => ArrayRef[L<Paws::ControlTower::EnabledControlSummary>]

Lists the controls enabled by Amazon Web Services Control Tower on the
specified organizational unit and the accounts it contains.


=head2 NextToken => Str

Retrieves the next page of results. If the string is empty, the
response is the end of the results.


=head2 _request_id => Str


=cut

