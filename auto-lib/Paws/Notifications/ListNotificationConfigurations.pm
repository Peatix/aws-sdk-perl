
package Paws::Notifications::ListNotificationConfigurations;
  use Moose;
  has ChannelArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'channelArn');
  has EventRuleSource => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'eventRuleSource');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has Status => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListNotificationConfigurations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/notification-configurations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Notifications::ListNotificationConfigurationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Notifications::ListNotificationConfigurations - Arguments for method ListNotificationConfigurations on L<Paws::Notifications>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListNotificationConfigurations on the
L<AWS User Notifications|Paws::Notifications> service. Use the attributes of this class
as arguments to method ListNotificationConfigurations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListNotificationConfigurations.

=head1 SYNOPSIS

    my $notifications = Paws->service('Notifications');
    my $ListNotificationConfigurationsResponse =
      $notifications->ListNotificationConfigurations(
      ChannelArn      => 'MyChannelArn',    # OPTIONAL
      EventRuleSource => 'MySource',        # OPTIONAL
      MaxResults      => 1,                 # OPTIONAL
      NextToken       => 'MyNextToken',     # OPTIONAL
      Status          => 'ACTIVE',          # OPTIONAL
      );

    # Results:
    my $NextToken = $ListNotificationConfigurationsResponse->NextToken;
    my $NotificationConfigurations =
      $ListNotificationConfigurationsResponse->NotificationConfigurations;

# Returns a L<Paws::Notifications::ListNotificationConfigurationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/notifications/ListNotificationConfigurations>

=head1 ATTRIBUTES


=head2 ChannelArn => Str

The Amazon Resource Name (ARN) of the Channel to match.



=head2 EventRuleSource => Str

The matched event source.

Must match one of the valid EventBridge sources. Only Amazon Web
Services service sourced events are supported. For example, C<aws.ec2>
and C<aws.cloudwatch>. For more information, see Event delivery from
Amazon Web Services services
(https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-service-event.html#eb-service-event-delivery-level)
in the I<Amazon EventBridge User Guide>.



=head2 MaxResults => Int

The maximum number of results to be returned in this call. Defaults to
20.



=head2 NextToken => Str

The start token for paginated calls. Retrieved from the response of a
previous C<ListEventRules> call. Next token uses Base64 encoding.



=head2 Status => Str

The C<NotificationConfiguration> status to match.

=over

=item *

Values:

=over

=item *

C<ACTIVE>

=over

=item *

All C<EventRules> are C<ACTIVE> and any call can be run.

=back

=item *

C<PARTIALLY_ACTIVE>

=over

=item *

Some C<EventRules> are C<ACTIVE> and some are C<INACTIVE>. Any call can
be run.

=item *

Any call can be run.

=back

=item *

C<INACTIVE>

=over

=item *

All C<EventRules> are C<INACTIVE> and any call can be run.

=back

=item *

C<DELETING>

=over

=item *

This C<NotificationConfiguration> is being deleted.

=item *

Only C<GET> and C<LIST> calls can be run.

=back

=back

=back


Valid values are: C<"ACTIVE">, C<"PARTIALLY_ACTIVE">, C<"INACTIVE">, C<"DELETING">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListNotificationConfigurations in L<Paws::Notifications>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

