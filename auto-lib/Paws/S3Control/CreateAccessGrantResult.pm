
package Paws::S3Control::CreateAccessGrantResult;
  use Moose;
  has AccessGrantArn => (is => 'ro', isa => 'Str');
  has AccessGrantId => (is => 'ro', isa => 'Str');
  has AccessGrantsLocationConfiguration => (is => 'ro', isa => 'Paws::S3Control::AccessGrantsLocationConfiguration');
  has AccessGrantsLocationId => (is => 'ro', isa => 'Str');
  has ApplicationArn => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Grantee => (is => 'ro', isa => 'Paws::S3Control::Grantee');
  has GrantScope => (is => 'ro', isa => 'Str');
  has Permission => (is => 'ro', isa => 'Str');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::CreateAccessGrantResult

=head1 ATTRIBUTES


=head2 AccessGrantArn => Str

The Amazon Resource Name (ARN) of the access grant.



=head2 AccessGrantId => Str

The ID of the access grant. S3 Access Grants auto-generates this ID
when you create the access grant.



=head2 AccessGrantsLocationConfiguration => L<Paws::S3Control::AccessGrantsLocationConfiguration>

The configuration options of the grant location. The grant location is
the S3 path to the data to which you are granting access.



=head2 AccessGrantsLocationId => Str

The ID of the registered location to which you are granting access. S3
Access Grants assigns this ID when you register the location. S3 Access
Grants assigns the ID C<default> to the default location C<s3://> and
assigns an auto-generated ID to other locations that you register.



=head2 ApplicationArn => Str

The Amazon Resource Name (ARN) of an Amazon Web Services IAM Identity
Center application associated with your Identity Center instance. If
the grant includes an application ARN, the grantee can only access the
S3 data through this application.



=head2 CreatedAt => Str

The date and time when you created the access grant.



=head2 Grantee => L<Paws::S3Control::Grantee>

The user, group, or role to which you are granting access. You can
grant access to an IAM user or role. If you have added your corporate
directory to Amazon Web Services IAM Identity Center and associated
your Identity Center instance with your S3 Access Grants instance, the
grantee can also be a corporate directory user or group.



=head2 GrantScope => Str

The S3 path of the data to which you are granting access. It is the
result of appending the C<Subprefix> to the location scope.



=head2 Permission => Str

The type of access that you are granting to your S3 data, which can be
set to one of the following values:

=over

=item *

C<READ> E<ndash> Grant read-only access to the S3 data.

=item *

C<WRITE> E<ndash> Grant write-only access to the S3 data.

=item *

C<READWRITE> E<ndash> Grant both read and write access to the S3 data.

=back


Valid values are: C<"READ">, C<"WRITE">, C<"READWRITE">


=cut

