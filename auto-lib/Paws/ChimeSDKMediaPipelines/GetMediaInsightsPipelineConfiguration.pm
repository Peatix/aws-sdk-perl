
package Paws::ChimeSDKMediaPipelines::GetMediaInsightsPipelineConfiguration;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMediaInsightsPipelineConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/media-insights-pipeline-configurations/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKMediaPipelines::GetMediaInsightsPipelineConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMediaPipelines::GetMediaInsightsPipelineConfiguration - Arguments for method GetMediaInsightsPipelineConfiguration on L<Paws::ChimeSDKMediaPipelines>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMediaInsightsPipelineConfiguration on the
L<Amazon Chime SDK Media Pipelines|Paws::ChimeSDKMediaPipelines> service. Use the attributes of this class
as arguments to method GetMediaInsightsPipelineConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMediaInsightsPipelineConfiguration.

=head1 SYNOPSIS

    my $media-pipelines-chime = Paws->service('ChimeSDKMediaPipelines');
    my $GetMediaInsightsPipelineConfigurationResponse =
      $media -pipelines-chime->GetMediaInsightsPipelineConfiguration(
      Identifier => 'MyNonEmptyString',

      );

    # Results:
    my $MediaInsightsPipelineConfiguration =
      $GetMediaInsightsPipelineConfigurationResponse
      ->MediaInsightsPipelineConfiguration;

# Returns a L<Paws::ChimeSDKMediaPipelines::GetMediaInsightsPipelineConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/media-pipelines-chime/GetMediaInsightsPipelineConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

The unique identifier of the requested resource. Valid values include
the name and ARN of the media insights pipeline configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMediaInsightsPipelineConfiguration in L<Paws::ChimeSDKMediaPipelines>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

