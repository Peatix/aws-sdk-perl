
package Paws::VerifiedPermissions::CreatePolicyTemplate;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has PolicyStoreId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyStoreId' , required => 1);
  has Statement => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statement' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePolicyTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VerifiedPermissions::CreatePolicyTemplateOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VerifiedPermissions::CreatePolicyTemplate - Arguments for method CreatePolicyTemplate on L<Paws::VerifiedPermissions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePolicyTemplate on the
L<Amazon Verified Permissions|Paws::VerifiedPermissions> service. Use the attributes of this class
as arguments to method CreatePolicyTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePolicyTemplate.

=head1 SYNOPSIS

    my $verifiedpermissions = Paws->service('VerifiedPermissions');
    my $CreatePolicyTemplateOutput = $verifiedpermissions->CreatePolicyTemplate(
      PolicyStoreId => 'MyPolicyStoreId',
      Statement     => 'MyPolicyStatement',
      ClientToken   => 'MyIdempotencyToken',             # OPTIONAL
      Description   => 'MyPolicyTemplateDescription',    # OPTIONAL
    );

    # Results:
    my $CreatedDate      = $CreatePolicyTemplateOutput->CreatedDate;
    my $LastUpdatedDate  = $CreatePolicyTemplateOutput->LastUpdatedDate;
    my $PolicyStoreId    = $CreatePolicyTemplateOutput->PolicyStoreId;
    my $PolicyTemplateId = $CreatePolicyTemplateOutput->PolicyTemplateId;

    # Returns a L<Paws::VerifiedPermissions::CreatePolicyTemplateOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions/CreatePolicyTemplate>

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



=head2 Description => Str

Specifies a description for the policy template.



=head2 B<REQUIRED> PolicyStoreId => Str

The ID of the policy store in which to create the policy template.



=head2 B<REQUIRED> Statement => Str

Specifies the content that you want to use for the new policy template,
written in the Cedar policy language.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePolicyTemplate in L<Paws::VerifiedPermissions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

