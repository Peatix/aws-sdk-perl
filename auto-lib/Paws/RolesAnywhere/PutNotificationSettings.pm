
package Paws::RolesAnywhere::PutNotificationSettings;
  use Moose;
  has NotificationSettings => (is => 'ro', isa => 'ArrayRef[Paws::RolesAnywhere::NotificationSetting]', traits => ['NameInRequest'], request_name => 'notificationSettings', required => 1);
  has TrustAnchorId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'trustAnchorId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutNotificationSettings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/put-notifications-settings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RolesAnywhere::PutNotificationSettingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RolesAnywhere::PutNotificationSettings - Arguments for method PutNotificationSettings on L<Paws::RolesAnywhere>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutNotificationSettings on the
L<IAM Roles Anywhere|Paws::RolesAnywhere> service. Use the attributes of this class
as arguments to method PutNotificationSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutNotificationSettings.

=head1 SYNOPSIS

    my $rolesanywhere = Paws->service('RolesAnywhere');
    my $PutNotificationSettingsResponse =
      $rolesanywhere->PutNotificationSettings(
      NotificationSettings => [
        {
          Enabled => 1,
          Event   => 'CA_CERTIFICATE_EXPIRY'
          ,    # values: CA_CERTIFICATE_EXPIRY, END_ENTITY_CERTIFICATE_EXPIRY
          Channel   => 'ALL',    # values: ALL; OPTIONAL
          Threshold => 1,        # min: 1, max: 360; OPTIONAL
        },
        ...
      ],
      TrustAnchorId => 'MyUuid',

      );

    # Results:
    my $TrustAnchor = $PutNotificationSettingsResponse->TrustAnchor;

    # Returns a L<Paws::RolesAnywhere::PutNotificationSettingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rolesanywhere/PutNotificationSettings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> NotificationSettings => ArrayRef[L<Paws::RolesAnywhere::NotificationSetting>]

A list of notification settings to be associated to the trust anchor.



=head2 B<REQUIRED> TrustAnchorId => Str

The unique identifier of the trust anchor.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutNotificationSettings in L<Paws::RolesAnywhere>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

