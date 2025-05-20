
package Paws::LicenseManagerLinuxSubscriptions::RegisterSubscriptionProvider;
  use Moose;
  has SecretArn => (is => 'ro', isa => 'Str', required => 1);
  has SubscriptionProviderSource => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::LicenseManagerLinuxSubscriptions::Tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterSubscriptionProvider');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/subscription/RegisterSubscriptionProvider');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManagerLinuxSubscriptions::RegisterSubscriptionProviderResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManagerLinuxSubscriptions::RegisterSubscriptionProvider - Arguments for method RegisterSubscriptionProvider on L<Paws::LicenseManagerLinuxSubscriptions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterSubscriptionProvider on the
L<AWS License Manager Linux Subscriptions|Paws::LicenseManagerLinuxSubscriptions> service. Use the attributes of this class
as arguments to method RegisterSubscriptionProvider.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterSubscriptionProvider.

=head1 SYNOPSIS

    my $license-manager-linux-subscriptions = Paws->service('LicenseManagerLinuxSubscriptions');
    my $RegisterSubscriptionProviderResponse =
      $license -manager-linux-subscriptions->RegisterSubscriptionProvider(
      SecretArn                  => 'MySecretArn',
      SubscriptionProviderSource => 'RedHat',
      Tags                       => { 'MyString' => 'MyString', },    # OPTIONAL
      );

    # Results:
    my $SubscriptionProviderArn =
      $RegisterSubscriptionProviderResponse->SubscriptionProviderArn;
    my $SubscriptionProviderSource =
      $RegisterSubscriptionProviderResponse->SubscriptionProviderSource;
    my $SubscriptionProviderStatus =
      $RegisterSubscriptionProviderResponse->SubscriptionProviderStatus;

# Returns a L<Paws::LicenseManagerLinuxSubscriptions::RegisterSubscriptionProviderResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager-linux-subscriptions/RegisterSubscriptionProvider>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SecretArn => Str

The Amazon Resource Name (ARN) of the secret where you've stored your
subscription provider's access token. For RHEL subscriptions managed
through the Red Hat Subscription Manager (RHSM), the secret contains
your Red Hat Offline token.



=head2 B<REQUIRED> SubscriptionProviderSource => Str

The supported Linux subscription provider to register.

Valid values are: C<"RedHat">

=head2 Tags => L<Paws::LicenseManagerLinuxSubscriptions::Tags>

The metadata tags to assign to your registered Linux subscription
provider resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterSubscriptionProvider in L<Paws::LicenseManagerLinuxSubscriptions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

