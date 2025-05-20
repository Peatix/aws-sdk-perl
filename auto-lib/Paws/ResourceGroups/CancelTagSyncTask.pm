
package Paws::ResourceGroups::CancelTagSyncTask;
  use Moose;
  has TaskArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelTagSyncTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/cancel-tag-sync-task');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::CancelTagSyncTask - Arguments for method CancelTagSyncTask on L<Paws::ResourceGroups>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelTagSyncTask on the
L<AWS Resource Groups|Paws::ResourceGroups> service. Use the attributes of this class
as arguments to method CancelTagSyncTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelTagSyncTask.

=head1 SYNOPSIS

    my $resource-groups = Paws->service('ResourceGroups');
    $resource -groups->CancelTagSyncTask(
      TaskArn => 'MyTagSyncTaskArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resource-groups/CancelTagSyncTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TaskArn => Str

The Amazon resource name (ARN) of the tag-sync task.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelTagSyncTask in L<Paws::ResourceGroups>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

