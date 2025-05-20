
package Paws::Textract::AnalyzeID;
  use Moose;
  has DocumentPages => (is => 'ro', isa => 'ArrayRef[Paws::Textract::Document]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AnalyzeID');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Textract::AnalyzeIDResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Textract::AnalyzeID - Arguments for method AnalyzeID on L<Paws::Textract>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AnalyzeID on the
L<Amazon Textract|Paws::Textract> service. Use the attributes of this class
as arguments to method AnalyzeID.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AnalyzeID.

=head1 SYNOPSIS

    my $textract = Paws->service('Textract');
    my $AnalyzeIDResponse = $textract->AnalyzeID(
      DocumentPages => [
        {
          Bytes    => 'BlobImageBlob',    # min: 1, max: 10485760; OPTIONAL
          S3Object => {
            Bucket  => 'MyS3Bucket',           # min: 3, max: 255; OPTIONAL
            Name    => 'MyS3ObjectName',       # min: 1, max: 1024; OPTIONAL
            Version => 'MyS3ObjectVersion',    # min: 1, max: 1024; OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],

    );

    # Results:
    my $AnalyzeIDModelVersion = $AnalyzeIDResponse->AnalyzeIDModelVersion;
    my $DocumentMetadata      = $AnalyzeIDResponse->DocumentMetadata;
    my $IdentityDocuments     = $AnalyzeIDResponse->IdentityDocuments;

    # Returns a L<Paws::Textract::AnalyzeIDResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/textract/AnalyzeID>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DocumentPages => ArrayRef[L<Paws::Textract::Document>]

The document being passed to AnalyzeID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AnalyzeID in L<Paws::Textract>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

