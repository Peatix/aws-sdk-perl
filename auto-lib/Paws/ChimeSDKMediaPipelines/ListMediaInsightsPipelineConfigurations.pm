
package Paws::ChimeSDKMediaPipelines::ListMediaInsightsPipelineConfigurations;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMediaInsightsPipelineConfigurations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/media-insights-pipeline-configurations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKMediaPipelines::ListMediaInsightsPipelineConfigurationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMediaPipelines::ListMediaInsightsPipelineConfigurations - Arguments for method ListMediaInsightsPipelineConfigurations on L<Paws::ChimeSDKMediaPipelines>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMediaInsightsPipelineConfigurations on the
L<Amazon Chime SDK Media Pipelines|Paws::ChimeSDKMediaPipelines> service. Use the attributes of this class
as arguments to method ListMediaInsightsPipelineConfigurations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMediaInsightsPipelineConfigurations.

=head1 SYNOPSIS

    my $media-pipelines-chime = Paws->service('ChimeSDKMediaPipelines');
    my $ListMediaInsightsPipelineConfigurationsResponse =
      $media -pipelines-chime->ListMediaInsightsPipelineConfigurations(
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
      );

    # Results:
    my $MediaInsightsPipelineConfigurations =
      $ListMediaInsightsPipelineConfigurationsResponse
      ->MediaInsightsPipelineConfigurations;
    my $NextToken = $ListMediaInsightsPipelineConfigurationsResponse->NextToken;

# Returns a L<Paws::ChimeSDKMediaPipelines::ListMediaInsightsPipelineConfigurationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/media-pipelines-chime/ListMediaInsightsPipelineConfigurations>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in a single call.



=head2 NextToken => Str

The token used to return the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMediaInsightsPipelineConfigurations in L<Paws::ChimeSDKMediaPipelines>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

