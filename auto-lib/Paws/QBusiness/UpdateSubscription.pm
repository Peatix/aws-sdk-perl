
package Paws::QBusiness::UpdateSubscription;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has SubscriptionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'subscriptionId', required => 1);
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSubscription');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/subscriptions/{subscriptionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::UpdateSubscriptionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::UpdateSubscription - Arguments for method UpdateSubscription on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSubscription on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method UpdateSubscription.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSubscription.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $UpdateSubscriptionResponse = $qbusiness->UpdateSubscription(
      ApplicationId  => 'MyApplicationId',
      SubscriptionId => 'MySubscriptionId',
      Type           => 'Q_LITE',

    );

    # Results:
    my $CurrentSubscription = $UpdateSubscriptionResponse->CurrentSubscription;
    my $NextSubscription    = $UpdateSubscriptionResponse->NextSubscription;
    my $SubscriptionArn     = $UpdateSubscriptionResponse->SubscriptionArn;

    # Returns a L<Paws::QBusiness::UpdateSubscriptionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/UpdateSubscription>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The identifier of the Amazon Q Business application where the
subscription update should take effect.



=head2 B<REQUIRED> SubscriptionId => Str

The identifier of the Amazon Q Business subscription to be updated.



=head2 B<REQUIRED> Type => Str

The type of the Amazon Q Business subscription to be updated.

Valid values are: C<"Q_LITE">, C<"Q_BUSINESS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSubscription in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

