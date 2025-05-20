
package Paws::SageMaker::UpdateMlflowTrackingServer;
  use Moose;
  has ArtifactStoreUri => (is => 'ro', isa => 'Str');
  has AutomaticModelRegistration => (is => 'ro', isa => 'Bool');
  has TrackingServerName => (is => 'ro', isa => 'Str', required => 1);
  has TrackingServerSize => (is => 'ro', isa => 'Str');
  has WeeklyMaintenanceWindowStart => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMlflowTrackingServer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::UpdateMlflowTrackingServerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateMlflowTrackingServer - Arguments for method UpdateMlflowTrackingServer on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMlflowTrackingServer on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method UpdateMlflowTrackingServer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMlflowTrackingServer.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $UpdateMlflowTrackingServerResponse =
      $api . sagemaker->UpdateMlflowTrackingServer(
      TrackingServerName           => 'MyTrackingServerName',
      ArtifactStoreUri             => 'MyS3Uri',                # OPTIONAL
      AutomaticModelRegistration   => 1,                        # OPTIONAL
      TrackingServerSize           => 'Small',                  # OPTIONAL
      WeeklyMaintenanceWindowStart =>
        'MyWeeklyMaintenanceWindowStart',                       # OPTIONAL
      );

    # Results:
    my $TrackingServerArn =
      $UpdateMlflowTrackingServerResponse->TrackingServerArn;

    # Returns a L<Paws::SageMaker::UpdateMlflowTrackingServerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/UpdateMlflowTrackingServer>

=head1 ATTRIBUTES


=head2 ArtifactStoreUri => Str

The new S3 URI for the general purpose bucket to use as the artifact
store for the MLflow Tracking Server.



=head2 AutomaticModelRegistration => Bool

Whether to enable or disable automatic registration of new MLflow
models to the SageMaker Model Registry. To enable automatic model
registration, set this value to C<True>. To disable automatic model
registration, set this value to C<False>. If not specified,
C<AutomaticModelRegistration> defaults to C<False>



=head2 B<REQUIRED> TrackingServerName => Str

The name of the MLflow Tracking Server to update.



=head2 TrackingServerSize => Str

The new size for the MLflow Tracking Server.

Valid values are: C<"Small">, C<"Medium">, C<"Large">

=head2 WeeklyMaintenanceWindowStart => Str

The new weekly maintenance window start day and time to update. The
maintenance window day and time should be in Coordinated Universal Time
(UTC) 24-hour standard time. For example: TUE:03:30.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMlflowTrackingServer in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

