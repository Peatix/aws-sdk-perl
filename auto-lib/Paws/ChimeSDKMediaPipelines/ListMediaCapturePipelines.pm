
package Paws::ChimeSDKMediaPipelines::ListMediaCapturePipelines;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMediaCapturePipelines');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sdk-media-capture-pipelines');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKMediaPipelines::ListMediaCapturePipelinesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMediaPipelines::ListMediaCapturePipelines - Arguments for method ListMediaCapturePipelines on L<Paws::ChimeSDKMediaPipelines>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMediaCapturePipelines on the
L<Amazon Chime SDK Media Pipelines|Paws::ChimeSDKMediaPipelines> service. Use the attributes of this class
as arguments to method ListMediaCapturePipelines.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMediaCapturePipelines.

=head1 SYNOPSIS

    my $media-pipelines-chime = Paws->service('ChimeSDKMediaPipelines');
    my $ListMediaCapturePipelinesResponse =
      $media -pipelines-chime->ListMediaCapturePipelines(
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
      );

    # Results:
    my $MediaCapturePipelines =
      $ListMediaCapturePipelinesResponse->MediaCapturePipelines;
    my $NextToken = $ListMediaCapturePipelinesResponse->NextToken;

# Returns a L<Paws::ChimeSDKMediaPipelines::ListMediaCapturePipelinesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/media-pipelines-chime/ListMediaCapturePipelines>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in a single call. Valid Range:
1 - 99.



=head2 NextToken => Str

The token used to retrieve the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMediaCapturePipelines in L<Paws::ChimeSDKMediaPipelines>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

