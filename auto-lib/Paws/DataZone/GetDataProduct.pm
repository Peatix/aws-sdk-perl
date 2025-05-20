
package Paws::DataZone::GetDataProduct;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);
  has Revision => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'revision');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDataProduct');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/data-products/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::GetDataProductOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetDataProduct - Arguments for method GetDataProduct on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDataProduct on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method GetDataProduct.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDataProduct.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $GetDataProductOutput = $datazone->GetDataProduct(
      DomainIdentifier => 'MyDomainId',
      Identifier       => 'MyDataProductId',
      Revision         => 'MyRevision',        # OPTIONAL
    );

    # Results:
    my $CreatedAt              = $GetDataProductOutput->CreatedAt;
    my $CreatedBy              = $GetDataProductOutput->CreatedBy;
    my $Description            = $GetDataProductOutput->Description;
    my $DomainId               = $GetDataProductOutput->DomainId;
    my $FirstRevisionCreatedAt = $GetDataProductOutput->FirstRevisionCreatedAt;
    my $FirstRevisionCreatedBy = $GetDataProductOutput->FirstRevisionCreatedBy;
    my $FormsOutput            = $GetDataProductOutput->FormsOutput;
    my $GlossaryTerms          = $GetDataProductOutput->GlossaryTerms;
    my $Id                     = $GetDataProductOutput->Id;
    my $Items                  = $GetDataProductOutput->Items;
    my $Name                   = $GetDataProductOutput->Name;
    my $OwningProjectId        = $GetDataProductOutput->OwningProjectId;
    my $Revision               = $GetDataProductOutput->Revision;
    my $Status                 = $GetDataProductOutput->Status;

    # Returns a L<Paws::DataZone::GetDataProductOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/GetDataProduct>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the domain where the data product lives.



=head2 B<REQUIRED> Identifier => Str

The ID of the data product.



=head2 Revision => Str

The revision of the data product.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDataProduct in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

