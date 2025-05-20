
package Paws::MigrationHubStrategy::GetApplicationComponentDetailsResponse;
  use Moose;
  has ApplicationComponentDetail => (is => 'ro', isa => 'Paws::MigrationHubStrategy::ApplicationComponentDetail', traits => ['NameInRequest'], request_name => 'applicationComponentDetail');
  has AssociatedApplications => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHubStrategy::AssociatedApplication]', traits => ['NameInRequest'], request_name => 'associatedApplications');
  has AssociatedServerIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'associatedServerIds');
  has MoreApplicationResource => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'moreApplicationResource');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubStrategy::GetApplicationComponentDetailsResponse

=head1 ATTRIBUTES


=head2 ApplicationComponentDetail => L<Paws::MigrationHubStrategy::ApplicationComponentDetail>

Detailed information about an application component.


=head2 AssociatedApplications => ArrayRef[L<Paws::MigrationHubStrategy::AssociatedApplication>]

The associated application group as defined in AWS Application
Discovery Service.


=head2 AssociatedServerIds => ArrayRef[Str|Undef]

A list of the IDs of the servers on which the application component is
running.


=head2 MoreApplicationResource => Bool

Set to true if the application component belongs to more than one
application group.


=head2 _request_id => Str


=cut

