
package Paws::ResourceGroups::GetTagSyncTaskOutput;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has GroupArn => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str');
  has ResourceQuery => (is => 'ro', isa => 'Paws::ResourceGroups::ResourceQuery');
  has RoleArn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TagKey => (is => 'ro', isa => 'Str');
  has TagValue => (is => 'ro', isa => 'Str');
  has TaskArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::GetTagSyncTaskOutput

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The timestamp of when the tag-sync task was created.


=head2 ErrorMessage => Str

The specific error message in cases where the tag-sync task status is
C<ERROR>.


=head2 GroupArn => Str

The Amazon resource name (ARN) of the application group.


=head2 GroupName => Str

The name of the application group.


=head2 ResourceQuery => L<Paws::ResourceGroups::ResourceQuery>




=head2 RoleArn => Str

The Amazon resource name (ARN) of the role assumed by Resource Groups
to tag and untag resources on your behalf.

For more information about this role, review Tag-sync required
permissions
(https://docs.aws.amazon.com/servicecatalog/latest/arguide/app-tag-sync.html#tag-sync-role).


=head2 Status => Str

The status of the tag-sync task.

Valid values include:

=over

=item *

C<ACTIVE> - The tag-sync task is actively managing resources in the
application by adding or removing the C<awsApplication> tag from
resources when they are tagged or untagged with the specified tag
key-value pair.

=item *

C<ERROR> - The tag-sync task is not actively managing resources in the
application. Review the C<ErrorMessage> for more information about
resolving the error.

=back


Valid values are: C<"ACTIVE">, C<"ERROR">
=head2 TagKey => Str

The tag key.


=head2 TagValue => Str

The tag value.


=head2 TaskArn => Str

The Amazon resource name (ARN) of the tag-sync task.


=head2 _request_id => Str


=cut

