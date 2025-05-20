
package Paws::DataZone::CreateDataProduct;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has FormsInput => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::FormInput]', traits => ['NameInRequest'], request_name => 'formsInput');
  has GlossaryTerms => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'glossaryTerms');
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::DataProductItem]', traits => ['NameInRequest'], request_name => 'items');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has OwningProjectIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'owningProjectIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDataProduct');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/data-products');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::CreateDataProductOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::CreateDataProduct - Arguments for method CreateDataProduct on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataProduct on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method CreateDataProduct.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataProduct.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $CreateDataProductOutput = $datazone->CreateDataProduct(
      DomainIdentifier        => 'MyDomainId',
      Name                    => 'MyDataProductName',
      OwningProjectIdentifier => 'MyProjectId',
      ClientToken             => 'MyClientToken',               # OPTIONAL
      Description             => 'MyDataProductDescription',    # OPTIONAL
      FormsInput              => [
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
    my $CreatedAt   = $CreateDataProductOutput->CreatedAt;
    my $CreatedBy   = $CreateDataProductOutput->CreatedBy;
    my $Description = $CreateDataProductOutput->Description;
    my $DomainId    = $CreateDataProductOutput->DomainId;
    my $FirstRevisionCreatedAt =
      $CreateDataProductOutput->FirstRevisionCreatedAt;
    my $FirstRevisionCreatedBy =
      $CreateDataProductOutput->FirstRevisionCreatedBy;
    my $FormsOutput     = $CreateDataProductOutput->FormsOutput;
    my $GlossaryTerms   = $CreateDataProductOutput->GlossaryTerms;
    my $Id              = $CreateDataProductOutput->Id;
    my $Items           = $CreateDataProductOutput->Items;
    my $Name            = $CreateDataProductOutput->Name;
    my $OwningProjectId = $CreateDataProductOutput->OwningProjectId;
    my $Revision        = $CreateDataProductOutput->Revision;
    my $Status          = $CreateDataProductOutput->Status;

    # Returns a L<Paws::DataZone::CreateDataProductOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/CreateDataProduct>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that is provided to ensure the
idempotency of the request.



=head2 Description => Str

The description of the data product.



=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the domain where the data product is created.



=head2 FormsInput => ArrayRef[L<Paws::DataZone::FormInput>]

The metadata forms of the data product.



=head2 GlossaryTerms => ArrayRef[Str|Undef]

The glossary terms of the data product.



=head2 Items => ArrayRef[L<Paws::DataZone::DataProductItem>]

The data assets of the data product.



=head2 B<REQUIRED> Name => Str

The name of the data product.



=head2 B<REQUIRED> OwningProjectIdentifier => Str

The ID of the owning project of the data product.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataProduct in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

