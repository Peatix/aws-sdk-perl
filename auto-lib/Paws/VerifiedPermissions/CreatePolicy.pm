
package Paws::VerifiedPermissions::CreatePolicy;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has Definition => (is => 'ro', isa => 'Paws::VerifiedPermissions::PolicyDefinition', traits => ['NameInRequest'], request_name => 'definition' , required => 1);
  has PolicyStoreId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyStoreId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VerifiedPermissions::CreatePolicyOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VerifiedPermissions::CreatePolicy - Arguments for method CreatePolicy on L<Paws::VerifiedPermissions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePolicy on the
L<Amazon Verified Permissions|Paws::VerifiedPermissions> service. Use the attributes of this class
as arguments to method CreatePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePolicy.

=head1 SYNOPSIS

    my $verifiedpermissions = Paws->service('VerifiedPermissions');
    my $CreatePolicyOutput = $verifiedpermissions->CreatePolicy(
      Definition => {
        Static => {
          Statement   => 'MyPolicyStatement',            # min: 1, max: 10000
          Description => 'MyStaticPolicyDescription',    # max: 150; OPTIONAL
        },    # OPTIONAL
        TemplateLinked => {
          PolicyTemplateId => 'MyPolicyTemplateId',    # min: 1, max: 200
          Principal        => {
            EntityId   => 'MyEntityId',                # min: 1, max: 200
            EntityType => 'MyEntityType',              # min: 1, max: 200

          },    # OPTIONAL
          Resource => {
            EntityId   => 'MyEntityId',      # min: 1, max: 200
            EntityType => 'MyEntityType',    # min: 1, max: 200

          },    # OPTIONAL
        },    # OPTIONAL
      },
      PolicyStoreId => 'MyPolicyStoreId',
      ClientToken   => 'MyIdempotencyToken',    # OPTIONAL
    );

    # Results:
    my $Actions         = $CreatePolicyOutput->Actions;
    my $CreatedDate     = $CreatePolicyOutput->CreatedDate;
    my $Effect          = $CreatePolicyOutput->Effect;
    my $LastUpdatedDate = $CreatePolicyOutput->LastUpdatedDate;
    my $PolicyId        = $CreatePolicyOutput->PolicyId;
    my $PolicyStoreId   = $CreatePolicyOutput->PolicyStoreId;
    my $PolicyType      = $CreatePolicyOutput->PolicyType;
    my $Principal       = $CreatePolicyOutput->Principal;
    my $Resource        = $CreatePolicyOutput->Resource;

    # Returns a L<Paws::VerifiedPermissions::CreatePolicyOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions/CreatePolicy>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Specifies a unique, case-sensitive ID that you provide to ensure the
idempotency of the request. This lets you safely retry the request
without accidentally performing the same operation a second time.
Passing the same value to a later call to an operation requires that
you also pass the same value for all other parameters. We recommend
that you use a UUID type of value.
(https://wikipedia.org/wiki/Universally_unique_identifier).

If you don't provide this value, then Amazon Web Services generates a
random one for you.

If you retry the operation with the same C<ClientToken>, but with
different parameters, the retry fails with an C<ConflictException>
error.

Verified Permissions recognizes a C<ClientToken> for eight hours. After
eight hours, the next request with the same parameters performs the
operation again regardless of the value of C<ClientToken>.



=head2 B<REQUIRED> Definition => L<Paws::VerifiedPermissions::PolicyDefinition>

A structure that specifies the policy type and content to use for the
new policy. You must include either a static or a templateLinked
element. The policy content must be written in the Cedar policy
language.



=head2 B<REQUIRED> PolicyStoreId => Str

Specifies the C<PolicyStoreId> of the policy store you want to store
the policy in.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePolicy in L<Paws::VerifiedPermissions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

