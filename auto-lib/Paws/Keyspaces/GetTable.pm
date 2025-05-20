
package Paws::Keyspaces::GetTable;
  use Moose;
  has KeyspaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'keyspaceName' , required => 1);
  has TableName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'tableName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTable');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Keyspaces::GetTableResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Keyspaces::GetTable - Arguments for method GetTable on L<Paws::Keyspaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTable on the
L<Amazon Keyspaces|Paws::Keyspaces> service. Use the attributes of this class
as arguments to method GetTable.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTable.

=head1 SYNOPSIS

    my $cassandra = Paws->service('Keyspaces');
    my $GetTableResponse = $cassandra->GetTable(
      KeyspaceName => 'MyKeyspaceName',
      TableName    => 'MyTableName',

    );

    # Results:
    my $CapacitySpecification   = $GetTableResponse->CapacitySpecification;
    my $ClientSideTimestamps    = $GetTableResponse->ClientSideTimestamps;
    my $Comment                 = $GetTableResponse->Comment;
    my $CreationTimestamp       = $GetTableResponse->CreationTimestamp;
    my $DefaultTimeToLive       = $GetTableResponse->DefaultTimeToLive;
    my $EncryptionSpecification = $GetTableResponse->EncryptionSpecification;
    my $KeyspaceName            = $GetTableResponse->KeyspaceName;
    my $PointInTimeRecovery     = $GetTableResponse->PointInTimeRecovery;
    my $ReplicaSpecifications   = $GetTableResponse->ReplicaSpecifications;
    my $ResourceArn             = $GetTableResponse->ResourceArn;
    my $SchemaDefinition        = $GetTableResponse->SchemaDefinition;
    my $Status                  = $GetTableResponse->Status;
    my $TableName               = $GetTableResponse->TableName;
    my $Ttl                     = $GetTableResponse->Ttl;

    # Returns a L<Paws::Keyspaces::GetTableResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cassandra/GetTable>

=head1 ATTRIBUTES


=head2 B<REQUIRED> KeyspaceName => Str

The name of the keyspace that the table is stored in.



=head2 B<REQUIRED> TableName => Str

The name of the table.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTable in L<Paws::Keyspaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

