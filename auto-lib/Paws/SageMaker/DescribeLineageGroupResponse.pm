
package Paws::SageMaker::DescribeLineageGroupResponse;
  use Moose;
  has CreatedBy => (is => 'ro', isa => 'Paws::SageMaker::UserContext');
  has CreationTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has LastModifiedBy => (is => 'ro', isa => 'Paws::SageMaker::UserContext');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has LineageGroupArn => (is => 'ro', isa => 'Str');
  has LineageGroupName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeLineageGroupResponse

=head1 ATTRIBUTES


=head2 CreatedBy => L<Paws::SageMaker::UserContext>




=head2 CreationTime => Str

The creation time of lineage group.


=head2 Description => Str

The description of the lineage group.


=head2 DisplayName => Str

The display name of the lineage group.


=head2 LastModifiedBy => L<Paws::SageMaker::UserContext>




=head2 LastModifiedTime => Str

The last modified time of the lineage group.


=head2 LineageGroupArn => Str

The Amazon Resource Name (ARN) of the lineage group.


=head2 LineageGroupName => Str

The name of the lineage group.


=head2 _request_id => Str


=cut

1;