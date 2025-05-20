
package Paws::Omics::GetReferenceMetadata;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has ReferenceStoreId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'referenceStoreId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetReferenceMetadata');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/referencestore/{referenceStoreId}/reference/{id}/metadata');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::GetReferenceMetadataResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::GetReferenceMetadata - Arguments for method GetReferenceMetadata on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetReferenceMetadata on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method GetReferenceMetadata.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetReferenceMetadata.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $GetReferenceMetadataResponse = $omics->GetReferenceMetadata(
      Id               => 'MyReferenceId',
      ReferenceStoreId => 'MyReferenceStoreId',

    );

    # Results:
    my $Arn              = $GetReferenceMetadataResponse->Arn;
    my $CreationJobId    = $GetReferenceMetadataResponse->CreationJobId;
    my $CreationTime     = $GetReferenceMetadataResponse->CreationTime;
    my $CreationType     = $GetReferenceMetadataResponse->CreationType;
    my $Description      = $GetReferenceMetadataResponse->Description;
    my $Files            = $GetReferenceMetadataResponse->Files;
    my $Id               = $GetReferenceMetadataResponse->Id;
    my $Md5              = $GetReferenceMetadataResponse->Md5;
    my $Name             = $GetReferenceMetadataResponse->Name;
    my $ReferenceStoreId = $GetReferenceMetadataResponse->ReferenceStoreId;
    my $Status           = $GetReferenceMetadataResponse->Status;
    my $UpdateTime       = $GetReferenceMetadataResponse->UpdateTime;

    # Returns a L<Paws::Omics::GetReferenceMetadataResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/GetReferenceMetadata>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The reference's ID.



=head2 B<REQUIRED> ReferenceStoreId => Str

The reference's reference store ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetReferenceMetadata in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

