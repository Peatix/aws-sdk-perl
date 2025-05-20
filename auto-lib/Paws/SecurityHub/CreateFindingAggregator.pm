
package Paws::SecurityHub::CreateFindingAggregator;
  use Moose;
  has RegionLinkingMode => (is => 'ro', isa => 'Str', required => 1);
  has Regions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFindingAggregator');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/findingAggregator/create');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::CreateFindingAggregatorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::CreateFindingAggregator - Arguments for method CreateFindingAggregator on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFindingAggregator on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method CreateFindingAggregator.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFindingAggregator.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $CreateFindingAggregatorResponse = $securityhub->CreateFindingAggregator(
      RegionLinkingMode => 'MyNonEmptyString',
      Regions           => [ 'MyNonEmptyString', ... ],    # OPTIONAL
    );

    # Results:
    my $FindingAggregationRegion =
      $CreateFindingAggregatorResponse->FindingAggregationRegion;
    my $FindingAggregatorArn =
      $CreateFindingAggregatorResponse->FindingAggregatorArn;
    my $RegionLinkingMode = $CreateFindingAggregatorResponse->RegionLinkingMode;
    my $Regions           = $CreateFindingAggregatorResponse->Regions;

    # Returns a L<Paws::SecurityHub::CreateFindingAggregatorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/CreateFindingAggregator>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RegionLinkingMode => Str

Indicates whether to aggregate findings from all of the available
Regions in the current partition. Also determines whether to
automatically aggregate findings from new Regions as Security Hub
supports them and you opt into them.

The selected option also determines how to use the Regions provided in
the Regions list.

The options are as follows:

=over

=item *

C<ALL_REGIONS> - Aggregates findings from all of the Regions where
Security Hub is enabled. When you choose this option, Security Hub also
automatically aggregates findings from new Regions as Security Hub
supports them and you opt into them.

=item *

C<ALL_REGIONS_EXCEPT_SPECIFIED> - Aggregates findings from all of the
Regions where Security Hub is enabled, except for the Regions listed in
the C<Regions> parameter. When you choose this option, Security Hub
also automatically aggregates findings from new Regions as Security Hub
supports them and you opt into them.

=item *

C<SPECIFIED_REGIONS> - Aggregates findings only from the Regions listed
in the C<Regions> parameter. Security Hub does not automatically
aggregate findings from new Regions.

=item *

C<NO_REGIONS> - Aggregates no data because no Regions are selected as
linked Regions.

=back




=head2 Regions => ArrayRef[Str|Undef]

If C<RegionLinkingMode> is C<ALL_REGIONS_EXCEPT_SPECIFIED>, then this
is a space-separated list of Regions that don't replicate and send
findings to the home Region.

If C<RegionLinkingMode> is C<SPECIFIED_REGIONS>, then this is a
space-separated list of Regions that do replicate and send findings to
the home Region.

An C<InvalidInputException> error results if you populate this field
while C<RegionLinkingMode> is C<NO_REGIONS>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFindingAggregator in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

