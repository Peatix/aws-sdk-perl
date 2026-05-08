
package Paws::OpenSearch::GetDataSource;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DataSourceName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDataSource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2021-01-01/opensearch/domain/{DomainName}/dataSource/{DataSourceName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearch::GetDataSourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::GetDataSource - Arguments for method GetDataSource on L<Paws::OpenSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDataSource on the
L<Amazon OpenSearch Service|Paws::OpenSearch> service. Use the attributes of this class
as arguments to method GetDataSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDataSource.

=head1 SYNOPSIS

    my $es = Paws->service('OpenSearch');
    my $GetDataSourceResponse = $es->GetDataSource(
      DomainName => 'MyDomainName',
      Name       => 'MyDataSourceName',

    );

    # Results:
    my $DataSourceType = $GetDataSourceResponse->DataSourceType;
    my $Description    = $GetDataSourceResponse->Description;
    my $Name           = $GetDataSourceResponse->Name;
    my $Status         = $GetDataSourceResponse->Status;

    # Returns a L<Paws::OpenSearch::GetDataSourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The name of the domain.



=head2 B<REQUIRED> Name => Str

The name of the data source to get information about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDataSource in L<Paws::OpenSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

