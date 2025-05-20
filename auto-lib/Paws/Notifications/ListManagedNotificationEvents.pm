
package Paws::Notifications::ListManagedNotificationEvents;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'endTime');
  has Locale => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'locale');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has OrganizationalUnitId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'organizationalUnitId');
  has RelatedAccount => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'relatedAccount');
  has Source => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'source');
  has StartTime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'startTime');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListManagedNotificationEvents');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/managed-notification-events');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Notifications::ListManagedNotificationEventsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Notifications::ListManagedNotificationEvents - Arguments for method ListManagedNotificationEvents on L<Paws::Notifications>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListManagedNotificationEvents on the
L<AWS User Notifications|Paws::Notifications> service. Use the attributes of this class
as arguments to method ListManagedNotificationEvents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListManagedNotificationEvents.

=head1 SYNOPSIS

    my $notifications = Paws->service('Notifications');
    my $ListManagedNotificationEventsResponse =
      $notifications->ListManagedNotificationEvents(
      EndTime              => '1970-01-01T01:00:00',       # OPTIONAL
      Locale               => 'de_DE',                     # OPTIONAL
      MaxResults           => 1,                           # OPTIONAL
      NextToken            => 'MyNextToken',               # OPTIONAL
      OrganizationalUnitId => 'MyOrganizationalUnitId',    # OPTIONAL
      RelatedAccount       => 'MyAccountId',               # OPTIONAL
      Source               => 'MySource',                  # OPTIONAL
      StartTime            => '1970-01-01T01:00:00',       # OPTIONAL
      );

    # Results:
    my $ManagedNotificationEvents =
      $ListManagedNotificationEventsResponse->ManagedNotificationEvents;
    my $NextToken = $ListManagedNotificationEventsResponse->NextToken;

# Returns a L<Paws::Notifications::ListManagedNotificationEventsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/notifications/ListManagedNotificationEvents>

=head1 ATTRIBUTES


=head2 EndTime => Str

Latest time of events to return from this call.



=head2 Locale => Str

The locale code of the language used for the retrieved
NotificationEvent. The default locale is English (en_US).

Valid values are: C<"de_DE">, C<"en_CA">, C<"en_US">, C<"en_UK">, C<"es_ES">, C<"fr_CA">, C<"fr_FR">, C<"id_ID">, C<"it_IT">, C<"ja_JP">, C<"ko_KR">, C<"pt_BR">, C<"tr_TR">, C<"zh_CN">, C<"zh_TW">

=head2 MaxResults => Int

The maximum number of results to be returned in this call. Defaults to
20.



=head2 NextToken => Str

The start token for paginated calls. Retrieved from the response of a
previous C<ListManagedNotificationChannelAssociations> call. Next token
uses Base64 encoding.



=head2 OrganizationalUnitId => Str

The Organizational Unit Id that an Amazon Web Services account belongs
to.



=head2 RelatedAccount => Str

The Amazon Web Services account ID associated with the Managed
Notification Events.



=head2 Source => Str

The Amazon Web Services service the event originates from. For example
aws.cloudwatch.



=head2 StartTime => Str

The earliest time of events to return from this call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListManagedNotificationEvents in L<Paws::Notifications>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

