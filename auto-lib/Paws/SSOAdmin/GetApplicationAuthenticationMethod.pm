
package Paws::SSOAdmin::GetApplicationAuthenticationMethod;
  use Moose;
  has ApplicationArn => (is => 'ro', isa => 'Str', required => 1);
  has AuthenticationMethodType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetApplicationAuthenticationMethod');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSOAdmin::GetApplicationAuthenticationMethodResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::GetApplicationAuthenticationMethod - Arguments for method GetApplicationAuthenticationMethod on L<Paws::SSOAdmin>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetApplicationAuthenticationMethod on the
L<AWS Single Sign-On Admin|Paws::SSOAdmin> service. Use the attributes of this class
as arguments to method GetApplicationAuthenticationMethod.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetApplicationAuthenticationMethod.

=head1 SYNOPSIS

    my $sso = Paws->service('SSOAdmin');
    my $GetApplicationAuthenticationMethodResponse =
      $sso->GetApplicationAuthenticationMethod(
      ApplicationArn           => 'MyApplicationArn',
      AuthenticationMethodType => 'IAM',

      );

    # Results:
    my $AuthenticationMethod =
      $GetApplicationAuthenticationMethodResponse->AuthenticationMethod;

# Returns a L<Paws::SSOAdmin::GetApplicationAuthenticationMethodResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sso/GetApplicationAuthenticationMethod>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationArn => Str

Specifies the ARN of the application.



=head2 B<REQUIRED> AuthenticationMethodType => Str

Specifies the type of authentication method for which you want details.

Valid values are: C<"IAM">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetApplicationAuthenticationMethod in L<Paws::SSOAdmin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

