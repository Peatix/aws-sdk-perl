
package Paws::DataZone::CreateDataProductRevision;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has FormsInput => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::FormInput]', traits => ['NameInRequest'], request_name => 'formsInput');
  has GlossaryTerms => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'glossaryTerms');
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::DataProductItem]', traits => ['NameInRequest'], request_name => 'items');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDataProductRevision');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/data-products/{identifier}/revisions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::CreateDataProductRevisionOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::CreateDataProductRevision - Arguments for method CreateDataProductRevision on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataProductRevision on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method CreateDataProductRevision.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataProductRevision.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $CreateDataProductRevisionOutput = $datazone->CreateDataProductRevision(
      DomainIdentifier => 'MyDomainId',
      Identifier       => 'MyDataProductId',
      Name             => 'MyDataProductName',
      ClientToken      => 'MyClientToken',               # OPTIONAL
      Description      => 'MyDataProductDescription',    # OPTIONAL
      FormsInput       => [
        {
          FormName       => 'MyFormName',                # min: 1, max: 128
          Content        => 'MyFormInputContentString',  # max: 300000; OPTIONAL
          TypeIdentifier => 'MyFormTypeIdentifier', # min: 1, max: 385; OPTIONAL
          TypeRevision   => 'MyRevisionInput',      # min: 1, max: 64; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      GlossaryTerms => [ 'MyGlossaryTermId', ... ],    # OPTIONAL
      Items         => [
        {
          Identifier    => 'MyEntityIdentifier',
          ItemType      => 'ASSET',                      # values: ASSET
          GlossaryTerms => [ 'MyGlossaryTermId', ... ]
          ,                            # min: 1, max: 2; OPTIONAL
          Revision => 'MyRevision',    # min: 1, max: 64; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $CreatedAt   = $CreateDataProductRevisionOutput->CreatedAt;
    my $CreatedBy   = $CreateDataProductRevisionOutput->CreatedBy;
    my $Description = $CreateDataProductRevisionOutput->Description;
    my $DomainId    = $CreateDataProductRevisionOutput->DomainId;
    my $FirstRevisionCreatedAt =
      $CreateDataProductRevisionOutput->FirstRevisionCreatedAt;
    my $FirstRevisionCreatedBy =
      $CreateDataProductRevisionOutput->FirstRevisionCreatedBy;
    my $FormsOutput     = $CreateDataProductRevisionOutput->FormsOutput;
    my $GlossaryTerms   = $CreateDataProductRevisionOutput->GlossaryTerms;
    my $Id              = $CreateDataProductRevisionOutput->Id;
    my $Items           = $CreateDataProductRevisionOutput->Items;
    my $Name            = $CreateDataProductRevisionOutput->Name;
    my $OwningProjectId = $CreateDataProductRevisionOutput->OwningProjectId;
    my $Revision        = $CreateDataProductRevisionOutput->Revision;
    my $Status          = $CreateDataProductRevisionOutput->Status;

    # Returns a L<Paws::DataZone::CreateDataProductRevisionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/CreateDataProductRevision>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that is provided to ensure the
idempotency of the request.



=head2 Description => Str

The description of the data product revision.



=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the domain where the data product revision is created.



=head2 FormsInput => ArrayRef[L<Paws::DataZone::FormInput>]

The metadata forms of the data product revision.



=head2 GlossaryTerms => ArrayRef[Str|Undef]

The glossary terms of the data product revision.



=head2 B<REQUIRED> Identifier => Str

The ID of the data product revision.



=head2 Items => ArrayRef[L<Paws::DataZone::DataProductItem>]

The data assets of the data product revision.



=head2 B<REQUIRED> Name => Str

The name of the data product revision.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataProductRevision in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

