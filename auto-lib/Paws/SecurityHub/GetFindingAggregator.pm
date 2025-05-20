
package Paws::SecurityHub::GetFindingAggregator;
  use Moose;
  has FindingAggregatorArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FindingAggregatorArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetFindingAggregator');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/findingAggregator/get/{FindingAggregatorArn+}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::GetFindingAggregatorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::GetFindingAggregator - Arguments for method GetFindingAggregator on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetFindingAggregator on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method GetFindingAggregator.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetFindingAggregator.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $GetFindingAggregatorResponse = $securityhub->GetFindingAggregator(
      FindingAggregatorArn => 'MyNonEmptyString',

    );

    # Results:
    my $FindingAggregationRegion =
      $GetFindingAggregatorResponse->FindingAggregationRegion;
    my $FindingAggregatorArn =
      $GetFindingAggregatorResponse->FindingAggregatorArn;
    my $RegionLinkingMode = $GetFindingAggregatorResponse->RegionLinkingMode;
    my $Regions           = $GetFindingAggregatorResponse->Regions;

    # Returns a L<Paws::SecurityHub::GetFindingAggregatorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/GetFindingAggregator>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FindingAggregatorArn => Str

The ARN of the finding aggregator to return details for. To obtain the
ARN, use C<ListFindingAggregators>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetFindingAggregator in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

