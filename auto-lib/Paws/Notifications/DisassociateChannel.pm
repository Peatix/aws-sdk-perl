
package Paws::Notifications::DisassociateChannel;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'arn', required => 1);
  has NotificationConfigurationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'notificationConfigurationArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channels/disassociate/{arn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Notifications::DisassociateChannelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Notifications::DisassociateChannel - Arguments for method DisassociateChannel on L<Paws::Notifications>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateChannel on the
L<AWS User Notifications|Paws::Notifications> service. Use the attributes of this class
as arguments to method DisassociateChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateChannel.

=head1 SYNOPSIS

    my $notifications = Paws->service('Notifications');
    my $DisassociateChannelResponse = $notifications->DisassociateChannel(
      Arn                          => 'MyChannelArn',
      NotificationConfigurationArn => 'MyNotificationConfigurationArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/notifications/DisassociateChannel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the Channel to disassociate.



=head2 B<REQUIRED> NotificationConfigurationArn => Str

The ARN of the C<NotificationConfiguration> to disassociate.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateChannel in L<Paws::Notifications>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

