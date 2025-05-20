
package Paws::QApps::UpdateQAppPermissionsOutput;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appId');
  has Permissions => (is => 'ro', isa => 'ArrayRef[Paws::QApps::PermissionOutput]', traits => ['NameInRequest'], request_name => 'permissions');
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QApps::UpdateQAppPermissionsOutput

=head1 ATTRIBUTES


=head2 AppId => Str

The unique identifier of the Amazon Q App for which permissions were
updated.


=head2 Permissions => ArrayRef[L<Paws::QApps::PermissionOutput>]

The updated list of permissions for the Amazon Q App.


=head2 ResourceArn => Str

The Amazon Resource Name (ARN) of the Amazon Q App for which
permissions were updated.


=head2 _request_id => Str


=cut

