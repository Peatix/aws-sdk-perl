
package Paws::Omics::UploadReadSetPart;
  use Moose;
  has PartNumber => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'partNumber', required => 1);
  has PartSource => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'partSource', required => 1);
  has Payload => (is => 'ro', isa => 'Str', traits => ['ParamInBody'], required => 1);
  has SequenceStoreId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sequenceStoreId', required => 1);
  has UploadId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'uploadId', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Payload');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UploadReadSetPart');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sequencestore/{sequenceStoreId}/upload/{uploadId}/part');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::UploadReadSetPartResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::UploadReadSetPart - Arguments for method UploadReadSetPart on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UploadReadSetPart on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method UploadReadSetPart.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UploadReadSetPart.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $UploadReadSetPartResponse = $omics->UploadReadSetPart(
      PartNumber      => 1,
      PartSource      => 'SOURCE1',
      Payload         => 'BlobReadSetPartStreamingBlob',
      SequenceStoreId => 'MySequenceStoreId',
      UploadId        => 'MyUploadId',

    );

    # Results:
    my $Checksum = $UploadReadSetPartResponse->Checksum;

    # Returns a L<Paws::Omics::UploadReadSetPartResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/UploadReadSetPart>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PartNumber => Int

The number of the part being uploaded.



=head2 B<REQUIRED> PartSource => Str

The source file for an upload part.

Valid values are: C<"SOURCE1">, C<"SOURCE2">

=head2 B<REQUIRED> Payload => Str

The read set data to upload for a part.



=head2 B<REQUIRED> SequenceStoreId => Str

The Sequence Store ID used for the multipart upload.



=head2 B<REQUIRED> UploadId => Str

The ID for the initiated multipart upload.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UploadReadSetPart in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

