
package Paws::Comprehend::PutResourcePolicy;
  use Moose;
  has PolicyRevisionId => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has ResourcePolicy => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutResourcePolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Comprehend::PutResourcePolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::PutResourcePolicy - Arguments for method PutResourcePolicy on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutResourcePolicy on the
L<Amazon Comprehend|Paws::Comprehend> service. Use the attributes of this class
as arguments to method PutResourcePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutResourcePolicy.

=head1 SYNOPSIS

    my $comprehend = Paws->service('Comprehend');
    my $PutResourcePolicyResponse = $comprehend->PutResourcePolicy(
      ResourceArn      => 'MyComprehendModelArn',
      ResourcePolicy   => 'MyPolicy',
      PolicyRevisionId => 'MyPolicyRevisionId',     # OPTIONAL
    );

    # Results:
    my $PolicyRevisionId = $PutResourcePolicyResponse->PolicyRevisionId;

    # Returns a L<Paws::Comprehend::PutResourcePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehend/PutResourcePolicy>

=head1 ATTRIBUTES


=head2 PolicyRevisionId => Str

The revision ID that Amazon Comprehend assigned to the policy that you
are updating. If you are creating a new policy that has no prior
version, don't use this parameter. Amazon Comprehend creates the
revision ID for you.



=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the custom model to attach the policy
to.



=head2 B<REQUIRED> ResourcePolicy => Str

The JSON resource-based policy to attach to your custom model. Provide
your JSON as a UTF-8 encoded string without line breaks. To provide
valid JSON for your policy, enclose the attribute names and values in
double quotes. If the JSON body is also enclosed in double quotes, then
you must escape the double quotes that are inside the policy:

C<"{\"attribute\": \"value\", \"attribute\": [\"value\"]}">

To avoid escaping quotes, you can use single quotes to enclose the
policy and double quotes to enclose the JSON names and values:

C<'{"attribute": "value", "attribute": ["value"]}'>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutResourcePolicy in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

