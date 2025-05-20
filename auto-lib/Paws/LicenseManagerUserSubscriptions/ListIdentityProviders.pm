
package Paws::LicenseManagerUserSubscriptions::ListIdentityProviders;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManagerUserSubscriptions::Filter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListIdentityProviders');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/identity-provider/ListIdentityProviders');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManagerUserSubscriptions::ListIdentityProvidersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManagerUserSubscriptions::ListIdentityProviders - Arguments for method ListIdentityProviders on L<Paws::LicenseManagerUserSubscriptions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListIdentityProviders on the
L<AWS License Manager User Subscriptions|Paws::LicenseManagerUserSubscriptions> service. Use the attributes of this class
as arguments to method ListIdentityProviders.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListIdentityProviders.

=head1 SYNOPSIS

    my $license-manager-user-subscriptions = Paws->service('LicenseManagerUserSubscriptions');
    my $ListIdentityProvidersResponse =
      $license -manager-user-subscriptions->ListIdentityProviders(
      Filters => [
        {
          Attribute => 'MyString',    # OPTIONAL
          Operation => 'MyString',    # OPTIONAL
          Value     => 'MyString',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
      );

    # Results:
    my $IdentityProviderSummaries =
      $ListIdentityProvidersResponse->IdentityProviderSummaries;
    my $NextToken = $ListIdentityProvidersResponse->NextToken;

# Returns a L<Paws::LicenseManagerUserSubscriptions::ListIdentityProvidersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions/ListIdentityProviders>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::LicenseManagerUserSubscriptions::Filter>]

You can use the following filters to streamline results:

=over

=item *

Product

=item *

DirectoryId

=back




=head2 MaxResults => Int

The maximum number of results to return from a single request.



=head2 NextToken => Str

A token to specify where to start paginating. This is the nextToken
from a previously truncated response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListIdentityProviders in L<Paws::LicenseManagerUserSubscriptions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

