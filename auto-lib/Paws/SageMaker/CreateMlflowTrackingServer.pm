
package Paws::SageMaker::CreateMlflowTrackingServer;
  use Moose;
  has ArtifactStoreUri => (is => 'ro', isa => 'Str', required => 1);
  has AutomaticModelRegistration => (is => 'ro', isa => 'Bool');
  has MlflowVersion => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');
  has TrackingServerName => (is => 'ro', isa => 'Str', required => 1);
  has TrackingServerSize => (is => 'ro', isa => 'Str');
  has WeeklyMaintenanceWindowStart => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMlflowTrackingServer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateMlflowTrackingServerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateMlflowTrackingServer - Arguments for method CreateMlflowTrackingServer on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMlflowTrackingServer on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateMlflowTrackingServer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMlflowTrackingServer.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateMlflowTrackingServerResponse =
      $api . sagemaker->CreateMlflowTrackingServer(
      ArtifactStoreUri           => 'MyS3Uri',
      RoleArn                    => 'MyRoleArn',
      TrackingServerName         => 'MyTrackingServerName',
      AutomaticModelRegistration => 1,                        # OPTIONAL
      MlflowVersion              => 'MyMlflowVersion',        # OPTIONAL
      Tags                       => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      TrackingServerSize           => 'Small',    # OPTIONAL
      WeeklyMaintenanceWindowStart =>
        'MyWeeklyMaintenanceWindowStart',         # OPTIONAL
      );

    # Results:
    my $TrackingServerArn =
      $CreateMlflowTrackingServerResponse->TrackingServerArn;

    # Returns a L<Paws::SageMaker::CreateMlflowTrackingServerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateMlflowTrackingServer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ArtifactStoreUri => Str

The S3 URI for a general purpose bucket to use as the MLflow Tracking
Server artifact store.



=head2 AutomaticModelRegistration => Bool

Whether to enable or disable automatic registration of new MLflow
models to the SageMaker Model Registry. To enable automatic model
registration, set this value to C<True>. To disable automatic model
registration, set this value to C<False>. If not specified,
C<AutomaticModelRegistration> defaults to C<False>.



=head2 MlflowVersion => Str

The version of MLflow that the tracking server uses. To see which
MLflow versions are available to use, see How it works
(https://docs.aws.amazon.com/sagemaker/latest/dg/mlflow.html#mlflow-create-tracking-server-how-it-works).



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) for an IAM role in your account that the
MLflow Tracking Server uses to access the artifact store in Amazon S3.
The role should have C<AmazonS3FullAccess> permissions. For more
information on IAM permissions for tracking server creation, see Set up
IAM permissions for MLflow
(https://docs.aws.amazon.com/sagemaker/latest/dg/mlflow-create-tracking-server-iam.html).



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

Tags consisting of key-value pairs used to manage metadata for the
tracking server.



=head2 B<REQUIRED> TrackingServerName => Str

A unique string identifying the tracking server name. This string is
part of the tracking server ARN.



=head2 TrackingServerSize => Str

The size of the tracking server you want to create. You can choose
between C<"Small">, C<"Medium">, and C<"Large">. The default MLflow
Tracking Server configuration size is C<"Small">. You can choose a size
depending on the projected use of the tracking server such as the
volume of data logged, number of users, and frequency of use.

We recommend using a small tracking server for teams of up to 25 users,
a medium tracking server for teams of up to 50 users, and a large
tracking server for teams of up to 100 users.

Valid values are: C<"Small">, C<"Medium">, C<"Large">

=head2 WeeklyMaintenanceWindowStart => Str

The day and time of the week in Coordinated Universal Time (UTC)
24-hour standard time that weekly maintenance updates are scheduled.
For example: TUE:03:30.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMlflowTrackingServer in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

