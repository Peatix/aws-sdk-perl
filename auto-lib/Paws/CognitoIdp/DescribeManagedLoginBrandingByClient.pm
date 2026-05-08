
package Paws::CognitoIdp::DescribeManagedLoginBrandingByClient;
  use Moose;
  has ClientId => (is => 'ro', isa => 'Str', required => 1);
  has ReturnMergedResources => (is => 'ro', isa => 'Bool');
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeManagedLoginBrandingByClient');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::DescribeManagedLoginBrandingByClientResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::DescribeManagedLoginBrandingByClient - Arguments for method DescribeManagedLoginBrandingByClient on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeManagedLoginBrandingByClient on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method DescribeManagedLoginBrandingByClient.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeManagedLoginBrandingByClient.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $DescribeManagedLoginBrandingByClientResponse =
      $cognito -idp->DescribeManagedLoginBrandingByClient(
      ClientId              => 'MyClientIdType',
      UserPoolId            => 'MyUserPoolIdType',
      ReturnMergedResources => 1,                    # OPTIONAL
      );

    # Results:
    my $ManagedLoginBranding =
      $DescribeManagedLoginBrandingByClientResponse->ManagedLoginBranding;

# Returns a L<Paws::CognitoIdp::DescribeManagedLoginBrandingByClientResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientId => Str

The app client that's assigned to the branding style that you want more
information about.



=head2 ReturnMergedResources => Bool

When C<true>, returns values for branding options that are unchanged
from Amazon Cognito defaults. When C<false> or when you omit this
parameter, returns only values that you customized in your branding
style.



=head2 B<REQUIRED> UserPoolId => Str

The ID of the user pool that contains the app client where you want
more information about the managed login branding style.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeManagedLoginBrandingByClient in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

