
package Paws::Keyspaces::CreateKeyspace;
  use Moose;
  has KeyspaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'keyspaceName' , required => 1);
  has ReplicationSpecification => (is => 'ro', isa => 'Paws::Keyspaces::ReplicationSpecification', traits => ['NameInRequest'], request_name => 'replicationSpecification' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Keyspaces::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateKeyspace');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Keyspaces::CreateKeyspaceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Keyspaces::CreateKeyspace - Arguments for method CreateKeyspace on L<Paws::Keyspaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateKeyspace on the
L<Amazon Keyspaces|Paws::Keyspaces> service. Use the attributes of this class
as arguments to method CreateKeyspace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateKeyspace.

=head1 SYNOPSIS

    my $cassandra = Paws->service('Keyspaces');
    my $CreateKeyspaceResponse = $cassandra->CreateKeyspace(
      KeyspaceName             => 'MyKeyspaceName',
      ReplicationSpecification => {
        ReplicationStrategy =>
          'SINGLE_REGION',  # values: SINGLE_REGION, MULTI_REGIONmin: 1, max: 20
        RegionList => [
          'Myregion', ...    # min: 2, max: 25
        ],    # min: 2; OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # min: 1, max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ResourceArn = $CreateKeyspaceResponse->ResourceArn;

    # Returns a L<Paws::Keyspaces::CreateKeyspaceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cassandra/CreateKeyspace>

=head1 ATTRIBUTES


=head2 B<REQUIRED> KeyspaceName => Str

The name of the keyspace to be created.



=head2 ReplicationSpecification => L<Paws::Keyspaces::ReplicationSpecification>

The replication specification of the keyspace includes:

=over

=item *

C<replicationStrategy> - the required value is C<SINGLE_REGION> or
C<MULTI_REGION>.

=item *

C<regionList> - if the C<replicationStrategy> is C<MULTI_REGION>, the
C<regionList> requires the current Region and at least one additional
Amazon Web Services Region where the keyspace is going to be replicated
in.

=back




=head2 Tags => ArrayRef[L<Paws::Keyspaces::Tag>]

A list of key-value pair tags to be attached to the keyspace.

For more information, see Adding tags and labels to Amazon Keyspaces
resources
(https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html)
in the I<Amazon Keyspaces Developer Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateKeyspace in L<Paws::Keyspaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

