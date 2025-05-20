
package Paws::CustomerProfiles::GetCalculatedAttributeForProfileResponse;
  use Moose;
  has CalculatedAttributeName => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has IsDataPartial => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::GetCalculatedAttributeForProfileResponse

=head1 ATTRIBUTES


=head2 CalculatedAttributeName => Str

The unique name of the calculated attribute.


=head2 DisplayName => Str

The display name of the calculated attribute.


=head2 IsDataPartial => Str

Indicates whether the calculated attributeE<rsquo>s value is based on
partial data. If data is partial, it is set to true.


=head2 Value => Str

The value of the calculated attribute.


=head2 _request_id => Str


=cut

