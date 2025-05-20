
package Paws::SecurityLake::UpdateDataLakeExceptionSubscription;
  use Moose;
  has ExceptionTimeToLive => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'exceptionTimeToLive');
  has NotificationEndpoint => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'notificationEndpoint', required => 1);
  has SubscriptionProtocol => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'subscriptionProtocol', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDataLakeExceptionSubscription');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/datalake/exceptions/subscription');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityLake::UpdateDataLakeExceptionSubscriptionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityLake::UpdateDataLakeExceptionSubscription - Arguments for method UpdateDataLakeExceptionSubscription on L<Paws::SecurityLake>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDataLakeExceptionSubscription on the
L<Amazon Security Lake|Paws::SecurityLake> service. Use the attributes of this class
as arguments to method UpdateDataLakeExceptionSubscription.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDataLakeExceptionSubscription.

=head1 SYNOPSIS

    my $securitylake = Paws->service('SecurityLake');
    my $UpdateDataLakeExceptionSubscriptionResponse =
      $securitylake->UpdateDataLakeExceptionSubscription(
      NotificationEndpoint => 'MySafeString',
      SubscriptionProtocol => 'MySubscriptionProtocol',
      ExceptionTimeToLive  => 1,                          # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securitylake/UpdateDataLakeExceptionSubscription>

=head1 ATTRIBUTES


=head2 ExceptionTimeToLive => Int

The time-to-live (TTL) for the exception message to remain. It is the
duration of time until which the exception message remains.



=head2 B<REQUIRED> NotificationEndpoint => Str

The account that is subscribed to receive exception notifications.



=head2 B<REQUIRED> SubscriptionProtocol => Str

The subscription protocol to which exception messages are posted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDataLakeExceptionSubscription in L<Paws::SecurityLake>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

