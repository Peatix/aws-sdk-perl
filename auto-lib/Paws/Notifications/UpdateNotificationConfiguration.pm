
package Paws::Notifications::UpdateNotificationConfiguration;
  use Moose;
  has AggregationDuration => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'aggregationDuration');
  has Arn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'arn', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateNotificationConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/notification-configurations/{arn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Notifications::UpdateNotificationConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Notifications::UpdateNotificationConfiguration - Arguments for method UpdateNotificationConfiguration on L<Paws::Notifications>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateNotificationConfiguration on the
L<AWS User Notifications|Paws::Notifications> service. Use the attributes of this class
as arguments to method UpdateNotificationConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateNotificationConfiguration.

=head1 SYNOPSIS

    my $notifications = Paws->service('Notifications');
    my $UpdateNotificationConfigurationResponse =
      $notifications->UpdateNotificationConfiguration(
      Arn                 => 'MyNotificationConfigurationArn',
      AggregationDuration => 'LONG',                              # OPTIONAL
      Description => 'MyNotificationConfigurationDescription',    # OPTIONAL
      Name        => 'MyNotificationConfigurationName',           # OPTIONAL
      );

    # Results:
    my $Arn = $UpdateNotificationConfigurationResponse->Arn;

# Returns a L<Paws::Notifications::UpdateNotificationConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/notifications/UpdateNotificationConfiguration>

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

=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) used to update the
C<NotificationConfiguration>.



=head2 Description => Str

The description of the C<NotificationConfiguration>.



=head2 Name => Str

The name of the C<NotificationConfiguration>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateNotificationConfiguration in L<Paws::Notifications>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

