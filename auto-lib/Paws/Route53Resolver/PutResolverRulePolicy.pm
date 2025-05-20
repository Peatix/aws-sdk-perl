
package Paws::Route53Resolver::PutResolverRulePolicy;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has ResolverRulePolicy => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutResolverRulePolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Resolver::PutResolverRulePolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::PutResolverRulePolicy - Arguments for method PutResolverRulePolicy on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutResolverRulePolicy on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method PutResolverRulePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutResolverRulePolicy.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $PutResolverRulePolicyResponse = $route53resolver->PutResolverRulePolicy(
      Arn                => 'MyArn',
      ResolverRulePolicy => 'MyResolverRulePolicy',

    );

    # Results:
    my $ReturnValue = $PutResolverRulePolicyResponse->ReturnValue;

    # Returns a L<Paws::Route53Resolver::PutResolverRulePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/PutResolverRulePolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the rule that you want to share with
another account.



=head2 B<REQUIRED> ResolverRulePolicy => Str

An Identity and Access Management policy statement that lists the rules
that you want to share with another Amazon Web Services account and the
operations that you want the account to be able to perform. You can
specify the following operations in the C<Action> section of the
statement:

=over

=item *

C<route53resolver:GetResolverRule>

=item *

C<route53resolver:AssociateResolverRule>

=item *

C<route53resolver:DisassociateResolverRule>

=item *

C<route53resolver:ListResolverRules>

=item *

C<route53resolver:ListResolverRuleAssociations>

=back

In the C<Resource> section of the statement, specify the ARN for the
rule that you want to share with another account. Specify the same ARN
that you specified in C<Arn>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutResolverRulePolicy in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

