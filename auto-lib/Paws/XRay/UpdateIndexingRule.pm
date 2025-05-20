
package Paws::XRay::UpdateIndexingRule;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Rule => (is => 'ro', isa => 'Paws::XRay::IndexingRuleValueUpdate', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateIndexingRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/UpdateIndexingRule');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::XRay::UpdateIndexingRuleResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::UpdateIndexingRule - Arguments for method UpdateIndexingRule on L<Paws::XRay>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateIndexingRule on the
L<AWS X-Ray|Paws::XRay> service. Use the attributes of this class
as arguments to method UpdateIndexingRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateIndexingRule.

=head1 SYNOPSIS

    my $xray = Paws->service('XRay');
    my $UpdateIndexingRuleResult = $xray->UpdateIndexingRule(
      Name => 'MyString',
      Rule => {
        Probabilistic => {
          DesiredSamplingPercentage => 1,

        },    # OPTIONAL
      },

    );

    # Results:
    my $IndexingRule = $UpdateIndexingRuleResult->IndexingRule;

    # Returns a L<Paws::XRay::UpdateIndexingRuleResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/xray/UpdateIndexingRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

Name of the indexing rule to be updated.



=head2 B<REQUIRED> Rule => L<Paws::XRay::IndexingRuleValueUpdate>

Rule configuration to be updated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateIndexingRule in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

