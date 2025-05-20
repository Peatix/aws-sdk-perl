
package Paws::SSOAdmin::GetApplicationGrant;
  use Moose;
  has ApplicationArn => (is => 'ro', isa => 'Str', required => 1);
  has GrantType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetApplicationGrant');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSOAdmin::GetApplicationGrantResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::GetApplicationGrant - Arguments for method GetApplicationGrant on L<Paws::SSOAdmin>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetApplicationGrant on the
L<AWS Single Sign-On Admin|Paws::SSOAdmin> service. Use the attributes of this class
as arguments to method GetApplicationGrant.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetApplicationGrant.

=head1 SYNOPSIS

    my $sso = Paws->service('SSOAdmin');
    my $GetApplicationGrantResponse = $sso->GetApplicationGrant(
      ApplicationArn => 'MyApplicationArn',
      GrantType      => 'authorization_code',

    );

    # Results:
    my $Grant = $GetApplicationGrantResponse->Grant;

    # Returns a L<Paws::SSOAdmin::GetApplicationGrantResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sso/GetApplicationGrant>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationArn => Str

Specifies the ARN of the application that contains the grant.



=head2 B<REQUIRED> GrantType => Str

Specifies the type of grant.

Valid values are: C<"authorization_code">, C<"refresh_token">, C<"urn:ietf:params:oauth:grant-type:jwt-bearer">, C<"urn:ietf:params:oauth:grant-type:token-exchange">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetApplicationGrant in L<Paws::SSOAdmin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

