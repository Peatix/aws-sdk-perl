
package Paws::Omics::GetSequenceStore;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSequenceStore');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sequencestore/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::GetSequenceStoreResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::GetSequenceStore - Arguments for method GetSequenceStore on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSequenceStore on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method GetSequenceStore.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSequenceStore.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $GetSequenceStoreResponse = $omics->GetSequenceStore(
      Id => 'MySequenceStoreId',

    );

    # Results:
    my $Arn                 = $GetSequenceStoreResponse->Arn;
    my $CreationTime        = $GetSequenceStoreResponse->CreationTime;
    my $Description         = $GetSequenceStoreResponse->Description;
    my $ETagAlgorithmFamily = $GetSequenceStoreResponse->ETagAlgorithmFamily;
    my $FallbackLocation    = $GetSequenceStoreResponse->FallbackLocation;
    my $Id                  = $GetSequenceStoreResponse->Id;
    my $Name                = $GetSequenceStoreResponse->Name;
    my $PropagatedSetLevelTags =
      $GetSequenceStoreResponse->PropagatedSetLevelTags;
    my $S3Access      = $GetSequenceStoreResponse->S3Access;
    my $SseConfig     = $GetSequenceStoreResponse->SseConfig;
    my $Status        = $GetSequenceStoreResponse->Status;
    my $StatusMessage = $GetSequenceStoreResponse->StatusMessage;
    my $UpdateTime    = $GetSequenceStoreResponse->UpdateTime;

    # Returns a L<Paws::Omics::GetSequenceStoreResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/GetSequenceStore>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The store's ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSequenceStore in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

