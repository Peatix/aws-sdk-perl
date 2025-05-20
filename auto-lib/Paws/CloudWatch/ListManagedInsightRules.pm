
package Paws::CloudWatch::ListManagedInsightRules;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListManagedInsightRules');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatch::ListManagedInsightRulesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListManagedInsightRulesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::ListManagedInsightRules - Arguments for method ListManagedInsightRules on L<Paws::CloudWatch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListManagedInsightRules on the
L<Amazon CloudWatch|Paws::CloudWatch> service. Use the attributes of this class
as arguments to method ListManagedInsightRules.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListManagedInsightRules.

=head1 SYNOPSIS

    my $monitoring = Paws->service('CloudWatch');
    my $ListManagedInsightRulesOutput = $monitoring->ListManagedInsightRules(
      ResourceARN => 'MyAmazonResourceName',
      MaxResults  => 1,                        # OPTIONAL
      NextToken   => 'MyNextToken',            # OPTIONAL
    );

    # Results:
    my $ManagedRules = $ListManagedInsightRulesOutput->ManagedRules;
    my $NextToken    = $ListManagedInsightRulesOutput->NextToken;

    # Returns a L<Paws::CloudWatch::ListManagedInsightRulesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/monitoring/ListManagedInsightRules>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in one operation. If you omit
this parameter, the default number is used. The default number is
C<100>.



=head2 NextToken => Str

Include this value to get the next set of rules if the value was
returned by the previous operation.



=head2 B<REQUIRED> ResourceARN => Str

The ARN of an Amazon Web Services resource that has managed Contributor
Insights rules.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListManagedInsightRules in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

