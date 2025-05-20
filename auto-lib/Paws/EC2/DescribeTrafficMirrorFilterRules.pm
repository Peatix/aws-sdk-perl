
package Paws::EC2::DescribeTrafficMirrorFilterRules;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has TrafficMirrorFilterId => (is => 'ro', isa => 'Str');
  has TrafficMirrorFilterRuleIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'TrafficMirrorFilterRuleId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTrafficMirrorFilterRules');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeTrafficMirrorFilterRulesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeTrafficMirrorFilterRules - Arguments for method DescribeTrafficMirrorFilterRules on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTrafficMirrorFilterRules on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeTrafficMirrorFilterRules.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTrafficMirrorFilterRules.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeTrafficMirrorFilterRulesResult =
      $ec2->DescribeTrafficMirrorFilterRules(
      DryRun  => 1,    # OPTIONAL
      Filters => [
        {
          Name   => 'MyString',    # OPTIONAL
          Values => [
            'MyString', ...        # OPTIONAL
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults                 => 1,                            # OPTIONAL
      NextToken                  => 'MyNextToken',                # OPTIONAL
      TrafficMirrorFilterId      => 'MyTrafficMirrorFilterId',    # OPTIONAL
      TrafficMirrorFilterRuleIds =>
        [ 'MyTrafficMirrorFilterRuleIdWithResolver', ... ],       # OPTIONAL
      );

    # Results:
    my $NextToken = $DescribeTrafficMirrorFilterRulesResult->NextToken;
    my $TrafficMirrorFilterRules =
      $DescribeTrafficMirrorFilterRulesResult->TrafficMirrorFilterRules;

    # Returns a L<Paws::EC2::DescribeTrafficMirrorFilterRulesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeTrafficMirrorFilterRules>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

Traffic mirror filters.

=over

=item *

C<traffic-mirror-filter-rule-id>: The ID of the Traffic Mirror rule.

=item *

C<traffic-mirror-filter-id>: The ID of the filter that this rule is
associated with.

=item *

C<rule-number>: The number of the Traffic Mirror rule.

=item *

C<rule-action>: The action taken on the filtered traffic. Possible
actions are C<accept> and C<reject>.

=item *

C<traffic-direction>: The traffic direction. Possible directions are
C<ingress> and C<egress>.

=item *

C<protocol>: The protocol, for example UDP, assigned to the Traffic
Mirror rule.

=item *

C<source-cidr-block>: The source CIDR block assigned to the Traffic
Mirror rule.

=item *

C<destination-cidr-block>: The destination CIDR block assigned to the
Traffic Mirror rule.

=item *

C<description>: The description of the Traffic Mirror rule.

=back




=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.



=head2 NextToken => Str

The token for the next page of results.



=head2 TrafficMirrorFilterId => Str

Traffic filter ID.



=head2 TrafficMirrorFilterRuleIds => ArrayRef[Str|Undef]

Traffic filter rule IDs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTrafficMirrorFilterRules in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

