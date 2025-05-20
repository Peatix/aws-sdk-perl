
package Paws::Glue::ListEntities;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has ConnectionName => (is => 'ro', isa => 'Str');
  has DataStoreApiVersion => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has ParentEntityName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEntities');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::ListEntitiesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ListEntities - Arguments for method ListEntities on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEntities on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method ListEntities.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEntities.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $ListEntitiesResponse = $glue->ListEntities(
      CatalogId           => 'MyCatalogIdString',    # OPTIONAL
      ConnectionName      => 'MyNameString',         # OPTIONAL
      DataStoreApiVersion => 'MyApiVersion',         # OPTIONAL
      NextToken           => 'MyNextToken',          # OPTIONAL
      ParentEntityName    => 'MyEntityName',         # OPTIONAL
    );

    # Results:
    my $Entities  = $ListEntitiesResponse->Entities;
    my $NextToken = $ListEntitiesResponse->NextToken;

    # Returns a L<Paws::Glue::ListEntitiesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/ListEntities>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The catalog ID of the catalog that contains the connection. This can be
null, By default, the Amazon Web Services Account ID is the catalog ID.



=head2 ConnectionName => Str

A name for the connection that has required credentials to query any
connection type.



=head2 DataStoreApiVersion => Str

The API version of the SaaS connector.



=head2 NextToken => Str

A continuation token, included if this is a continuation call.



=head2 ParentEntityName => Str

Name of the parent entity for which you want to list the children. This
parameter takes a fully-qualified path of the entity in order to list
the child entities.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEntities in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

