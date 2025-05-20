
package Paws::EC2::GetEbsEncryptionByDefaultResult;
  use Moose;
  has EbsEncryptionByDefault => (is => 'ro', isa => 'Bool', request_name => 'ebsEncryptionByDefault', traits => ['NameInRequest',]);
  has SseType => (is => 'ro', isa => 'Str', request_name => 'sseType', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetEbsEncryptionByDefaultResult

=head1 ATTRIBUTES


=head2 EbsEncryptionByDefault => Bool

Indicates whether encryption by default is enabled.


=head2 SseType => Str

Reserved for future use.

Valid values are: C<"sse-ebs">, C<"sse-kms">, C<"none">
=head2 _request_id => Str


=cut

