
package Paws::Keyspaces::UpdateKeyspace;
  use Moose;
  has ClientSideTimestamps => (is => 'ro', isa => 'Paws::Keyspaces::ClientSideTimestamps', traits => ['NameInRequest'], request_name => 'clientSideTimestamps' );
  has KeyspaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'keyspaceName' , required => 1);
  has ReplicationSpecification => (is => 'ro', isa => 'Paws::Keyspaces::ReplicationSpecification', traits => ['NameInRequest'], request_name => 'replicationSpecification' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateKeyspace');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Keyspaces::UpdateKeyspaceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Keyspaces::UpdateKeyspace - Arguments for method UpdateKeyspace on L<Paws::Keyspaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateKeyspace on the
L<Amazon Keyspaces|Paws::Keyspaces> service. Use the attributes of this class
as arguments to method UpdateKeyspace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateKeyspace.

=head1 SYNOPSIS

    my $cassandra = Paws->service('Keyspaces');
    my $UpdateKeyspaceResponse = $cassandra->UpdateKeyspace(
      KeyspaceName             => 'MyKeyspaceName',
      ReplicationSpecification => {
        ReplicationStrategy =>
          'SINGLE_REGION',  # values: SINGLE_REGION, MULTI_REGIONmin: 1, max: 20
        RegionList => [
          'Myregion', ...    # min: 2, max: 25
        ],    # min: 2; OPTIONAL
      },
      ClientSideTimestamps => {
        Status => 'ENABLED',    # values: ENABLED

      },    # OPTIONAL
    );

    # Results:
    my $ResourceArn = $UpdateKeyspaceResponse->ResourceArn;

    # Returns a L<Paws::Keyspaces::UpdateKeyspaceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cassandra/UpdateKeyspace>

=head1 ATTRIBUTES


=head2 ClientSideTimestamps => L<Paws::Keyspaces::ClientSideTimestamps>





=head2 B<REQUIRED> KeyspaceName => Str

The name of the keyspace.



=head2 B<REQUIRED> ReplicationSpecification => L<Paws::Keyspaces::ReplicationSpecification>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateKeyspace in L<Paws::Keyspaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

