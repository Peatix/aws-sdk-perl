
package Paws::Notifications::CreateEventRuleResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has NotificationConfigurationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'notificationConfigurationArn', required => 1);
  has StatusSummaryByRegion => (is => 'ro', isa => 'Paws::Notifications::StatusSummaryByRegion', traits => ['NameInRequest'], request_name => 'statusSummaryByRegion', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Notifications::CreateEventRuleResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the resource.


=head2 B<REQUIRED> NotificationConfigurationArn => Str

The ARN of a C<NotificationConfiguration>.


=head2 B<REQUIRED> StatusSummaryByRegion => L<Paws::Notifications::StatusSummaryByRegion>

A list of an C<EventRule>'s status by Region. Regions are mapped to
C<EventRuleStatusSummary>.


=head2 _request_id => Str


=cut

