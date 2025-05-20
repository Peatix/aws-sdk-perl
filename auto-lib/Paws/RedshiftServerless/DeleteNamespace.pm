
package Paws::RedshiftServerless::DeleteNamespace;
  use Moose;
  has FinalSnapshotName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'finalSnapshotName' );
  has FinalSnapshotRetentionPeriod => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'finalSnapshotRetentionPeriod' );
  has NamespaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'namespaceName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteNamespace');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftServerless::DeleteNamespaceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::DeleteNamespace - Arguments for method DeleteNamespace on L<Paws::RedshiftServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteNamespace on the
L<Redshift Serverless|Paws::RedshiftServerless> service. Use the attributes of this class
as arguments to method DeleteNamespace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteNamespace.

=head1 SYNOPSIS

    my $redshift-serverless = Paws->service('RedshiftServerless');
    my $DeleteNamespaceResponse = $redshift -serverless->DeleteNamespace(
      NamespaceName                => 'MyNamespaceName',
      FinalSnapshotName            => 'MyString',          # OPTIONAL
      FinalSnapshotRetentionPeriod => 1,                   # OPTIONAL
    );

    # Results:
    my $Namespace = $DeleteNamespaceResponse->Namespace;

    # Returns a L<Paws::RedshiftServerless::DeleteNamespaceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-serverless/DeleteNamespace>

=head1 ATTRIBUTES


=head2 FinalSnapshotName => Str

The name of the snapshot to be created before the namespace is deleted.



=head2 FinalSnapshotRetentionPeriod => Int

How long to retain the final snapshot.



=head2 B<REQUIRED> NamespaceName => Str

The name of the namespace to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteNamespace in L<Paws::RedshiftServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

