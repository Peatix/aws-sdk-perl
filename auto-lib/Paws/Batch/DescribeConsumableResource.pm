
package Paws::Batch::DescribeConsumableResource;
  use Moose;
  has ConsumableResource => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'consumableResource', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConsumableResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/describeconsumableresource');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Batch::DescribeConsumableResourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::DescribeConsumableResource - Arguments for method DescribeConsumableResource on L<Paws::Batch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeConsumableResource on the
L<AWS Batch|Paws::Batch> service. Use the attributes of this class
as arguments to method DescribeConsumableResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeConsumableResource.

=head1 SYNOPSIS

    my $batch = Paws->service('Batch');
    my $DescribeConsumableResourceResponse = $batch->DescribeConsumableResource(
      ConsumableResource => 'MyString',

    );

    # Results:
    my $AvailableQuantity =
      $DescribeConsumableResourceResponse->AvailableQuantity;
    my $ConsumableResourceArn =
      $DescribeConsumableResourceResponse->ConsumableResourceArn;
    my $ConsumableResourceName =
      $DescribeConsumableResourceResponse->ConsumableResourceName;
    my $CreatedAt     = $DescribeConsumableResourceResponse->CreatedAt;
    my $InUseQuantity = $DescribeConsumableResourceResponse->InUseQuantity;
    my $ResourceType  = $DescribeConsumableResourceResponse->ResourceType;
    my $Tags          = $DescribeConsumableResourceResponse->Tags;
    my $TotalQuantity = $DescribeConsumableResourceResponse->TotalQuantity;

    # Returns a L<Paws::Batch::DescribeConsumableResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/batch/DescribeConsumableResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConsumableResource => Str

The name or ARN of the consumable resource whose description will be
returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeConsumableResource in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

