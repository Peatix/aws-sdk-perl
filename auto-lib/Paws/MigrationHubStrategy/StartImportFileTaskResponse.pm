
package Paws::MigrationHubStrategy::StartImportFileTaskResponse;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubStrategy::StartImportFileTaskResponse

=head1 ATTRIBUTES


=head2 Id => Str

The ID for a specific import task. The ID is unique within an AWS
account.


=head2 _request_id => Str


=cut

