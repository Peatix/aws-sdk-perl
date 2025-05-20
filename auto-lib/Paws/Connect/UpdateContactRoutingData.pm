
package Paws::Connect::UpdateContactRoutingData;
  use Moose;
  has ContactId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ContactId', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has QueuePriority => (is => 'ro', isa => 'Int');
  has QueueTimeAdjustmentSeconds => (is => 'ro', isa => 'Int');
  has RoutingCriteria => (is => 'ro', isa => 'Paws::Connect::RoutingCriteriaInput');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateContactRoutingData');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/contacts/{InstanceId}/{ContactId}/routing-data');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::UpdateContactRoutingDataResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::UpdateContactRoutingData - Arguments for method UpdateContactRoutingData on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateContactRoutingData on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method UpdateContactRoutingData.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateContactRoutingData.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $UpdateContactRoutingDataResponse = $connect->UpdateContactRoutingData(
      ContactId                  => 'MyContactId',
      InstanceId                 => 'MyInstanceId',
      QueuePriority              => 1,                # OPTIONAL
      QueueTimeAdjustmentSeconds => 1,                # OPTIONAL
      RoutingCriteria            => {
        Steps => [
          {
            Expiry => {
              DurationInSeconds => 1,    # OPTIONAL
            },    # OPTIONAL
            Expression => {
              AndExpression      => [ <Expression>, ... ],    # OPTIONAL
              AttributeCondition => {
                ComparisonOperator =>
                  'MyComparisonOperator',    # min: 1, max: 127; OPTIONAL
                MatchCriteria => {
                  AgentsCriteria => {
                    AgentIds => [
                      'MyAgentId', ...    # max: 256
                    ],    # OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
                Name => 'MyPredefinedAttributeName', # min: 1, max: 64; OPTIONAL
                ProficiencyLevel => 1.0,             # min: 1, max: 5; OPTIONAL
                Range            => {
                  MaxProficiencyLevel => 1.0,        # min: 1, max: 5; OPTIONAL
                  MinProficiencyLevel => 1.0,        # min: 1, max: 5; OPTIONAL
                },    # OPTIONAL
                Value => 'MyProficiencyValue',    # min: 1, max: 128; OPTIONAL
              },    # OPTIONAL
              NotAttributeCondition => {
                ComparisonOperator =>
                  'MyComparisonOperator',    # min: 1, max: 127; OPTIONAL
                MatchCriteria => {
                  AgentsCriteria => {
                    AgentIds => [
                      'MyAgentId', ...    # max: 256
                    ],    # OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
                Name => 'MyPredefinedAttributeName', # min: 1, max: 64; OPTIONAL
                ProficiencyLevel => 1.0,             # min: 1, max: 5; OPTIONAL
                Range            => {
                  MaxProficiencyLevel => 1.0,        # min: 1, max: 5; OPTIONAL
                  MinProficiencyLevel => 1.0,        # min: 1, max: 5; OPTIONAL
                },    # OPTIONAL
                Value => 'MyProficiencyValue',    # min: 1, max: 128; OPTIONAL
              },    # OPTIONAL
              OrExpression => [ <Expression>, ... ],    # OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/UpdateContactRoutingData>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactId => Str

The identifier of the contact in this instance of Amazon Connect.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 QueuePriority => Int

Priority of the contact in the queue. The default priority for new
contacts is 5. You can raise the priority of a contact compared to
other contacts in the queue by assigning them a higher priority, such
as 1 or 2.



=head2 QueueTimeAdjustmentSeconds => Int

The number of seconds to add or subtract from the contact's routing
age. Contacts are routed to agents on a first-come, first-serve basis.
This means that changing their amount of time in queue compared to
others also changes their position in queue.



=head2 RoutingCriteria => L<Paws::Connect::RoutingCriteriaInput>

Updates the routing criteria on the contact. These properties can be
used to change how a contact is routed within the queue.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateContactRoutingData in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

