
package Paws::Connect::GetMetricDataV2;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', required => 1);
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::Connect::FilterV2]', required => 1);
  has Groupings => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Interval => (is => 'ro', isa => 'Paws::Connect::IntervalDetails');
  has MaxResults => (is => 'ro', isa => 'Int');
  has Metrics => (is => 'ro', isa => 'ArrayRef[Paws::Connect::MetricV2]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has StartTime => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMetricDataV2');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/metrics/data');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::GetMetricDataV2Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::GetMetricDataV2 - Arguments for method GetMetricDataV2 on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMetricDataV2 on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method GetMetricDataV2.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMetricDataV2.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $GetMetricDataV2Response = $connect->GetMetricDataV2(
      EndTime => '1970-01-01T01:00:00',
      Filters => [
        {
          FilterKey    => 'MyResourceArnOrId',    # min: 1, max: 250; OPTIONAL
          FilterValues => [
            'MyResourceArnOrId', ...              # min: 1, max: 250; OPTIONAL
          ],    # min: 1, max: 100; OPTIONAL
        },
        ...
      ],
      Metrics => [
        {
          MetricFilters => [
            {
              MetricFilterKey    => 'MyString',    # OPTIONAL
              MetricFilterValues => [
                'MyString', ...                    # OPTIONAL
              ],    # min: 1, max: 10; OPTIONAL
              Negate => 1,    # OPTIONAL
            },
            ...
          ],    # max: 2; OPTIONAL
          Name      => 'MyMetricNameV2',    # OPTIONAL
          Threshold => [
            {
              Comparison => 'MyResourceArnOrId',    # min: 1, max: 250; OPTIONAL
              ThresholdValue => 1,                  # OPTIONAL
            },
            ...
          ],    # max: 1; OPTIONAL
        },
        ...
      ],
      ResourceArn => 'MyARN',
      StartTime   => '1970-01-01T01:00:00',
      Groupings   => [ 'MyGroupingV2', ... ],    # OPTIONAL
      Interval    => {
        IntervalPeriod => 'FIFTEEN_MIN'
        ,    # values: FIFTEEN_MIN, THIRTY_MIN, HOUR, DAY, WEEK, TOTAL; OPTIONAL
        TimeZone => 'MyString',    # OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,                    # OPTIONAL
      NextToken  => 'MyNextToken2500',    # OPTIONAL
    );

    # Results:
    my $MetricResults = $GetMetricDataV2Response->MetricResults;
    my $NextToken     = $GetMetricDataV2Response->NextToken;

    # Returns a L<Paws::Connect::GetMetricDataV2Response> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/GetMetricDataV2>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Str

The timestamp, in UNIX Epoch time format, at which to end the reporting
interval for the retrieval of historical metrics data. The time must be
later than the start time timestamp. It cannot be later than the
current timestamp.



=head2 B<REQUIRED> Filters => ArrayRef[L<Paws::Connect::FilterV2>]

The filters to apply to returned metrics. You can filter on the
following resources:

=over

=item *

Agents

=item *

Campaigns

=item *

Channels

=item *

Feature

=item *

Queues

=item *

Routing profiles

=item *

Routing step expression

=item *

User hierarchy groups

=back

At least one filter must be passed from queues, routing profiles,
agents, or user hierarchy groups.

For metrics for outbound campaigns analytics, you can also use
campaigns to satisfy at least one filter requirement.

