
package Paws::ApplicationMigration::DescribeLaunchConfigurationTemplatesResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationMigration::LaunchConfigurationTemplate]', traits => ['NameInRequest'], request_name => 'items');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::DescribeLaunchConfigurationTemplatesResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::ApplicationMigration::LaunchConfigurationTemplate>]

List of items returned by DescribeLaunchConfigurationTemplates.


=head2 NextToken => Str

Next pagination token returned from
DescribeLaunchConfigurationTemplates.


=head2 _request_id => Str


=cut

