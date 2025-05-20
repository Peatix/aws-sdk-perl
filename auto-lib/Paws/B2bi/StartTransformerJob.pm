
package Paws::B2bi::StartTransformerJob;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has InputFile => (is => 'ro', isa => 'Paws::B2bi::S3Location', traits => ['NameInRequest'], request_name => 'inputFile' , required => 1);
  has OutputLocation => (is => 'ro', isa => 'Paws::B2bi::S3Location', traits => ['NameInRequest'], request_name => 'outputLocation' , required => 1);
  has TransformerId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'transformerId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartTransformerJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::B2bi::StartTransformerJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::B2bi::StartTransformerJob - Arguments for method StartTransformerJob on L<Paws::B2bi>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartTransformerJob on the
L<AWS B2B Data Interchange|Paws::B2bi> service. Use the attributes of this class
as arguments to method StartTransformerJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartTransformerJob.

=head1 SYNOPSIS

    my $b2bi = Paws->service('B2bi');
    my $StartTransformerJobResponse = $b2bi->StartTransformerJob(
      InputFile => {
        BucketName => 'MyBucketName',    # min: 3, max: 63; OPTIONAL
        Key        => 'MyS3Key',         # max: 1024; OPTIONAL
      },
      OutputLocation => {
        BucketName => 'MyBucketName',    # min: 3, max: 63; OPTIONAL
        Key        => 'MyS3Key',         # max: 1024; OPTIONAL
      },
      TransformerId => 'MyTransformerId',
      ClientToken   => 'MyString',          # OPTIONAL
    );

    # Results:
    my $TransformerJobId = $StartTransformerJobResponse->TransformerJobId;

    # Returns a L<Paws::B2bi::StartTransformerJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/b2bi/StartTransformerJob>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Reserved for future use.



=head2 B<REQUIRED> InputFile => L<Paws::B2bi::S3Location>

Specifies the location of the input file for the transformation. The
location consists of an Amazon S3 bucket and prefix.



=head2 B<REQUIRED> OutputLocation => L<Paws::B2bi::S3Location>

Specifies the location of the output file for the transformation. The
location consists of an Amazon S3 bucket and prefix.



=head2 B<REQUIRED> TransformerId => Str

Specifies the system-assigned unique identifier for the transformer.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartTransformerJob in L<Paws::B2bi>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

