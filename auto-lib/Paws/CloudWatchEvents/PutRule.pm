
package Paws::CloudWatchEvents::PutRule;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has EventBusName => (is => 'ro', isa => 'Str');
  has EventPattern => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str');
  has ScheduleExpression => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchEvents::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutRule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchEvents::PutRuleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::PutRule - Arguments for method PutRule on L<Paws::CloudWatchEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutRule on the
L<Amazon EventBridge|Paws::CloudWatchEvents> service. Use the attributes of this class
as arguments to method PutRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutRule.

=head1 SYNOPSIS

    my $events = Paws->service('CloudWatchEvents');
    my $PutRuleResponse = $events->PutRule(
      Name               => 'MyRuleName',
      Description        => 'MyRuleDescription',       # OPTIONAL
      EventBusName       => 'MyEventBusNameOrArn',     # OPTIONAL
      EventPattern       => 'MyEventPattern',          # OPTIONAL
      RoleArn            => 'MyRoleArn',               # OPTIONAL
      ScheduleExpression => 'MyScheduleExpression',    # OPTIONAL
      State              => 'ENABLED',                 # OPTIONAL
      Tags               => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $RuleArn = $PutRuleResponse->RuleArn;

    # Returns a L<Paws::CloudWatchEvents::PutRuleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the rule.



=head2 EventBusName => Str

The name or ARN of the event bus to associate with this rule. If you
omit this, the default event bus is used.



=head2 EventPattern => Str

The event pattern. For more information, see Amazon EventBridge event
patterns
(https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-patterns.html)
in the I< I<Amazon EventBridge User Guide> >.



=head2 B<REQUIRED> Name => Str

The name of the rule that you are creating or updating.



=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role associated with the
rule.

If you're setting an event bus in another account as the target and
that account granted permission to your account through an organization
instead of directly by the account ID, you must specify a C<RoleArn>
with proper permissions in the C<Target> structure, instead of here in
this parameter.



=head2 ScheduleExpression => Str

The scheduling expression. For example, "cron(0 20 * * ? *)" or "rate(5
minutes)".



=head2 State => Str

The state of the rule.

Valid values include:

=over

=item *

C<DISABLED>: The rule is disabled. EventBridge does not match any
events against the rule.

=item *

C<ENABLED>: The rule is enabled. EventBridge matches events against the
rule, I<except> for Amazon Web Services management events delivered
through CloudTrail.

=item *

C<ENABLED_WITH_ALL_CLOUDTRAIL_MANAGEMENT_EVENTS>: The rule is enabled
for all events, including Amazon Web Services management events
delivered through CloudTrail.

Management events provide visibility into management operations that
are performed on resources in your Amazon Web Services account. These
are also known as control plane operations. For more information, see
Logging management events
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-events-with-cloudtrail.html#logging-management-events)
in the I<CloudTrail User Guide>, and Filtering management events from
Amazon Web Services services
(https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-service-event.html#eb-service-event-cloudtrail)
in the I< I<Amazon EventBridge User Guide> >.

This value is only valid for rules on the default
(https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-what-is-how-it-works-concepts.html#eb-bus-concepts-buses)
event bus or custom event buses
(https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-create-event-bus.html).
It does not apply to partner event buses
(https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-saas.html).

=back


Valid values are: C<"ENABLED">, C<"DISABLED">, C<"ENABLED_WITH_ALL_CLOUDTRAIL_MANAGEMENT_EVENTS">

=head2 Tags => ArrayRef[L<Paws::CloudWatchEvents::Tag>]

The list of key-value pairs to associate with the rule.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutRule in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

