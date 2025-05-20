
package Paws::Notifications::UpdateEventRuleResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has NotificationConfigurationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'notificationConfigurationArn', required => 1);
  has StatusSummaryByRegion => (is => 'ro', isa => 'Paws::Notifications::StatusSummaryByRegion', traits => ['NameInRequest'], request_name => 'statusSummaryByRegion', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Notifications::UpdateEventRuleResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) to use to update the C<EventRule>.


=head2 B<REQUIRED> NotificationConfigurationArn => Str

The ARN of the C<NotificationConfiguration>.


=head2 B<REQUIRED> StatusSummaryByRegion => L<Paws::Notifications::StatusSummaryByRegion>

The status of the action by Region.


=head2 _request_id => Str


=cut

