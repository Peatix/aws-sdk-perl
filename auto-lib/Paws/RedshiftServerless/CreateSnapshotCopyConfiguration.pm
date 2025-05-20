
package Paws::RedshiftServerless::CreateSnapshotCopyConfiguration;
  use Moose;
  has DestinationKmsKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationKmsKeyId' );
  has DestinationRegion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationRegion' , required => 1);
  has NamespaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'namespaceName' , required => 1);
  has SnapshotRetentionPeriod => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'snapshotRetentionPeriod' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSnapshotCopyConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftServerless::CreateSnapshotCopyConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::CreateSnapshotCopyConfiguration - Arguments for method CreateSnapshotCopyConfiguration on L<Paws::RedshiftServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSnapshotCopyConfiguration on the
L<Redshift Serverless|Paws::RedshiftServerless> service. Use the attributes of this class
as arguments to method CreateSnapshotCopyConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSnapshotCopyConfiguration.

=head1 SYNOPSIS

    my $redshift-serverless = Paws->service('RedshiftServerless');
    my $CreateSnapshotCopyConfigurationResponse =
      $redshift -serverless->CreateSnapshotCopyConfiguration(
      DestinationRegion       => 'MyString',
      NamespaceName           => 'MyNamespaceName',
      DestinationKmsKeyId     => 'MyKmsKeyId',        # OPTIONAL
      SnapshotRetentionPeriod => 1,                   # OPTIONAL
      );

    # Results:
    my $SnapshotCopyConfiguration =
      $CreateSnapshotCopyConfigurationResponse->SnapshotCopyConfiguration;

# Returns a L<Paws::RedshiftServerless::CreateSnapshotCopyConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-serverless/CreateSnapshotCopyConfiguration>

=head1 ATTRIBUTES


=head2 DestinationKmsKeyId => Str

The KMS key to use to encrypt your snapshots in the destination Amazon
Web Services Region.



=head2 B<REQUIRED> DestinationRegion => Str

The destination Amazon Web Services Region that you want to copy
snapshots to.



=head2 B<REQUIRED> NamespaceName => Str

The name of the namespace to copy snapshots from.



=head2 SnapshotRetentionPeriod => Int

The retention period of the snapshots that you copy to the destination
Amazon Web Services Region.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSnapshotCopyConfiguration in L<Paws::RedshiftServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

