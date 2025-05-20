
package Paws::SSOAdmin::PutApplicationAuthenticationMethod;
  use Moose;
  has ApplicationArn => (is => 'ro', isa => 'Str', required => 1);
  has AuthenticationMethod => (is => 'ro', isa => 'Paws::SSOAdmin::AuthenticationMethod', required => 1);
  has AuthenticationMethodType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutApplicationAuthenticationMethod');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::PutApplicationAuthenticationMethod - Arguments for method PutApplicationAuthenticationMethod on L<Paws::SSOAdmin>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutApplicationAuthenticationMethod on the
L<AWS Single Sign-On Admin|Paws::SSOAdmin> service. Use the attributes of this class
as arguments to method PutApplicationAuthenticationMethod.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutApplicationAuthenticationMethod.

=head1 SYNOPSIS

    my $sso = Paws->service('SSOAdmin');
    $sso->PutApplicationAuthenticationMethod(
      ApplicationArn       => 'MyApplicationArn',
      AuthenticationMethod => {
        Iam => {
          ActorPolicy => {

          },

        },    # OPTIONAL
      },
      AuthenticationMethodType => 'IAM',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sso/PutApplicationAuthenticationMethod>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationArn => Str

Specifies the ARN of the application with the authentication method to
add or update.



=head2 B<REQUIRED> AuthenticationMethod => L<Paws::SSOAdmin::AuthenticationMethod>

Specifies a structure that describes the authentication method to add
or update. The structure type you provide is determined by the
C<AuthenticationMethodType> parameter.



=head2 B<REQUIRED> AuthenticationMethodType => Str

Specifies the type of the authentication method that you want to add or
update.

Valid values are: C<"IAM">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutApplicationAuthenticationMethod in L<Paws::SSOAdmin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

