
package Paws::CodeCatalyst::CreateAccessToken;
  use Moose;
  has ExpiresTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'expiresTime');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAccessToken');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/accessTokens');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCatalyst::CreateAccessTokenResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::CreateAccessToken - Arguments for method CreateAccessToken on L<Paws::CodeCatalyst>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAccessToken on the
L<Amazon CodeCatalyst|Paws::CodeCatalyst> service. Use the attributes of this class
as arguments to method CreateAccessToken.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAccessToken.

=head1 SYNOPSIS

    my $codecatalyst = Paws->service('CodeCatalyst');
    my $CreateAccessTokenResponse = $codecatalyst->CreateAccessToken(
      Name        => 'MyAccessTokenName',
      ExpiresTime => '1970-01-01T01:00:00',    # OPTIONAL
    );

    # Results:
    my $AccessTokenId = $CreateAccessTokenResponse->AccessTokenId;
    my $ExpiresTime   = $CreateAccessTokenResponse->ExpiresTime;
    my $Name          = $CreateAccessTokenResponse->Name;
    my $Secret        = $CreateAccessTokenResponse->Secret;

    # Returns a L<Paws::CodeCatalyst::CreateAccessTokenResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecatalyst/CreateAccessToken>

=head1 ATTRIBUTES


=head2 ExpiresTime => Str

The date and time the personal access token expires, in coordinated
universal time (UTC) timestamp format as specified in RFC 3339
(https://www.rfc-editor.org/rfc/rfc3339#section-5.6).



=head2 B<REQUIRED> Name => Str

The friendly name of the personal access token.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAccessToken in L<Paws::CodeCatalyst>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

