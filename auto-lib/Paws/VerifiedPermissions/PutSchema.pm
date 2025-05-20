
package Paws::VerifiedPermissions::PutSchema;
  use Moose;
  has Definition => (is => 'ro', isa => 'Paws::VerifiedPermissions::SchemaDefinition', traits => ['NameInRequest'], request_name => 'definition' , required => 1);
  has PolicyStoreId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyStoreId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutSchema');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VerifiedPermissions::PutSchemaOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VerifiedPermissions::PutSchema - Arguments for method PutSchema on L<Paws::VerifiedPermissions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutSchema on the
L<Amazon Verified Permissions|Paws::VerifiedPermissions> service. Use the attributes of this class
as arguments to method PutSchema.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutSchema.

=head1 SYNOPSIS

    my $verifiedpermissions = Paws->service('VerifiedPermissions');
    my $PutSchemaOutput = $verifiedpermissions->PutSchema(
      Definition => {
        CedarJson => 'MySchemaJson',    # min: 1; OPTIONAL
      },
      PolicyStoreId => 'MyPolicyStoreId',

    );

    # Results:
    my $CreatedDate     = $PutSchemaOutput->CreatedDate;
    my $LastUpdatedDate = $PutSchemaOutput->LastUpdatedDate;
    my $Namespaces      = $PutSchemaOutput->Namespaces;
    my $PolicyStoreId   = $PutSchemaOutput->PolicyStoreId;

    # Returns a L<Paws::VerifiedPermissions::PutSchemaOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions/PutSchema>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Definition => L<Paws::VerifiedPermissions::SchemaDefinition>

Specifies the definition of the schema to be stored. The schema
definition must be written in Cedar schema JSON.



=head2 B<REQUIRED> PolicyStoreId => Str

Specifies the ID of the policy store in which to place the schema.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutSchema in L<Paws::VerifiedPermissions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

