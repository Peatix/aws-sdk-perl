
package Paws::VerifiedPermissions::CreatePolicyStore;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has DeletionProtection => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deletionProtection' );
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has Tags => (is => 'ro', isa => 'Paws::VerifiedPermissions::TagMap', traits => ['NameInRequest'], request_name => 'tags' );
  has ValidationSettings => (is => 'ro', isa => 'Paws::VerifiedPermissions::ValidationSettings', traits => ['NameInRequest'], request_name => 'validationSettings' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePolicyStore');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VerifiedPermissions::CreatePolicyStoreOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VerifiedPermissions::CreatePolicyStore - Arguments for method CreatePolicyStore on L<Paws::VerifiedPermissions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePolicyStore on the
L<Amazon Verified Permissions|Paws::VerifiedPermissions> service. Use the attributes of this class
as arguments to method CreatePolicyStore.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePolicyStore.

=head1 SYNOPSIS

    my $verifiedpermissions = Paws->service('VerifiedPermissions');
    my $CreatePolicyStoreOutput = $verifiedpermissions->CreatePolicyStore(
      ValidationSettings => {
        Mode => 'OFF',    # values: OFF, STRICT

      },
      ClientToken        => 'MyIdempotencyToken',          # OPTIONAL
      DeletionProtection => 'ENABLED',                     # OPTIONAL
      Description        => 'MyPolicyStoreDescription',    # OPTIONAL
      Tags               => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn             = $CreatePolicyStoreOutput->Arn;
    my $CreatedDate     = $CreatePolicyStoreOutput->CreatedDate;
    my $LastUpdatedDate = $CreatePolicyStoreOutput->LastUpdatedDate;
    my $PolicyStoreId   = $CreatePolicyStoreOutput->PolicyStoreId;

    # Returns a L<Paws::VerifiedPermissions::CreatePolicyStoreOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions/CreatePolicyStore>

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



=head2 DeletionProtection => Str

Specifies whether the policy store can be deleted. If enabled, the
policy store can't be deleted.

The default state is C<DISABLED>.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 Description => Str

Descriptive text that you can provide to help with identification of
the current policy store.



=head2 Tags => L<Paws::VerifiedPermissions::TagMap>

The list of key-value pairs to associate with the policy store.



=head2 B<REQUIRED> ValidationSettings => L<Paws::VerifiedPermissions::ValidationSettings>

Specifies the validation setting for this policy store.

Currently, the only valid and required value is C<Mode>.

We recommend that you turn on C<STRICT> mode only after you define a
schema. If a schema doesn't exist, then C<STRICT> mode causes any
policy to fail validation, and Verified Permissions rejects the policy.
You can turn off validation by using the UpdatePolicyStore
(https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdatePolicyStore).
Then, when you have a schema defined, use UpdatePolicyStore
(https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdatePolicyStore)
again to turn validation back on.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePolicyStore in L<Paws::VerifiedPermissions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

