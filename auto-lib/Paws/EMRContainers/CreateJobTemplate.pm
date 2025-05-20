
package Paws::EMRContainers::CreateJobTemplate;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken', required => 1);
  has JobTemplateData => (is => 'ro', isa => 'Paws::EMRContainers::JobTemplateData', traits => ['NameInRequest'], request_name => 'jobTemplateData', required => 1);
  has KmsKeyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyArn');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::EMRContainers::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateJobTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/jobtemplates');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMRContainers::CreateJobTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers::CreateJobTemplate - Arguments for method CreateJobTemplate on L<Paws::EMRContainers>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateJobTemplate on the
L<Amazon EMR Containers|Paws::EMRContainers> service. Use the attributes of this class
as arguments to method CreateJobTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateJobTemplate.

=head1 SYNOPSIS

    my $emr-containers = Paws->service('EMRContainers');
    my $CreateJobTemplateResponse = $emr -containers->CreateJobTemplate(
      ClientToken     => 'MyClientToken',
      JobTemplateData => {
        ExecutionRoleArn => 'MyParametricIAMRoleArn',    # min: 4, max: 2048
        JobDriver        => {
          SparkSqlJobDriver => {
            EntryPoint => 'MyEntryPointPath',    # min: 1, max: 256; OPTIONAL
            SparkSqlParameters =>
              'MySparkSqlParameters',            # min: 1, max: 102400; OPTIONAL
          },    # OPTIONAL
          SparkSubmitJobDriver => {
            EntryPoint => 'MyEntryPointPath',    # min: 1, max: 256; OPTIONAL
            EntryPointArguments => [
              'MyEntryPointArgument', ...        # min: 1, max: 10280
            ],    # OPTIONAL
            SparkSubmitParameters =>
              'MySparkSubmitParameters',    # min: 1, max: 102400; OPTIONAL
          },    # OPTIONAL
        },
        ReleaseLabel           => 'MyParametricReleaseLabel',  # min: 1, max: 64
        ConfigurationOverrides => {
          ApplicationConfiguration => [
            {
              Classification => 'MyString1024',        # min: 1, max: 1024
              Configurations => <ConfigurationList>,
              Properties     => {
                'MyString1024' => 'MyString1024'
                ,    # key: min: 1, max: 1024, value: min: 1, max: 1024
              },    # max: 100; OPTIONAL
            },
            ...
          ],    # max: 100; OPTIONAL
          MonitoringConfiguration => {
            CloudWatchMonitoringConfiguration => {
              LogGroupName =>
                'MyTemplateParameter',    # min: 1, max: 512; OPTIONAL
              LogStreamNamePrefix => 'MyString256', # min: 1, max: 256; OPTIONAL
            },    # OPTIONAL
            PersistentAppUI =>
              'MyTemplateParameter',    # min: 1, max: 512; OPTIONAL
            S3MonitoringConfiguration => {
              LogUri => 'MyUriString',    # min: 1, max: 10280; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        JobTags => {
          'MyString128' =>
            'MyStringEmpty256',    # key: min: 1, max: 128, value: max: 256
        },    # max: 50; OPTIONAL
        ParameterConfiguration => {
          'MyTemplateParameterName' => {
            DefaultValue => 'MyString1024',   # min: 1, max: 1024
            Type         => 'NUMBER',         # values: NUMBER, STRING; OPTIONAL
          },    # key: min: 1, max: 512
        },    # max: 100; OPTIONAL
      },
      Name      => 'MyResourceNameString',
      KmsKeyArn => 'MyKmsKeyArn',            # OPTIONAL
      Tags      => {
        'MyString128' =>
          'MyStringEmpty256',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn       = $CreateJobTemplateResponse->Arn;
    my $CreatedAt = $CreateJobTemplateResponse->CreatedAt;
    my $Id        = $CreateJobTemplateResponse->Id;
    my $Name      = $CreateJobTemplateResponse->Name;

    # Returns a L<Paws::EMRContainers::CreateJobTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/emr-containers/CreateJobTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

The client token of the job template.



=head2 B<REQUIRED> JobTemplateData => L<Paws::EMRContainers::JobTemplateData>

The job template data which holds values of StartJobRun API request.



=head2 KmsKeyArn => Str

The KMS key ARN used to encrypt the job template.



=head2 B<REQUIRED> Name => Str

The specified name of the job template.



=head2 Tags => L<Paws::EMRContainers::TagMap>

The tags that are associated with the job template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateJobTemplate in L<Paws::EMRContainers>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

