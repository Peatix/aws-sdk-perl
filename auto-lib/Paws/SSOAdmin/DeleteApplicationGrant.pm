
package Paws::SSOAdmin::DeleteApplicationGrant;
  use Moose;
  has ApplicationArn => (is => 'ro', isa => 'Str', required => 1);
  has GrantType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteApplicationGrant');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::DeleteApplicationGrant - Arguments for method DeleteApplicationGrant on L<Paws::SSOAdmin>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteApplicationGrant on the
L<AWS Single Sign-On Admin|Paws::SSOAdmin> service. Use the attributes of this class
as arguments to method DeleteApplicationGrant.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteApplicationGrant.

=head1 SYNOPSIS

    my $sso = Paws->service('SSOAdmin');
    $sso->DeleteApplicationGrant(
      ApplicationArn => 'MyApplicationArn',
      GrantType      => 'authorization_code',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sso/DeleteApplicationGrant>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationArn => Str

Specifies the ARN of the application with the grant to delete.



=head2 B<REQUIRED> GrantType => Str

Specifies the type of grant to delete from the application.

Valid values are: C<"authorization_code">, C<"refresh_token">, C<"urn:ietf:params:oauth:grant-type:jwt-bearer">, C<"urn:ietf:params:oauth:grant-type:token-exchange">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteApplicationGrant in L<Paws::SSOAdmin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

