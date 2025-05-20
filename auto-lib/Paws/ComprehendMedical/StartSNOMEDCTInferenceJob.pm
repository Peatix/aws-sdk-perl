
package Paws::ComprehendMedical::StartSNOMEDCTInferenceJob;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has DataAccessRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has InputDataConfig => (is => 'ro', isa => 'Paws::ComprehendMedical::InputDataConfig', required => 1);
  has JobName => (is => 'ro', isa => 'Str');
  has KMSKey => (is => 'ro', isa => 'Str');
  has LanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has OutputDataConfig => (is => 'ro', isa => 'Paws::ComprehendMedical::OutputDataConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartSNOMEDCTInferenceJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ComprehendMedical::StartSNOMEDCTInferenceJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ComprehendMedical::StartSNOMEDCTInferenceJob - Arguments for method StartSNOMEDCTInferenceJob on L<Paws::ComprehendMedical>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartSNOMEDCTInferenceJob on the
L<AWS Comprehend Medical|Paws::ComprehendMedical> service. Use the attributes of this class
as arguments to method StartSNOMEDCTInferenceJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartSNOMEDCTInferenceJob.

=head1 SYNOPSIS

    my $comprehendmedical = Paws->service('ComprehendMedical');
    my $StartSNOMEDCTInferenceJobResponse =
      $comprehendmedical->StartSNOMEDCTInferenceJob(
      DataAccessRoleArn => 'MyIamRoleArn',
      InputDataConfig   => {
        S3Bucket => 'MyS3Bucket',    # min: 3, max: 63
        S3Key    => 'MyS3Key',       # max: 1024; OPTIONAL
      },
      LanguageCode     => 'en',
      OutputDataConfig => {
        S3Bucket => 'MyS3Bucket',    # min: 3, max: 63
        S3Key    => 'MyS3Key',       # max: 1024; OPTIONAL
      },
      ClientRequestToken => 'MyClientRequestTokenString',    # OPTIONAL
      JobName            => 'MyJobName',                     # OPTIONAL
      KMSKey             => 'MyKMSKey',                      # OPTIONAL
      );

    # Results:
    my $JobId = $StartSNOMEDCTInferenceJobResponse->JobId;

# Returns a L<Paws::ComprehendMedical::StartSNOMEDCTInferenceJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehendmedical/StartSNOMEDCTInferenceJob>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique identifier for the request. If you don't set the client
request token, Amazon Comprehend Medical generates one.



=head2 B<REQUIRED> DataAccessRoleArn => Str

The Amazon Resource Name (ARN) of the AWS Identity and Access
Management (IAM) role that grants Amazon Comprehend Medical read access
to your input data.



=head2 B<REQUIRED> InputDataConfig => L<Paws::ComprehendMedical::InputDataConfig>





=head2 JobName => Str

The user generated name the asynchronous InferSNOMEDCT job.



=head2 KMSKey => Str

An AWS Key Management Service key used to encrypt your output files. If
you do not specify a key, the files are written in plain text.



=head2 B<REQUIRED> LanguageCode => Str

The language of the input documents. All documents must be in the same
language.

Valid values are: C<"en">

=head2 B<REQUIRED> OutputDataConfig => L<Paws::ComprehendMedical::OutputDataConfig>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartSNOMEDCTInferenceJob in L<Paws::ComprehendMedical>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

