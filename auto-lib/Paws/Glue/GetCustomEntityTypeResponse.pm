
package Paws::Glue::GetCustomEntityTypeResponse;
  use Moose;
  has ContextWords => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Name => (is => 'ro', isa => 'Str');
  has RegexString => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetCustomEntityTypeResponse

=head1 ATTRIBUTES


=head2 ContextWords => ArrayRef[Str|Undef]

A list of context words if specified when you created the custom
pattern. If none of these context words are found within the vicinity
of the regular expression the data will not be detected as sensitive
data.


=head2 Name => Str

The name of the custom pattern that you retrieved.


=head2 RegexString => Str

A regular expression string that is used for detecting sensitive data
in a custom pattern.


=head2 _request_id => Str


=cut

1;