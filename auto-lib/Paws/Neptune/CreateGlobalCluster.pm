
package Paws::Neptune::CreateGlobalCluster;
  use Moose;
  has DeletionProtection => (is => 'ro', isa => 'Bool');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has GlobalClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has SourceDBClusterIdentifier => (is => 'ro', isa => 'Str');
  has StorageEncrypted => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGlobalCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptune::CreateGlobalClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateGlobalClusterResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::CreateGlobalCluster - Arguments for method CreateGlobalCluster on L<Paws::Neptune>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGlobalCluster on the
L<Amazon Neptune|Paws::Neptune> service. Use the attributes of this class
as arguments to method CreateGlobalCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGlobalCluster.

=head1 SYNOPSIS

    my $rds = Paws->service('Neptune');
    my $CreateGlobalClusterResult = $rds->CreateGlobalCluster(
      GlobalClusterIdentifier   => 'MyGlobalClusterIdentifier',
      DeletionProtection        => 1,                             # OPTIONAL
      Engine                    => 'MyString',                    # OPTIONAL
      EngineVersion             => 'MyString',                    # OPTIONAL
      SourceDBClusterIdentifier => 'MyString',                    # OPTIONAL
      StorageEncrypted          => 1,                             # OPTIONAL
    );

    # Results:
    my $GlobalCluster = $CreateGlobalClusterResult->GlobalCluster;

    # Returns a L<Paws::Neptune::CreateGlobalClusterResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/CreateGlobalCluster>

=head1 ATTRIBUTES


=head2 DeletionProtection => Bool

The deletion protection setting for the new global database. The global
database can't be deleted when deletion protection is enabled.



=head2 Engine => Str

The name of the database engine to be used in the global database.

Valid values: C<neptune>



=head2 EngineVersion => Str

The Neptune engine version to be used by the global database.

Valid values: C<1.2.0.0> or above.



=head2 B<REQUIRED> GlobalClusterIdentifier => Str

The cluster identifier of the new global database cluster.



=head2 SourceDBClusterIdentifier => Str

(I<Optional>) The Amazon Resource Name (ARN) of an existing Neptune DB
cluster to use as the primary cluster of the new global database.



=head2 StorageEncrypted => Bool

The storage encryption setting for the new global database cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGlobalCluster in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

