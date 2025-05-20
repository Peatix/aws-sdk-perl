
package Paws::Textract::CreateAdapterVersion;
  use Moose;
  has AdapterId => (is => 'ro', isa => 'Str', required => 1);
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has DatasetConfig => (is => 'ro', isa => 'Paws::Textract::AdapterVersionDatasetConfig', required => 1);
  has KMSKeyId => (is => 'ro', isa => 'Str');
  has OutputConfig => (is => 'ro', isa => 'Paws::Textract::OutputConfig', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Textract::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAdapterVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Textract::CreateAdapterVersionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Textract::CreateAdapterVersion - Arguments for method CreateAdapterVersion on L<Paws::Textract>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAdapterVersion on the
L<Amazon Textract|Paws::Textract> service. Use the attributes of this class
as arguments to method CreateAdapterVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAdapterVersion.

=head1 SYNOPSIS

    my $textract = Paws->service('Textract');
    my $CreateAdapterVersionResponse = $textract->CreateAdapterVersion(
      AdapterId     => 'MyAdapterId',
      DatasetConfig => {
        ManifestS3Object => {
          Bucket  => 'MyS3Bucket',           # min: 3, max: 255; OPTIONAL
          Name    => 'MyS3ObjectName',       # min: 1, max: 1024; OPTIONAL
          Version => 'MyS3ObjectVersion',    # min: 1, max: 1024; OPTIONAL
        },    # OPTIONAL
      },
      OutputConfig => {
        S3Bucket => 'MyS3Bucket',        # min: 3, max: 255; OPTIONAL
        S3Prefix => 'MyS3ObjectName',    # min: 1, max: 1024; OPTIONAL
      },
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      KMSKeyId           => 'MyKMSKeyId',              # OPTIONAL
      Tags               => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $AdapterId      = $CreateAdapterVersionResponse->AdapterId;
    my $AdapterVersion = $CreateAdapterVersionResponse->AdapterVersion;

    # Returns a L<Paws::Textract::CreateAdapterVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/textract/CreateAdapterVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AdapterId => Str

A string containing a unique ID for the adapter that will receive a new
version.



=head2 ClientRequestToken => Str

Idempotent token is used to recognize the request. If the same token is
used with multiple CreateAdapterVersion requests, the same session is
returned. This token is employed to avoid unintentionally creating the
same session multiple times.



=head2 B<REQUIRED> DatasetConfig => L<Paws::Textract::AdapterVersionDatasetConfig>

Specifies a dataset used to train a new adapter version. Takes a
ManifestS3Object as the value.



=head2 KMSKeyId => Str

The identifier for your AWS Key Management Service key (AWS KMS key).
Used to encrypt your documents.



=head2 B<REQUIRED> OutputConfig => L<Paws::Textract::OutputConfig>





=head2 Tags => L<Paws::Textract::TagMap>

A set of tags (key-value pairs) that you want to attach to the adapter
version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAdapterVersion in L<Paws::Textract>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

