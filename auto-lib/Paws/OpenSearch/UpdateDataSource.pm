
package Paws::OpenSearch::UpdateDataSource;
  use Moose;
  has DataSourceType => (is => 'ro', isa => 'Paws::OpenSearch::DataSourceType', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DataSourceName', required => 1);
  has Status => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDataSource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2021-01-01/opensearch/domain/{DomainName}/dataSource/{DataSourceName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearch::UpdateDataSourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::UpdateDataSource - Arguments for method UpdateDataSource on L<Paws::OpenSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDataSource on the
L<Amazon OpenSearch Service|Paws::OpenSearch> service. Use the attributes of this class
as arguments to method UpdateDataSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDataSource.

=head1 SYNOPSIS

    my $es = Paws->service('OpenSearch');
    my $UpdateDataSourceResponse = $es->UpdateDataSource(
      DataSourceType => {
        S3GlueDataCatalog => {
          RoleArn => 'MyRoleArn',    # min: 20, max: 2048; OPTIONAL
        },    # OPTIONAL
      },
      DomainName  => 'MyDomainName',
      Name        => 'MyDataSourceName',
      Description => 'MyDataSourceDescription',    # OPTIONAL
      Status      => 'ACTIVE',                     # OPTIONAL
    );

    # Results:
    my $Message = $UpdateDataSourceResponse->Message;

    # Returns a L<Paws::OpenSearch::UpdateDataSourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataSourceType => L<Paws::OpenSearch::DataSourceType>

The type of data source.



=head2 Description => Str

A new description of the data source.



=head2 B<REQUIRED> DomainName => Str

The name of the domain.



=head2 B<REQUIRED> Name => Str

The name of the data source to modify.



=head2 Status => Str

The status of the data source update.

Valid values are: C<"ACTIVE">, C<"DISABLED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDataSource in L<Paws::OpenSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

