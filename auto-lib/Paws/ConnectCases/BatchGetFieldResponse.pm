
package Paws::ConnectCases::BatchGetFieldResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCases::FieldError]', traits => ['NameInRequest'], request_name => 'errors', required => 1);
  has Fields => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCases::GetFieldResponse]', traits => ['NameInRequest'], request_name => 'fields', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::BatchGetFieldResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Errors => ArrayRef[L<Paws::ConnectCases::FieldError>]

A list of field errors.


=head2 B<REQUIRED> Fields => ArrayRef[L<Paws::ConnectCases::GetFieldResponse>]

A list of detailed field information.


=head2 _request_id => Str


=cut

