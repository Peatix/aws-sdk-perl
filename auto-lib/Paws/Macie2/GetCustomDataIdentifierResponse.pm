
package Paws::Macie2::GetCustomDataIdentifierResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has Deleted => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'deleted');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has IgnoreWords => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ignoreWords');
  has Keywords => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'keywords');
  has MaximumMatchDistance => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maximumMatchDistance');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Regex => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'regex');
  has SeverityLevels => (is => 'ro', isa => 'ArrayRef[Paws::Macie2::SeverityLevel]', traits => ['NameInRequest'], request_name => 'severityLevels');
  has Tags => (is => 'ro', isa => 'Paws::Macie2::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::GetCustomDataIdentifierResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the custom data identifier.


=head2 CreatedAt => Str

The date and time, in UTC and extended ISO 8601 format, when the custom
data identifier was created.


=head2 Deleted => Bool

Specifies whether the custom data identifier was deleted. If you delete
a custom data identifier, Amazon Macie doesn't delete it permanently.
Instead, it soft deletes the identifier.


=head2 Description => Str

The custom description of the custom data identifier.


=head2 Id => Str

The unique identifier for the custom data identifier.


=head2 IgnoreWords => ArrayRef[Str|Undef]

An array that lists specific character sequences (I<ignore words>) to
exclude from the results. If the text matched by the regular expression
contains any string in this array, Amazon Macie ignores it. Ignore
words are case sensitive.


=head2 Keywords => ArrayRef[Str|Undef]

An array that lists specific character sequences (I<keywords>), one of
which must precede and be within proximity (maximumMatchDistance) of
the regular expression to match. Keywords aren't case sensitive.


=head2 MaximumMatchDistance => Int

The maximum number of characters that can exist between the end of at
least one complete character sequence specified by the keywords array
and the end of the text that matches the regex pattern. If a complete
keyword precedes all the text that matches the pattern and the keyword
is within the specified distance, Amazon Macie includes the result.
Otherwise, Macie excludes the result.


=head2 Name => Str

The custom name of the custom data identifier.


=head2 Regex => Str

The regular expression (I<regex>) that defines the pattern to match.


=head2 SeverityLevels => ArrayRef[L<Paws::Macie2::SeverityLevel>]

Specifies the severity that's assigned to findings that the custom data
identifier produces, based on the number of occurrences of text that
match the custom data identifier's detection criteria. By default,
Amazon Macie creates findings for S3 objects that contain at least one
occurrence of text that matches the detection criteria, and Macie
assigns the MEDIUM severity to those findings.


=head2 Tags => L<Paws::Macie2::TagMap>

A map of key-value pairs that identifies the tags (keys and values)
that are associated with the custom data identifier.


=head2 _request_id => Str


=cut

