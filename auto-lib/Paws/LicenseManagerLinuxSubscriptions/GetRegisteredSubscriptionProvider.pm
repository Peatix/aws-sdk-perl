
package Paws::LicenseManagerLinuxSubscriptions::GetRegisteredSubscriptionProvider;
  use Moose;
  has SubscriptionProviderArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRegisteredSubscriptionProvider');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/subscription/GetRegisteredSubscriptionProvider');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManagerLinuxSubscriptions::GetRegisteredSubscriptionProviderResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManagerLinuxSubscriptions::GetRegisteredSubscriptionProvider - Arguments for method GetRegisteredSubscriptionProvider on L<Paws::LicenseManagerLinuxSubscriptions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRegisteredSubscriptionProvider on the
L<AWS License Manager Linux Subscriptions|Paws::LicenseManagerLinuxSubscriptions> service. Use the attributes of this class
as arguments to method GetRegisteredSubscriptionProvider.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRegisteredSubscriptionProvider.

=head1 SYNOPSIS

    my $license-manager-linux-subscriptions = Paws->service('LicenseManagerLinuxSubscriptions');
    my $GetRegisteredSubscriptionProviderResponse =
      $license -manager-linux-subscriptions->GetRegisteredSubscriptionProvider(
      SubscriptionProviderArn => 'MySubscriptionProviderArn',

      );

    # Results:
    my $LastSuccessfulDataRetrievalTime =
      $GetRegisteredSubscriptionProviderResponse
      ->LastSuccessfulDataRetrievalTime;
    my $SecretArn = $GetRegisteredSubscriptionProviderResponse->SecretArn;
    my $SubscriptionProviderArn =
      $GetRegisteredSubscriptionProviderResponse->SubscriptionProviderArn;
    my $SubscriptionProviderSource =
      $GetRegisteredSubscriptionProviderResponse->SubscriptionProviderSource;
    my $SubscriptionProviderStatus =
      $GetRegisteredSubscriptionProviderResponse->SubscriptionProviderStatus;
    my $SubscriptionProviderStatusMessage =
      $GetRegisteredSubscriptionProviderResponse
      ->SubscriptionProviderStatusMessage;

# Returns a L<Paws::LicenseManagerLinuxSubscriptions::GetRegisteredSubscriptionProviderResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager-linux-subscriptions/GetRegisteredSubscriptionProvider>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SubscriptionProviderArn => Str

The Amazon Resource Name (ARN) of the BYOL registration resource to get
details for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRegisteredSubscriptionProvider in L<Paws::LicenseManagerLinuxSubscriptions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

