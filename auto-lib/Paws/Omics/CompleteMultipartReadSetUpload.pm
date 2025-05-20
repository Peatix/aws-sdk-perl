
package Paws::Omics::CompleteMultipartReadSetUpload;
  use Moose;
  has Parts => (is => 'ro', isa => 'ArrayRef[Paws::Omics::CompleteReadSetUploadPartListItem]', traits => ['NameInRequest'], request_name => 'parts', required => 1);
  has SequenceStoreId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sequenceStoreId', required => 1);
  has UploadId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'uploadId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CompleteMultipartReadSetUpload');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sequencestore/{sequenceStoreId}/upload/{uploadId}/complete');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::CompleteMultipartReadSetUploadResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::CompleteMultipartReadSetUpload - Arguments for method CompleteMultipartReadSetUpload on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CompleteMultipartReadSetUpload on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method CompleteMultipartReadSetUpload.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CompleteMultipartReadSetUpload.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $CompleteMultipartReadSetUploadResponse =
      $omics->CompleteMultipartReadSetUpload(
      Parts => [
        {
          Checksum => 'MyCompleteReadSetUploadPartListItemChecksumString'
          ,                           # min: 1, max: 100
          PartNumber => 1,            # min: 1, max: 10000
          PartSource => 'SOURCE1',    # values: SOURCE1, SOURCE2

        },
        ...
      ],
      SequenceStoreId => 'MySequenceStoreId',
      UploadId        => 'MyUploadId',

      );

    # Results:
    my $ReadSetId = $CompleteMultipartReadSetUploadResponse->ReadSetId;

    # Returns a L<Paws::Omics::CompleteMultipartReadSetUploadResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/CompleteMultipartReadSetUpload>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Parts => ArrayRef[L<Paws::Omics::CompleteReadSetUploadPartListItem>]

The individual uploads or parts of a multipart upload.



=head2 B<REQUIRED> SequenceStoreId => Str

The sequence store ID for the store involved in the multipart upload.



=head2 B<REQUIRED> UploadId => Str

The ID for the multipart upload.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CompleteMultipartReadSetUpload in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

