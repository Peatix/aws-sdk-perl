
package Paws::Keyspaces::DeleteKeyspace;
  use Moose;
  has KeyspaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'keyspaceName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteKeyspace');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Keyspaces::DeleteKeyspaceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Keyspaces::DeleteKeyspace - Arguments for method DeleteKeyspace on L<Paws::Keyspaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteKeyspace on the
L<Amazon Keyspaces|Paws::Keyspaces> service. Use the attributes of this class
as arguments to method DeleteKeyspace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteKeyspace.

=head1 SYNOPSIS

    my $cassandra = Paws->service('Keyspaces');
    my $DeleteKeyspaceResponse = $cassandra->DeleteKeyspace(
      KeyspaceName => 'MyKeyspaceName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cassandra/DeleteKeyspace>

=head1 ATTRIBUTES


=head2 B<REQUIRED> KeyspaceName => Str

The name of the keyspace to be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteKeyspace in L<Paws::Keyspaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

