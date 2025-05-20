
package Paws::SageMaker::StopMlflowTrackingServer;
  use Moose;
  has TrackingServerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopMlflowTrackingServer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::StopMlflowTrackingServerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::StopMlflowTrackingServer - Arguments for method StopMlflowTrackingServer on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopMlflowTrackingServer on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method StopMlflowTrackingServer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopMlflowTrackingServer.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $StopMlflowTrackingServerResponse =
      $api . sagemaker->StopMlflowTrackingServer(
      TrackingServerName => 'MyTrackingServerName',

      );

    # Results:
    my $TrackingServerArn =
      $StopMlflowTrackingServerResponse->TrackingServerArn;

    # Returns a L<Paws::SageMaker::StopMlflowTrackingServerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/StopMlflowTrackingServer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TrackingServerName => Str

The name of the tracking server to stop.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopMlflowTrackingServer in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

