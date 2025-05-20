
package Paws::Notifications::GetEventRuleResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime', required => 1);
  has EventPattern => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventPattern', required => 1);
  has EventType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventType', required => 1);
  has ManagedRules => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'managedRules', required => 1);
  has NotificationConfigurationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'notificationConfigurationArn', required => 1);
  has Regions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'regions', required => 1);
  has Source => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'source', required => 1);
  has StatusSummaryByRegion => (is => 'ro', isa => 'Paws::Notifications::StatusSummaryByRegion', traits => ['NameInRequest'], request_name => 'statusSummaryByRegion', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Notifications::GetEventRuleResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the resource.


=head2 B<REQUIRED> CreationTime => Str

The date when the C<EventRule> was created.


=head2 B<REQUIRED> EventPattern => Str

An additional event pattern used to further filter the events this
C<EventRule> receives.

For more information, see Amazon EventBridge event patterns
(https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-patterns.html)
in the I<Amazon EventBridge User Guide.>


=head2 B<REQUIRED> EventType => Str

The event type to match.

Must match one of the valid Amazon EventBridge event types. For
example, EC2 Instance State-change Notification and Amazon CloudWatch
Alarm State Change. For more information, see Event delivery from
Amazon Web Services services
(https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-service-event.html#eb-service-event-delivery-level)
in the I<Amazon EventBridge User Guide>.


=head2 B<REQUIRED> ManagedRules => ArrayRef[Str|Undef]

A list of managed rules from EventBridge that are associated with this
C<EventRule>.

These are created by User Notifications within your account so this
C<EventRule> functions.


=head2 B<REQUIRED> NotificationConfigurationArn => Str

The ARN of a C<NotificationConfiguration>.


=head2 B<REQUIRED> Regions => ArrayRef[Str|Undef]

A list of Amazon Web Services Regions that send events to this
C<EventRule>.


=head2 B<REQUIRED> Source => Str

The matched event source.

Must match one of the valid EventBridge sources. Only Amazon Web
Services service sourced events are supported. For example, C<aws.ec2>
and C<aws.cloudwatch>. For more information, see Event delivery from
Amazon Web Services services
(https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-service-event.html#eb-service-event-delivery-level)
in the I<Amazon EventBridge User Guide>.


=head2 B<REQUIRED> StatusSummaryByRegion => L<Paws::Notifications::StatusSummaryByRegion>

A list of an C<EventRule>'s status by Region. Regions are mapped to
C<EventRuleStatusSummary>.


=head2 _request_id => Str


=cut

