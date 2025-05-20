
package Paws::Datasync::DescribeLocationHdfs;
  use Moose;
  has LocationArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLocationHdfs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::DescribeLocationHdfsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeLocationHdfs - Arguments for method DescribeLocationHdfs on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeLocationHdfs on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method DescribeLocationHdfs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeLocationHdfs.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $DescribeLocationHdfsResponse = $datasync->DescribeLocationHdfs(
      LocationArn => 'MyLocationArn',

    );

    # Results:
    my $AgentArns          = $DescribeLocationHdfsResponse->AgentArns;
    my $AuthenticationType = $DescribeLocationHdfsResponse->AuthenticationType;
    my $BlockSize          = $DescribeLocationHdfsResponse->BlockSize;
    my $CreationTime       = $DescribeLocationHdfsResponse->CreationTime;
    my $KerberosPrincipal  = $DescribeLocationHdfsResponse->KerberosPrincipal;
    my $KmsKeyProviderUri  = $DescribeLocationHdfsResponse->KmsKeyProviderUri;
    my $LocationArn        = $DescribeLocationHdfsResponse->LocationArn;
    my $LocationUri        = $DescribeLocationHdfsResponse->LocationUri;
    my $NameNodes          = $DescribeLocationHdfsResponse->NameNodes;
    my $QopConfiguration   = $DescribeLocationHdfsResponse->QopConfiguration;
    my $ReplicationFactor  = $DescribeLocationHdfsResponse->ReplicationFactor;
    my $SimpleUser         = $DescribeLocationHdfsResponse->SimpleUser;

    # Returns a L<Paws::Datasync::DescribeLocationHdfsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/DescribeLocationHdfs>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LocationArn => Str

Specifies the Amazon Resource Name (ARN) of the HDFS location.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeLocationHdfs in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

