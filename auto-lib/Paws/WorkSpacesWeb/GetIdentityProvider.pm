
package Paws::WorkSpacesWeb::GetIdentityProvider;
  use Moose;
  has IdentityProviderArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identityProviderArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetIdentityProvider');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/identityProviders/{identityProviderArn+}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpacesWeb::GetIdentityProviderResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::GetIdentityProvider - Arguments for method GetIdentityProvider on L<Paws::WorkSpacesWeb>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetIdentityProvider on the
L<Amazon WorkSpaces Web|Paws::WorkSpacesWeb> service. Use the attributes of this class
as arguments to method GetIdentityProvider.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetIdentityProvider.

=head1 SYNOPSIS

    my $workspaces-web = Paws->service('WorkSpacesWeb');
    my $GetIdentityProviderResponse = $workspaces -web->GetIdentityProvider(
      IdentityProviderArn => 'MySubresourceARN',

    );

    # Results:
    my $IdentityProvider = $GetIdentityProviderResponse->IdentityProvider;

    # Returns a L<Paws::WorkSpacesWeb::GetIdentityProviderResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces-web/GetIdentityProvider>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IdentityProviderArn => Str

The ARN of the identity provider.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetIdentityProvider in L<Paws::WorkSpacesWeb>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

