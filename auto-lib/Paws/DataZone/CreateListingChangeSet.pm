
package Paws::DataZone::CreateListingChangeSet;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'action', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has EntityIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'entityIdentifier', required => 1);
  has EntityRevision => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'entityRevision');
  has EntityType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'entityType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateListingChangeSet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/listings/change-set');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::CreateListingChangeSetOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::CreateListingChangeSet - Arguments for method CreateListingChangeSet on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateListingChangeSet on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method CreateListingChangeSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateListingChangeSet.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $CreateListingChangeSetOutput = $datazone->CreateListingChangeSet(
      Action           => 'PUBLISH',
      DomainIdentifier => 'MyDomainId',
      EntityIdentifier => 'MyEntityIdentifier',
      EntityType       => 'ASSET',
      ClientToken      => 'MyClientToken',        # OPTIONAL
      EntityRevision   => 'MyRevision',           # OPTIONAL
    );

    # Results:
    my $ListingId       = $CreateListingChangeSetOutput->ListingId;
    my $ListingRevision = $CreateListingChangeSetOutput->ListingRevision;
    my $Status          = $CreateListingChangeSetOutput->Status;

    # Returns a L<Paws::DataZone::CreateListingChangeSetOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/CreateListingChangeSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => Str

Specifies whether to publish or unpublish a listing.

Valid values are: C<"PUBLISH">, C<"UNPUBLISH">

=head2 ClientToken => Str

A unique, case-sensitive identifier that is provided to ensure the
idempotency of the request.



=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the Amazon DataZone domain.



=head2 B<REQUIRED> EntityIdentifier => Str

The ID of the asset.



=head2 EntityRevision => Str

The revision of an asset.



=head2 B<REQUIRED> EntityType => Str

The type of an entity.

Valid values are: C<"ASSET">, C<"DATA_PRODUCT">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateListingChangeSet in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

