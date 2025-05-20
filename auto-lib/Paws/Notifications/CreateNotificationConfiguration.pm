
package Paws::Notifications::CreateNotificationConfiguration;
  use Moose;
  has AggregationDuration => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'aggregationDuration');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Notifications::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateNotificationConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/notification-configurations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Notifications::CreateNotificationConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Notifications::CreateNotificationConfiguration - Arguments for method CreateNotificationConfiguration on L<Paws::Notifications>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateNotificationConfiguration on the
L<AWS User Notifications|Paws::Notifications> service. Use the attributes of this class
as arguments to method CreateNotificationConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateNotificationConfiguration.

=head1 SYNOPSIS

    my $notifications = Paws->service('Notifications');
    my $CreateNotificationConfigurationResponse =
      $notifications->CreateNotificationConfiguration(
      Description         => 'MyNotificationConfigurationDescription',
      Name                => 'MyNotificationConfigurationName',
      AggregationDuration => 'LONG',                                  # OPTIONAL
      Tags                => {
        'MyTagKey' => 'MyTagValue',    # , value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $Arn    = $CreateNotificationConfigurationResponse->Arn;
    my $Status = $CreateNotificationConfigurationResponse->Status;

# Returns a L<Paws::Notifications::CreateNotificationConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/notifications/CreateNotificationConfiguration>

=head1 ATTRIBUTES


=head2 AggregationDuration => Str

The aggregation preference of the C<NotificationConfiguration>.

=over

=item *

Values:

=over

=item *

C<LONG>

=over

=item *

Aggregate notifications for long periods of time (12 hours).

=back

=item *

C<SHORT>

=over

=item *

Aggregate notifications for short periods of time (5 minutes).

=back

=item *

C<NONE>

=over

=item *

Don't aggregate notifications.

=back

=back

=back


Valid values are: C<"LONG">, C<"SHORT">, C<"NONE">

=head2 B<REQUIRED> Description => Str

The description of the C<NotificationConfiguration>.



=head2 B<REQUIRED> Name => Str

The name of the C<NotificationConfiguration>. Supports RFC 3986's
unreserved characters.



=head2 Tags => L<Paws::Notifications::TagMap>

A map of tags assigned to a resource. A tag is a string-to-string map
of key-value pairs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateNotificationConfiguration in L<Paws::Notifications>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

