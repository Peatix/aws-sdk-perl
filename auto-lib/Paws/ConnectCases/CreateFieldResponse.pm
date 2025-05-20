
package Paws::ConnectCases::CreateFieldResponse;
  use Moose;
  has FieldArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fieldArn', required => 1);
  has FieldId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fieldId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::CreateFieldResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FieldArn => Str

The Amazon Resource Name (ARN) of the field.


=head2 B<REQUIRED> FieldId => Str

The unique identifier of a field.


=head2 _request_id => Str


=cut

