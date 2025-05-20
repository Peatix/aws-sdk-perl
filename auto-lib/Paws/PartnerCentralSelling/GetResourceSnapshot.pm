
package Paws::PartnerCentralSelling::GetResourceSnapshot;
  use Moose;
  has Catalog => (is => 'ro', isa => 'Str', required => 1);
  has EngagementIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has ResourceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has ResourceSnapshotTemplateIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);
  has Revision => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetResourceSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PartnerCentralSelling::GetResourceSnapshotResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::GetResourceSnapshot - Arguments for method GetResourceSnapshot on L<Paws::PartnerCentralSelling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetResourceSnapshot on the
L<Partner Central Selling API|Paws::PartnerCentralSelling> service. Use the attributes of this class
as arguments to method GetResourceSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetResourceSnapshot.

=head1 SYNOPSIS

    my $partnercentral-selling = Paws->service('PartnerCentralSelling');
    my $GetResourceSnapshotResponse =
      $partnercentral -selling->GetResourceSnapshot(
      Catalog                            => 'MyCatalogIdentifier',
      EngagementIdentifier               => 'MyEngagementIdentifier',
      ResourceIdentifier                 => 'MyResourceIdentifier',
      ResourceSnapshotTemplateIdentifier => 'MyResourceTemplateName',
      ResourceType                       => 'Opportunity',
      Revision                           => 1,                        # OPTIONAL
      );

    # Results:
    my $Arn          = $GetResourceSnapshotResponse->Arn;
    my $Catalog      = $GetResourceSnapshotResponse->Catalog;
    my $CreatedAt    = $GetResourceSnapshotResponse->CreatedAt;
    my $CreatedBy    = $GetResourceSnapshotResponse->CreatedBy;
    my $EngagementId = $GetResourceSnapshotResponse->EngagementId;
    my $Payload      = $GetResourceSnapshotResponse->Payload;
    my $ResourceId   = $GetResourceSnapshotResponse->ResourceId;
    my $ResourceSnapshotTemplateName =
      $GetResourceSnapshotResponse->ResourceSnapshotTemplateName;
    my $ResourceType = $GetResourceSnapshotResponse->ResourceType;
    my $Revision     = $GetResourceSnapshotResponse->Revision;

 # Returns a L<Paws::PartnerCentralSelling::GetResourceSnapshotResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling/GetResourceSnapshot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Catalog => Str

Specifies the catalog related to the request. Valid values are:

=over

=item *

AWS: Retrieves the snapshot from the production AWS environment.

=item *

Sandbox: Retrieves the snapshot from a sandbox environment used for
testing or development purposes.

=back




=head2 B<REQUIRED> EngagementIdentifier => Str

The unique identifier of the engagement associated with the snapshot.
This field links the snapshot to a specific engagement context.



=head2 B<REQUIRED> ResourceIdentifier => Str

The unique identifier of the specific resource that was snapshotted.
The format and constraints of this identifier depend on the
ResourceType specified. For C<Opportunity> type, it will be an
C<opportunity ID>



=head2 B<REQUIRED> ResourceSnapshotTemplateIdentifier => Str

he name of the template that defines the schema for the snapshot. This
template determines which subset of the resource data is included in
the snapshot and must correspond to an existing and valid template for
the specified C<ResourceType>.



=head2 B<REQUIRED> ResourceType => Str

Specifies the type of resource that was snapshotted. This field
determines the structure and content of the snapshot payload. Valid
value includes:C<Opportunity>: For opportunity-related data.

Valid values are: C<"Opportunity">

=head2 Revision => Int

Specifies which revision of the snapshot to retrieve. If omitted
returns the latest revision.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetResourceSnapshot in L<Paws::PartnerCentralSelling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

