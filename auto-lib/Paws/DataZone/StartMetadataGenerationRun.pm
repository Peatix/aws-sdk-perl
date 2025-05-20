
package Paws::DataZone::StartMetadataGenerationRun;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has OwningProjectIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'owningProjectIdentifier', required => 1);
  has Target => (is => 'ro', isa => 'Paws::DataZone::MetadataGenerationRunTarget', traits => ['NameInRequest'], request_name => 'target', required => 1);
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartMetadataGenerationRun');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/metadata-generation-runs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::StartMetadataGenerationRunOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::StartMetadataGenerationRun - Arguments for method StartMetadataGenerationRun on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartMetadataGenerationRun on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method StartMetadataGenerationRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartMetadataGenerationRun.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $StartMetadataGenerationRunOutput =
      $datazone->StartMetadataGenerationRun(
      DomainIdentifier        => 'MyDomainId',
      OwningProjectIdentifier => 'MyProjectId',
      Target                  => {
        Identifier => 'MyString',
        Type       => 'ASSET',         # values: ASSET
        Revision   => 'MyRevision',    # min: 1, max: 64; OPTIONAL
      },
      Type        => 'BUSINESS_DESCRIPTIONS',
      ClientToken => 'MyClientToken',           # OPTIONAL
      );

    # Results:
    my $CreatedAt       = $StartMetadataGenerationRunOutput->CreatedAt;
    my $CreatedBy       = $StartMetadataGenerationRunOutput->CreatedBy;
    my $DomainId        = $StartMetadataGenerationRunOutput->DomainId;
    my $Id              = $StartMetadataGenerationRunOutput->Id;
    my $OwningProjectId = $StartMetadataGenerationRunOutput->OwningProjectId;
    my $Status          = $StartMetadataGenerationRunOutput->Status;
    my $Type            = $StartMetadataGenerationRunOutput->Type;

    # Returns a L<Paws::DataZone::StartMetadataGenerationRunOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/StartMetadataGenerationRun>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier to ensure idempotency of the
request. This field is automatically populated if not provided.



=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the Amazon DataZone domain where you want to start a metadata
generation run.



=head2 B<REQUIRED> OwningProjectIdentifier => Str

The ID of the project that owns the asset for which you want to start a
metadata generation run.



=head2 B<REQUIRED> Target => L<Paws::DataZone::MetadataGenerationRunTarget>

The asset for which you want to start a metadata generation run.



=head2 B<REQUIRED> Type => Str

The type of the metadata generation run.

Valid values are: C<"BUSINESS_DESCRIPTIONS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartMetadataGenerationRun in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

