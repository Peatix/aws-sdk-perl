
package Paws::ResourceGroups::StartTagSyncTaskOutput;
  use Moose;
  has GroupArn => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str');
  has ResourceQuery => (is => 'ro', isa => 'Paws::ResourceGroups::ResourceQuery');
  has RoleArn => (is => 'ro', isa => 'Str');
  has TagKey => (is => 'ro', isa => 'Str');
  has TagValue => (is => 'ro', isa => 'Str');
  has TaskArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::StartTagSyncTaskOutput

=head1 ATTRIBUTES


=head2 GroupArn => Str

The Amazon resource name (ARN) of the application group for which you
want to add or remove resources.


=head2 GroupName => Str

The name of the application group to onboard and sync resources.


=head2 ResourceQuery => L<Paws::ResourceGroups::ResourceQuery>




=head2 RoleArn => Str

The Amazon resource name (ARN) of the role assumed by the service to
tag and untag resources on your behalf.


=head2 TagKey => Str

The tag key of the tag-sync task.


=head2 TagValue => Str

The tag value of the tag-sync task.


=head2 TaskArn => Str

The Amazon resource name (ARN) of the new tag-sync task.


=head2 _request_id => Str


=cut

