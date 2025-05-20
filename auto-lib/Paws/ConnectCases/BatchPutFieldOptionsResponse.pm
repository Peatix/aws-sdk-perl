
package Paws::ConnectCases::BatchPutFieldOptionsResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCases::FieldOptionError]', traits => ['NameInRequest'], request_name => 'errors');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::BatchPutFieldOptionsResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::ConnectCases::FieldOptionError>]

A list of field errors.


=head2 _request_id => Str


=cut

