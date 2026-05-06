
package Paws::OpenSearch::AddDataSource;
  use Moose;
  has DataSourceType => (is => 'ro', isa => 'Paws::OpenSearch::DataSourceType', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddDataSource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2021-01-01/opensearch/domain/{DomainName}/dataSource');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearch::AddDataSourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::AddDataSource - Arguments for method AddDataSource on L<Paws::OpenSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddDataSource on the
L<Amazon OpenSearch Service|Paws::OpenSearch> service. Use the attributes of this class
as arguments to method AddDataSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddDataSource.

=head1 SYNOPSIS

    my $es = Paws->service('OpenSearch');
    my $AddDataSourceResponse = $es->AddDataSource(
      DataSourceType => {
        S3GlueDataCatalog => {
          RoleArn => 'MyRoleArn',    # min: 20, max: 2048; OPTIONAL
        },    # OPTIONAL
      },
      DomainName  => 'MyDomainName',
      Name        => 'MyDataSourceName',
      Description => 'MyDataSourceDescription',    # OPTIONAL
    );

    # Results:
    my $Message = $AddDataSourceResponse->Message;

    # Returns a L<Paws::OpenSearch::AddDataSourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataSourceType => L<Paws::OpenSearch::DataSourceType>

The type of data source.



=head2 Description => Str

A description of the data source.



=head2 B<REQUIRED> DomainName => Str

The name of the domain to add the data source to.



=head2 B<REQUIRED> Name => Str

A name for the data source.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddDataSource in L<Paws::OpenSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

