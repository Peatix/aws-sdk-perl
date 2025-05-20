
package Paws::Athena::DeleteDataCatalog;
  use Moose;
  has DeleteCatalogOnly => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDataCatalog');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Athena::DeleteDataCatalogOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::DeleteDataCatalog - Arguments for method DeleteDataCatalog on L<Paws::Athena>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDataCatalog on the
L<Amazon Athena|Paws::Athena> service. Use the attributes of this class
as arguments to method DeleteDataCatalog.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDataCatalog.

=head1 SYNOPSIS

    my $athena = Paws->service('Athena');
    my $DeleteDataCatalogOutput = $athena->DeleteDataCatalog(
      Name              => 'MyCatalogNameString',
      DeleteCatalogOnly => 1,                       # OPTIONAL
    );

    # Results:
    my $DataCatalog = $DeleteDataCatalogOutput->DataCatalog;

    # Returns a L<Paws::Athena::DeleteDataCatalogOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/athena/DeleteDataCatalog>

=head1 ATTRIBUTES


=head2 DeleteCatalogOnly => Bool

Deletes the Athena Data Catalog. You can only use this with the
C<FEDERATED> catalogs. You usually perform this before registering the
connector with Glue Data Catalog. After deletion, you will have to
manage the Glue Connection and Lambda function.



=head2 B<REQUIRED> Name => Str

The name of the data catalog to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDataCatalog in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