To filter by phone number, see Create a historical metrics report
(https://docs.aws.amazon.com/connect/latest/adminguide/create-historical-metrics-report.html)
in the I<Amazon Connect Administrator Guide>.

Note the following limits:

=over

=item *

B<Filter keys>: A maximum of 5 filter keys are supported in a single
request. Valid filter keys: C<AGENT> | C<AGENT_HIERARCHY_LEVEL_ONE> |
C<AGENT_HIERARCHY_LEVEL_TWO> | C<AGENT_HIERARCHY_LEVEL_THREE> |
C<AGENT_HIERARCHY_LEVEL_FOUR> | C<AGENT_HIERARCHY_LEVEL_FIVE> |
C<ANSWERING_MACHINE_DETECTION_STATUS> | C< BOT_ID> | C<BOT_ALIAS> |
C<BOT_VERSION> | C<BOT_LOCALE> | C<BOT_INTENT_NAME> | C<CAMPAIGN> |
C<CAMPAIGN_DELIVERY_EVENT_TYPE> |C<CASE_TEMPLATE_ARN> | C<CASE_STATUS>
| C<CHANNEL> | C<contact/segmentAttributes/connect:Subtype> |
C<DISCONNECT_REASON> | C<EVALUATION_FORM> | C<EVALUATION_SECTION> |
C<EVALUATION_QUESTION> | C<EVALUATION_SOURCE> | C<FEATURE> |
C<FLOW_ACTION_ID> | C<FLOW_TYPE> | C<FLOWS_MODULE_RESOURCE_ID> |
C<FLOWS_NEXT_RESOURCE_ID> | C<FLOWS_NEXT_RESOURCE_QUEUE_ID> |
C<FLOWS_OUTCOME_TYPE> | C<FLOWS_RESOURCE_ID> | C<FORM_VERSION> |
C<INITIATION_METHOD> | C<INVOKING_RESOURCE_PUBLISHED_TIMESTAMP> |
C<INVOKING_RESOURCE_TYPE> | C<PARENT_FLOWS_RESOURCE_ID> |
C<RESOURCE_PUBLISHED_TIMESTAMP> | C<ROUTING_PROFILE> |
C<ROUTING_STEP_EXPRESSION> | C<QUEUE> | C<Q_CONNECT_ENABLED> |

=item *

B<Filter values>: A maximum of 100 filter values are supported in a
single request. VOICE, CHAT, and TASK are valid C<filterValue> for the
CHANNEL filter key. They do not count towards limitation of 100 filter
values. For example, a GetMetricDataV2 request can filter by 50 queues,
35 agents, and 15 routing profiles for a total of 100 filter values,
along with 3 channel filters.

C<contact_lens_conversational_analytics> is a valid filterValue for the
C<FEATURE> filter key. It is available only to contacts analyzed by
Contact Lens conversational analytics.

C<connect:Chat>, C<connect:SMS>, C<connect:Telephony>, and
C<connect:WebRTC> are valid C<filterValue> examples (not exhaustive)
for the C<contact/segmentAttributes/connect:Subtype filter> key.

C<ROUTING_STEP_EXPRESSION> is a valid filter key with a filter value up
to 3000 length. This filter is case and order sensitive. JSON string
fields must be sorted in ascending order and JSON array order should be
kept as is.

C<Q_CONNECT_ENABLED>. TRUE and FALSE are the only valid filterValues
for the C<Q_CONNECT_ENABLED> filter key.

=over

=item *

TRUE includes all contacts that had Amazon Q in Connect enabled as part
of the flow.

=item *

FALSE includes all contacts that did not have Amazon Q in Connect
enabled as part of the flow

=back

This filter is available only for contact record-driven metrics.

Campaign
(https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-outbound-campaigns_Campaign.html)
ARNs are valid C<filterValues> for the C<CAMPAIGN> filter key.

=back




=head2 Groupings => ArrayRef[Str|Undef]

The grouping applied to the metrics that are returned. For example,
when results are grouped by queue, the metrics returned are grouped by
queue. The values that are returned apply to the metrics for each
queue. They are not aggregated for all queues.

If no grouping is specified, a summary of all metrics is returned.

Valid grouping keys: C<AGENT> | C<AGENT_HIERARCHY_LEVEL_ONE> |
C<AGENT_HIERARCHY_LEVEL_TWO> | C<AGENT_HIERARCHY_LEVEL_THREE> |
C<AGENT_HIERARCHY_LEVEL_FOUR> | C<AGENT_HIERARCHY_LEVEL_FIVE> |
C<ANSWERING_MACHINE_DETECTION_STATUS> | C<BOT_ID> | C<BOT_ALIAS> |
C<BOT_VERSION> | C<BOT_LOCALE> | C<BOT_INTENT_NAME> | C<CAMPAIGN> |
C<CAMPAIGN_DELIVERY_EVENT_TYPE> | C<CASE_TEMPLATE_ARN> | C<CASE_STATUS>
| C<CHANNEL> | C<contact/segmentAttributes/connect:Subtype> |
C<DISCONNECT_REASON> | C<EVALUATION_FORM> | C<EVALUATION_SECTION> |
C<EVALUATION_QUESTION> | C<EVALUATION_SOURCE> | C<FLOWS_RESOURCE_ID> |
C<FLOWS_MODULE_RESOURCE_ID> | C<FLOW_ACTION_ID> | C<FLOW_TYPE> |
C<FLOWS_OUTCOME_TYPE> | C<FORM_VERSION> | C<INITIATION_METHOD> |
C<INVOKING_RESOURCE_PUBLISHED_TIMESTAMP> | C<INVOKING_RESOURCE_TYPE> |
C<PARENT_FLOWS_RESOURCE_ID> | C<Q_CONNECT_ENABLED> | C<QUEUE> |
C<RESOURCE_PUBLISHED_TIMESTAMP> | C<ROUTING_PROFILE> |
C<ROUTING_STEP_EXPRESSION>

Type: Array of strings

Array Members: Maximum number of 4 items

Required: No



=head2 Interval => L<Paws::Connect::IntervalDetails>

The interval period and timezone to apply to returned metrics.

=over

=item *

C<IntervalPeriod>: An aggregated grouping applied to request metrics.
Valid C<IntervalPeriod> values are: C<FIFTEEN_MIN> | C<THIRTY_MIN> |
C<HOUR> | C<DAY> | C<WEEK> | C<TOTAL>.

For example, if C<IntervalPeriod> is selected C<THIRTY_MIN>,
C<StartTime> and C<EndTime> differs by 1 day, then Amazon Connect
returns 48 results in the response. Each result is aggregated by the
THIRTY_MIN period. By default Amazon Connect aggregates results based
on the C<TOTAL> interval period.

The following list describes restrictions on C<StartTime> and
C<EndTime> based on which C<IntervalPeriod> is requested.

=over

=item *

C<FIFTEEN_MIN>: The difference between C<StartTime> and C<EndTime> must
be less than 3 days.

=item *

C<THIRTY_MIN>: The difference between C<StartTime> and C<EndTime> must
be less than 3 days.

=item *

C<HOUR>: The difference between C<StartTime> and C<EndTime> must be
less than 3 days.

=item *

C<DAY>: The difference between C<StartTime> and C<EndTime> must be less
than 35 days.

=item *

C<WEEK>: The difference between C<StartTime> and C<EndTime> must be
less than 35 days.

=item *

C<TOTAL>: The difference between C<StartTime> and C<EndTime> must be
less than 35 days.

=back

=item *

C<TimeZone>: The timezone applied to requested metrics.

=back




=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 B<REQUIRED> Metrics => ArrayRef[L<Paws::Connect::MetricV2>]

The metrics to retrieve. Specify the name, groupings, and filters for
each metric. The following historical metrics are available. For a
description of each metric, see Metrics definition
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html)
in the I<Amazon Connect Administrator Guide>.

