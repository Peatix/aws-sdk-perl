
package Paws::Glue::CreateCustomEntityType;
  use Moose;
  has ContextWords => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RegexString => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Glue::TagsMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCustomEntityType');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::CreateCustomEntityTypeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateCustomEntityType - Arguments for method CreateCustomEntityType on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCustomEntityType on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method CreateCustomEntityType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCustomEntityType.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $CreateCustomEntityTypeResponse = $glue->CreateCustomEntityType(
      Name         => 'MyNameString',
      RegexString  => 'MyNameString',
      ContextWords => [
        'MyNameString', ...    # min: 1, max: 255
      ],    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Name = $CreateCustomEntityTypeResponse->Name;

    # Returns a L<Paws::Glue::CreateCustomEntityTypeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/CreateCustomEntityType>

=head1 ATTRIBUTES


=head2 ContextWords => ArrayRef[Str|Undef]

A list of context words. If none of these context words are found
within the vicinity of the regular expression the data will not be
detected as sensitive data.

If no context words are passed only a regular expression is checked.



=head2 B<REQUIRED> Name => Str

A name for the custom pattern that allows it to be retrieved or deleted
later. This name must be unique per Amazon Web Services account.



=head2 B<REQUIRED> RegexString => Str

A regular expression string that is used for detecting sensitive data
in a custom pattern.



=head2 Tags => L<Paws::Glue::TagsMap>

A list of tags applied to the custom entity type.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCustomEntityType in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

