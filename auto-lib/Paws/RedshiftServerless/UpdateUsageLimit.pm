
package Paws::RedshiftServerless::UpdateUsageLimit;
  use Moose;
  has Amount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'amount' );
  has BreachAction => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'breachAction' );
  has UsageLimitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'usageLimitId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateUsageLimit');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftServerless::UpdateUsageLimitResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::UpdateUsageLimit - Arguments for method UpdateUsageLimit on L<Paws::RedshiftServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateUsageLimit on the
L<Redshift Serverless|Paws::RedshiftServerless> service. Use the attributes of this class
as arguments to method UpdateUsageLimit.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateUsageLimit.

=head1 SYNOPSIS

    my $redshift-serverless = Paws->service('RedshiftServerless');
    my $UpdateUsageLimitResponse = $redshift -serverless->UpdateUsageLimit(
      UsageLimitId => 'MyString',
      Amount       => 1,            # OPTIONAL
      BreachAction => 'log',        # OPTIONAL
    );

    # Results:
    my $UsageLimit = $UpdateUsageLimitResponse->UsageLimit;

    # Returns a L<Paws::RedshiftServerless::UpdateUsageLimitResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-serverless/UpdateUsageLimit>

=head1 ATTRIBUTES


=head2 Amount => Int

The new limit amount. If time-based, this amount is in Redshift
Processing Units (RPU) consumed per hour. If data-based, this amount is
in terabytes (TB) of data transferred between Regions in cross-account
sharing. The value must be a positive number.



=head2 BreachAction => Str

The new action that Amazon Redshift Serverless takes when the limit is
reached.

Valid values are: C<"log">, C<"emit-metric">, C<"deactivate">

=head2 B<REQUIRED> UsageLimitId => Str

The identifier of the usage limit to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateUsageLimit in L<Paws::RedshiftServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

