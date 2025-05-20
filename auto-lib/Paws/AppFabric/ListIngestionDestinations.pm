
package Paws::AppFabric::ListIngestionDestinations;
  use Moose;
  has AppBundleIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appBundleIdentifier', required => 1);
  has IngestionIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ingestionIdentifier', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListIngestionDestinations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/ingestiondestinations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppFabric::ListIngestionDestinationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppFabric::ListIngestionDestinations - Arguments for method ListIngestionDestinations on L<Paws::AppFabric>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListIngestionDestinations on the
L<AppFabric|Paws::AppFabric> service. Use the attributes of this class
as arguments to method ListIngestionDestinations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListIngestionDestinations.

=head1 SYNOPSIS

    my $appfabric = Paws->service('AppFabric');
    my $ListIngestionDestinationsResponse =
      $appfabric->ListIngestionDestinations(
      AppBundleIdentifier => 'MyIdentifier',
      IngestionIdentifier => 'MyIdentifier',
      MaxResults          => 1,                # OPTIONAL
      NextToken           => 'MyString',       # OPTIONAL
      );

    # Results:
    my $IngestionDestinations =
      $ListIngestionDestinationsResponse->IngestionDestinations;
    my $NextToken = $ListIngestionDestinationsResponse->NextToken;

    # Returns a L<Paws::AppFabric::ListIngestionDestinationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appfabric/ListIngestionDestinations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppBundleIdentifier => Str

The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of
the app bundle to use for the request.



=head2 B<REQUIRED> IngestionIdentifier => Str

The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of
the ingestion to use for the request.



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

This class forms part of L<Paws>, documenting arguments for method ListIngestionDestinations in L<Paws::AppFabric>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

