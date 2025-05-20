
package Paws::MediaPackageV2::ListOriginEndpoints;
  use Moose;
  has ChannelGroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ChannelGroupName', required => 1);
  has ChannelName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ChannelName', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListOriginEndpoints');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaPackageV2::ListOriginEndpointsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageV2::ListOriginEndpoints - Arguments for method ListOriginEndpoints on L<Paws::MediaPackageV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListOriginEndpoints on the
L<AWS Elemental MediaPackage v2|Paws::MediaPackageV2> service. Use the attributes of this class
as arguments to method ListOriginEndpoints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListOriginEndpoints.

=head1 SYNOPSIS

    my $mediapackagev2 = Paws->service('MediaPackageV2');
    my $ListOriginEndpointsResponse = $mediapackagev2->ListOriginEndpoints(
      ChannelGroupName => 'MyResourceName',
      ChannelName      => 'MyResourceName',
      MaxResults       => 1,                  # OPTIONAL
      NextToken        => 'MyString',         # OPTIONAL
    );

    # Results:
    my $Items     = $ListOriginEndpointsResponse->Items;
    my $NextToken = $ListOriginEndpointsResponse->NextToken;

    # Returns a L<Paws::MediaPackageV2::ListOriginEndpointsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediapackagev2/ListOriginEndpoints>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelGroupName => Str

The name that describes the channel group. The name is the primary
identifier for the channel group, and must be unique for your account
in the AWS Region.



=head2 B<REQUIRED> ChannelName => Str

The name that describes the channel. The name is the primary identifier
for the channel, and must be unique for your account in the AWS Region
and channel group.



=head2 MaxResults => Int

The maximum number of results to return in the response.



=head2 NextToken => Str

The pagination token from the GET list request. Use the token to fetch
the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListOriginEndpoints in L<Paws::MediaPackageV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

