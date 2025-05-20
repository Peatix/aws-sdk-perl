
package Paws::RedShift::DeregisterNamespace;
  use Moose;
  has ConsumerIdentifiers => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has NamespaceIdentifier => (is => 'ro', isa => 'Paws::RedShift::NamespaceIdentifierUnion', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeregisterNamespace');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::DeregisterNamespaceOutputMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeregisterNamespaceResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DeregisterNamespace - Arguments for method DeregisterNamespace on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeregisterNamespace on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method DeregisterNamespace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeregisterNamespace.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $DeregisterNamespaceOutputMessage = $redshift->DeregisterNamespace(
      ConsumerIdentifiers => [
        'MyString', ...    # max: 2147483647
      ],
      NamespaceIdentifier => {
        ProvisionedIdentifier => {
          ClusterIdentifier => 'MyString',    # max: 2147483647

        },    # OPTIONAL
        ServerlessIdentifier => {
          NamespaceIdentifier => 'MyString',    # max: 2147483647
          WorkgroupIdentifier => 'MyString',    # max: 2147483647

        },    # OPTIONAL
      },

    );

    # Results:
    my $Status = $DeregisterNamespaceOutputMessage->Status;

    # Returns a L<Paws::RedShift::DeregisterNamespaceOutputMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/DeregisterNamespace>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConsumerIdentifiers => ArrayRef[Str|Undef]

An array containing the ID of the consumer account that you want to
deregister the cluster or serverless namespace from.



=head2 B<REQUIRED> NamespaceIdentifier => L<Paws::RedShift::NamespaceIdentifierUnion>

The unique identifier of the cluster or serverless namespace that you
want to deregister.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeregisterNamespace in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

