
package Paws::SecurityHub::CreateFindingAggregatorResponse;
  use Moose;
  has FindingAggregationRegion => (is => 'ro', isa => 'Str');
  has FindingAggregatorArn => (is => 'ro', isa => 'Str');
  has RegionLinkingMode => (is => 'ro', isa => 'Str');
  has Regions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::CreateFindingAggregatorResponse

=head1 ATTRIBUTES


=head2 FindingAggregationRegion => Str

The home Region. Findings generated in linked Regions are replicated
and sent to the home Region.


=head2 FindingAggregatorArn => Str

The ARN of the finding aggregator. You use the finding aggregator ARN
to retrieve details for, update, and stop cross-Region aggregation.


=head2 RegionLinkingMode => Str

Indicates whether to link all Regions, all Regions except for a list of
excluded Regions, or a list of included Regions.


=head2 Regions => ArrayRef[Str|Undef]

The list of excluded Regions or included Regions.


=head2 _request_id => Str


=cut

