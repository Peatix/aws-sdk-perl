
package Paws::Omics::GetReadSetMetadata;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has SequenceStoreId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sequenceStoreId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetReadSetMetadata');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sequencestore/{sequenceStoreId}/readset/{id}/metadata');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::GetReadSetMetadataResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::GetReadSetMetadata - Arguments for method GetReadSetMetadata on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetReadSetMetadata on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method GetReadSetMetadata.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetReadSetMetadata.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $GetReadSetMetadataResponse = $omics->GetReadSetMetadata(
      Id              => 'MyReadSetId',
      SequenceStoreId => 'MySequenceStoreId',

    );

    # Results:
    my $Arn                 = $GetReadSetMetadataResponse->Arn;
    my $CreationJobId       = $GetReadSetMetadataResponse->CreationJobId;
    my $CreationTime        = $GetReadSetMetadataResponse->CreationTime;
    my $CreationType        = $GetReadSetMetadataResponse->CreationType;
    my $Description         = $GetReadSetMetadataResponse->Description;
    my $Etag                = $GetReadSetMetadataResponse->Etag;
    my $FileType            = $GetReadSetMetadataResponse->FileType;
    my $Files               = $GetReadSetMetadataResponse->Files;
    my $Id                  = $GetReadSetMetadataResponse->Id;
    my $Name                = $GetReadSetMetadataResponse->Name;
    my $ReferenceArn        = $GetReadSetMetadataResponse->ReferenceArn;
    my $SampleId            = $GetReadSetMetadataResponse->SampleId;
    my $SequenceInformation = $GetReadSetMetadataResponse->SequenceInformation;
    my $SequenceStoreId     = $GetReadSetMetadataResponse->SequenceStoreId;
    my $Status              = $GetReadSetMetadataResponse->Status;
    my $StatusMessage       = $GetReadSetMetadataResponse->StatusMessage;
    my $SubjectId           = $GetReadSetMetadataResponse->SubjectId;

    # Returns a L<Paws::Omics::GetReadSetMetadataResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/GetReadSetMetadata>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The read set's ID.



=head2 B<REQUIRED> SequenceStoreId => Str

The read set's sequence store ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetReadSetMetadata in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

