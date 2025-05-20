
package Paws::OSIS::CreatePipeline;
  use Moose;
  has BufferOptions => (is => 'ro', isa => 'Paws::OSIS::BufferOptions');
  has EncryptionAtRestOptions => (is => 'ro', isa => 'Paws::OSIS::EncryptionAtRestOptions');
  has LogPublishingOptions => (is => 'ro', isa => 'Paws::OSIS::LogPublishingOptions');
  has MaxUnits => (is => 'ro', isa => 'Int', required => 1);
  has MinUnits => (is => 'ro', isa => 'Int', required => 1);
  has PipelineConfigurationBody => (is => 'ro', isa => 'Str', required => 1);
  has PipelineName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::OSIS::Tag]');
  has VpcOptions => (is => 'ro', isa => 'Paws::OSIS::VpcOptions');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePipeline');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2022-01-01/osis/createPipeline');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OSIS::CreatePipelineResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OSIS::CreatePipeline - Arguments for method CreatePipeline on L<Paws::OSIS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePipeline on the
L<Amazon OpenSearch Ingestion|Paws::OSIS> service. Use the attributes of this class
as arguments to method CreatePipeline.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePipeline.

=head1 SYNOPSIS

    my $osis = Paws->service('OSIS');
    my $CreatePipelineResponse = $osis->CreatePipeline(
      MaxUnits                  => 1,
      MinUnits                  => 1,
      PipelineConfigurationBody => 'MyPipelineConfigurationBody',
      PipelineName              => 'MyPipelineName',
      BufferOptions             => {
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
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      VpcOptions => {
        SubnetIds => [
          'MySubnetId', ...    # min: 15, max: 24
        ],    # min: 1, max: 12
        SecurityGroupIds => [
          'MySecurityGroupId', ...    # min: 11, max: 20
        ],    # min: 1, max: 12; OPTIONAL
        VpcAttachmentOptions => {
          AttachToVpc => 1,
          CidrBlock   => 'MyCidrBlock',    # OPTIONAL
        },    # OPTIONAL
        VpcEndpointManagement =>
          'CUSTOMER',    # values: CUSTOMER, SERVICE; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Pipeline = $CreatePipelineResponse->Pipeline;

    # Returns a L<Paws::OSIS::CreatePipelineResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/osis/CreatePipeline>

=head1 ATTRIBUTES


=head2 BufferOptions => L<Paws::OSIS::BufferOptions>

Key-value pairs to configure persistent buffering for the pipeline.



=head2 EncryptionAtRestOptions => L<Paws::OSIS::EncryptionAtRestOptions>

Key-value pairs to configure encryption for data that is written to a
persistent buffer.



=head2 LogPublishingOptions => L<Paws::OSIS::LogPublishingOptions>

Key-value pairs to configure log publishing.



=head2 B<REQUIRED> MaxUnits => Int

The maximum pipeline capacity, in Ingestion Compute Units (ICUs).



=head2 B<REQUIRED> MinUnits => Int

The minimum pipeline capacity, in Ingestion Compute Units (ICUs).



=head2 B<REQUIRED> PipelineConfigurationBody => Str

The pipeline configuration in YAML format. The command accepts the
pipeline configuration as a string or within a .yaml file. If you
provide the configuration as a string, each new line must be escaped
with C<\n>.



=head2 B<REQUIRED> PipelineName => Str

The name of the OpenSearch Ingestion pipeline to create. Pipeline names
are unique across the pipelines owned by an account within an Amazon
Web Services Region.



=head2 Tags => ArrayRef[L<Paws::OSIS::Tag>]

List of tags to add to the pipeline upon creation.



=head2 VpcOptions => L<Paws::OSIS::VpcOptions>

Container for the values required to configure VPC access for the
pipeline. If you don't specify these values, OpenSearch Ingestion
creates the pipeline with a public endpoint.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePipeline in L<Paws::OSIS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

