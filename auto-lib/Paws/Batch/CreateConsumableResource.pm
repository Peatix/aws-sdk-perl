
package Paws::Batch::CreateConsumableResource;
  use Moose;
  has ConsumableResourceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'consumableResourceName', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceType');
  has Tags => (is => 'ro', isa => 'Paws::Batch::TagrisTagsMap', traits => ['NameInRequest'], request_name => 'tags');
  has TotalQuantity => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'totalQuantity');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConsumableResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/createconsumableresource');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Batch::CreateConsumableResourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::CreateConsumableResource - Arguments for method CreateConsumableResource on L<Paws::Batch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConsumableResource on the
L<AWS Batch|Paws::Batch> service. Use the attributes of this class
as arguments to method CreateConsumableResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConsumableResource.

=head1 SYNOPSIS

    my $batch = Paws->service('Batch');
    my $CreateConsumableResourceResponse = $batch->CreateConsumableResource(
      ConsumableResourceName => 'MyString',
      ResourceType           => 'MyString',    # OPTIONAL
      Tags                   => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      TotalQuantity => 1,    # OPTIONAL
    );

    # Results:
    my $ConsumableResourceArn =
      $CreateConsumableResourceResponse->ConsumableResourceArn;
    my $ConsumableResourceName =
      $CreateConsumableResourceResponse->ConsumableResourceName;

    # Returns a L<Paws::Batch::CreateConsumableResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/batch/CreateConsumableResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConsumableResourceName => Str

The name of the consumable resource. Must be unique.



=head2 ResourceType => Str

Indicates whether the resource is available to be re-used after a job
completes. Can be one of:

=over

=item *

C<REPLENISHABLE> (default)

=item *

C<NON_REPLENISHABLE>

=back




=head2 Tags => L<Paws::Batch::TagrisTagsMap>

The tags that you apply to the consumable resource to help you
categorize and organize your resources. Each tag consists of a key and
an optional value. For more information, see Tagging your Batch
resources
(https://docs.aws.amazon.com/batch/latest/userguide/using-tags.html).



=head2 TotalQuantity => Int

The total amount of the consumable resource that is available. Must be
non-negative.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConsumableResource in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

