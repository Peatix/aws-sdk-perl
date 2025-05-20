
package Paws::Macie2::CreateCustomDataIdentifier;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has IgnoreWords => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ignoreWords');
  has Keywords => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'keywords');
  has MaximumMatchDistance => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maximumMatchDistance');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Regex => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'regex', required => 1);
  has SeverityLevels => (is => 'ro', isa => 'ArrayRef[Paws::Macie2::SeverityLevel]', traits => ['NameInRequest'], request_name => 'severityLevels');
  has Tags => (is => 'ro', isa => 'Paws::Macie2::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCustomDataIdentifier');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/custom-data-identifiers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::CreateCustomDataIdentifierResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::CreateCustomDataIdentifier - Arguments for method CreateCustomDataIdentifier on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCustomDataIdentifier on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method CreateCustomDataIdentifier.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCustomDataIdentifier.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $CreateCustomDataIdentifierResponse =
      $macie2->CreateCustomDataIdentifier(
      Name                 => 'My__string',
      Regex                => 'My__string',
      ClientToken          => 'My__string',             # OPTIONAL
      Description          => 'My__string',             # OPTIONAL
      IgnoreWords          => [ 'My__string', ... ],    # OPTIONAL
      Keywords             => [ 'My__string', ... ],    # OPTIONAL
      MaximumMatchDistance => 1,                        # OPTIONAL
      SeverityLevels       => [
        {
          OccurrencesThreshold => 1,
          Severity             => 'LOW',    # values: LOW, MEDIUM, HIGH

        },
        ...
      ],    # OPTIONAL
      Tags => { 'My__string' => 'My__string', },    # OPTIONAL
      );

    # Results:
    my $CustomDataIdentifierId =
      $CreateCustomDataIdentifierResponse->CustomDataIdentifierId;

    # Returns a L<Paws::Macie2::CreateCustomDataIdentifierResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/CreateCustomDataIdentifier>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive token that you provide to ensure the
idempotency of the request.



=head2 Description => Str

A custom description of the custom data identifier. The description can
contain as many as 512 characters.

We strongly recommend that you avoid including any sensitive data in
the description of a custom data identifier. Other users of your
account might be able to see this description, depending on the actions
that they're allowed to perform in Amazon Macie.



=head2 IgnoreWords => ArrayRef[Str|Undef]

An array that lists specific character sequences (I<ignore words>) to
exclude from the results. If the text matched by the regular expression
contains any string in this array, Amazon Macie ignores it. The array
can contain as many as 10 ignore words. Each ignore word can contain
4-90 UTF-8 characters. Ignore words are case sensitive.



=head2 Keywords => ArrayRef[Str|Undef]

An array that lists specific character sequences (I<keywords>), one of
which must precede and be within proximity (maximumMatchDistance) of
the regular expression to match. The array can contain as many as 50
keywords. Each keyword can contain 3-90 UTF-8 characters. Keywords
aren't case sensitive.



=head2 MaximumMatchDistance => Int

The maximum number of characters that can exist between the end of at
least one complete character sequence specified by the keywords array
and the end of the text that matches the regex pattern. If a complete
keyword precedes all the text that matches the pattern and the keyword
is within the specified distance, Amazon Macie includes the result. The
distance can be 1-300 characters. The default value is 50.



=head2 B<REQUIRED> Name => Str

A custom name for the custom data identifier. The name can contain as
many as 128 characters.

We strongly recommend that you avoid including any sensitive data in
the name of a custom data identifier. Other users of your account might
be able to see this name, depending on the actions that they're allowed
to perform in Amazon Macie.



=head2 B<REQUIRED> Regex => Str

The regular expression (I<regex>) that defines the pattern to match.
The expression can contain as many as 512 characters.



=head2 SeverityLevels => ArrayRef[L<Paws::Macie2::SeverityLevel>]

The severity to assign to findings that the custom data identifier
produces, based on the number of occurrences of text that match the
custom data identifier's detection criteria. You can specify as many as
three SeverityLevel objects in this array, one for each severity: LOW,
MEDIUM, or HIGH. If you specify more than one, the occurrences
thresholds must be in ascending order by severity, moving from LOW to
HIGH. For example, 1 for LOW, 50 for MEDIUM, and 100 for HIGH. If an S3
object contains fewer occurrences than the lowest specified threshold,
Amazon Macie doesn't create a finding.

If you don't specify any values for this array, Macie creates findings
for S3 objects that contain at least one occurrence of text that
matches the detection criteria, and Macie assigns the MEDIUM severity
to those findings.



=head2 Tags => L<Paws::Macie2::TagMap>

A map of key-value pairs that specifies the tags to associate with the
custom data identifier.

A custom data identifier can have a maximum of 50 tags. Each tag
consists of a tag key and an associated tag value. The maximum length
of a tag key is 128 characters. The maximum length of a tag value is
256 characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCustomDataIdentifier in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

