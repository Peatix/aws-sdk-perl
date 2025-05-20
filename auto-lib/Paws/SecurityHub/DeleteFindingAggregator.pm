
package Paws::SecurityHub::DeleteFindingAggregator;
  use Moose;
  has FindingAggregatorArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FindingAggregatorArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteFindingAggregator');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/findingAggregator/delete/{FindingAggregatorArn+}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::DeleteFindingAggregatorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::DeleteFindingAggregator - Arguments for method DeleteFindingAggregator on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteFindingAggregator on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method DeleteFindingAggregator.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteFindingAggregator.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $DeleteFindingAggregatorResponse = $securityhub->DeleteFindingAggregator(
      FindingAggregatorArn => 'MyNonEmptyString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/DeleteFindingAggregator>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FindingAggregatorArn => Str

The ARN of the finding aggregator to delete. To obtain the ARN, use
C<ListFindingAggregators>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteFindingAggregator in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