=over

=item ABANDONMENT_RATE

Unit: Percent

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy, Feature, contact/segmentAttributes/connect:Subtype, Q
in Connect

UI name: Abandonment rate
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#abandonment-rate)

=item AGENT_ADHERENT_TIME

This metric is available only in Amazon Web Services Regions where
Forecasting, capacity planning, and scheduling
(https://docs.aws.amazon.com/connect/latest/adminguide/regions.html#optimization_region)
is available.

Unit: Seconds

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy

UI name: Adherent time
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#adherent-time)

=item AGENT_ANSWER_RATE

Unit: Percent

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy

UI name: Agent answer rate
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-answer-rate)

=item AGENT_NON_ADHERENT_TIME

Unit: Seconds

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy

UI name: Non-adherent time
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#non-adherent-time)

=item AGENT_NON_RESPONSE

Unit: Count

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy

UI name: Agent non-response
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-non-response)

=item AGENT_NON_RESPONSE_WITHOUT_CUSTOMER_ABANDONS

Unit: Count

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy

Data for this metric is available starting from October 1, 2023 0:00:00
GMT.

UI name: Agent non-response without customer abandons
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-non-response-without-customer-abandons)

=item AGENT_OCCUPANCY

Unit: Percentage

Valid groupings and filters: Routing Profile, Agent, Agent Hierarchy

UI name: Occupancy
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#occupancy)

=item AGENT_SCHEDULE_ADHERENCE

This metric is available only in Amazon Web Services Regions where
Forecasting, capacity planning, and scheduling
(https://docs.aws.amazon.com/connect/latest/adminguide/regions.html#optimization_region)
is available.

Unit: Percent

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy

UI name: Adherence
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#adherence)

=item AGENT_SCHEDULED_TIME

This metric is available only in Amazon Web Services Regions where
Forecasting, capacity planning, and scheduling
(https://docs.aws.amazon.com/connect/latest/adminguide/regions.html#optimization_region)
is available.

Unit: Seconds

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy

UI name: Scheduled time
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#scheduled-time)

=item AVG_ABANDON_TIME

Unit: Seconds

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy, Feature, contact/segmentAttributes/connect:Subtype, Q
in Connect

UI name: Average queue abandon time
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-queue-abandon-time)

=item AVG_ACTIVE_TIME

Unit: Seconds

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy, Q in Connect

UI name: Average active time
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-active-time)

=item AVG_AFTER_CONTACT_WORK_TIME

Unit: Seconds

Valid metric filter key: C<INITIATION_METHOD>

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy, Feature, contact/segmentAttributes/connect:Subtype, Q
in Connect

UI name: Average after contact work time
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#after-contact-work-time)

Feature is a valid filter but not a valid grouping.

=item AVG_AGENT_CONNECTING_TIME

Unit: Seconds

Valid metric filter key: C<INITIATION_METHOD>. For now, this metric
only supports the following as C<INITIATION_METHOD>: C<INBOUND> |
C<OUTBOUND> | C<CALLBACK> | C<API>

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy

UI name: Average agent API connecting time
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-api-connecting-time)

The C<Negate> key in metric-level filters is not applicable for this
metric.

=item AVG_AGENT_PAUSE_TIME

Unit: Seconds

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy, Q in Connect

UI name: Average agent pause time
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-pause-time)

=item AVG_BOT_CONVERSATION_TIME

Unit: Seconds

Valid groupings and filters: Channel,
contact/segmentAttributes/connect:Subtype, Bot ID, Bot alias, Bot
version, Bot locale, Flows resource ID, Flows module resource ID, Flow
type, Flow action ID, Invoking resource published timestamp, Initiation
method, Invoking resource type, Parent flows resource ID

UI name: Average bot conversation time
(https://docs.aws.amazon.com/connect/latest/adminguide/bot-metrics.html#average-bot-conversation-time)

=item AVG_BOT_CONVERSATION_TURNS

Unit: Count

Valid groupings and filters: Channel,
contact/segmentAttributes/connect:Subtype, Bot ID, Bot alias, Bot
version, Bot locale, Flows resource ID, Flows module resource ID, Flow
type, Flow action ID, Invoking resource published timestamp, Initiation
method, Invoking resource type, Parent flows resource ID

UI name: Average bot conversation turns
(https://docs.aws.amazon.com/connect/latest/adminguide/bot-metrics.html#average-bot-conversation-turns)

=item AVG_CASE_RELATED_CONTACTS

Unit: Count

Required filter key: CASE_TEMPLATE_ARN

Valid groupings and filters: CASE_TEMPLATE_ARN, CASE_STATUS

UI name: Average contacts per case
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-contacts-per-case)

=item AVG_CASE_RESOLUTION_TIME

Unit: Seconds

Required filter key: CASE_TEMPLATE_ARN

Valid groupings and filters: CASE_TEMPLATE_ARN, CASE_STATUS

UI name: Average case resolution time
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-case-resolution-time)

=item AVG_CONTACT_DURATION

Unit: Seconds

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy, Feature, contact/segmentAttributes/connect:Subtype, Q
in Connect

UI name: Average contact duration
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-contact-duration)

Feature is a valid filter but not a valid grouping.

