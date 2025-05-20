
package Paws::BedrockAgent::GetDataSourceResponse;
  use Moose;
  has DataSource => (is => 'ro', isa => 'Paws::BedrockAgent::DataSource', traits => ['NameInRequest'], request_name => 'dataSource', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::GetDataSourceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataSource => L<Paws::BedrockAgent::DataSource>

Contains details about the data source.


=head2 _request_id => Str


=cut

