
package Paws::Notifications::CreateEventRule;
  use Moose;
  has EventPattern => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventPattern');
  has EventType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventType', required => 1);
  has NotificationConfigurationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'notificationConfigurationArn', required => 1);
  has Regions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'regions', required => 1);
  has Source => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'source', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEventRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/event-rules');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Notifications::CreateEventRuleResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Notifications::CreateEventRule - Arguments for method CreateEventRule on L<Paws::Notifications>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEventRule on the
L<AWS User Notifications|Paws::Notifications> service. Use the attributes of this class
as arguments to method CreateEventRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEventRule.

=head1 SYNOPSIS

    my $notifications = Paws->service('Notifications');
    my $CreateEventRuleResponse = $notifications->CreateEventRule(
      EventType                    => 'MyEventType',
      NotificationConfigurationArn => 'MyNotificationConfigurationArn',
      Regions                      => [
        'MyRegion', ...    # min: 2, max: 25
      ],
      Source       => 'MySource',
      EventPattern => 'MyEventRuleEventPattern',    # OPTIONAL
    );

    # Results:
    my $Arn = $CreateEventRuleResponse->Arn;
    my $NotificationConfigurationArn =
      $CreateEventRuleResponse->NotificationConfigurationArn;
    my $StatusSummaryByRegion = $CreateEventRuleResponse->StatusSummaryByRegion;

    # Returns a L<Paws::Notifications::CreateEventRuleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/notifications/CreateEventRule>

=head1 ATTRIBUTES


=head2 EventPattern => Str

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



=head2 B<REQUIRED> NotificationConfigurationArn => Str

The Amazon Resource Name (ARN) of the C<NotificationConfiguration>
associated with this C<EventRule>.



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




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEventRule in L<Paws::Notifications>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

