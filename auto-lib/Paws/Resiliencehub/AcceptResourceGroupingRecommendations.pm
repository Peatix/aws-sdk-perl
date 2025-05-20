
package Paws::Resiliencehub::AcceptResourceGroupingRecommendations;
  use Moose;
  has AppArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appArn', required => 1);
  has Entries => (is => 'ro', isa => 'ArrayRef[Paws::Resiliencehub::AcceptGroupingRecommendationEntry]', traits => ['NameInRequest'], request_name => 'entries', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AcceptResourceGroupingRecommendations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accept-resource-grouping-recommendations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Resiliencehub::AcceptResourceGroupingRecommendationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::AcceptResourceGroupingRecommendations - Arguments for method AcceptResourceGroupingRecommendations on L<Paws::Resiliencehub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AcceptResourceGroupingRecommendations on the
L<AWS Resilience Hub|Paws::Resiliencehub> service. Use the attributes of this class
as arguments to method AcceptResourceGroupingRecommendations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AcceptResourceGroupingRecommendations.

=head1 SYNOPSIS

    my $resiliencehub = Paws->service('Resiliencehub');
    my $AcceptResourceGroupingRecommendationsResponse =
      $resiliencehub->AcceptResourceGroupingRecommendations(
      AppArn  => 'MyArn',
      Entries => [
        {
          GroupingRecommendationId => 'MyString255',    # min: 1, max: 255

        },
        ...
      ],

      );

    # Results:
    my $AppArn = $AcceptResourceGroupingRecommendationsResponse->AppArn;
    my $FailedEntries =
      $AcceptResourceGroupingRecommendationsResponse->FailedEntries;

# Returns a L<Paws::Resiliencehub::AcceptResourceGroupingRecommendationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resiliencehub/AcceptResourceGroupingRecommendations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppArn => Str

Amazon Resource Name (ARN) of the Resilience Hub application. The
format for this ARN is:
arn:C<partition>:resiliencehub:C<region>:C<account>:app/C<app-id>. For
more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference> guide.



=head2 B<REQUIRED> Entries => ArrayRef[L<Paws::Resiliencehub::AcceptGroupingRecommendationEntry>]

List of resource grouping recommendations you want to include in your
application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AcceptResourceGroupingRecommendations in L<Paws::Resiliencehub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

