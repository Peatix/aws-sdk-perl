
package Paws::Outposts::GetCatalogItem;
  use Moose;
  has CatalogItemId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'CatalogItemId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCatalogItem');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/catalog/item/{CatalogItemId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Outposts::GetCatalogItemOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::GetCatalogItem - Arguments for method GetCatalogItem on L<Paws::Outposts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCatalogItem on the
L<AWS Outposts|Paws::Outposts> service. Use the attributes of this class
as arguments to method GetCatalogItem.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCatalogItem.

=head1 SYNOPSIS

    my $outposts = Paws->service('Outposts');
    my $GetCatalogItemOutput = $outposts->GetCatalogItem(
      CatalogItemId => 'MySkuCode',

    );

    # Results:
    my $CatalogItem = $GetCatalogItemOutput->CatalogItem;

    # Returns a L<Paws::Outposts::GetCatalogItemOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/outposts/GetCatalogItem>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CatalogItemId => Str

The ID of the catalog item.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCatalogItem in L<Paws::Outposts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

