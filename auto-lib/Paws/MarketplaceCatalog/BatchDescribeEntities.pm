
package Paws::MarketplaceCatalog::BatchDescribeEntities;
  use Moose;
  has EntityRequestList => (is => 'ro', isa => 'ArrayRef[Paws::MarketplaceCatalog::EntityRequest]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchDescribeEntities');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/BatchDescribeEntities');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MarketplaceCatalog::BatchDescribeEntitiesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceCatalog::BatchDescribeEntities - Arguments for method BatchDescribeEntities on L<Paws::MarketplaceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchDescribeEntities on the
L<AWS Marketplace Catalog Service|Paws::MarketplaceCatalog> service. Use the attributes of this class
as arguments to method BatchDescribeEntities.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchDescribeEntities.

=head1 SYNOPSIS

    my $catalog.marketplace = Paws->service('MarketplaceCatalog');
    my $BatchDescribeEntitiesResponse =
      $catalog . marketplace->BatchDescribeEntities(
      EntityRequestList => [
        {
          Catalog  => 'MyCatalog',     # min: 1, max: 64
          EntityId => 'MyEntityId',    # min: 1, max: 255

        },
        ...
      ],

      );

    # Results:
    my $EntityDetails = $BatchDescribeEntitiesResponse->EntityDetails;
    my $Errors        = $BatchDescribeEntitiesResponse->Errors;

  # Returns a L<Paws::MarketplaceCatalog::BatchDescribeEntitiesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/catalog.marketplace/BatchDescribeEntities>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EntityRequestList => ArrayRef[L<Paws::MarketplaceCatalog::EntityRequest>]

List of entity IDs and the catalogs the entities are present in.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchDescribeEntities in L<Paws::MarketplaceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

