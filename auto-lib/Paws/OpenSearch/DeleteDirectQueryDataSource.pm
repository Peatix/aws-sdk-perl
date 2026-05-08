
package Paws::OpenSearch::DeleteDirectQueryDataSource;
  use Moose;
  has DataSourceName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DataSourceName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDirectQueryDataSource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2021-01-01/opensearch/directQueryDataSource/{DataSourceName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::DeleteDirectQueryDataSource - Arguments for method DeleteDirectQueryDataSource on L<Paws::OpenSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDirectQueryDataSource on the
L<Amazon OpenSearch Service|Paws::OpenSearch> service. Use the attributes of this class
as arguments to method DeleteDirectQueryDataSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDirectQueryDataSource.

=head1 SYNOPSIS

    my $es = Paws->service('OpenSearch');
    $es->DeleteDirectQueryDataSource(
      DataSourceName => 'MyDirectQueryDataSourceName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataSourceName => Str

A unique, user-defined label to identify the data source within your
OpenSearch Service environment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDirectQueryDataSource in L<Paws::OpenSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

