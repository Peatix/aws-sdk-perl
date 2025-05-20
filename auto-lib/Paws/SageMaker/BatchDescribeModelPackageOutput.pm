
package Paws::SageMaker::BatchDescribeModelPackageOutput;
  use Moose;
  has BatchDescribeModelPackageErrorMap => (is => 'ro', isa => 'Paws::SageMaker::BatchDescribeModelPackageErrorMap');
  has ModelPackageSummaries => (is => 'ro', isa => 'Paws::SageMaker::ModelPackageSummaries');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::BatchDescribeModelPackageOutput

=head1 ATTRIBUTES


=head2 BatchDescribeModelPackageErrorMap => L<Paws::SageMaker::BatchDescribeModelPackageErrorMap>

A map of the resource and BatchDescribeModelPackageError objects
reporting the error associated with describing the model package.


=head2 ModelPackageSummaries => L<Paws::SageMaker::ModelPackageSummaries>

The summaries for the model package versions


=head2 _request_id => Str


=cut

1;