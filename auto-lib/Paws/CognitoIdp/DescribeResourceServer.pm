
package Paws::CognitoIdp::DescribeResourceServer;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', required => 1);
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeResourceServer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::DescribeResourceServerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::DescribeResourceServer - Arguments for method DescribeResourceServer on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeResourceServer on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method DescribeResourceServer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeResourceServer.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $DescribeResourceServerResponse = $cognito -idp->DescribeResourceServer(
      Identifier => 'MyResourceServerIdentifierType',
      UserPoolId => 'MyUserPoolIdType',

    );

    # Results:
    my $ResourceServer = $DescribeResourceServerResponse->ResourceServer;

    # Returns a L<Paws::CognitoIdp::DescribeResourceServerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

A unique resource server identifier for the resource server. The
identifier can be an API friendly name like C<solar-system-data>. You
can also set an API URL like
C<https://solar-system-data-api.example.com> as your identifier.

Amazon Cognito represents scopes in the access token in the format
C<$resource-server-identifier/$scope>. Longer scope-identifier strings
increase the size of your access tokens.



=head2 B<REQUIRED> UserPoolId => Str

The ID of the user pool that hosts the resource server.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeResourceServer in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

