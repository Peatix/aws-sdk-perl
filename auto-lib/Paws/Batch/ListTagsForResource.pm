
package Paws::Batch::ListTagsForResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTagsForResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/tags/{resourceArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Batch::ListTagsForResourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::ListTagsForResource - Arguments for method ListTagsForResource on L<Paws::Batch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsForResource on the
L<AWS Batch|Paws::Batch> service. Use the attributes of this class
as arguments to method ListTagsForResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsForResource.

=head1 SYNOPSIS

    my $batch = Paws->service('Batch');
    # ListTagsForResource Example
    # This demonstrates calling the ListTagsForResource action.
    my $ListTagsForResourceResponse =
      $batch->ListTagsForResource( 'ResourceArn' =>
        'arn:aws:batch:us-east-1:123456789012:job-definition/sleep30:1' );

    # Results:
    my $tags = $ListTagsForResourceResponse->tags;

    # Returns a L<Paws::Batch::ListTagsForResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/batch/ListTagsForResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) that identifies the resource that tags
are listed for. Batch resources that support tags are compute
environments, jobs, job definitions, job queues, and scheduling
policies. ARNs for child jobs of array and multi-node parallel (MNP)
jobs aren't supported.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsForResource in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