=item AVG_CONVERSATION_DURATION

Unit: Seconds

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy, Feature, contact/segmentAttributes/connect:Subtype, Q
in Connect

UI name: Average conversation duration
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-conversation-duration)

=item AVG_DIALS_PER_MINUTE

This metric is available only for outbound campaigns that use the agent
assisted voice and automated voice delivery modes.

Unit: Count

Valid groupings and filters: Agent, Campaign, Queue, Routing Profile

UI name: Average dials per minute
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-dials-per-minute)

=item AVG_EVALUATION_SCORE

Unit: Percent

Valid groupings and filters: Agent, Agent Hierarchy, Channel,
Evaluation Form ID, Evaluation Section ID, Evaluation Question ID,
Evaluation Source, Form Version, Queue, Routing Profile

UI name: Average evaluation score
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-evaluation-score)

=item AVG_FLOW_TIME

Unit: Seconds

Valid groupings and filters: Channel,
contact/segmentAttributes/connect:Subtype, Flow type, Flows module
resource ID, Flows next resource ID, Flows next resource queue ID,
Flows outcome type, Flows resource ID, Initiation method, Resource
published timestamp

UI name: Average flow time
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-flow-time)

=item AVG_GREETING_TIME_AGENT

This metric is available only for contacts analyzed by Contact Lens
conversational analytics.

Unit: Seconds

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy, contact/segmentAttributes/connect:Subtype, Q in
Connect

UI name: Average agent greeting time
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-greeting-time)

=item AVG_HANDLE_TIME

Unit: Seconds

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy, Feature, contact/segmentAttributes/connect:Subtype,
RoutingStepExpression

UI name: Average handle time
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-handle-time)

Feature is a valid filter but not a valid grouping.

=item AVG_HOLD_TIME

Unit: Seconds

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy, Feature, contact/segmentAttributes/connect:Subtype, Q
in Connect

UI name: Average customer hold time
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-customer-hold-time)

Feature is a valid filter but not a valid grouping.

=item AVG_HOLD_TIME_ALL_CONTACTS

Unit: Seconds

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy, contact/segmentAttributes/connect:Subtype, Q in
Connect

UI name: Average customer hold time all contacts
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-customer-hold-time-all-contacts)

=item AVG_HOLDS

Unit: Count

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy, Feature, contact/segmentAttributes/connect:Subtype, Q
in Connect

UI name: Average holds
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-holds)

Feature is a valid filter but not a valid grouping.

=item AVG_INTERACTION_AND_HOLD_TIME

Unit: Seconds

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy, contact/segmentAttributes/connect:Subtype, Q in
Connect

UI name: Average agent interaction and customer hold time
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-interaction-and-customer-hold-time)

=item AVG_INTERACTION_TIME

Unit: Seconds

Valid metric filter key: C<INITIATION_METHOD>

Valid groupings and filters: Queue, Channel, Routing Profile, Feature,
contact/segmentAttributes/connect:Subtype, Q in Connect

UI name: Average agent interaction time
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-interaction-time)

Feature is a valid filter but not a valid grouping.

=item AVG_INTERRUPTIONS_AGENT

This metric is available only for contacts analyzed by Contact Lens
conversational analytics.

Unit: Count

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy, contact/segmentAttributes/connect:Subtype, Q in
Connect

UI name: Average agent interruptions
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-interruptions)

=item AVG_INTERRUPTION_TIME_AGENT

This metric is available only for contacts analyzed by Contact Lens
conversational analytics.

Unit: Seconds

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy, contact/segmentAttributes/connect:Subtype, Q in
Connect

UI name: Average agent interruption time
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-interruption-time)

=item AVG_NON_TALK_TIME

This metric is available only for contacts analyzed by Contact Lens
conversational analytics.

Unit: Seconds

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy, contact/segmentAttributes/connect:Subtype, Q in
Connect

UI name: Average non-talk time
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-non-talk-time)

=item AVG_QUEUE_ANSWER_TIME

Unit: Seconds

Valid groupings and filters: Queue, Channel, Routing Profile, Feature,
contact/segmentAttributes/connect:Subtype, Q in Connect

UI name: Average queue answer time
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-queue-answer-time)

Feature is a valid filter but not a valid grouping.

=item AVG_RESOLUTION_TIME

Unit: Seconds

Valid groupings and filters: Queue, Channel, Routing Profile,
contact/segmentAttributes/connect:Subtype, Q in Connect

UI name: Average resolution time
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-resolution-time)

=item AVG_TALK_TIME

This metric is available only for contacts analyzed by Contact Lens
conversational analytics.

Unit: Seconds

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy, contact/segmentAttributes/connect:Subtype, Q in
Connect

UI name: Average talk time
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-talk-time)

=item AVG_TALK_TIME_AGENT

This metric is available only for contacts analyzed by Contact Lens
conversational analytics.

Unit: Seconds

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy, contact/segmentAttributes/connect:Subtype, Q in
Connect

UI name: Average agent talk time
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-talk-time)

=item AVG_TALK_TIME_CUSTOMER

This metric is available only for contacts analyzed by Contact Lens
conversational analytics.

Unit: Seconds

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy, contact/segmentAttributes/connect:Subtype, Q in
Connect

UI name: Average customer talk time
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-customer-talk-time)

=item AVG_WAIT_TIME_AFTER_CUSTOMER_CONNECTION

This metric is available only for outbound campaigns that use the agent
assisted voice and automated voice delivery modes.

Unit: Seconds

