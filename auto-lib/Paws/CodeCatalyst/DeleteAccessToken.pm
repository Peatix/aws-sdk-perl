
package Paws::CodeCatalyst::DeleteAccessToken;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAccessToken');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/accessTokens/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCatalyst::DeleteAccessTokenResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::DeleteAccessToken - Arguments for method DeleteAccessToken on L<Paws::CodeCatalyst>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAccessToken on the
L<Amazon CodeCatalyst|Paws::CodeCatalyst> service. Use the attributes of this class
as arguments to method DeleteAccessToken.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAccessToken.

=head1 SYNOPSIS

    my $codecatalyst = Paws->service('CodeCatalyst');
    my $DeleteAccessTokenResponse = $codecatalyst->DeleteAccessToken(
      Id => 'MyAccessTokenId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecatalyst/DeleteAccessToken>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the personal access token to delete. You can find the IDs of
all PATs associated with your Amazon Web Services Builder ID in a space
by calling ListAccessTokens.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAccessToken in L<Paws::CodeCatalyst>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

