
package Paws::Keyspaces::CreateType;
  use Moose;
  has FieldDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::Keyspaces::FieldDefinition]', traits => ['NameInRequest'], request_name => 'fieldDefinitions' , required => 1);
  has KeyspaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'keyspaceName' , required => 1);
  has TypeName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'typeName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateType');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Keyspaces::CreateTypeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Keyspaces::CreateType - Arguments for method CreateType on L<Paws::Keyspaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateType on the
L<Amazon Keyspaces|Paws::Keyspaces> service. Use the attributes of this class
as arguments to method CreateType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateType.

=head1 SYNOPSIS

    my $cassandra = Paws->service('Keyspaces');
    my $CreateTypeResponse = $cassandra->CreateType(
      FieldDefinitions => [
        {
          Name => 'MyFieldDefinitionNameString',    # min: 1, max: 128
          Type => 'MyGenericString',

        },
        ...
      ],
      KeyspaceName => 'MyKeyspaceName',
      TypeName     => 'MyTypeName',

    );

    # Results:
    my $KeyspaceArn = $CreateTypeResponse->KeyspaceArn;
    my $TypeName    = $CreateTypeResponse->TypeName;

    # Returns a L<Paws::Keyspaces::CreateTypeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cassandra/CreateType>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FieldDefinitions => ArrayRef[L<Paws::Keyspaces::FieldDefinition>]

The field definitions, consisting of names and types, that define this
type.



=head2 B<REQUIRED> KeyspaceName => Str

The name of the keyspace.



=head2 B<REQUIRED> TypeName => Str

The name of the user-defined type.

UDT names must contain 48 characters or less, must begin with an
alphabetic character, and can only contain alpha-numeric characters and
underscores. Amazon Keyspaces converts upper case characters
automatically into lower case characters.

Alternatively, you can declare a UDT name in double quotes. When
declaring a UDT name inside double quotes, Amazon Keyspaces preserves
upper casing and allows special characters.

You can also use double quotes as part of the name when you create the
UDT, but you must escape each double quote character with an additional
double quote character.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateType in L<Paws::Keyspaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

