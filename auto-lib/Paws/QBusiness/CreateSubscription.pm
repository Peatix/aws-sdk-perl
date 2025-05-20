
package Paws::QBusiness::CreateSubscription;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Principal => (is => 'ro', isa => 'Paws::QBusiness::SubscriptionPrincipal', traits => ['NameInRequest'], request_name => 'principal', required => 1);
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSubscription');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/subscriptions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::CreateSubscriptionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::CreateSubscription - Arguments for method CreateSubscription on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSubscription on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method CreateSubscription.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSubscription.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $CreateSubscriptionResponse = $qbusiness->CreateSubscription(
      ApplicationId => 'MyApplicationId',
      Principal     => {
        Group => 'MyGroupIdentifier',    # min: 1, max: 47; OPTIONAL
        User  => 'MyUserIdentifier',     # min: 1, max: 47; OPTIONAL
      },
      Type        => 'Q_LITE',
      ClientToken => 'MyClientToken',    # OPTIONAL
    );

    # Results:
    my $CurrentSubscription = $CreateSubscriptionResponse->CurrentSubscription;
    my $NextSubscription    = $CreateSubscriptionResponse->NextSubscription;
    my $SubscriptionArn     = $CreateSubscriptionResponse->SubscriptionArn;
    my $SubscriptionId      = $CreateSubscriptionResponse->SubscriptionId;

    # Returns a L<Paws::QBusiness::CreateSubscriptionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/CreateSubscription>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The identifier of the Amazon Q Business application the subscription
should be added to.



=head2 ClientToken => Str

A token that you provide to identify the request to create a
subscription for your Amazon Q Business application.



=head2 B<REQUIRED> Principal => L<Paws::QBusiness::SubscriptionPrincipal>

The IAM Identity Center C<UserId> or C<GroupId> of a user or group in
the IAM Identity Center instance connected to the Amazon Q Business
application.



=head2 B<REQUIRED> Type => Str

The type of Amazon Q Business subscription you want to create.

Valid values are: C<"Q_LITE">, C<"Q_BUSINESS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSubscription in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