Valid groupings and filters: Campaign

UI name: Average wait time after customer connection
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-wait-time-after-customer-connection)

=item AVG_WEIGHTED_EVALUATION_SCORE

Unit: Percent

Valid groupings and filters: Agent, Agent Hierarchy, Channel,
Evaluation Form Id, Evaluation Section ID, Evaluation Question ID,
Evaluation Source, Form Version, Queue, Routing Profile

UI name: Average weighted evaluation score
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-weighted-evaluation-score)

=item BOT_CONVERSATIONS_COMPLETED

Unit: Count

Valid groupings and filters: Channel,
contact/segmentAttributes/connect:Subtype, Bot ID, Bot alias, Bot
version, Bot locale, Flows resource ID, Flows module resource ID, Flow
type, Flow action ID, Invoking resource published timestamp, Initiation
method, Invoking resource type, Parent flows resource ID

UI name: Bot conversations completed
(https://docs.aws.amazon.com/connect/latest/adminguide/bot-metrics.html#bot-conversations-completed)

=item BOT_INTENTS_COMPLETED

Unit: Count

Valid groupings and filters: Channel,
contact/segmentAttributes/connect:Subtype, Bot ID, Bot alias, Bot
version, Bot locale, Bot intent name, Flows resource ID, Flows module
resource ID, Flow type, Flow action ID, Invoking resource published
timestamp, Initiation method, Invoking resource type, Parent flows
resource ID

UI name: Bot intents completed
(https://docs.aws.amazon.com/connect/latest/adminguide/bot-metrics.html#bot-intents-completed)

=item CAMPAIGN_CONTACTS_ABANDONED_AFTER_X

This metric is available only for outbound campaigns using the agent
assisted voice and automated voice delivery modes.

Unit: Count

Valid groupings and filters: Agent, Campaign

Threshold: For C<ThresholdValue>, enter any whole number from 1 to
604800 (inclusive), in seconds. For C<Comparison>, you must enter C<GT>
(for I<Greater than>).

UI name: Campaign contacts abandoned after X
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#campaign-contacts-abandoned-after-x)

=item CAMPAIGN_CONTACTS_ABANDONED_AFTER_X_RATE

This metric is available only for outbound campaigns using the agent
assisted voice and automated voice delivery modes.

Unit: Percent

Valid groupings and filters: Agent, Campaign

Threshold: For C<ThresholdValue>, enter any whole number from 1 to
604800 (inclusive), in seconds. For C<Comparison>, you must enter C<GT>
(for I<Greater than>).

UI name: Campaign contacts abandoned after X rate
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#campaign-contacts-abandoned-after-x-rate)

=item CAMPAIGN_INTERACTIONS

This metric is available only for outbound campaigns using the email
delivery mode.

Unit: Count

Valid metric filter key: CAMPAIGN_INTERACTION_EVENT_TYPE

Valid groupings and filters: Campaign

UI name: Campaign interactions
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#campaign-interactions)

=item CAMPAIGN_SEND_ATTEMPTS

This metric is available only for outbound campaigns.

Unit: Count

Valid groupings and filters: Campaign, Channel,
contact/segmentAttributes/connect:Subtype

UI name: Campaign send attempts
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#campaign-send-attempts)

=item CASES_CREATED

Unit: Count

Required filter key: CASE_TEMPLATE_ARN

Valid groupings and filters: CASE_TEMPLATE_ARN, CASE_STATUS

UI name: Cases created
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#cases-created)

=item CONTACTS_CREATED

Unit: Count

Valid metric filter key: C<INITIATION_METHOD>

Valid groupings and filters: Queue, Channel, Routing Profile, Feature,
contact/segmentAttributes/connect:Subtype, Q in Connect

UI name: Contacts created
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-created)

Feature is a valid filter but not a valid grouping.

=item CONTACTS_HANDLED

Unit: Count

Valid metric filter key: C<INITIATION_METHOD>, C<DISCONNECT_REASON>

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy, Feature, contact/segmentAttributes/connect:Subtype,
RoutingStepExpression, Q in Connect

UI name: API contacts handled
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#api-contacts-handled)

Feature is a valid filter but not a valid grouping.

=item CONTACTS_HANDLED_BY_CONNECTED_TO_AGENT

Unit: Count

Valid metric filter key: C<INITIATION_METHOD>

Valid groupings and filters: Queue, Channel, Agent, Agent Hierarchy,
contact/segmentAttributes/connect:Subtype, Q in Connect

UI name: Contacts handled (connected to agent timestamp)
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-handled-by-connected-to-agent-timestamp)

=item CONTACTS_HOLD_ABANDONS

Unit: Count

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy, contact/segmentAttributes/connect:Subtype, Q in
Connect

UI name: Contacts hold disconnect
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-hold-disconnect)

=item CONTACTS_ON_HOLD_AGENT_DISCONNECT

Unit: Count

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy, Q in Connect

UI name: Contacts hold agent disconnect
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-hold-agent-disconnect)

=item CONTACTS_ON_HOLD_CUSTOMER_DISCONNECT

Unit: Count

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy, Q in Connect

UI name: Contacts hold customer disconnect
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-hold-customer-disconnect)

=item CONTACTS_PUT_ON_HOLD

Unit: Count

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy, Q in Connect

UI name: Contacts put on hold
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-put-on-hold)

=item CONTACTS_TRANSFERRED_OUT_EXTERNAL

Unit: Count

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy, Q in Connect

UI name: Contacts transferred out external
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-transferred-out-external)

