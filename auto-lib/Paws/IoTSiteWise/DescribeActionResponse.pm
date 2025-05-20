
package Paws::IoTSiteWise::DescribeActionResponse;
  use Moose;
  has ActionDefinitionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'actionDefinitionId', required => 1);
  has ActionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'actionId', required => 1);
  has ActionPayload => (is => 'ro', isa => 'Paws::IoTSiteWise::ActionPayload', traits => ['NameInRequest'], request_name => 'actionPayload', required => 1);
  has ExecutionTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'executionTime', required => 1);
  has TargetResource => (is => 'ro', isa => 'Paws::IoTSiteWise::TargetResource', traits => ['NameInRequest'], request_name => 'targetResource', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DescribeActionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionDefinitionId => Str

The ID of the action definition.


=head2 B<REQUIRED> ActionId => Str

The ID of the action.


=head2 B<REQUIRED> ActionPayload => L<Paws::IoTSiteWise::ActionPayload>

The JSON payload of the action.


=head2 B<REQUIRED> ExecutionTime => Str

The time the action was executed.


=head2 B<REQUIRED> TargetResource => L<Paws::IoTSiteWise::TargetResource>

The resource the action will be taken on.


=head2 _request_id => Str


=cut

