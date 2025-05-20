
package Paws::QBusiness::CreateDataSourceResponse;
  use Moose;
  has DataSourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataSourceArn');
  has DataSourceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataSourceId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::CreateDataSourceResponse

=head1 ATTRIBUTES


=head2 DataSourceArn => Str

The Amazon Resource Name (ARN) of a data source in an Amazon Q Business
application.


=head2 DataSourceId => Str

The identifier of the data source connector.


=head2 _request_id => Str


=cut

