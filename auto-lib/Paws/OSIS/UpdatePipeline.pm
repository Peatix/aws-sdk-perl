
package Paws::OSIS::UpdatePipeline;
  use Moose;
  has BufferOptions => (is => 'ro', isa => 'Paws::OSIS::BufferOptions');
  has EncryptionAtRestOptions => (is => 'ro', isa => 'Paws::OSIS::EncryptionAtRestOptions');
  has LogPublishingOptions => (is => 'ro', isa => 'Paws::OSIS::LogPublishingOptions');
  has MaxUnits => (is => 'ro', isa => 'Int');
  has MinUnits => (is => 'ro', isa => 'Int');
  has PipelineConfigurationBody => (is => 'ro', isa => 'Str');
  has PipelineName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'PipelineName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePipeline');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2022-01-01/osis/updatePipeline/{PipelineName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OSIS::UpdatePipelineResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OSIS::UpdatePipeline - Arguments for method UpdatePipeline on L<Paws::OSIS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePipeline on the
L<Amazon OpenSearch Ingestion|Paws::OSIS> service. Use the attributes of this class
as arguments to method UpdatePipeline.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePipeline.

=head1 SYNOPSIS

    my $osis = Paws->service('OSIS');
    my $UpdatePipelineResponse = $osis->UpdatePipeline(
      PipelineName  => 'MyPipelineName',
      BufferOptions => {
        PersistentBufferEnabled => 1,

      },    # OPTIONAL
      EncryptionAtRestOptions => {
        KmsKeyArn => 'MyKmsKeyArn',    # min: 7, max: 2048

      },    # OPTIONAL
      LogPublishingOptions => {
        CloudWatchLogDestination => {
          LogGroup => 'MyLogGroup',    # min: 1, max: 512

        },    # OPTIONAL
        IsLoggingEnabled => 1,
      },    # OPTIONAL
      MaxUnits                  => 1,                                # OPTIONAL
      MinUnits                  => 1,                                # OPTIONAL
      PipelineConfigurationBody => 'MyPipelineConfigurationBody',    # OPTIONAL
    );

    # Results:
    my $Pipeline = $UpdatePipelineResponse->Pipeline;

    # Returns a L<Paws::OSIS::UpdatePipelineResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/osis/UpdatePipeline>

=head1 ATTRIBUTES


=head2 BufferOptions => L<Paws::OSIS::BufferOptions>

Key-value pairs to configure persistent buffering for the pipeline.



=head2 EncryptionAtRestOptions => L<Paws::OSIS::EncryptionAtRestOptions>

Key-value pairs to configure encryption for data that is written to a
persistent buffer.



=head2 LogPublishingOptions => L<Paws::OSIS::LogPublishingOptions>

Key-value pairs to configure log publishing.



=head2 MaxUnits => Int

The maximum pipeline capacity, in Ingestion Compute Units (ICUs)



=head2 MinUnits => Int

The minimum pipeline capacity, in Ingestion Compute Units (ICUs).



=head2 PipelineConfigurationBody => Str

The pipeline configuration in YAML format. The command accepts the
pipeline configuration as a string or within a .yaml file. If you
provide the configuration as a string, each new line must be escaped
with C<\n>.



=head2 B<REQUIRED> PipelineName => Str

The name of the pipeline to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePipeline in L<Paws::OSIS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

