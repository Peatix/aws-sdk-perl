
package Paws::QBusiness::DeleteDataSource;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has DataSourceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'dataSourceId', required => 1);
  has IndexId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'indexId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDataSource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::DeleteDataSourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::DeleteDataSource - Arguments for method DeleteDataSource on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDataSource on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method DeleteDataSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDataSource.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $DeleteDataSourceResponse = $qbusiness->DeleteDataSource(
      ApplicationId => 'MyApplicationId',
      DataSourceId  => 'MyDataSourceId',
      IndexId       => 'MyIndexId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/DeleteDataSource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The identifier of the Amazon Q Business application used with the data
source connector.



=head2 B<REQUIRED> DataSourceId => Str

The identifier of the data source connector that you want to delete.



=head2 B<REQUIRED> IndexId => Str

The identifier of the index used with the data source connector.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDataSource in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

