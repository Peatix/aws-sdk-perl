
package Paws::QBusiness::ChatOutput;
  use Moose;
  has OutputStream => (is => 'ro', isa => 'Paws::QBusiness::ChatOutputStream', traits => ['NameInRequest'], request_name => 'outputStream');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'OutputStream');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::ChatOutput

=head1 ATTRIBUTES


=head2 OutputStream => L<Paws::QBusiness::ChatOutputStream>

The streaming output for the C<Chat> API.


=head2 _request_id => Str


=cut

