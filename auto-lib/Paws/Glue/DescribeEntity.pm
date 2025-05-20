
package Paws::Glue::DescribeEntity;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has ConnectionName => (is => 'ro', isa => 'Str', required => 1);
  has DataStoreApiVersion => (is => 'ro', isa => 'Str');
  has EntityName => (is => 'ro', isa => 'Str', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEntity');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::DescribeEntityResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::DescribeEntity - Arguments for method DescribeEntity on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEntity on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method DescribeEntity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEntity.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $DescribeEntityResponse = $glue->DescribeEntity(
      ConnectionName      => 'MyNameString',
      EntityName          => 'MyEntityName',
      CatalogId           => 'MyCatalogIdString',    # OPTIONAL
      DataStoreApiVersion => 'MyApiVersion',         # OPTIONAL
      NextToken           => 'MyNextToken',          # OPTIONAL
    );

    # Results:
    my $Fields    = $DescribeEntityResponse->Fields;
    my $NextToken = $DescribeEntityResponse->NextToken;

    # Returns a L<Paws::Glue::DescribeEntityResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/DescribeEntity>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The catalog ID of the catalog that contains the connection. This can be
null, By default, the Amazon Web Services Account ID is the catalog ID.



=head2 B<REQUIRED> ConnectionName => Str

The name of the connection that contains the connection type
credentials.



=head2 DataStoreApiVersion => Str

The version of the API used for the data store.



=head2 B<REQUIRED> EntityName => Str

The name of the entity that you want to describe from the connection
type.



=head2 NextToken => Str

A continuation token, included if this is a continuation call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEntity in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

