
package Paws::CustomerProfiles::GetSegmentSnapshot;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has SegmentDefinitionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'SegmentDefinitionName', required => 1);
  has SnapshotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'SnapshotId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSegmentSnapshot');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{DomainName}/segments/{SegmentDefinitionName}/snapshots/{SnapshotId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CustomerProfiles::GetSegmentSnapshotResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::GetSegmentSnapshot - Arguments for method GetSegmentSnapshot on L<Paws::CustomerProfiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSegmentSnapshot on the
L<Amazon Connect Customer Profiles|Paws::CustomerProfiles> service. Use the attributes of this class
as arguments to method GetSegmentSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSegmentSnapshot.

=head1 SYNOPSIS

    my $profile = Paws->service('CustomerProfiles');
    my $GetSegmentSnapshotResponse = $profile->GetSegmentSnapshot(
      DomainName            => 'Myname',
      SegmentDefinitionName => 'Myname',
      SnapshotId            => 'Myuuid',

    );

    # Results:
    my $DataFormat     = $GetSegmentSnapshotResponse->DataFormat;
    my $DestinationUri = $GetSegmentSnapshotResponse->DestinationUri;
    my $EncryptionKey  = $GetSegmentSnapshotResponse->EncryptionKey;
    my $RoleArn        = $GetSegmentSnapshotResponse->RoleArn;
    my $SnapshotId     = $GetSegmentSnapshotResponse->SnapshotId;
    my $Status         = $GetSegmentSnapshotResponse->Status;
    my $StatusMessage  = $GetSegmentSnapshotResponse->StatusMessage;

    # Returns a L<Paws::CustomerProfiles::GetSegmentSnapshotResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/profile/GetSegmentSnapshot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The unique identifier of the domain.



=head2 B<REQUIRED> SegmentDefinitionName => Str

The unique name of the segment definition.



=head2 B<REQUIRED> SnapshotId => Str

The unique identifier of the segment snapshot.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSegmentSnapshot in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

