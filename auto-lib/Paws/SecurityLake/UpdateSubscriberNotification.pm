
package Paws::SecurityLake::UpdateSubscriberNotification;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Paws::SecurityLake::NotificationConfiguration', traits => ['NameInRequest'], request_name => 'configuration', required => 1);
  has SubscriberId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'subscriberId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSubscriberNotification');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/subscribers/{subscriberId}/notification');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityLake::UpdateSubscriberNotificationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityLake::UpdateSubscriberNotification - Arguments for method UpdateSubscriberNotification on L<Paws::SecurityLake>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSubscriberNotification on the
L<Amazon Security Lake|Paws::SecurityLake> service. Use the attributes of this class
as arguments to method UpdateSubscriberNotification.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSubscriberNotification.

=head1 SYNOPSIS

    my $securitylake = Paws->service('SecurityLake');
    my $UpdateSubscriberNotificationResponse =
      $securitylake->UpdateSubscriberNotification(
      Configuration => {
        HttpsNotificationConfiguration => {
          Endpoint      => 'MyHttpsNotificationConfigurationEndpointString',
          TargetRoleArn => 'MyRoleArn',
          AuthorizationApiKeyName  => 'MyString',  # OPTIONAL
          AuthorizationApiKeyValue => 'MyString',  # OPTIONAL
          HttpMethod               => 'POST',      # values: POST, PUT; OPTIONAL
        },    # OPTIONAL
        SqsNotificationConfiguration => {

        },    # OPTIONAL
      },
      SubscriberId => 'MyUUID',

      );

    # Results:
    my $SubscriberEndpoint =
      $UpdateSubscriberNotificationResponse->SubscriberEndpoint;

 # Returns a L<Paws::SecurityLake::UpdateSubscriberNotificationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securitylake/UpdateSubscriberNotification>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Configuration => L<Paws::SecurityLake::NotificationConfiguration>

The configuration for subscriber notification.



=head2 B<REQUIRED> SubscriberId => Str

The subscription ID for which the subscription notification is
specified.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSubscriberNotification in L<Paws::SecurityLake>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

