
package Paws::Datasync::DescribeStorageSystem;
  use Moose;
  has StorageSystemArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStorageSystem');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::DescribeStorageSystemResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeStorageSystem - Arguments for method DescribeStorageSystem on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeStorageSystem on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method DescribeStorageSystem.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeStorageSystem.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $DescribeStorageSystemResponse = $datasync->DescribeStorageSystem(
      StorageSystemArn => 'MyStorageSystemArn',

    );

    # Results:
    my $AgentArns = $DescribeStorageSystemResponse->AgentArns;
    my $CloudWatchLogGroupArn =
      $DescribeStorageSystemResponse->CloudWatchLogGroupArn;
    my $ConnectivityStatus = $DescribeStorageSystemResponse->ConnectivityStatus;
    my $CreationTime       = $DescribeStorageSystemResponse->CreationTime;
    my $ErrorMessage       = $DescribeStorageSystemResponse->ErrorMessage;
    my $Name               = $DescribeStorageSystemResponse->Name;
    my $SecretsManagerArn  = $DescribeStorageSystemResponse->SecretsManagerArn;
    my $ServerConfiguration =
      $DescribeStorageSystemResponse->ServerConfiguration;
    my $StorageSystemArn = $DescribeStorageSystemResponse->StorageSystemArn;
    my $SystemType       = $DescribeStorageSystemResponse->SystemType;

    # Returns a L<Paws::Datasync::DescribeStorageSystemResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/DescribeStorageSystem>

=head1 ATTRIBUTES


=head2 B<REQUIRED> StorageSystemArn => Str

Specifies the Amazon Resource Name (ARN) of an on-premises storage
system that you're using with DataSync Discovery.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeStorageSystem in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

