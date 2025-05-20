
package Paws::CloudHSMv2::CreateCluster;
  use Moose;
  has BackupRetentionPolicy => (is => 'ro', isa => 'Paws::CloudHSMv2::BackupRetentionPolicy');
  has HsmType => (is => 'ro', isa => 'Str', required => 1);
  has Mode => (is => 'ro', isa => 'Str');
  has NetworkType => (is => 'ro', isa => 'Str');
  has SourceBackupId => (is => 'ro', isa => 'Str');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has TagList => (is => 'ro', isa => 'ArrayRef[Paws::CloudHSMv2::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudHSMv2::CreateClusterResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSMv2::CreateCluster - Arguments for method CreateCluster on L<Paws::CloudHSMv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCluster on the
L<AWS CloudHSM V2|Paws::CloudHSMv2> service. Use the attributes of this class
as arguments to method CreateCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCluster.

=head1 SYNOPSIS

    my $cloudhsmv2 = Paws->service('CloudHSMv2');
    my $CreateClusterResponse = $cloudhsmv2->CreateCluster(
      HsmType               => 'MyHsmType',
      SubnetIds             => [ 'MySubnetId', ... ],
      BackupRetentionPolicy => {
        Type  => 'DAYS',                      # values: DAYS; OPTIONAL
        Value => 'MyBackupRetentionValue',    # min: 1, max: 3; OPTIONAL
      },    # OPTIONAL
      Mode           => 'FIPS',           # OPTIONAL
      NetworkType    => 'IPV4',           # OPTIONAL
      SourceBackupId => 'MyBackupArn',    # OPTIONAL
      TagList        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Cluster = $CreateClusterResponse->Cluster;

    # Returns a L<Paws::CloudHSMv2::CreateClusterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2/CreateCluster>

=head1 ATTRIBUTES


=head2 BackupRetentionPolicy => L<Paws::CloudHSMv2::BackupRetentionPolicy>

A policy that defines how the service retains backups.



=head2 B<REQUIRED> HsmType => Str

The type of HSM to use in the cluster. The allowed values are
C<hsm1.medium> and C<hsm2m.medium>.



=head2 Mode => Str

The mode to use in the cluster. The allowed values are C<FIPS> and
C<NON_FIPS>.

Valid values are: C<"FIPS">, C<"NON_FIPS">

=head2 NetworkType => Str

The NetworkType to create a cluster with. The allowed values are
C<IPV4> and C<DUALSTACK>.

Valid values are: C<"IPV4">, C<"DUALSTACK">

=head2 SourceBackupId => Str

The identifier (ID) or the Amazon Resource Name (ARN) of the cluster
backup to restore. Use this value to restore the cluster from a backup
instead of creating a new cluster. To find the backup ID or ARN, use
DescribeBackups. I<If using a backup in another account, the full ARN
must be supplied.>



=head2 B<REQUIRED> SubnetIds => ArrayRef[Str|Undef]

The identifiers (IDs) of the subnets where you are creating the
cluster. You must specify at least one subnet. If you specify multiple
subnets, they must meet the following criteria:

=over

=item *

All subnets must be in the same virtual private cloud (VPC).

=item *

You can specify only one subnet per Availability Zone.

=back




=head2 TagList => ArrayRef[L<Paws::CloudHSMv2::Tag>]

Tags to apply to the CloudHSM cluster during creation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCluster in L<Paws::CloudHSMv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

