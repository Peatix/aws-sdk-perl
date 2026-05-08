
package Paws::CognitoIdp::GetUserAuthFactors;
  use Moose;
  has AccessToken => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetUserAuthFactors');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::GetUserAuthFactorsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::GetUserAuthFactors - Arguments for method GetUserAuthFactors on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetUserAuthFactors on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method GetUserAuthFactors.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetUserAuthFactors.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $GetUserAuthFactorsResponse = $cognito -idp->GetUserAuthFactors(
      AccessToken => 'MyTokenModelType',

    );

    # Results:
    my $ConfiguredUserAuthFactors =
      $GetUserAuthFactorsResponse->ConfiguredUserAuthFactors;
    my $PreferredMfaSetting = $GetUserAuthFactorsResponse->PreferredMfaSetting;
    my $UserMFASettingList  = $GetUserAuthFactorsResponse->UserMFASettingList;
    my $Username            = $GetUserAuthFactorsResponse->Username;

    # Returns a L<Paws::CognitoIdp::GetUserAuthFactorsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessToken => Str

A valid access token that Amazon Cognito issued to the currently
signed-in user. Must include a scope claim for
C<aws.cognito.signin.user.admin>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetUserAuthFactors in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

