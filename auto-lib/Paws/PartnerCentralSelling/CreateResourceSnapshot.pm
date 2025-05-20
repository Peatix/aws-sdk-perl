
package Paws::PartnerCentralSelling::CreateResourceSnapshot;
  use Moose;
  has Catalog => (is => 'ro', isa => 'Str', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has EngagementIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has ResourceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has ResourceSnapshotTemplateIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateResourceSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PartnerCentralSelling::CreateResourceSnapshotResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::CreateResourceSnapshot - Arguments for method CreateResourceSnapshot on L<Paws::PartnerCentralSelling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateResourceSnapshot on the
L<Partner Central Selling API|Paws::PartnerCentralSelling> service. Use the attributes of this class
as arguments to method CreateResourceSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateResourceSnapshot.

=head1 SYNOPSIS

    my $partnercentral-selling = Paws->service('PartnerCentralSelling');
    my $CreateResourceSnapshotResponse =
      $partnercentral -selling->CreateResourceSnapshot(
      Catalog     => 'MyCatalogIdentifier',
      ClientToken => 'MyCreateResourceSnapshotRequestClientTokenString',
      EngagementIdentifier               => 'MyEngagementIdentifier',
      ResourceIdentifier                 => 'MyResourceIdentifier',
      ResourceSnapshotTemplateIdentifier => 'MyResourceTemplateName',
      ResourceType                       => 'Opportunity',

      );

    # Results:
    my $Arn      = $CreateResourceSnapshotResponse->Arn;
    my $Revision = $CreateResourceSnapshotResponse->Revision;

# Returns a L<Paws::PartnerCentralSelling::CreateResourceSnapshotResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling/CreateResourceSnapshot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Catalog => Str

Specifies the catalog where the snapshot is created. Valid values are
C<AWS> and C<Sandbox>.



=head2 B<REQUIRED> ClientToken => Str

Specifies a unique, client-generated UUID to ensure that the request is
handled exactly once. This token helps prevent duplicate snapshot
creations.



=head2 B<REQUIRED> EngagementIdentifier => Str

The unique identifier of the engagement associated with this snapshot.
This field links the snapshot to a specific engagement context.



=head2 B<REQUIRED> ResourceIdentifier => Str

The unique identifier of the specific resource to be snapshotted. The
format and constraints of this identifier depend on the C<ResourceType>
specified. For example: For C<Opportunity> type, it will be an
opportunity ID.



=head2 B<REQUIRED> ResourceSnapshotTemplateIdentifier => Str

The name of the template that defines the schema for the snapshot. This
template determines which subset of the resource data will be included
in the snapshot. Must correspond to an existing and valid template for
the specified C<ResourceType>.



=head2 B<REQUIRED> ResourceType => Str

Specifies the type of resource for which the snapshot is being created.
This field determines the structure and content of the snapshot. Must
be one of the supported resource types, such as: C<Opportunity>.

Valid values are: C<"Opportunity">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateResourceSnapshot in L<Paws::PartnerCentralSelling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

