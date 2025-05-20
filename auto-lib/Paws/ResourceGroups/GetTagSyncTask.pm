
package Paws::ResourceGroups::GetTagSyncTask;
  use Moose;
  has TaskArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTagSyncTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/get-tag-sync-task');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ResourceGroups::GetTagSyncTaskOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::GetTagSyncTask - Arguments for method GetTagSyncTask on L<Paws::ResourceGroups>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTagSyncTask on the
L<AWS Resource Groups|Paws::ResourceGroups> service. Use the attributes of this class
as arguments to method GetTagSyncTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTagSyncTask.

=head1 SYNOPSIS

    my $resource-groups = Paws->service('ResourceGroups');
    my $GetTagSyncTaskOutput = $resource -groups->GetTagSyncTask(
      TaskArn => 'MyTagSyncTaskArn',

    );

    # Results:
    my $CreatedAt     = $GetTagSyncTaskOutput->CreatedAt;
    my $ErrorMessage  = $GetTagSyncTaskOutput->ErrorMessage;
    my $GroupArn      = $GetTagSyncTaskOutput->GroupArn;
    my $GroupName     = $GetTagSyncTaskOutput->GroupName;
    my $ResourceQuery = $GetTagSyncTaskOutput->ResourceQuery;
    my $RoleArn       = $GetTagSyncTaskOutput->RoleArn;
    my $Status        = $GetTagSyncTaskOutput->Status;
    my $TagKey        = $GetTagSyncTaskOutput->TagKey;
    my $TagValue      = $GetTagSyncTaskOutput->TagValue;
    my $TaskArn       = $GetTagSyncTaskOutput->TaskArn;

    # Returns a L<Paws::ResourceGroups::GetTagSyncTaskOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resource-groups/GetTagSyncTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TaskArn => Str

The Amazon resource name (ARN) of the tag-sync task.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTagSyncTask in L<Paws::ResourceGroups>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

