
package Paws::CognitoIdp::CreateResourceServer;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Scopes => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::ResourceServerScopeType]');
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateResourceServer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::CreateResourceServerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::CreateResourceServer - Arguments for method CreateResourceServer on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateResourceServer on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method CreateResourceServer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateResourceServer.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $CreateResourceServerResponse = $cognito -idp->CreateResourceServer(
      Identifier => 'MyResourceServerIdentifierType',
      Name       => 'MyResourceServerNameType',
      UserPoolId => 'MyUserPoolIdType',
      Scopes     => [
        {
          ScopeDescription =>
            'MyResourceServerScopeDescriptionType',    # min: 1, max: 256
          ScopeName => 'MyResourceServerScopeNameType',    # min: 1, max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ResourceServer = $CreateResourceServerResponse->ResourceServer;

    # Returns a L<Paws::CognitoIdp::CreateResourceServerResponse> object.

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



=head2 B<REQUIRED> Name => Str

A friendly name for the resource server.



=head2 Scopes => ArrayRef[L<Paws::CognitoIdp::ResourceServerScopeType>]

A list of custom scopes. Each scope is a key-value map with the keys
C<ScopeName> and C<ScopeDescription>. The name of a custom scope is a
combination of C<ScopeName> and the resource server C<Name> in this
request, for example C<MyResourceServerName/MyScopeName>.



=head2 B<REQUIRED> UserPoolId => Str

The ID of the user pool where you want to create a resource server.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateResourceServer in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

