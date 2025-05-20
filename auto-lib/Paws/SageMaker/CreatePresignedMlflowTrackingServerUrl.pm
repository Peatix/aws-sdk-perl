
package Paws::SageMaker::CreatePresignedMlflowTrackingServerUrl;
  use Moose;
  has ExpiresInSeconds => (is => 'ro', isa => 'Int');
  has SessionExpirationDurationInSeconds => (is => 'ro', isa => 'Int');
  has TrackingServerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePresignedMlflowTrackingServerUrl');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreatePresignedMlflowTrackingServerUrlResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreatePresignedMlflowTrackingServerUrl - Arguments for method CreatePresignedMlflowTrackingServerUrl on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePresignedMlflowTrackingServerUrl on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreatePresignedMlflowTrackingServerUrl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePresignedMlflowTrackingServerUrl.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreatePresignedMlflowTrackingServerUrlResponse =
      $api . sagemaker->CreatePresignedMlflowTrackingServerUrl(
      TrackingServerName                 => 'MyTrackingServerName',
      ExpiresInSeconds                   => 1,                        # OPTIONAL
      SessionExpirationDurationInSeconds => 1,                        # OPTIONAL
      );

    # Results:
    my $AuthorizedUrl =
      $CreatePresignedMlflowTrackingServerUrlResponse->AuthorizedUrl;

# Returns a L<Paws::SageMaker::CreatePresignedMlflowTrackingServerUrlResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreatePresignedMlflowTrackingServerUrl>

=head1 ATTRIBUTES


=head2 ExpiresInSeconds => Int

The duration in seconds that your presigned URL is valid. The presigned
URL can be used only once.



=head2 SessionExpirationDurationInSeconds => Int

The duration in seconds that your MLflow UI session is valid.



=head2 B<REQUIRED> TrackingServerName => Str

The name of the tracking server to connect to your MLflow UI.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePresignedMlflowTrackingServerUrl in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

