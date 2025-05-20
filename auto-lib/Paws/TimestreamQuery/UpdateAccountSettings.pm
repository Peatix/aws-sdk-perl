
package Paws::TimestreamQuery::UpdateAccountSettings;
  use Moose;
  has MaxQueryTCU => (is => 'ro', isa => 'Int');
  has QueryCompute => (is => 'ro', isa => 'Paws::TimestreamQuery::QueryComputeRequest');
  has QueryPricingModel => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAccountSettings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::TimestreamQuery::UpdateAccountSettingsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamQuery::UpdateAccountSettings - Arguments for method UpdateAccountSettings on L<Paws::TimestreamQuery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAccountSettings on the
L<Amazon Timestream Query|Paws::TimestreamQuery> service. Use the attributes of this class
as arguments to method UpdateAccountSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAccountSettings.

=head1 SYNOPSIS

    my $query.timestream = Paws->service('TimestreamQuery');
    my $UpdateAccountSettingsResponse =
      $query . timestream->UpdateAccountSettings(
      MaxQueryTCU  => 1,    # OPTIONAL
      QueryCompute => {
        ComputeMode => 'ON_DEMAND',   # values: ON_DEMAND, PROVISIONED; OPTIONAL
        ProvisionedCapacity => {
          TargetQueryTCU            => 1,
          NotificationConfiguration => {
            RoleArn          => 'MyAmazonResourceName',    # min: 1, max: 2048
            SnsConfiguration => {
              TopicArn => 'MyAmazonResourceName',          # min: 1, max: 2048

            },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      QueryPricingModel => 'BYTES_SCANNED',    # OPTIONAL
      );

    # Results:
    my $MaxQueryTCU       = $UpdateAccountSettingsResponse->MaxQueryTCU;
    my $QueryCompute      = $UpdateAccountSettingsResponse->QueryCompute;
    my $QueryPricingModel = $UpdateAccountSettingsResponse->QueryPricingModel;

    # Returns a L<Paws::TimestreamQuery::UpdateAccountSettingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/query.timestream/UpdateAccountSettings>

=head1 ATTRIBUTES


=head2 MaxQueryTCU => Int

The maximum number of compute units the service will use at any point
in time to serve your queries. To run queries, you must set a minimum
capacity of 4 TCU. You can set the maximum number of TCU in multiples
of 4, for example, 4, 8, 16, 32, and so on. The maximum value supported
for C<MaxQueryTCU> is 1000. To request an increase to this soft limit,
contact Amazon Web Services Support. For information about the default
quota for maxQueryTCU, see Default quotas. This configuration is
applicable only for on-demand usage of Timestream Compute Units (TCUs).

The maximum value supported for C<MaxQueryTCU> is 1000. To request an
increase to this soft limit, contact Amazon Web Services Support. For
information about the default quota for C<maxQueryTCU>, see Default
quotas
(https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html#limits.default).



=head2 QueryCompute => L<Paws::TimestreamQuery::QueryComputeRequest>

Modifies the query compute settings configured in your account,
including the query pricing model and provisioned Timestream Compute
Units (TCUs) in your account.

This API is idempotent, meaning that making the same request multiple
times will have the same effect as making the request once.



=head2 QueryPricingModel => Str

The pricing model for queries in an account.

The C<QueryPricingModel> parameter is used by several Timestream
operations; however, the C<UpdateAccountSettings> API operation doesn't
recognize any values other than C<COMPUTE_UNITS>.

Valid values are: C<"BYTES_SCANNED">, C<"COMPUTE_UNITS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAccountSettings in L<Paws::TimestreamQuery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

