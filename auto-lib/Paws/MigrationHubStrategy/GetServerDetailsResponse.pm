
package Paws::MigrationHubStrategy::GetServerDetailsResponse;
  use Moose;
  has AssociatedApplications => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHubStrategy::AssociatedApplication]', traits => ['NameInRequest'], request_name => 'associatedApplications');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ServerDetail => (is => 'ro', isa => 'Paws::MigrationHubStrategy::ServerDetail', traits => ['NameInRequest'], request_name => 'serverDetail');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubStrategy::GetServerDetailsResponse

=head1 ATTRIBUTES


=head2 AssociatedApplications => ArrayRef[L<Paws::MigrationHubStrategy::AssociatedApplication>]

The associated application group the server belongs to, as defined in
AWS Application Discovery Service.


=head2 NextToken => Str

The token you use to retrieve the next set of results, or null if there
are no more results.


=head2 ServerDetail => L<Paws::MigrationHubStrategy::ServerDetail>

Detailed information about the server.


=head2 _request_id => Str


=cut

