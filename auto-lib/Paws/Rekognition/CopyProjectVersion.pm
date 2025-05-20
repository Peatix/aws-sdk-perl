
package Paws::Rekognition::CopyProjectVersion;
  use Moose;
  has DestinationProjectArn => (is => 'ro', isa => 'Str', required => 1);
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has OutputConfig => (is => 'ro', isa => 'Paws::Rekognition::OutputConfig', required => 1);
  has SourceProjectArn => (is => 'ro', isa => 'Str', required => 1);
  has SourceProjectVersionArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Rekognition::TagMap');
  has VersionName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopyProjectVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::CopyProjectVersionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::CopyProjectVersion - Arguments for method CopyProjectVersion on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CopyProjectVersion on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method CopyProjectVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CopyProjectVersion.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $CopyProjectVersionResponse = $rekognition->CopyProjectVersion(
      DestinationProjectArn => 'MyProjectArn',
      OutputConfig          => {
        S3Bucket    => 'MyS3Bucket',       # min: 3, max: 255; OPTIONAL
        S3KeyPrefix => 'MyS3KeyPrefix',    # max: 1024; OPTIONAL
      },
      SourceProjectArn        => 'MyProjectArn',
      SourceProjectVersionArn => 'MyProjectVersionArn',
      VersionName             => 'MyVersionName',
      KmsKeyId                => 'MyKmsKeyId',            # OPTIONAL
      Tags                    => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $ProjectVersionArn = $CopyProjectVersionResponse->ProjectVersionArn;

    # Returns a L<Paws::Rekognition::CopyProjectVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/CopyProjectVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DestinationProjectArn => Str

The ARN of the project in the trusted AWS account that you want to copy
the model version to.



=head2 KmsKeyId => Str

The identifier for your AWS Key Management Service key (AWS KMS key).
You can supply the Amazon Resource Name (ARN) of your KMS key, the ID
of your KMS key, an alias for your KMS key, or an alias ARN. The key is
used to encrypt training results and manifest files written to the
output Amazon S3 bucket (C<OutputConfig>).

If you choose to use your own KMS key, you need the following
permissions on the KMS key.

=over

=item *

kms:CreateGrant

=item *

kms:DescribeKey

=item *

kms:GenerateDataKey

=item *

kms:Decrypt

=back

If you don't specify a value for C<KmsKeyId>, images copied into the
service are encrypted using a key that AWS owns and manages.



=head2 B<REQUIRED> OutputConfig => L<Paws::Rekognition::OutputConfig>

The S3 bucket and folder location where the training output for the
source model version is placed.



=head2 B<REQUIRED> SourceProjectArn => Str

The ARN of the source project in the trusting AWS account.



=head2 B<REQUIRED> SourceProjectVersionArn => Str

The ARN of the model version in the source project that you want to
copy to a destination project.



=head2 Tags => L<Paws::Rekognition::TagMap>

The key-value tags to assign to the model version.



=head2 B<REQUIRED> VersionName => Str

A name for the version of the model that's copied to the destination
project.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CopyProjectVersion in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

