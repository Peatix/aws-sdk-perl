
package Paws::RedshiftServerless::CreateUsageLimit;
  use Moose;
  has Amount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'amount' , required => 1);
  has BreachAction => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'breachAction' );
  has Period => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'period' );
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn' , required => 1);
  has UsageType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'usageType' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUsageLimit');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftServerless::CreateUsageLimitResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::CreateUsageLimit - Arguments for method CreateUsageLimit on L<Paws::RedshiftServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUsageLimit on the
L<Redshift Serverless|Paws::RedshiftServerless> service. Use the attributes of this class
as arguments to method CreateUsageLimit.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUsageLimit.

=head1 SYNOPSIS

    my $redshift-serverless = Paws->service('RedshiftServerless');
    my $CreateUsageLimitResponse = $redshift -serverless->CreateUsageLimit(
      Amount       => 1,
      ResourceArn  => 'MyString',
      UsageType    => 'serverless-compute',
      BreachAction => 'log',                  # OPTIONAL
      Period       => 'daily',                # OPTIONAL
    );

    # Results:
    my $UsageLimit = $CreateUsageLimitResponse->UsageLimit;

    # Returns a L<Paws::RedshiftServerless::CreateUsageLimitResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-serverless/CreateUsageLimit>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Amount => Int

The limit amount. If time-based, this amount is in Redshift Processing
Units (RPU) consumed per hour. If data-based, this amount is in
terabytes (TB) of data transferred between Regions in cross-account
sharing. The value must be a positive number.



=head2 BreachAction => Str

The action that Amazon Redshift Serverless takes when the limit is
reached. The default is log.

Valid values are: C<"log">, C<"emit-metric">, C<"deactivate">

=head2 Period => Str

The time period that the amount applies to. A weekly period begins on
Sunday. The default is monthly.

Valid values are: C<"daily">, C<"weekly">, C<"monthly">

=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the Amazon Redshift Serverless
resource to create the usage limit for.



=head2 B<REQUIRED> UsageType => Str

The type of Amazon Redshift Serverless usage to create a usage limit
for.

Valid values are: C<"serverless-compute">, C<"cross-region-datasharing">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUsageLimit in L<Paws::RedshiftServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

