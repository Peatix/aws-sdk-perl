
package Paws::S3Tables::GetTableBucketPolicyResponse;
  use Moose;
  has ResourcePolicy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourcePolicy', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Tables::GetTableBucketPolicyResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourcePolicy => Str

The C<JSON> that defines the policy.


=head2 _request_id => Str


=cut