=item CONTACTS_TRANSFERRED_OUT_INTERNAL

Unit: Percent

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy, Q in Connect

UI name: Contacts transferred out internal
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-transferred-out-internal)

=item CONTACTS_QUEUED

Unit: Count

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy, contact/segmentAttributes/connect:Subtype, Q in
Connect

UI name: Contacts queued
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-queued)

=item CONTACTS_QUEUED_BY_ENQUEUE

Unit: Count

Valid groupings and filters: Queue, Channel, Agent, Agent Hierarchy,
contact/segmentAttributes/connect:Subtype

UI name: Contacts queued (enqueue timestamp)
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-queued-by-enqueue)

=item CONTACTS_REMOVED_FROM_QUEUE_IN_X

Unit: Count

Valid groupings and filters: Queue, Channel, Routing Profile, Q in
Connect

Threshold: For C<ThresholdValue>, enter any whole number from 1 to
604800 (inclusive), in seconds. For C<Comparison>, you can use C<LT>
(for "Less than") or C<LTE> (for "Less than equal").

UI name: Contacts removed from queue in X seconds
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-removed-from-queue)

=item CONTACTS_RESOLVED_IN_X

Unit: Count

Valid groupings and filters: Queue, Channel, Routing Profile,
contact/segmentAttributes/connect:Subtype, Q in Connect

Threshold: For C<ThresholdValue>, enter any whole number from 1 to
604800 (inclusive), in seconds. For C<Comparison>, you can use C<LT>
(for "Less than") or C<LTE> (for "Less than equal").

UI name: Contacts resolved in X
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-resolved)

=item CONTACTS_TRANSFERRED_OUT

Unit: Count

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy, Feature, contact/segmentAttributes/connect:Subtype, Q
in Connect

UI name: Contacts transferred out
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-transferred-out)

Feature is a valid filter but not a valid grouping.

=item CONTACTS_TRANSFERRED_OUT_BY_AGENT

Unit: Count

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy, contact/segmentAttributes/connect:Subtype, Q in
Connect

UI name: Contacts transferred out by agent
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-transferred-out-by-agent)

=item CONTACTS_TRANSFERRED_OUT_FROM_QUEUE

Unit: Count

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy, contact/segmentAttributes/connect:Subtype, Q in
Connect

UI name: Contacts transferred out queue
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-transferred-out-queue)

=item CURRENT_CASES

Unit: Count

Required filter key: CASE_TEMPLATE_ARN

Valid groupings and filters: CASE_TEMPLATE_ARN, CASE_STATUS

UI name: Current cases
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#current-cases)

=item DELIVERY_ATTEMPTS

This metric is available only for outbound campaigns.

Unit: Count

Valid metric filter key: C<ANSWERING_MACHINE_DETECTION_STATUS>,
C<CAMPAIGN_DELIVERY_EVENT_TYPE>, C<DISCONNECT_REASON>

Valid groupings and filters: Agent, Answering Machine Detection Status,
Campaign, Campaign Delivery EventType, Channel,
contact/segmentAttributes/connect:Subtype, Disconnect Reason, Queue,
Routing Profile

UI name: Delivery attempts
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#delivery-attempts)

Campaign Delivery EventType filter and grouping are only available for
SMS and Email campaign delivery modes. Agent, Queue, Routing Profile,
Answering Machine Detection Status and Disconnect Reason are only
available for agent assisted voice and automated voice delivery modes.

=item DELIVERY_ATTEMPT_DISPOSITION_RATE

This metric is available only for outbound campaigns. Dispositions for
the agent assisted voice and automated voice delivery modes are only
available with answering machine detection enabled.

Unit: Percent

Valid metric filter key: C<ANSWERING_MACHINE_DETECTION_STATUS>,
C<CAMPAIGN_DELIVERY_EVENT_TYPE>, C<DISCONNECT_REASON>

Valid groupings and filters: Agent, Answering Machine Detection Status,
Campaign, Channel, contact/segmentAttributes/connect:Subtype,
Disconnect Reason, Queue, Routing Profile

UI name: Delivery attempt disposition rate
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#delivery-attempt-disposition-rate)

Campaign Delivery Event Type filter and grouping are only available for
SMS and Email campaign delivery modes. Agent, Queue, Routing Profile,
Answering Machine Detection Status and Disconnect Reason are only
available for agent assisted voice and automated voice delivery modes.

=item EVALUATIONS_PERFORMED

Unit: Count

Valid groupings and filters: Agent, Agent Hierarchy, Channel,
Evaluation Form ID, Evaluation Source, Form Version, Queue, Routing
Profile

UI name: Evaluations performed
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#evaluations-performed)

=item FLOWS_OUTCOME

Unit: Count

Valid groupings and filters: Channel,
contact/segmentAttributes/connect:Subtype, Flow type, Flows module
resource ID, Flows next resource ID, Flows next resource queue ID,
Flows outcome type, Flows resource ID, Initiation method, Resource
published timestamp

UI name: Flows outcome
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#flows-outcome)

=item FLOWS_STARTED

Unit: Count

Valid groupings and filters: Channel,
contact/segmentAttributes/connect:Subtype, Flow type, Flows module
resource ID, Flows resource ID, Initiation method, Resource published
timestamp

UI name: Flows started
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#flows-started)

=item HUMAN_ANSWERED_CALLS

This metric is available only for outbound campaigns. Dispositions for
the agent assisted voice and automated voice delivery modes are only
available with answering machine detection enabled.

Unit: Count

