
package Paws::Resiliencehub::StartResourceGroupingRecommendationTask;
  use Moose;
  has AppArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartResourceGroupingRecommendationTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/start-resource-grouping-recommendation-task');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Resiliencehub::StartResourceGroupingRecommendationTaskResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::StartResourceGroupingRecommendationTask - Arguments for method StartResourceGroupingRecommendationTask on L<Paws::Resiliencehub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartResourceGroupingRecommendationTask on the
L<AWS Resilience Hub|Paws::Resiliencehub> service. Use the attributes of this class
as arguments to method StartResourceGroupingRecommendationTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartResourceGroupingRecommendationTask.

=head1 SYNOPSIS

    my $resiliencehub = Paws->service('Resiliencehub');
    my $StartResourceGroupingRecommendationTaskResponse =
      $resiliencehub->StartResourceGroupingRecommendationTask(
      AppArn => 'MyArn',

      );

    # Results:
    my $AppArn = $StartResourceGroupingRecommendationTaskResponse->AppArn;
    my $ErrorMessage =
      $StartResourceGroupingRecommendationTaskResponse->ErrorMessage;
    my $GroupingId =
      $StartResourceGroupingRecommendationTaskResponse->GroupingId;
    my $Status = $StartResourceGroupingRecommendationTaskResponse->Status;

# Returns a L<Paws::Resiliencehub::StartResourceGroupingRecommendationTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resiliencehub/StartResourceGroupingRecommendationTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppArn => Str

Amazon Resource Name (ARN) of the Resilience Hub application. The
format for this ARN is:
arn:C<partition>:resiliencehub:C<region>:C<account>:app/C<app-id>. For
more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference> guide.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartResourceGroupingRecommendationTask in L<Paws::Resiliencehub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

