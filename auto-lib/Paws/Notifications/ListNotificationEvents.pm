
package Paws::Notifications::ListNotificationEvents;
  use Moose;
  has AggregateNotificationEventArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'aggregateNotificationEventArn');
  has EndTime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'endTime');
  has IncludeChildEvents => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'includeChildEvents');
  has Locale => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'locale');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has Source => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'source');
  has StartTime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'startTime');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListNotificationEvents');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/notification-events');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Notifications::ListNotificationEventsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Notifications::ListNotificationEvents - Arguments for method ListNotificationEvents on L<Paws::Notifications>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListNotificationEvents on the
L<AWS User Notifications|Paws::Notifications> service. Use the attributes of this class
as arguments to method ListNotificationEvents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListNotificationEvents.

=head1 SYNOPSIS

    my $notifications = Paws->service('Notifications');
    my $ListNotificationEventsResponse = $notifications->ListNotificationEvents(
      AggregateNotificationEventArn => 'MyNotificationEventArn',    # OPTIONAL
      EndTime                       => '1970-01-01T01:00:00',       # OPTIONAL
      IncludeChildEvents            => 1,                           # OPTIONAL
      Locale                        => 'de_DE',                     # OPTIONAL
      MaxResults                    => 1,                           # OPTIONAL
      NextToken                     => 'MyNextToken',               # OPTIONAL
      Source                        => 'MySource',                  # OPTIONAL
      StartTime                     => '1970-01-01T01:00:00',       # OPTIONAL
    );

    # Results:
    my $NextToken = $ListNotificationEventsResponse->NextToken;
    my $NotificationEvents =
      $ListNotificationEventsResponse->NotificationEvents;

    # Returns a L<Paws::Notifications::ListNotificationEventsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/notifications/ListNotificationEvents>

=head1 ATTRIBUTES


=head2 AggregateNotificationEventArn => Str

The Amazon Resource Name (ARN) of the C<aggregatedNotificationEventArn>
to match.



=head2 EndTime => Str

Latest time of events to return from this call.



=head2 IncludeChildEvents => Bool

Include aggregated child events in the result.



=head2 Locale => Str

The locale code of the language used for the retrieved
C<NotificationEvent>. The default locale is English C<(en_US)>.

Valid values are: C<"de_DE">, C<"en_CA">, C<"en_US">, C<"en_UK">, C<"es_ES">, C<"fr_CA">, C<"fr_FR">, C<"id_ID">, C<"it_IT">, C<"ja_JP">, C<"ko_KR">, C<"pt_BR">, C<"tr_TR">, C<"zh_CN">, C<"zh_TW">

=head2 MaxResults => Int

The maximum number of results to be returned in this call. Defaults to
20.



=head2 NextToken => Str

The start token for paginated calls. Retrieved from the response of a
previous C<ListEventRules> call. Next token uses Base64 encoding.



=head2 Source => Str

The matched event source.

Must match one of the valid EventBridge sources. Only Amazon Web
Services service sourced events are supported. For example, C<aws.ec2>
and C<aws.cloudwatch>. For more information, see Event delivery from
Amazon Web Services services
(https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-service-event.html#eb-service-event-delivery-level)
in the I<Amazon EventBridge User Guide>.



=head2 StartTime => Str

The earliest time of events to return from this call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListNotificationEvents in L<Paws::Notifications>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

