
package Paws::Glue::GetCatalog;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCatalog');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::GetCatalogResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetCatalog - Arguments for method GetCatalog on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCatalog on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetCatalog.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCatalog.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetCatalogResponse = $glue->GetCatalog(
      CatalogId => 'MyCatalogIdString',

    );

    # Results:
    my $Catalog = $GetCatalogResponse->Catalog;

    # Returns a L<Paws::Glue::GetCatalogResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetCatalog>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CatalogId => Str

The ID of the parent catalog in which the catalog resides. If none is
provided, the Amazon Web Services Account Number is used by default.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCatalog in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

