
package Paws::Personalize::CreateBatchInferenceJob;
  use Moose;
  has BatchInferenceJobConfig => (is => 'ro', isa => 'Paws::Personalize::BatchInferenceJobConfig', traits => ['NameInRequest'], request_name => 'batchInferenceJobConfig' );
  has BatchInferenceJobMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'batchInferenceJobMode' );
  has FilterArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'filterArn' );
  has JobInput => (is => 'ro', isa => 'Paws::Personalize::BatchInferenceJobInput', traits => ['NameInRequest'], request_name => 'jobInput' , required => 1);
  has JobName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobName' , required => 1);
  has JobOutput => (is => 'ro', isa => 'Paws::Personalize::BatchInferenceJobOutput', traits => ['NameInRequest'], request_name => 'jobOutput' , required => 1);
  has NumResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'numResults' );
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn' , required => 1);
  has SolutionVersionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'solutionVersionArn' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Personalize::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has ThemeGenerationConfig => (is => 'ro', isa => 'Paws::Personalize::ThemeGenerationConfig', traits => ['NameInRequest'], request_name => 'themeGenerationConfig' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBatchInferenceJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Personalize::CreateBatchInferenceJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::CreateBatchInferenceJob - Arguments for method CreateBatchInferenceJob on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBatchInferenceJob on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method CreateBatchInferenceJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBatchInferenceJob.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    my $CreateBatchInferenceJobResponse = $personalize->CreateBatchInferenceJob(
      JobInput => {
        S3DataSource => {
          Path      => 'MyS3Location',    # max: 256
          KmsKeyArn => 'MyKmsKeyArn',     # max: 2048; OPTIONAL
        },

      },
      JobName   => 'MyName',
      JobOutput => {
        S3DataDestination => {
          Path      => 'MyS3Location',    # max: 256
          KmsKeyArn => 'MyKmsKeyArn',     # max: 2048; OPTIONAL
        },

      },
      RoleArn                 => 'MyRoleArn',
      SolutionVersionArn      => 'MyArn',
      BatchInferenceJobConfig => {
        ItemExplorationConfig => {
          'MyParameterName' =>
            'MyParameterValue',           # key: max: 256, value: max: 1000
        },    # max: 100; OPTIONAL
      },    # OPTIONAL
      BatchInferenceJobMode => 'BATCH_INFERENCE',    # OPTIONAL
      FilterArn             => 'MyArn',              # OPTIONAL
      NumResults            => 1,                    # OPTIONAL
      Tags                  => [
        {
          TagKey   => 'MyTagKey',      # min: 1, max: 128
          TagValue => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      ThemeGenerationConfig => {
        FieldsForThemeGeneration => {
          ItemName => 'MyColumnName',    # max: 150

        },

      },    # OPTIONAL
    );

    # Results:
    my $BatchInferenceJobArn =
      $CreateBatchInferenceJobResponse->BatchInferenceJobArn;

    # Returns a L<Paws::Personalize::CreateBatchInferenceJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/CreateBatchInferenceJob>

=head1 ATTRIBUTES


=head2 BatchInferenceJobConfig => L<Paws::Personalize::BatchInferenceJobConfig>

The configuration details of a batch inference job.



=head2 BatchInferenceJobMode => Str

The mode of the batch inference job. To generate descriptive themes for
groups of similar items, set the job mode to C<THEME_GENERATION>. If
you don't want to generate themes, use the default C<BATCH_INFERENCE>.

When you get batch recommendations with themes, you will incur
additional costs. For more information, see Amazon Personalize pricing
(https://aws.amazon.com/personalize/pricing/).

Valid values are: C<"BATCH_INFERENCE">, C<"THEME_GENERATION">

=head2 FilterArn => Str

The ARN of the filter to apply to the batch inference job. For more
information on using filters, see Filtering batch recommendations
(https://docs.aws.amazon.com/personalize/latest/dg/filter-batch.html).



=head2 B<REQUIRED> JobInput => L<Paws::Personalize::BatchInferenceJobInput>

The Amazon S3 path that leads to the input file to base your
recommendations on. The input material must be in JSON format.



=head2 B<REQUIRED> JobName => Str

The name of the batch inference job to create.



=head2 B<REQUIRED> JobOutput => L<Paws::Personalize::BatchInferenceJobOutput>

The path to the Amazon S3 bucket where the job's output will be stored.



=head2 NumResults => Int

The number of recommendations to retrieve.



=head2 B<REQUIRED> RoleArn => Str

The ARN of the Amazon Identity and Access Management role that has
permissions to read and write to your input and output Amazon S3
buckets respectively.



=head2 B<REQUIRED> SolutionVersionArn => Str

The Amazon Resource Name (ARN) of the solution version that will be
used to generate the batch inference recommendations.



=head2 Tags => ArrayRef[L<Paws::Personalize::Tag>]

A list of tags
(https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html)
to apply to the batch inference job.



=head2 ThemeGenerationConfig => L<Paws::Personalize::ThemeGenerationConfig>

For theme generation jobs, specify the name of the column in your Items
dataset that contains each item's name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBatchInferenceJob in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

