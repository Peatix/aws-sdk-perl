
package Paws::Connect::SearchContacts;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SearchCriteria => (is => 'ro', isa => 'Paws::Connect::SearchCriteria');
  has Sort => (is => 'ro', isa => 'Paws::Connect::Sort');
  has TimeRange => (is => 'ro', isa => 'Paws::Connect::SearchContactsTimeRange', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchContacts');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/search-contacts');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::SearchContactsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::SearchContacts - Arguments for method SearchContacts on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchContacts on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method SearchContacts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchContacts.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $SearchContactsResponse = $connect->SearchContacts(
      InstanceId => 'MyInstanceId',
      TimeRange  => {
        EndTime   => '1970-01-01T01:00:00',
        StartTime => '1970-01-01T01:00:00',
        Type      => 'INITIATION_TIMESTAMP'
        , # values: INITIATION_TIMESTAMP, SCHEDULED_TIMESTAMP, CONNECTED_TO_AGENT_TIMESTAMP, DISCONNECT_TIMESTAMP

      },
      MaxResults     => 1,                     # OPTIONAL
      NextToken      => 'MyLargeNextToken',    # OPTIONAL
      SearchCriteria => {
        AgentHierarchyGroups => {
          L1Ids => [ 'MyHierarchyGroupId', ... ],    # max: 10; OPTIONAL
          L2Ids => [ 'MyHierarchyGroupId', ... ],    # max: 10; OPTIONAL
          L3Ids => [ 'MyHierarchyGroupId', ... ],    # max: 10; OPTIONAL
          L4Ids => [ 'MyHierarchyGroupId', ... ],    # max: 10; OPTIONAL
          L5Ids => [ 'MyHierarchyGroupId', ... ],    # max: 10; OPTIONAL
        },    # OPTIONAL
        AgentIds => [
          'MyAgentResourceId', ...    # min: 1, max: 256
        ],    # max: 100; OPTIONAL
        Channels => [
          'VOICE', ...    # values: VOICE, CHAT, TASK, EMAIL
        ],    # OPTIONAL
        ContactAnalysis => {
          Transcript => {
            Criteria => [
              {
                MatchType       => 'MATCH_ALL',   # values: MATCH_ALL, MATCH_ANY
                ParticipantRole => 'AGENT'
                ,    # values: AGENT, CUSTOMER, SYSTEM, CUSTOM_BOT, SUPERVISOR
                SearchText => [
                  'MySearchText', ...    # max: 128
                ],    # max: 100

              },
              ...
            ],    # max: 6
            MatchType => 'MATCH_ALL',    # values: MATCH_ALL, MATCH_ANY
          },    # OPTIONAL
        },    # OPTIONAL
        InitiationMethods => [
          'INBOUND',
          ... # values: INBOUND, OUTBOUND, TRANSFER, QUEUE_TRANSFER, CALLBACK, API, DISCONNECT, MONITOR, EXTERNAL_OUTBOUND, WEBRTC_API, AGENT_REPLY, FLOW
        ],    # OPTIONAL
        QueueIds => [ 'MyQueueId', ... ],    # max: 100; OPTIONAL
        SearchableContactAttributes => {
          Criteria => [
            {
              Key    => 'MySearchableContactAttributeKey',    # min: 1, max: 100
              Values => [
                'MySearchableContactAttributeValue', ...      # max: 100
              ],    # max: 20

            },
            ...
          ],    # max: 15
          MatchType => 'MATCH_ALL',    # values: MATCH_ALL, MATCH_ANY
        },    # OPTIONAL
        SearchableSegmentAttributes => {
          Criteria => [
            {
              Key    => 'MySearchableSegmentAttributeKey',    # min: 1, max: 64
              Values => [
                'MySearchableSegmentAttributeValue', ...      # max: 128
              ],    # min: 1, max: 20

            },
            ...
          ],    # min: 1, max: 15
          MatchType => 'MATCH_ALL',    # values: MATCH_ALL, MATCH_ANY
        },    # OPTIONAL
      },    # OPTIONAL
      Sort => {
        FieldName => 'INITIATION_TIMESTAMP'
        , # values: INITIATION_TIMESTAMP, SCHEDULED_TIMESTAMP, CONNECTED_TO_AGENT_TIMESTAMP, DISCONNECT_TIMESTAMP, INITIATION_METHOD, CHANNEL
        Order => 'ASCENDING',    # values: ASCENDING, DESCENDING

      },    # OPTIONAL
    );

    # Results:
    my $Contacts   = $SearchContactsResponse->Contacts;
    my $NextToken  = $SearchContactsResponse->NextToken;
    my $TotalCount = $SearchContactsResponse->TotalCount;

    # Returns a L<Paws::Connect::SearchContactsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/SearchContacts>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The identifier of Amazon Connect instance. You can find the instance ID
in the Amazon Resource Name (ARN) of the instance.



=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.



=head2 SearchCriteria => L<Paws::Connect::SearchCriteria>

The search criteria to be used to return contacts.



=head2 Sort => L<Paws::Connect::Sort>

Specifies a field to sort by and a sort order.



=head2 B<REQUIRED> TimeRange => L<Paws::Connect::SearchContactsTimeRange>

Time range that you want to search results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchContacts in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