Valid groupings and filters: Agent, Campaign

UI name: Human answered
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#human-answered)

=item MAX_FLOW_TIME

Unit: Seconds

Valid groupings and filters: Channel,
contact/segmentAttributes/connect:Subtype, Flow type, Flows module
resource ID, Flows next resource ID, Flows next resource queue ID,
Flows outcome type, Flows resource ID, Initiation method, Resource
published timestamp

UI name: Maximum flow time
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#maximum-flow-time)

=item MAX_QUEUED_TIME

Unit: Seconds

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy, contact/segmentAttributes/connect:Subtype, Q in
Connect

UI name: Maximum queued time
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#maximum-queued-time)

=item MIN_FLOW_TIME

Unit: Seconds

Valid groupings and filters: Channel,
contact/segmentAttributes/connect:Subtype, Flow type, Flows module
resource ID, Flows next resource ID, Flows next resource queue ID,
Flows outcome type, Flows resource ID, Initiation method, Resource
published timestamp

UI name: Minimum flow time
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#minimum-flow-time)

=item PERCENT_AUTOMATIC_FAILS

Unit: Percent

Valid groupings and filters: Agent, Agent Hierarchy, Channel,
Evaluation Form ID, Evaluation Source, Form Version, Queue, Routing
Profile

UI name: Automatic fails percent
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#automatic-fails-percent)

=item PERCENT_BOT_CONVERSATIONS_OUTCOME

Unit: Percent

Valid groupings and filters: Channel,
contact/segmentAttributes/connect:Subtype, Bot ID, Bot alias, Bot
version, Bot locale, Flows resource ID, Flows module resource ID, Flow
type, Flow action ID, Invoking resource published timestamp, Initiation
method, Invoking resource type, Parent flows resource ID

UI name: Percent bot conversations outcome
(https://docs.aws.amazon.com/connect/latest/adminguide/bot-metrics.html#percent-bot-conversations-outcome)

=item PERCENT_BOT_INTENTS_OUTCOME

Unit: Percent

Valid groupings and filters: Channel,
contact/segmentAttributes/connect:Subtype, Bot ID, Bot alias, Bot
version, Bot locale, Bot intent name, Flows resource ID, Flows module
resource ID, Flow type, Flow action ID, Invoking resource published
timestamp, Initiation method, Invoking resource type, Parent flows
resource ID

UI name: Percent bot intents outcome
(https://docs.aws.amazon.com/connect/latest/adminguide/bot-metrics.html#percent-bot-intents-outcome)

=item PERCENT_CASES_FIRST_CONTACT_RESOLVED

Unit: Percent

Required filter key: CASE_TEMPLATE_ARN

Valid groupings and filters: CASE_TEMPLATE_ARN, CASE_STATUS

UI name: Cases resolved on first contact
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#cases-resolved-on-first-contact)

=item PERCENT_CONTACTS_STEP_EXPIRED

Unit: Percent

Valid groupings and filters: Queue, RoutingStepExpression

UI name: This metric is available in Real-time Metrics UI but not on
the Historical Metrics UI.

=item PERCENT_CONTACTS_STEP_JOINED

Unit: Percent

Valid groupings and filters: Queue, RoutingStepExpression

UI name: This metric is available in Real-time Metrics UI but not on
the Historical Metrics UI.

=item PERCENT_FLOWS_OUTCOME

Unit: Percent

Valid metric filter key: C<FLOWS_OUTCOME_TYPE>

Valid groupings and filters: Channel,
contact/segmentAttributes/connect:Subtype, Flow type, Flows module
resource ID, Flows next resource ID, Flows next resource queue ID,
Flows outcome type, Flows resource ID, Initiation method, Resource
published timestamp

UI name: Flows outcome percentage
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#flows-outcome-percentage).

The C<FLOWS_OUTCOME_TYPE> is not a valid grouping.

=item PERCENT_NON_TALK_TIME

This metric is available only for contacts analyzed by Contact Lens
conversational analytics.

Unit: Percentage

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy, contact/segmentAttributes/connect:Subtype, Q in
Connect

UI name: Non-talk time percent
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#non-talk-time-percent)

=item PERCENT_TALK_TIME

This metric is available only for contacts analyzed by Contact Lens
conversational analytics.

Unit: Percentage

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy, contact/segmentAttributes/connect:Subtype, Q in
Connect

UI name: Talk time percent
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#talk-time-percent)

=item PERCENT_TALK_TIME_AGENT

This metric is available only for contacts analyzed by Contact Lens
conversational analytics.

Unit: Percentage

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy, contact/segmentAttributes/connect:Subtype, Q in
Connect

UI name: Agent talk time percent
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-talk-time-percent)

=item PERCENT_TALK_TIME_CUSTOMER

This metric is available only for contacts analyzed by Contact Lens
conversational analytics.

Unit: Percentage

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy, contact/segmentAttributes/connect:Subtype, Q in
Connect

UI name: Customer talk time percent
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#customer-talk-time-percent)

=item REOPENED_CASE_ACTIONS

Unit: Count

Required filter key: CASE_TEMPLATE_ARN

Valid groupings and filters: CASE_TEMPLATE_ARN, CASE_STATUS

UI name: Cases reopened
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#cases-reopened)

=item RESOLVED_CASE_ACTIONS

Unit: Count

Required filter key: CASE_TEMPLATE_ARN

Valid groupings and filters: CASE_TEMPLATE_ARN, CASE_STATUS

UI name: Cases resolved
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#cases-resolved)

=item SERVICE_LEVEL

You can include up to 20 SERVICE_LEVEL metrics in a request.

Unit: Percent

Valid groupings and filters: Queue, Channel, Routing Profile, Q in
Connect

Threshold: For C<ThresholdValue>, enter any whole number from 1 to
604800 (inclusive), in seconds. For C<Comparison>, you can use C<LT>
(for "Less than") or C<LTE> (for "Less than equal").

UI name: Service level X
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#service-level)

=item STEP_CONTACTS_QUEUED

Unit: Count

Valid groupings and filters: Queue, RoutingStepExpression

UI name: This metric is available in Real-time Metrics UI but not on
the Historical Metrics UI.

=item SUM_AFTER_CONTACT_WORK_TIME

Unit: Seconds

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy, Q in Connect

UI name: After contact work time
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#after-contact-work-time)

=item SUM_CONNECTING_TIME_AGENT

Unit: Seconds

Valid metric filter key: C<INITIATION_METHOD>. This metric only
supports the following filter keys as C<INITIATION_METHOD>: C<INBOUND>
| C<OUTBOUND> | C<CALLBACK> | C<API>

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy

UI name: Agent API connecting time
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-api-connecting-time)

