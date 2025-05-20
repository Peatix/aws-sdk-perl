
package Paws::Resiliencehub::RejectResourceGroupingRecommendations;
  use Moose;
  has AppArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appArn', required => 1);
  has Entries => (is => 'ro', isa => 'ArrayRef[Paws::Resiliencehub::RejectGroupingRecommendationEntry]', traits => ['NameInRequest'], request_name => 'entries', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RejectResourceGroupingRecommendations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/reject-resource-grouping-recommendations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Resiliencehub::RejectResourceGroupingRecommendationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::RejectResourceGroupingRecommendations - Arguments for method RejectResourceGroupingRecommendations on L<Paws::Resiliencehub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RejectResourceGroupingRecommendations on the
L<AWS Resilience Hub|Paws::Resiliencehub> service. Use the attributes of this class
as arguments to method RejectResourceGroupingRecommendations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RejectResourceGroupingRecommendations.

=head1 SYNOPSIS

    my $resiliencehub = Paws->service('Resiliencehub');
    my $RejectResourceGroupingRecommendationsResponse =
      $resiliencehub->RejectResourceGroupingRecommendations(
      AppArn  => 'MyArn',
      Entries => [
        {
          GroupingRecommendationId => 'MyString255',    # min: 1, max: 255
          RejectionReason          => 'DistinctBusinessPurpose'
          , # values: DistinctBusinessPurpose, SeparateDataConcern, DistinctUserGroupHandling, Other; OPTIONAL
        },
        ...
      ],

      );

    # Results:
    my $AppArn = $RejectResourceGroupingRecommendationsResponse->AppArn;
    my $FailedEntries =
      $RejectResourceGroupingRecommendationsResponse->FailedEntries;

# Returns a L<Paws::Resiliencehub::RejectResourceGroupingRecommendationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resiliencehub/RejectResourceGroupingRecommendations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppArn => Str

Amazon Resource Name (ARN) of the Resilience Hub application. The
format for this ARN is:
arn:C<partition>:resiliencehub:C<region>:C<account>:app/C<app-id>. For
more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference> guide.



=head2 B<REQUIRED> Entries => ArrayRef[L<Paws::Resiliencehub::RejectGroupingRecommendationEntry>]

List of resource grouping recommendations you have selected to exclude
from your application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RejectResourceGroupingRecommendations in L<Paws::Resiliencehub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

