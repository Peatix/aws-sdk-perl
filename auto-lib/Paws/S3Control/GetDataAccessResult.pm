
package Paws::S3Control::GetDataAccessResult;
  use Moose;
  has Credentials => (is => 'ro', isa => 'Paws::S3Control::Credentials');
  has Grantee => (is => 'ro', isa => 'Paws::S3Control::Grantee');
  has MatchedGrantTarget => (is => 'ro', isa => 'Str');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::GetDataAccessResult

=head1 ATTRIBUTES


=head2 Credentials => L<Paws::S3Control::Credentials>

The temporary credential token that S3 Access Grants vends.



=head2 Grantee => L<Paws::S3Control::Grantee>

The user, group, or role that was granted access to the S3 location
scope. For directory identities, this API also returns the grants of
the IAM role used for the identity-aware request. For more information
on identity-aware sessions, see Granting permissions to use
identity-aware console sessions
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_sts-setcontext.html).



=head2 MatchedGrantTarget => Str

The S3 URI path of the data to which you are being granted temporary
access credentials.




=cut

