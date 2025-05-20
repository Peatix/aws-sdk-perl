
package Paws::SSOAdmin::DescribeApplicationResponse;
  use Moose;
  has ApplicationAccount => (is => 'ro', isa => 'Str');
  has ApplicationArn => (is => 'ro', isa => 'Str');
  has ApplicationProviderArn => (is => 'ro', isa => 'Str');
  has CreatedDate => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has InstanceArn => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has PortalOptions => (is => 'ro', isa => 'Paws::SSOAdmin::PortalOptions');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::DescribeApplicationResponse

=head1 ATTRIBUTES


=head2 ApplicationAccount => Str

The account ID.


=head2 ApplicationArn => Str

Specifies the ARN of the application.


=head2 ApplicationProviderArn => Str

The ARN of the application provider under which the operation will run.


=head2 CreatedDate => Str

The date the application was created.


=head2 Description => Str

The description of the .


=head2 InstanceArn => Str

The ARN of the IAM Identity Center application under which the
operation will run. For more information about ARNs, see Amazon
Resource Names (ARNs) and Amazon Web Services Service Namespaces in the
I<Amazon Web Services General Reference>.


=head2 Name => Str

The application name.


=head2 PortalOptions => L<Paws::SSOAdmin::PortalOptions>

A structure that describes the options for the portal associated with
an application.


=head2 Status => Str

Specifies whether the application is enabled or disabled.

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 _request_id => Str


=cut

1;