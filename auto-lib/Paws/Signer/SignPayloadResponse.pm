
package Paws::Signer::SignPayloadResponse;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobId');
  has JobOwner => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobOwner');
  has Metadata => (is => 'ro', isa => 'Paws::Signer::Metadata', traits => ['NameInRequest'], request_name => 'metadata');
  has Signature => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'signature');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::SignPayloadResponse

=head1 ATTRIBUTES


=head2 JobId => Str

Unique identifier of the signing job.


=head2 JobOwner => Str

The AWS account ID of the job owner.


=head2 Metadata => L<Paws::Signer::Metadata>

Information including the signing profile ARN and the signing job ID.


=head2 Signature => Str

A cryptographic signature.


=head2 _request_id => Str


=cut

