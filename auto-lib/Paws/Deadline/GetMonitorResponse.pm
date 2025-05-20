
package Paws::Deadline::GetMonitorResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt', required => 1);
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy', required => 1);
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName', required => 1);
  has IdentityCenterApplicationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identityCenterApplicationArn', required => 1);
  has IdentityCenterInstanceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identityCenterInstanceArn', required => 1);
  has MonitorId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'monitorId', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has Subdomain => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'subdomain', required => 1);
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');
  has UpdatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedBy');
  has Url => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'url', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::GetMonitorResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedAt => Str

The UNIX timestamp of the date and time that the monitor was created.


=head2 B<REQUIRED> CreatedBy => Str

The user name of the person that created the monitor.


=head2 B<REQUIRED> DisplayName => Str

The name used to identify the monitor on the Deadline Cloud console.

This field can store any content. Escape or encode this content before
displaying it on a webpage or any other system that might interpret the
content of this field.


=head2 B<REQUIRED> IdentityCenterApplicationArn => Str

The Amazon Resource Name (ARN) that the IAM Identity Center assigned to
the monitor when it was created.


=head2 B<REQUIRED> IdentityCenterInstanceArn => Str

The Amazon Resource Name (ARN) of the IAM Identity Center instance
responsible for authenticating monitor users.


=head2 B<REQUIRED> MonitorId => Str

The unique identifier for the monitor.


=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role for the monitor. Users
of the monitor use this role to access Deadline Cloud resources.


=head2 B<REQUIRED> Subdomain => Str

The subdomain used for the monitor URL. The full URL of the monitor is
subdomain.Region.deadlinecloud.amazonaws.com.


=head2 UpdatedAt => Str

The UNIX timestamp of the last date and time that the monitor was
updated.


=head2 UpdatedBy => Str

The user name of the person that last updated the monitor.


=head2 B<REQUIRED> Url => Str

The complete URL of the monitor. The full URL of the monitor is
subdomain.Region.deadlinecloud.amazonaws.com.


=head2 _request_id => Str


=cut

