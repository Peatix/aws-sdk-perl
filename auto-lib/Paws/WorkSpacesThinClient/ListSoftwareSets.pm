
package Paws::WorkSpacesThinClient::ListSoftwareSets;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSoftwareSets');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/softwaresets');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpacesThinClient::ListSoftwareSetsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesThinClient::ListSoftwareSets - Arguments for method ListSoftwareSets on L<Paws::WorkSpacesThinClient>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSoftwareSets on the
L<Amazon WorkSpaces Thin Client|Paws::WorkSpacesThinClient> service. Use the attributes of this class
as arguments to method ListSoftwareSets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSoftwareSets.

=head1 SYNOPSIS

    my $thinclient = Paws->service('WorkSpacesThinClient');
    my $ListSoftwareSetsResponse = $thinclient->ListSoftwareSets(
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $NextToken    = $ListSoftwareSetsResponse->NextToken;
    my $SoftwareSets = $ListSoftwareSetsResponse->SoftwareSets;

    # Returns a L<Paws::WorkSpacesThinClient::ListSoftwareSetsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/thinclient/ListSoftwareSets>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results that are returned per call. You can use
C<nextToken> to obtain further pages of results.

This is only an upper limit. The actual number of results returned per
call might be fewer than the specified maximum.



=head2 NextToken => Str

If C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Make
the call again using the returned token to retrieve the next page. Keep
all other arguments unchanged. Each pagination token expires after 24
hours. Using an expired pagination token will return an I<HTTP 400
InvalidToken error>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSoftwareSets in L<Paws::WorkSpacesThinClient>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

