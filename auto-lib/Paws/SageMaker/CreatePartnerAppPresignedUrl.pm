
package Paws::SageMaker::CreatePartnerAppPresignedUrl;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has ExpiresInSeconds => (is => 'ro', isa => 'Int');
  has SessionExpirationDurationInSeconds => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePartnerAppPresignedUrl');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreatePartnerAppPresignedUrlResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreatePartnerAppPresignedUrl - Arguments for method CreatePartnerAppPresignedUrl on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePartnerAppPresignedUrl on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreatePartnerAppPresignedUrl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePartnerAppPresignedUrl.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreatePartnerAppPresignedUrlResponse =
      $api . sagemaker->CreatePartnerAppPresignedUrl(
      Arn                                => 'MyPartnerAppArn',
      ExpiresInSeconds                   => 1,                   # OPTIONAL
      SessionExpirationDurationInSeconds => 1,                   # OPTIONAL
      );

    # Results:
    my $Url = $CreatePartnerAppPresignedUrlResponse->Url;

    # Returns a L<Paws::SageMaker::CreatePartnerAppPresignedUrlResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreatePartnerAppPresignedUrl>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the SageMaker Partner AI App to create the presigned URL
for.



=head2 ExpiresInSeconds => Int

The time that will pass before the presigned URL expires.



=head2 SessionExpirationDurationInSeconds => Int

Indicates how long the Amazon SageMaker Partner AI App session can be
accessed for after logging in.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePartnerAppPresignedUrl in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

