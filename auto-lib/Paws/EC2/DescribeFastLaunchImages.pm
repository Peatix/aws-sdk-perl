
package Paws::EC2::DescribeFastLaunchImages;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has ImageIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ImageId' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeFastLaunchImages');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeFastLaunchImagesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeFastLaunchImages - Arguments for method DescribeFastLaunchImages on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeFastLaunchImages on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeFastLaunchImages.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeFastLaunchImages.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeFastLaunchImagesResult = $ec2->DescribeFastLaunchImages(
      DryRun  => 1,    # OPTIONAL
      Filters => [
        {
          Name   => 'MyString',    # OPTIONAL
          Values => [
            'MyString', ...        # OPTIONAL
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      ImageIds   => [ 'MyImageId', ... ],    # OPTIONAL
      MaxResults => 1,                       # OPTIONAL
      NextToken  => 'MyNextToken',           # OPTIONAL
    );

    # Results:
    my $FastLaunchImages = $DescribeFastLaunchImagesResult->FastLaunchImages;
    my $NextToken        = $DescribeFastLaunchImagesResult->NextToken;

    # Returns a L<Paws::EC2::DescribeFastLaunchImagesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeFastLaunchImages>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

Use the following filters to streamline results.

=over

=item *

C<resource-type> - The resource type for pre-provisioning.

=item *

C<owner-id> - The owner ID for the pre-provisioning resource.

=item *

C<state> - The current state of fast launching for the Windows AMI.

=back




=head2 ImageIds => ArrayRef[Str|Undef]

Specify one or more Windows AMI image IDs for the request.



=head2 MaxResults => Int

The maximum number of items to return for this request. To get the next
page of items, make another request with the token returned in the
output. For more information, see Pagination
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).



=head2 NextToken => Str

The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeFastLaunchImages in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

