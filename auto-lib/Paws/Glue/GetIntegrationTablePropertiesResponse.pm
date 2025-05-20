
package Paws::Glue::GetIntegrationTablePropertiesResponse;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str');
  has SourceTableConfig => (is => 'ro', isa => 'Paws::Glue::SourceTableConfig');
  has TableName => (is => 'ro', isa => 'Str');
  has TargetTableConfig => (is => 'ro', isa => 'Paws::Glue::TargetTableConfig');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetIntegrationTablePropertiesResponse

=head1 ATTRIBUTES


=head2 ResourceArn => Str

The connection ARN of the source, or the database ARN of the target.


=head2 SourceTableConfig => L<Paws::Glue::SourceTableConfig>

A structure for the source table configuration.


=head2 TableName => Str

The name of the table to be replicated.


=head2 TargetTableConfig => L<Paws::Glue::TargetTableConfig>

A structure for the target table configuration.


=head2 _request_id => Str


=cut

1;