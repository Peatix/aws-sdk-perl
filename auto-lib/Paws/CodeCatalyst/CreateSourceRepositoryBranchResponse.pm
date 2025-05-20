
package Paws::CodeCatalyst::CreateSourceRepositoryBranchResponse;
  use Moose;
  has HeadCommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'headCommitId');
  has LastUpdatedTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedTime');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Ref => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ref');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::CreateSourceRepositoryBranchResponse

=head1 ATTRIBUTES


=head2 HeadCommitId => Str

The commit ID of the tip of the newly created branch.


=head2 LastUpdatedTime => Str

The time the branch was last updated, in coordinated universal time
(UTC) timestamp format as specified in RFC 3339
(https://www.rfc-editor.org/rfc/rfc3339#section-5.6).


=head2 Name => Str

The name of the newly created branch.


=head2 Ref => Str

The Git reference name of the branch.


=head2 _request_id => Str


=cut

