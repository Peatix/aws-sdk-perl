
package Paws::SecurityLake::GetSubscriber;
  use Moose;
  has SubscriberId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'subscriberId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSubscriber');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/subscribers/{subscriberId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityLake::GetSubscriberResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityLake::GetSubscriber - Arguments for method GetSubscriber on L<Paws::SecurityLake>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSubscriber on the
L<Amazon Security Lake|Paws::SecurityLake> service. Use the attributes of this class
as arguments to method GetSubscriber.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSubscriber.

=head1 SYNOPSIS

    my $securitylake = Paws->service('SecurityLake');
    my $GetSubscriberResponse = $securitylake->GetSubscriber(
      SubscriberId => 'MyUUID',

    );

    # Results:
    my $Subscriber = $GetSubscriberResponse->Subscriber;

    # Returns a L<Paws::SecurityLake::GetSubscriberResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securitylake/GetSubscriber>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SubscriberId => Str

A value created by Amazon Security Lake that uniquely identifies your
C<GetSubscriber> API request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSubscriber in L<Paws::SecurityLake>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

