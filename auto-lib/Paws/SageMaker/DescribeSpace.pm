
package Paws::SageMaker::DescribeSpace;
  use Moose;
  has DomainId => (is => 'ro', isa => 'Str', required => 1);
  has SpaceName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSpace');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeSpaceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeSpace - Arguments for method DescribeSpace on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSpace on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeSpace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSpace.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeSpaceResponse = $api . sagemaker->DescribeSpace(
      DomainId  => 'MyDomainId',
      SpaceName => 'MySpaceName',

    );

    # Results:
    my $CreationTime         = $DescribeSpaceResponse->CreationTime;
    my $DomainId             = $DescribeSpaceResponse->DomainId;
    my $FailureReason        = $DescribeSpaceResponse->FailureReason;
    my $HomeEfsFileSystemUid = $DescribeSpaceResponse->HomeEfsFileSystemUid;
    my $LastModifiedTime     = $DescribeSpaceResponse->LastModifiedTime;
    my $OwnershipSettings    = $DescribeSpaceResponse->OwnershipSettings;
    my $SpaceArn             = $DescribeSpaceResponse->SpaceArn;
    my $SpaceDisplayName     = $DescribeSpaceResponse->SpaceDisplayName;
    my $SpaceName            = $DescribeSpaceResponse->SpaceName;
    my $SpaceSettings        = $DescribeSpaceResponse->SpaceSettings;
    my $SpaceSharingSettings = $DescribeSpaceResponse->SpaceSharingSettings;
    my $Status               = $DescribeSpaceResponse->Status;
    my $Url                  = $DescribeSpaceResponse->Url;

    # Returns a L<Paws::SageMaker::DescribeSpaceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeSpace>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainId => Str

The ID of the associated domain.



=head2 B<REQUIRED> SpaceName => Str

The name of the space.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSpace in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

