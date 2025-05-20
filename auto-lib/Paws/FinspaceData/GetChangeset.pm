
package Paws::FinspaceData::GetChangeset;
  use Moose;
  has ChangesetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'changesetId', required => 1);
  has DatasetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'datasetId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetChangeset');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/datasets/{datasetId}/changesetsv2/{changesetId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FinspaceData::GetChangesetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::GetChangeset - Arguments for method GetChangeset on L<Paws::FinspaceData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetChangeset on the
L<FinSpace Public API|Paws::FinspaceData> service. Use the attributes of this class
as arguments to method GetChangeset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetChangeset.

=head1 SYNOPSIS

    my $finspace-api = Paws->service('FinspaceData');
    my $GetChangesetResponse = $finspace -api->GetChangeset(
      ChangesetId => 'MyChangesetId',
      DatasetId   => 'MyDatasetId',

    );

    # Results:
    my $ActiveFromTimestamp  = $GetChangesetResponse->ActiveFromTimestamp;
    my $ActiveUntilTimestamp = $GetChangesetResponse->ActiveUntilTimestamp;
    my $ChangeType           = $GetChangesetResponse->ChangeType;
    my $ChangesetArn         = $GetChangesetResponse->ChangesetArn;
    my $ChangesetId          = $GetChangesetResponse->ChangesetId;
    my $CreateTime           = $GetChangesetResponse->CreateTime;
    my $DatasetId            = $GetChangesetResponse->DatasetId;
    my $ErrorInfo            = $GetChangesetResponse->ErrorInfo;
    my $FormatParams         = $GetChangesetResponse->FormatParams;
    my $SourceParams         = $GetChangesetResponse->SourceParams;
    my $Status               = $GetChangesetResponse->Status;
    my $UpdatedByChangesetId = $GetChangesetResponse->UpdatedByChangesetId;
    my $UpdatesChangesetId   = $GetChangesetResponse->UpdatesChangesetId;

    # Returns a L<Paws::FinspaceData::GetChangesetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace-api/GetChangeset>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangesetId => Str

The unique identifier of the Changeset for which to get data.



=head2 B<REQUIRED> DatasetId => Str

The unique identifier for the FinSpace Dataset where the Changeset is
created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetChangeset in L<Paws::FinspaceData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

