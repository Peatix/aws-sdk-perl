
package Paws::OpenSearch::UpdateDirectQueryDataSource;
  use Moose;
  has DataSourceName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DataSourceName', required => 1);
  has DataSourceType => (is => 'ro', isa => 'Paws::OpenSearch::DirectQueryDataSourceType', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has OpenSearchArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDirectQueryDataSource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2021-01-01/opensearch/directQueryDataSource/{DataSourceName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearch::UpdateDirectQueryDataSourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::UpdateDirectQueryDataSource - Arguments for method UpdateDirectQueryDataSource on L<Paws::OpenSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDirectQueryDataSource on the
L<Amazon OpenSearch Service|Paws::OpenSearch> service. Use the attributes of this class
as arguments to method UpdateDirectQueryDataSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDirectQueryDataSource.

=head1 SYNOPSIS

    my $es = Paws->service('OpenSearch');
    my $UpdateDirectQueryDataSourceResponse = $es->UpdateDirectQueryDataSource(
      DataSourceName => 'MyDirectQueryDataSourceName',
      DataSourceType => {
        CloudWatchLog => {
          RoleArn => 'MyDirectQueryDataSourceRoleArn',    # min: 32, max: 200

        },    # OPTIONAL
        SecurityLake => {
          RoleArn => 'MyDirectQueryDataSourceRoleArn',    # min: 32, max: 200

        },    # OPTIONAL
      },
      OpenSearchArns => [
        'MyARN', ...    # min: 20, max: 2048
      ],
      Description => 'MyDirectQueryDataSourceDescription',    # OPTIONAL
    );

    # Results:
    my $DataSourceArn = $UpdateDirectQueryDataSourceResponse->DataSourceArn;

    # Returns a L<Paws::OpenSearch::UpdateDirectQueryDataSourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataSourceName => Str

A unique, user-defined label to identify the data source within your
OpenSearch Service environment.



=head2 B<REQUIRED> DataSourceType => L<Paws::OpenSearch::DirectQueryDataSourceType>

The supported Amazon Web Services service that you want to use as the
source for direct queries in OpenSearch Service.



=head2 Description => Str

An optional text field for providing additional context and details
about the data source.



=head2 B<REQUIRED> OpenSearchArns => ArrayRef[Str|Undef]

A list of Amazon Resource Names (ARNs) for the OpenSearch collections
that are associated with the direct query data source.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDirectQueryDataSource in L<Paws::OpenSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

