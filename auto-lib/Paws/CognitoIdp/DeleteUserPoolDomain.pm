
package Paws::CognitoIdp::DeleteUserPoolDomain;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str', required => 1);
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteUserPoolDomain');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::DeleteUserPoolDomainResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::DeleteUserPoolDomain - Arguments for method DeleteUserPoolDomain on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteUserPoolDomain on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method DeleteUserPoolDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteUserPoolDomain.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $DeleteUserPoolDomainResponse = $cognito -idp->DeleteUserPoolDomain(
      Domain     => 'MyDomainType',
      UserPoolId => 'MyUserPoolIdType',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domain => Str

The domain that you want to delete. For custom domains, this is the
fully-qualified domain name like C<auth.example.com>. For Amazon
Cognito prefix domains, this is the prefix alone, like C<myprefix>.



=head2 B<REQUIRED> UserPoolId => Str

The ID of the user pool where you want to delete the domain.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteUserPoolDomain in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

