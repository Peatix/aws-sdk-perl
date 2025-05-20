
package Paws::CodeCatalyst::ListAccessTokens;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAccessTokens');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/accessTokens');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCatalyst::ListAccessTokensResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::ListAccessTokens - Arguments for method ListAccessTokens on L<Paws::CodeCatalyst>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAccessTokens on the
L<Amazon CodeCatalyst|Paws::CodeCatalyst> service. Use the attributes of this class
as arguments to method ListAccessTokens.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAccessTokens.

=head1 SYNOPSIS

    my $codecatalyst = Paws->service('CodeCatalyst');
    my $ListAccessTokensResponse = $codecatalyst->ListAccessTokens(
      MaxResults => 1,                                             # OPTIONAL
      NextToken  => 'MyListAccessTokensRequestNextTokenString',    # OPTIONAL
    );

    # Results:
    my $Items     = $ListAccessTokensResponse->Items;
    my $NextToken = $ListAccessTokensResponse->NextToken;

    # Returns a L<Paws::CodeCatalyst::ListAccessTokensResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecatalyst/ListAccessTokens>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to show in a single call to this API. If
the number of results is larger than the number you specified, the
response will include a C<NextToken> element, which you can use to
obtain additional results.



=head2 NextToken => Str

A token returned from a call to this API to indicate the next batch of
results to return, if any.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAccessTokens in L<Paws::CodeCatalyst>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

