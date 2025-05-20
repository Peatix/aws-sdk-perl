
package Paws::Omics::GetReadSetResponse;
  use Moose;
  has Payload => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'payload');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Payload');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::GetReadSetResponse

=head1 ATTRIBUTES


=head2 Payload => Str

The read set file payload.


=head2 _request_id => Str


=cut

