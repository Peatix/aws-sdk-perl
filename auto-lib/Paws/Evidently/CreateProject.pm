
package Paws::Evidently::CreateProject;
  use Moose;
  has AppConfigResource => (is => 'ro', isa => 'Paws::Evidently::ProjectAppConfigResourceConfig', traits => ['NameInRequest'], request_name => 'appConfigResource');
  has DataDelivery => (is => 'ro', isa => 'Paws::Evidently::ProjectDataDeliveryConfig', traits => ['NameInRequest'], request_name => 'dataDelivery');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Evidently::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/projects');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Evidently::CreateProjectResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::CreateProject - Arguments for method CreateProject on L<Paws::Evidently>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProject on the
L<Amazon CloudWatch Evidently|Paws::Evidently> service. Use the attributes of this class
as arguments to method CreateProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProject.

=head1 SYNOPSIS

    my $evidently = Paws->service('Evidently');
    my $CreateProjectResponse = $evidently->CreateProject(
      Name              => 'MyProjectName',
      AppConfigResource => {
        ApplicationId => 'MyAppConfigResourceId',    # OPTIONAL
        EnvironmentId => 'MyAppConfigResourceId',    # OPTIONAL
      },    # OPTIONAL
      DataDelivery => {
        CloudWatchLogs => {
          LogGroup => 'MyCwLogGroupSafeName',    # min: 1, max: 512; OPTIONAL
        },    # OPTIONAL
        S3Destination => {
          Bucket => 'MyS3BucketSafeName',    # min: 3, max: 63; OPTIONAL
          Prefix => 'MyS3PrefixSafeName',    # min: 1, max: 1024; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Description => 'MyDescription',    # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Project = $CreateProjectResponse->Project;

    # Returns a L<Paws::Evidently::CreateProjectResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/evidently/CreateProject>

=head1 ATTRIBUTES


=head2 AppConfigResource => L<Paws::Evidently::ProjectAppConfigResourceConfig>

Use this parameter if the project will use I<client-side evaluation
powered by AppConfig>. Client-side evaluation allows your application
to assign variations to user sessions locally instead of by calling the
EvaluateFeature
(https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_EvaluateFeature.html)
operation. This mitigates the latency and availability risks that come
with an API call. For more information, see Client-side evaluation -
powered by AppConfig.
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-client-side-evaluation.html)

This parameter is a structure that contains information about the
AppConfig application and environment that will be used as for
client-side evaluation.

To create a project that uses client-side evaluation, you must have the
C<evidently:ExportProjectAsConfiguration> permission.



=head2 DataDelivery => L<Paws::Evidently::ProjectDataDeliveryConfig>

A structure that contains information about where Evidently is to store
evaluation events for longer term storage, if you choose to do so. If
you choose not to store these events, Evidently deletes them after
using them to produce metrics and other experiment results that you can
view.



=head2 Description => Str

An optional description of the project.



=head2 B<REQUIRED> Name => Str

The name for the project.



=head2 Tags => L<Paws::Evidently::TagMap>

Assigns one or more tags (key-value pairs) to the project.

Tags can help you organize and categorize your resources. You can also
use them to scope user permissions by granting a user permission to
access or change only resources with certain tag values.

Tags don't have any semantic meaning to Amazon Web Services and are
interpreted strictly as strings of characters.

You can associate as many as 50 tags with a project.

For more information, see Tagging Amazon Web Services resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProject in L<Paws::Evidently>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

