
package Paws::LicenseManagerLinuxSubscriptions::ListRegisteredSubscriptionProviders;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SubscriptionProviderSources => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRegisteredSubscriptionProviders');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/subscription/ListRegisteredSubscriptionProviders');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManagerLinuxSubscriptions::ListRegisteredSubscriptionProvidersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManagerLinuxSubscriptions::ListRegisteredSubscriptionProviders - Arguments for method ListRegisteredSubscriptionProviders on L<Paws::LicenseManagerLinuxSubscriptions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRegisteredSubscriptionProviders on the
L<AWS License Manager Linux Subscriptions|Paws::LicenseManagerLinuxSubscriptions> service. Use the attributes of this class
as arguments to method ListRegisteredSubscriptionProviders.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRegisteredSubscriptionProviders.

=head1 SYNOPSIS

    my $license-manager-linux-subscriptions = Paws->service('LicenseManagerLinuxSubscriptions');
    my $ListRegisteredSubscriptionProvidersResponse =
      $license -
      manager-linux-subscriptions->ListRegisteredSubscriptionProviders(
      MaxResults                  => 1,             # OPTIONAL
      NextToken                   => 'MyString',    # OPTIONAL
      SubscriptionProviderSources => [
        'RedHat', ...                               # values: RedHat
      ],    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListRegisteredSubscriptionProvidersResponse->NextToken;
    my $RegisteredSubscriptionProviders =
      $ListRegisteredSubscriptionProvidersResponse
      ->RegisteredSubscriptionProviders;

# Returns a L<Paws::LicenseManagerLinuxSubscriptions::ListRegisteredSubscriptionProvidersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager-linux-subscriptions/ListRegisteredSubscriptionProviders>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum items to return in a request.



=head2 NextToken => Str

A token to specify where to start paginating. This is the nextToken
from a previously truncated response.



=head2 SubscriptionProviderSources => ArrayRef[Str|Undef]

To filter your results, specify which subscription providers to return
in the list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRegisteredSubscriptionProviders in L<Paws::LicenseManagerLinuxSubscriptions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