The C<Negate> key in metric-level filters is not applicable for this
metric.

=item CONTACTS_ABANDONED

Unit: Count

Metric filter:

=over

=item *

Valid values: C<API>| C<Incoming> | C<Outbound> | C<Transfer> |
C<Callback> | C<Queue_Transfer>| C<Disconnect>

=back

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy, contact/segmentAttributes/connect:Subtype,
RoutingStepExpression, Q in Connect

UI name: Contact abandoned
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-abandoned)

=item SUM_CONTACTS_ABANDONED_IN_X

Unit: Count

Valid groupings and filters: Queue, Channel, Routing Profile,
contact/segmentAttributes/connect:Subtype, Q in Connect

Threshold: For C<ThresholdValue>, enter any whole number from 1 to
604800 (inclusive), in seconds. For C<Comparison>, you can use C<LT>
(for "Less than") or C<LTE> (for "Less than equal").

UI name: Contacts abandoned in X seconds
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-abandoned-in-x-seconds)

=item SUM_CONTACTS_ANSWERED_IN_X

Unit: Count

Valid groupings and filters: Queue, Channel, Routing Profile,
contact/segmentAttributes/connect:Subtype, Q in Connect

Threshold: For C<ThresholdValue>, enter any whole number from 1 to
604800 (inclusive), in seconds. For C<Comparison>, you can use C<LT>
(for "Less than") or C<LTE> (for "Less than equal").

UI name: Contacts answered in X seconds
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-answered-in-x-seconds)

=item SUM_CONTACT_FLOW_TIME

Unit: Seconds

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy, Q in Connect

UI name: Contact flow time
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contact-flow-time)

=item SUM_CONTACT_TIME_AGENT

Unit: Seconds

Valid groupings and filters: Routing Profile, Agent, Agent Hierarchy

UI name: Agent on contact time
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-on-contact-time)

=item SUM_CONTACTS_DISCONNECTED

Valid metric filter key: C<DISCONNECT_REASON>

Unit: Count

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy, contact/segmentAttributes/connect:Subtype, Q in
Connect

UI name: Contact disconnected
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contact-disconnected)

=item SUM_ERROR_STATUS_TIME_AGENT

Unit: Seconds

Valid groupings and filters: Routing Profile, Agent, Agent Hierarchy

UI name: Error status time
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#error-status-time)

=item SUM_HANDLE_TIME

Unit: Seconds

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy, Q in Connect

UI name: Contact handle time
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contact-handle-time)

=item SUM_HOLD_TIME

Unit: Count

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy, Q in Connect

UI name: Customer hold time
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#customer-hold-time)

=item SUM_IDLE_TIME_AGENT

Unit: Seconds

Valid groupings and filters: Routing Profile, Agent, Agent Hierarchy

UI name: Agent idle time
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-idle-time)

=item SUM_INTERACTION_AND_HOLD_TIME

Unit: Seconds

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy, Q in Connect

UI name: Agent interaction and hold time
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-interaction-and-hold-time)

=item SUM_INTERACTION_TIME

Unit: Seconds

Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
Agent Hierarchy

UI name: Agent interaction time
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-interaction-time)

=item SUM_NON_PRODUCTIVE_TIME_AGENT

Unit: Seconds

Valid groupings and filters: Routing Profile, Agent, Agent Hierarchy

UI name: Agent non-productive time
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-non-productive-time)

=item SUM_ONLINE_TIME_AGENT

Unit: Seconds

Valid groupings and filters: Routing Profile, Agent, Agent Hierarchy

UI name: Online time
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#online-time)

=item SUM_RETRY_CALLBACK_ATTEMPTS

Unit: Count

Valid groupings and filters: Queue, Channel, Routing Profile,
contact/segmentAttributes/connect:Subtype, Q in Connect

UI name: Callback attempts
(https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#callback-attempts)

=back




=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.



=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the resource. This includes the
C<instanceId> an Amazon Connect instance.



=head2 B<REQUIRED> StartTime => Str

The timestamp, in UNIX Epoch time format, at which to start the
reporting interval for the retrieval of historical metrics data. The
time must be before the end time timestamp. The start and end time
depends on the C<IntervalPeriod> selected. By default the time range
between start and end time is 35 days. Historical metrics are available
for 3 months.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMetricDataV2 in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

