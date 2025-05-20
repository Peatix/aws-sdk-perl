
package Paws::Notifications::AssociateManagedNotificationAdditionalChannel;
  use Moose;
  has ChannelArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'channelArn', required => 1);
  has ManagedNotificationConfigurationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'managedNotificationConfigurationArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateManagedNotificationAdditionalChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channels/associate-managed-notification/{channelArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Notifications::AssociateManagedNotificationAdditionalChannelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Notifications::AssociateManagedNotificationAdditionalChannel - Arguments for method AssociateManagedNotificationAdditionalChannel on L<Paws::Notifications>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateManagedNotificationAdditionalChannel on the
L<AWS User Notifications|Paws::Notifications> service. Use the attributes of this class
as arguments to method AssociateManagedNotificationAdditionalChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateManagedNotificationAdditionalChannel.

=head1 SYNOPSIS

    my $notifications = Paws->service('Notifications');
    my $AssociateManagedNotificationAdditionalChannelResponse =
      $notifications->AssociateManagedNotificationAdditionalChannel(
      ChannelArn                          => 'MyChannelArn',
      ManagedNotificationConfigurationArn =>
        'MyManagedNotificationConfigurationOsArn',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/notifications/AssociateManagedNotificationAdditionalChannel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelArn => Str

The Amazon Resource Name (ARN) of the Channel to associate with the
C<ManagedNotificationConfiguration>.

Supported ARNs include Chatbot, the Console Mobile Application, and
email (notifications-contacts).



=head2 B<REQUIRED> ManagedNotificationConfigurationArn => Str

The Amazon Resource Name (ARN) of the
C<ManagedNotificationConfiguration> to associate with the additional
Channel.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateManagedNotificationAdditionalChannel in L<Paws::Notifications>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

