
package Paws::Wisdom::CreateAssistant;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has ServerSideEncryptionConfiguration => (is => 'ro', isa => 'Paws::Wisdom::ServerSideEncryptionConfiguration', traits => ['NameInRequest'], request_name => 'serverSideEncryptionConfiguration');
  has Tags => (is => 'ro', isa => 'Paws::Wisdom::Tags', traits => ['NameInRequest'], request_name => 'tags');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAssistant');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assistants');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Wisdom::CreateAssistantResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Wisdom::CreateAssistant - Arguments for method CreateAssistant on L<Paws::Wisdom>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAssistant on the
L<Amazon Connect Wisdom Service|Paws::Wisdom> service. Use the attributes of this class
as arguments to method CreateAssistant.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAssistant.

=head1 SYNOPSIS

    my $wisdom = Paws->service('Wisdom');
    my $CreateAssistantResponse = $wisdom->CreateAssistant(
      Name                              => 'MyName',
      Type                              => 'AGENT',
      ClientToken                       => 'MyClientToken',    # OPTIONAL
      Description                       => 'MyDescription',    # OPTIONAL
      ServerSideEncryptionConfiguration => {
        KmsKeyId => 'MyNonEmptyString',    # min: 1, max: 4096; OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' =>
          'MyTagValue',    # key: min: 1, max: 128, value: min: 1, max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Assistant = $CreateAssistantResponse->Assistant;

    # Returns a L<Paws::Wisdom::CreateAssistantResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/CreateAssistant>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).



=head2 Description => Str

The description of the assistant.



=head2 B<REQUIRED> Name => Str

The name of the assistant.



=head2 ServerSideEncryptionConfiguration => L<Paws::Wisdom::ServerSideEncryptionConfiguration>

The configuration information for the customer managed key used for
encryption.

The customer managed key must have a policy that allows
C<kms:CreateGrant>, C< kms:DescribeKey>, and
C<kms:Decrypt/kms:GenerateDataKey> permissions to the IAM identity
using the key to invoke Wisdom. To use Wisdom with chat, the key policy
must also allow C<kms:Decrypt>, C<kms:GenerateDataKey*>, and
C<kms:DescribeKey> permissions to the C<connect.amazonaws.com> service
principal.

For more information about setting up a customer managed key for
Wisdom, see Enable Amazon Connect Wisdom for your instance
(https://docs.aws.amazon.com/connect/latest/adminguide/enable-wisdom.html).



=head2 Tags => L<Paws::Wisdom::Tags>

The tags used to organize, track, or control access for this resource.



=head2 B<REQUIRED> Type => Str

The type of assistant.

Valid values are: C<"AGENT">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAssistant in L<Paws::Wisdom>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

