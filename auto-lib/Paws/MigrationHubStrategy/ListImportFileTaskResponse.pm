
package Paws::MigrationHubStrategy::ListImportFileTaskResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has TaskInfos => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHubStrategy::ImportFileTaskInformation]', traits => ['NameInRequest'], request_name => 'taskInfos');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubStrategy::ListImportFileTaskResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token you use to retrieve the next set of results, or null if there
are no more results.


=head2 TaskInfos => ArrayRef[L<Paws::MigrationHubStrategy::ImportFileTaskInformation>]

Lists information about the files you import.


=head2 _request_id => Str


=cut

