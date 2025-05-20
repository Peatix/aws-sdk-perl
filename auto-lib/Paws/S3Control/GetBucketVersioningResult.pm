
package Paws::S3Control::GetBucketVersioningResult;
  use Moose;
  has MFADelete => (is => 'ro', isa => 'Str', request_name => 'MfaDelete', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::GetBucketVersioningResult

=head1 ATTRIBUTES


=head2 MFADelete => Str

Specifies whether MFA delete is enabled in the bucket versioning
configuration. This element is returned only if the bucket has been
configured with MFA delete. If MFA delete has never been configured for
the bucket, this element is not returned.

Valid values are: C<"Enabled">, C<"Disabled">

=head2 Status => Str

The versioning state of the S3 on Outposts bucket.

Valid values are: C<"Enabled">, C<"Suspended">


=cut

