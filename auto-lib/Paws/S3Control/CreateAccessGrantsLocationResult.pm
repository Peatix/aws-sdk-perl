
package Paws::S3Control::CreateAccessGrantsLocationResult;
  use Moose;
  has AccessGrantsLocationArn => (is => 'ro', isa => 'Str');
  has AccessGrantsLocationId => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has IAMRoleArn => (is => 'ro', isa => 'Str');
  has LocationScope => (is => 'ro', isa => 'Str');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::CreateAccessGrantsLocationResult

=head1 ATTRIBUTES


=head2 AccessGrantsLocationArn => Str

The Amazon Resource Name (ARN) of the location you are registering.



=head2 AccessGrantsLocationId => Str

The ID of the registered location to which you are granting access. S3
Access Grants assigns this ID when you register the location. S3 Access
Grants assigns the ID C<default> to the default location C<s3://> and
assigns an auto-generated ID to other locations that you register.



=head2 CreatedAt => Str

The date and time when you registered the location.



=head2 IAMRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role for the registered
location. S3 Access Grants assumes this role to manage access to the
registered location.



=head2 LocationScope => Str

The S3 URI path to the location that you are registering. The location
scope can be the default S3 location C<s3://>, the S3 path to a bucket,
or the S3 path to a bucket and prefix. A prefix in S3 is a string of
characters at the beginning of an object key name used to organize the
objects that you store in your S3 buckets. For example, object key
names that start with the C<engineering/> prefix or object key names
that start with the C<marketing/campaigns/> prefix.




=cut

