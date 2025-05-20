
package Paws::IAM::CreatePolicy;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Path => (is => 'ro', isa => 'Str');
  has PolicyDocument => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IAM::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::CreatePolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreatePolicyResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::CreatePolicy - Arguments for method CreatePolicy on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePolicy on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method CreatePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePolicy.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    my $CreatePolicyResponse = $iam->CreatePolicy(
      PolicyDocument => 'MypolicyDocumentType',
      PolicyName     => 'MypolicyNameType',
      Description    => 'MypolicyDescriptionType',    # OPTIONAL
      Path           => 'MypolicyPathType',           # OPTIONAL
      Tags           => [
        {
          Key   => 'MytagKeyType',      # min: 1, max: 128
          Value => 'MytagValueType',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Policy = $CreatePolicyResponse->Policy;

    # Returns a L<Paws::IAM::CreatePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/CreatePolicy>

=head1 ATTRIBUTES


=head2 Description => Str

A friendly description of the policy.

Typically used to store information about the permissions defined in
the policy. For example, "Grants access to production DynamoDB tables."

The policy description is immutable. After a value is assigned, it
cannot be changed.



=head2 Path => Str

The path for the policy.

For more information about paths, see IAM identifiers
(https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html)
in the I<IAM User Guide>.

This parameter is optional. If it is not included, it defaults to a
slash (/).

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
either a forward slash (/) by itself or a string that must begin and
end with forward slashes. In addition, it can contain any ASCII
character from the ! (C<\u0021>) through the DEL character (C<\u007F>),
including most punctuation characters, digits, and upper and lowercased
letters.

You cannot use an asterisk (*) in the path name.



=head2 B<REQUIRED> PolicyDocument => Str

The JSON policy document that you want to use as the content for the
new policy.

You must provide policies in JSON format in IAM. However, for
CloudFormation templates formatted in YAML, you can provide the policy
in JSON or YAML format. CloudFormation always converts a YAML policy to
JSON format before submitting it to IAM.

The maximum length of the policy document that you can pass in this
operation, including whitespace, is listed below. To view the maximum
character counts of a managed policy with no whitespaces, see IAM and
STS character quotas
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length).

To learn more about JSON policy grammar, see Grammar of the IAM JSON
policy language
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_grammar.html)
in the I<IAM User Guide>.

The regex pattern (http://wikipedia.org/wiki/regex) used to validate
this parameter is a string of characters consisting of the following:

=over

=item *

Any printable ASCII character ranging from the space character
(C<\u0020>) through the end of the ASCII character range

=item *

The printable characters in the Basic Latin and Latin-1 Supplement
character set (through C<\u00FF>)

=item *

The special characters tab (C<\u0009>), line feed (C<\u000A>), and
carriage return (C<\u000D>)

=back




=head2 B<REQUIRED> PolicyName => Str

The friendly name of the policy.

IAM user, group, role, and policy names must be unique within the
account. Names are not distinguished by case. For example, you cannot
create resources named both "MyResource" and "myresource".



=head2 Tags => ArrayRef[L<Paws::IAM::Tag>]

A list of tags that you want to attach to the new IAM customer managed
policy. Each tag consists of a key name and an associated value. For
more information about tagging, see Tagging IAM resources
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
I<IAM User Guide>.

If any one of the tags is invalid or if you exceed the allowed maximum
number of tags, then the entire request fails and the resource is not
created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePolicy in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

