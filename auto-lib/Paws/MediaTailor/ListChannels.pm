
package Paws::MediaTailor::ListChannels;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListChannels');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channels');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaTailor::ListChannelsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::ListChannels - Arguments for method ListChannels on L<Paws::MediaTailor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListChannels on the
L<AWS MediaTailor|Paws::MediaTailor> service. Use the attributes of this class
as arguments to method ListChannels.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListChannels.

=head1 SYNOPSIS

    my $api.mediatailor = Paws->service('MediaTailor');
    my $ListChannelsResponse = $api . mediatailor->ListChannels(
      MaxResults => 1,               # OPTIONAL
      NextToken  => 'My__string',    # OPTIONAL
    );

    # Results:
    my $Items     = $ListChannelsResponse->Items;
    my $NextToken = $ListChannelsResponse->NextToken;

    # Returns a L<Paws::MediaTailor::ListChannelsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.mediatailor/ListChannels>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of channels that you want MediaTailor to return in
response to the current request. If there are more than C<MaxResults>
channels, use the value of C<NextToken> in the response to get the next
page of results.



=head2 NextToken => Str

Pagination token returned by the list request when results exceed the
maximum allowed. Use the token to fetch the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListChannels in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

