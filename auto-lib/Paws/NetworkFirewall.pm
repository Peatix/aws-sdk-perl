package Paws::NetworkFirewall;
  use Moose;
  sub service { 'network-firewall' }
  sub signing_name { 'network-firewall' }
  sub version { '2020-11-12' }
  sub target_prefix { 'NetworkFirewall_20201112' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AssociateFirewallPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::AssociateFirewallPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateSubnets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::AssociateSubnets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFirewall {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::CreateFirewall', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFirewallPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::CreateFirewallPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRuleGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::CreateRuleGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTLSInspectionConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::CreateTLSInspectionConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFirewall {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::DeleteFirewall', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFirewallPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::DeleteFirewallPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::DeleteResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRuleGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::DeleteRuleGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTLSInspectionConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::DeleteTLSInspectionConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFirewall {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::DescribeFirewall', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFirewallPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::DescribeFirewallPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFlowOperation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::DescribeFlowOperation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLoggingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::DescribeLoggingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::DescribeResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRuleGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::DescribeRuleGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRuleGroupMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::DescribeRuleGroupMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTLSInspectionConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::DescribeTLSInspectionConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateSubnets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::DisassociateSubnets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAnalysisReportResults {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::GetAnalysisReportResults', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAnalysisReports {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::ListAnalysisReports', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFirewallPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::ListFirewallPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFirewalls {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::ListFirewalls', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFlowOperationResults {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::ListFlowOperationResults', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFlowOperations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::ListFlowOperations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRuleGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::ListRuleGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTLSInspectionConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::ListTLSInspectionConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::PutResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartAnalysisReport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::StartAnalysisReport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartFlowCapture {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::StartFlowCapture', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartFlowFlush {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::StartFlowFlush', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFirewallAnalysisSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::UpdateFirewallAnalysisSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFirewallDeleteProtection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::UpdateFirewallDeleteProtection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFirewallDescription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::UpdateFirewallDescription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFirewallEncryptionConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::UpdateFirewallEncryptionConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFirewallPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::UpdateFirewallPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFirewallPolicyChangeProtection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::UpdateFirewallPolicyChangeProtection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLoggingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::UpdateLoggingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRuleGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::UpdateRuleGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSubnetChangeProtection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::UpdateSubnetChangeProtection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTLSInspectionConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NetworkFirewall::UpdateTLSInspectionConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub GetAllAnalysisReportResults {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetAnalysisReportResults(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetAnalysisReportResults(@_, NextToken => $next_result->NextToken);
        push @{ $result->AnalysisReportResults }, @{ $next_result->AnalysisReportResults };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AnalysisReportResults') foreach (@{ $result->AnalysisReportResults });
        $result = $self->GetAnalysisReportResults(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AnalysisReportResults') foreach (@{ $result->AnalysisReportResults });
    }

    return undef
  }
  sub ListAllAnalysisReports {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAnalysisReports(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAnalysisReports(@_, NextToken => $next_result->NextToken);
        push @{ $result->AnalysisReports }, @{ $next_result->AnalysisReports };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AnalysisReports') foreach (@{ $result->AnalysisReports });
        $result = $self->ListAnalysisReports(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AnalysisReports') foreach (@{ $result->AnalysisReports });
    }

    return undef
  }
  sub ListAllFirewallPolicies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFirewallPolicies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListFirewallPolicies(@_, NextToken => $next_result->NextToken);
        push @{ $result->FirewallPolicies }, @{ $next_result->FirewallPolicies };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'FirewallPolicies') foreach (@{ $result->FirewallPolicies });
        $result = $self->ListFirewallPolicies(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'FirewallPolicies') foreach (@{ $result->FirewallPolicies });
    }

    return undef
  }
  sub ListAllFirewalls {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFirewalls(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListFirewalls(@_, NextToken => $next_result->NextToken);
        push @{ $result->Firewalls }, @{ $next_result->Firewalls };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Firewalls') foreach (@{ $result->Firewalls });
        $result = $self->ListFirewalls(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Firewalls') foreach (@{ $result->Firewalls });
    }

    return undef
  }
  sub ListAllFlowOperationResults {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFlowOperationResults(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListFlowOperationResults(@_, NextToken => $next_result->NextToken);
        push @{ $result->Flows }, @{ $next_result->Flows };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Flows') foreach (@{ $result->Flows });
        $result = $self->ListFlowOperationResults(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Flows') foreach (@{ $result->Flows });
    }

    return undef
  }
  sub ListAllFlowOperations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFlowOperations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListFlowOperations(@_, NextToken => $next_result->NextToken);
        push @{ $result->FlowOperations }, @{ $next_result->FlowOperations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'FlowOperations') foreach (@{ $result->FlowOperations });
        $result = $self->ListFlowOperations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'FlowOperations') foreach (@{ $result->FlowOperations });
    }

    return undef
  }
  sub ListAllRuleGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRuleGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListRuleGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->RuleGroups }, @{ $next_result->RuleGroups };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RuleGroups') foreach (@{ $result->RuleGroups });
        $result = $self->ListRuleGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RuleGroups') foreach (@{ $result->RuleGroups });
    }

    return undef
  }
  sub ListAllTagsForResource {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTagsForResource(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTagsForResource(@_, NextToken => $next_result->NextToken);
        push @{ $result->Tags }, @{ $next_result->Tags };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Tags') foreach (@{ $result->Tags });
        $result = $self->ListTagsForResource(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Tags') foreach (@{ $result->Tags });
    }

    return undef
  }
  sub ListAllTLSInspectionConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTLSInspectionConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTLSInspectionConfigurations(@_, NextToken => $next_result->NextToken);
        push @{ $result->TLSInspectionConfigurations }, @{ $next_result->TLSInspectionConfigurations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TLSInspectionConfigurations') foreach (@{ $result->TLSInspectionConfigurations });
        $result = $self->ListTLSInspectionConfigurations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TLSInspectionConfigurations') foreach (@{ $result->TLSInspectionConfigurations });
    }

    return undef
  }


  sub operations { qw/AssociateFirewallPolicy AssociateSubnets CreateFirewall CreateFirewallPolicy CreateRuleGroup CreateTLSInspectionConfiguration DeleteFirewall DeleteFirewallPolicy DeleteResourcePolicy DeleteRuleGroup DeleteTLSInspectionConfiguration DescribeFirewall DescribeFirewallPolicy DescribeFlowOperation DescribeLoggingConfiguration DescribeResourcePolicy DescribeRuleGroup DescribeRuleGroupMetadata DescribeTLSInspectionConfiguration DisassociateSubnets GetAnalysisReportResults ListAnalysisReports ListFirewallPolicies ListFirewalls ListFlowOperationResults ListFlowOperations ListRuleGroups ListTagsForResource ListTLSInspectionConfigurations PutResourcePolicy StartAnalysisReport StartFlowCapture StartFlowFlush TagResource UntagResource UpdateFirewallAnalysisSettings UpdateFirewallDeleteProtection UpdateFirewallDescription UpdateFirewallEncryptionConfiguration UpdateFirewallPolicy UpdateFirewallPolicyChangeProtection UpdateLoggingConfiguration UpdateRuleGroup UpdateSubnetChangeProtection UpdateTLSInspectionConfiguration / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall - Perl Interface to AWS AWS Network Firewall

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('NetworkFirewall');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

This is the API Reference for Network Firewall. This guide is for
developers who need detailed information about the Network Firewall API
actions, data types, and errors.

The REST API requires you to handle connection details, such as
calculating signatures, handling request retries, and error handling.
For general information about using the Amazon Web Services REST APIs,
see Amazon Web Services APIs
(https://docs.aws.amazon.com/general/latest/gr/aws-apis.html).

To view the complete list of Amazon Web Services Regions where Network
Firewall is available, see Service endpoints and quotas
(https://docs.aws.amazon.com/general/latest/gr/network-firewall.html)
in the I<Amazon Web Services General Reference>.

To access Network Firewall using the IPv4 REST API endpoint:
C<https://network-firewall.E<lt>regionE<gt>.amazonaws.com>

To access Network Firewall using the Dualstack (IPv4 and IPv6) REST API
endpoint: C<https://network-firewall.E<lt>regionE<gt>.aws.api>

Alternatively, you can use one of the Amazon Web Services SDKs to
access an API that's tailored to the programming language or platform
that you're using. For more information, see Amazon Web Services SDKs
(http://aws.amazon.com/tools/#SDKs).

For descriptions of Network Firewall features, including and
step-by-step instructions on how to use them through the Network
Firewall console, see the Network Firewall Developer Guide
(https://docs.aws.amazon.com/network-firewall/latest/developerguide/).

Network Firewall is a stateful, managed, network firewall and intrusion
detection and prevention service for Amazon Virtual Private Cloud
(Amazon VPC). With Network Firewall, you can filter traffic at the
perimeter of your VPC. This includes filtering traffic going to and
coming from an internet gateway, NAT gateway, or over VPN or Direct
Connect. Network Firewall uses rules that are compatible with Suricata,
a free, open source network analysis and threat detection engine.
Network Firewall supports Suricata version 7.0.3. For information about
Suricata, see the Suricata website (https://suricata.io/) and the
Suricata User Guide
(https://suricata.readthedocs.io/en/suricata-7.0.3/).

You can use Network Firewall to monitor and protect your VPC traffic in
a number of ways. The following are just a few examples:

=over

=item *

Allow domains or IP addresses for known Amazon Web Services service
endpoints, such as Amazon S3, and block all other forms of traffic.

=item *

Use custom lists of known bad domains to limit the types of domain
names that your applications can access.

=item *

Perform deep packet inspection on traffic entering or leaving your VPC.

=item *

Use stateful protocol detection to filter protocols like HTTPS,
regardless of the port used.

=back

To enable Network Firewall for your VPCs, you perform steps in both
Amazon VPC and in Network Firewall. For information about using Amazon
VPC, see Amazon VPC User Guide
(https://docs.aws.amazon.com/vpc/latest/userguide/).

To start using Network Firewall, do the following:

=over

=item 1.

(Optional) If you don't already have a VPC that you want to protect,
create it in Amazon VPC.

=item 2.

In Amazon VPC, in each Availability Zone where you want to have a
firewall endpoint, create a subnet for the sole use of Network
Firewall.

=item 3.

In Network Firewall, create stateless and stateful rule groups, to
define the components of the network traffic filtering behavior that
you want your firewall to have.

=item 4.

In Network Firewall, create a firewall policy that uses your rule
groups and specifies additional default traffic filtering behavior.

=item 5.

In Network Firewall, create a firewall and specify your new firewall
policy and VPC subnets. Network Firewall creates a firewall endpoint in
each subnet that you specify, with the behavior that's defined in the
firewall policy.

=item 6.

In Amazon VPC, use ingress routing enhancements to route traffic
through the new firewall endpoints.

=back


For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 AssociateFirewallPolicy

=over

=item FirewallPolicyArn => Str

=item [FirewallArn => Str]

=item [FirewallName => Str]

=item [UpdateToken => Str]


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::AssociateFirewallPolicy>

Returns: a L<Paws::NetworkFirewall::AssociateFirewallPolicyResponse> instance

Associates a FirewallPolicy to a Firewall.

A firewall policy defines how to monitor and manage your VPC network
traffic, using a collection of inspection rule groups and other
settings. Each firewall requires one firewall policy association, and
you can use the same firewall policy for multiple firewalls.


=head2 AssociateSubnets

=over

=item SubnetMappings => ArrayRef[L<Paws::NetworkFirewall::SubnetMapping>]

=item [FirewallArn => Str]

=item [FirewallName => Str]

=item [UpdateToken => Str]


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::AssociateSubnets>

Returns: a L<Paws::NetworkFirewall::AssociateSubnetsResponse> instance

Associates the specified subnets in the Amazon VPC to the firewall. You
can specify one subnet for each of the Availability Zones that the VPC
spans.

This request creates an Network Firewall firewall endpoint in each of
the subnets. To enable the firewall's protections, you must also modify
the VPC's route tables for each subnet's Availability Zone, to redirect
the traffic that's coming into and going out of the zone through the
firewall endpoint.


=head2 CreateFirewall

=over

=item FirewallName => Str

=item FirewallPolicyArn => Str

=item [DeleteProtection => Bool]

=item [Description => Str]

=item [EnabledAnalysisTypes => ArrayRef[Str|Undef]]

=item [EncryptionConfiguration => L<Paws::NetworkFirewall::EncryptionConfiguration>]

=item [FirewallPolicyChangeProtection => Bool]

=item [SubnetChangeProtection => Bool]

=item [SubnetMappings => ArrayRef[L<Paws::NetworkFirewall::SubnetMapping>]]

=item [Tags => ArrayRef[L<Paws::NetworkFirewall::Tag>]]

=item [VpcId => Str]


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::CreateFirewall>

Returns: a L<Paws::NetworkFirewall::CreateFirewallResponse> instance

Creates an Network Firewall Firewall and accompanying FirewallStatus
for a VPC.

The firewall defines the configuration settings for an Network Firewall
firewall. The settings that you can define at creation include the
firewall policy, the subnets in your VPC to use for the firewall
endpoints, and any tags that are attached to the firewall Amazon Web
Services resource.

After you create a firewall, you can provide additional settings, like
the logging configuration.

To update the settings for a firewall, you use the operations that
apply to the settings themselves, for example
UpdateLoggingConfiguration, AssociateSubnets, and
UpdateFirewallDeleteProtection.

To manage a firewall's tags, use the standard Amazon Web Services
resource tagging operations, ListTagsForResource, TagResource, and
UntagResource.

To retrieve information about firewalls, use ListFirewalls and
DescribeFirewall.

To generate a report on the last 30 days of traffic monitored by a
firewall, use StartAnalysisReport.


=head2 CreateFirewallPolicy

=over

=item FirewallPolicy => L<Paws::NetworkFirewall::FirewallPolicy>

=item FirewallPolicyName => Str

=item [Description => Str]

=item [DryRun => Bool]

=item [EncryptionConfiguration => L<Paws::NetworkFirewall::EncryptionConfiguration>]

=item [Tags => ArrayRef[L<Paws::NetworkFirewall::Tag>]]


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::CreateFirewallPolicy>

Returns: a L<Paws::NetworkFirewall::CreateFirewallPolicyResponse> instance

Creates the firewall policy for the firewall according to the
specifications.

An Network Firewall firewall policy defines the behavior of a firewall,
in a collection of stateless and stateful rule groups and other
settings. You can use one firewall policy for multiple firewalls.


=head2 CreateRuleGroup

=over

=item Capacity => Int

=item RuleGroupName => Str

=item Type => Str

=item [AnalyzeRuleGroup => Bool]

=item [Description => Str]

=item [DryRun => Bool]

=item [EncryptionConfiguration => L<Paws::NetworkFirewall::EncryptionConfiguration>]

=item [RuleGroup => L<Paws::NetworkFirewall::RuleGroup>]

=item [Rules => Str]

=item [SourceMetadata => L<Paws::NetworkFirewall::SourceMetadata>]

=item [Tags => ArrayRef[L<Paws::NetworkFirewall::Tag>]]


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::CreateRuleGroup>

Returns: a L<Paws::NetworkFirewall::CreateRuleGroupResponse> instance

Creates the specified stateless or stateful rule group, which includes
the rules for network traffic inspection, a capacity setting, and tags.

You provide your rule group specification in your request using either
C<RuleGroup> or C<Rules>.


=head2 CreateTLSInspectionConfiguration

=over

=item TLSInspectionConfiguration => L<Paws::NetworkFirewall::TLSInspectionConfiguration>

=item TLSInspectionConfigurationName => Str

=item [Description => Str]

=item [EncryptionConfiguration => L<Paws::NetworkFirewall::EncryptionConfiguration>]

=item [Tags => ArrayRef[L<Paws::NetworkFirewall::Tag>]]


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::CreateTLSInspectionConfiguration>

Returns: a L<Paws::NetworkFirewall::CreateTLSInspectionConfigurationResponse> instance

Creates an Network Firewall TLS inspection configuration. Network
Firewall uses TLS inspection configurations to decrypt your firewall's
inbound and outbound SSL/TLS traffic. After decryption, Network
Firewall inspects the traffic according to your firewall policy's
stateful rules, and then re-encrypts it before sending it to its
destination. You can enable inspection of your firewall's inbound
traffic, outbound traffic, or both. To use TLS inspection with your
firewall, you must first import or provision certificates using ACM,
create a TLS inspection configuration, add that configuration to a new
firewall policy, and then associate that policy with your firewall.

To update the settings for a TLS inspection configuration, use
UpdateTLSInspectionConfiguration.

To manage a TLS inspection configuration's tags, use the standard
Amazon Web Services resource tagging operations, ListTagsForResource,
TagResource, and UntagResource.

To retrieve information about TLS inspection configurations, use
ListTLSInspectionConfigurations and DescribeTLSInspectionConfiguration.

For more information about TLS inspection configurations, see
Inspecting SSL/TLS traffic with TLS inspection configurations
(https://docs.aws.amazon.com/network-firewall/latest/developerguide/tls-inspection.html)
in the I<Network Firewall Developer Guide>.


=head2 DeleteFirewall

=over

=item [FirewallArn => Str]

=item [FirewallName => Str]


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::DeleteFirewall>

Returns: a L<Paws::NetworkFirewall::DeleteFirewallResponse> instance

Deletes the specified Firewall and its FirewallStatus. This operation
requires the firewall's C<DeleteProtection> flag to be C<FALSE>. You
can't revert this operation.

You can check whether a firewall is in use by reviewing the route
tables for the Availability Zones where you have firewall subnet
mappings. Retrieve the subnet mappings by calling DescribeFirewall. You
define and update the route tables through Amazon VPC. As needed,
update the route tables for the zones to remove the firewall endpoints.
When the route tables no longer use the firewall endpoints, you can
remove the firewall safely.

To delete a firewall, remove the delete protection if you need to using
UpdateFirewallDeleteProtection, then delete the firewall by calling
DeleteFirewall.


=head2 DeleteFirewallPolicy

=over

=item [FirewallPolicyArn => Str]

=item [FirewallPolicyName => Str]


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::DeleteFirewallPolicy>

Returns: a L<Paws::NetworkFirewall::DeleteFirewallPolicyResponse> instance

Deletes the specified FirewallPolicy.


=head2 DeleteResourcePolicy

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::DeleteResourcePolicy>

Returns: a L<Paws::NetworkFirewall::DeleteResourcePolicyResponse> instance

Deletes a resource policy that you created in a PutResourcePolicy
request.


=head2 DeleteRuleGroup

=over

=item [RuleGroupArn => Str]

=item [RuleGroupName => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::DeleteRuleGroup>

Returns: a L<Paws::NetworkFirewall::DeleteRuleGroupResponse> instance

Deletes the specified RuleGroup.


=head2 DeleteTLSInspectionConfiguration

=over

=item [TLSInspectionConfigurationArn => Str]

=item [TLSInspectionConfigurationName => Str]


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::DeleteTLSInspectionConfiguration>

Returns: a L<Paws::NetworkFirewall::DeleteTLSInspectionConfigurationResponse> instance

Deletes the specified TLSInspectionConfiguration.


=head2 DescribeFirewall

=over

=item [FirewallArn => Str]

=item [FirewallName => Str]


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::DescribeFirewall>

Returns: a L<Paws::NetworkFirewall::DescribeFirewallResponse> instance

Returns the data objects for the specified firewall.


=head2 DescribeFirewallPolicy

=over

=item [FirewallPolicyArn => Str]

=item [FirewallPolicyName => Str]


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::DescribeFirewallPolicy>

Returns: a L<Paws::NetworkFirewall::DescribeFirewallPolicyResponse> instance

Returns the data objects for the specified firewall policy.


=head2 DescribeFlowOperation

=over

=item FirewallArn => Str

=item FlowOperationId => Str

=item [AvailabilityZone => Str]


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::DescribeFlowOperation>

Returns: a L<Paws::NetworkFirewall::DescribeFlowOperationResponse> instance

Returns key information about a specific flow operation.


=head2 DescribeLoggingConfiguration

=over

=item [FirewallArn => Str]

=item [FirewallName => Str]


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::DescribeLoggingConfiguration>

Returns: a L<Paws::NetworkFirewall::DescribeLoggingConfigurationResponse> instance

Returns the logging configuration for the specified firewall.


=head2 DescribeResourcePolicy

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::DescribeResourcePolicy>

Returns: a L<Paws::NetworkFirewall::DescribeResourcePolicyResponse> instance

Retrieves a resource policy that you created in a PutResourcePolicy
request.


=head2 DescribeRuleGroup

=over

=item [AnalyzeRuleGroup => Bool]

=item [RuleGroupArn => Str]

=item [RuleGroupName => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::DescribeRuleGroup>

Returns: a L<Paws::NetworkFirewall::DescribeRuleGroupResponse> instance

Returns the data objects for the specified rule group.


=head2 DescribeRuleGroupMetadata

=over

=item [RuleGroupArn => Str]

=item [RuleGroupName => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::DescribeRuleGroupMetadata>

Returns: a L<Paws::NetworkFirewall::DescribeRuleGroupMetadataResponse> instance

High-level information about a rule group, returned by operations like
create and describe. You can use the information provided in the
metadata to retrieve and manage a rule group. You can retrieve all
objects for a rule group by calling DescribeRuleGroup.


=head2 DescribeTLSInspectionConfiguration

=over

=item [TLSInspectionConfigurationArn => Str]

=item [TLSInspectionConfigurationName => Str]


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::DescribeTLSInspectionConfiguration>

Returns: a L<Paws::NetworkFirewall::DescribeTLSInspectionConfigurationResponse> instance

Returns the data objects for the specified TLS inspection
configuration.


=head2 DisassociateSubnets

=over

=item SubnetIds => ArrayRef[Str|Undef]

=item [FirewallArn => Str]

=item [FirewallName => Str]

=item [UpdateToken => Str]


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::DisassociateSubnets>

Returns: a L<Paws::NetworkFirewall::DisassociateSubnetsResponse> instance

Removes the specified subnet associations from the firewall. This
removes the firewall endpoints from the subnets and removes any network
filtering protections that the endpoints were providing.


=head2 GetAnalysisReportResults

=over

=item AnalysisReportId => Str

=item [FirewallArn => Str]

=item [FirewallName => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::GetAnalysisReportResults>

Returns: a L<Paws::NetworkFirewall::GetAnalysisReportResultsResponse> instance

The results of a C<COMPLETED> analysis report generated with
StartAnalysisReport.

For more information, see AnalysisTypeReportResult.


=head2 ListAnalysisReports

=over

=item [FirewallArn => Str]

=item [FirewallName => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::ListAnalysisReports>

Returns: a L<Paws::NetworkFirewall::ListAnalysisReportsResponse> instance

Returns a list of all traffic analysis reports generated within the
last 30 days.


=head2 ListFirewallPolicies

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::ListFirewallPolicies>

Returns: a L<Paws::NetworkFirewall::ListFirewallPoliciesResponse> instance

Retrieves the metadata for the firewall policies that you have defined.
Depending on your setting for max results and the number of firewall
policies, a single call might not return the full list.


=head2 ListFirewalls

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [VpcIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::ListFirewalls>

Returns: a L<Paws::NetworkFirewall::ListFirewallsResponse> instance

Retrieves the metadata for the firewalls that you have defined. If you
provide VPC identifiers in your request, this returns only the
firewalls for those VPCs.

Depending on your setting for max results and the number of firewalls,
a single call might not return the full list.


=head2 ListFlowOperationResults

=over

=item FirewallArn => Str

=item FlowOperationId => Str

=item [AvailabilityZone => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::ListFlowOperationResults>

Returns: a L<Paws::NetworkFirewall::ListFlowOperationResultsResponse> instance

Returns the results of a specific flow operation.

Flow operations let you manage the flows tracked in the flow table,
also known as the firewall table.

A flow is network traffic that is monitored by a firewall, either by
stateful or stateless rules. For traffic to be considered part of a
flow, it must share Destination, DestinationPort, Direction, Protocol,
Source, and SourcePort.


=head2 ListFlowOperations

=over

=item FirewallArn => Str

=item [AvailabilityZone => Str]

=item [FlowOperationType => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::ListFlowOperations>

Returns: a L<Paws::NetworkFirewall::ListFlowOperationsResponse> instance

Returns a list of all flow operations ran in a specific firewall. You
can optionally narrow the request scope by specifying the operation
type or Availability Zone associated with a firewall's flow operations.

Flow operations let you manage the flows tracked in the flow table,
also known as the firewall table.

A flow is network traffic that is monitored by a firewall, either by
stateful or stateless rules. For traffic to be considered part of a
flow, it must share Destination, DestinationPort, Direction, Protocol,
Source, and SourcePort.


=head2 ListRuleGroups

=over

=item [ManagedType => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Scope => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::ListRuleGroups>

Returns: a L<Paws::NetworkFirewall::ListRuleGroupsResponse> instance

Retrieves the metadata for the rule groups that you have defined.
Depending on your setting for max results and the number of rule
groups, a single call might not return the full list.


=head2 ListTagsForResource

=over

=item ResourceArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::ListTagsForResource>

Returns: a L<Paws::NetworkFirewall::ListTagsForResourceResponse> instance

Retrieves the tags associated with the specified resource. Tags are
key:value pairs that you can use to categorize and manage your
resources, for purposes like billing. For example, you might set the
tag key to "customer" and the value to the customer name or ID. You can
specify one or more tags to add to each Amazon Web Services resource,
up to 50 tags for a resource.

You can tag the Amazon Web Services resources that you manage through
Network Firewall: firewalls, firewall policies, and rule groups.


=head2 ListTLSInspectionConfigurations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::ListTLSInspectionConfigurations>

Returns: a L<Paws::NetworkFirewall::ListTLSInspectionConfigurationsResponse> instance

Retrieves the metadata for the TLS inspection configurations that you
have defined. Depending on your setting for max results and the number
of TLS inspection configurations, a single call might not return the
full list.


=head2 PutResourcePolicy

=over

=item Policy => Str

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::PutResourcePolicy>

Returns: a L<Paws::NetworkFirewall::PutResourcePolicyResponse> instance

Creates or updates an IAM policy for your rule group or firewall
policy. Use this to share rule groups and firewall policies between
accounts. This operation works in conjunction with the Amazon Web
Services Resource Access Manager (RAM) service to manage resource
sharing for Network Firewall.

Use this operation to create or update a resource policy for your rule
group or firewall policy. In the policy, you specify the accounts that
you want to share the resource with and the operations that you want
the accounts to be able to perform.

When you add an account in the resource policy, you then run the
following Resource Access Manager (RAM) operations to access and accept
the shared rule group or firewall policy.

=over

=item *

GetResourceShareInvitations
(https://docs.aws.amazon.com/ram/latest/APIReference/API_GetResourceShareInvitations.html)
- Returns the Amazon Resource Names (ARNs) of the resource share
invitations.

=item *

AcceptResourceShareInvitation
(https://docs.aws.amazon.com/ram/latest/APIReference/API_AcceptResourceShareInvitation.html)
- Accepts the share invitation for a specified resource share.

=back

For additional information about resource sharing using RAM, see
Resource Access Manager User Guide
(https://docs.aws.amazon.com/ram/latest/userguide/what-is.html).


=head2 StartAnalysisReport

=over

=item AnalysisType => Str

=item [FirewallArn => Str]

=item [FirewallName => Str]


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::StartAnalysisReport>

Returns: a L<Paws::NetworkFirewall::StartAnalysisReportResponse> instance

Generates a traffic analysis report for the timeframe and traffic type
you specify.

For information on the contents of a traffic analysis report, see
AnalysisReport.


=head2 StartFlowCapture

=over

=item FirewallArn => Str

=item FlowFilters => ArrayRef[L<Paws::NetworkFirewall::FlowFilter>]

=item [AvailabilityZone => Str]

=item [MinimumFlowAgeInSeconds => Int]


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::StartFlowCapture>

Returns: a L<Paws::NetworkFirewall::StartFlowCaptureResponse> instance

Begins capturing the flows in a firewall, according to the filters you
define. Captures are similar, but not identical to snapshots. Capture
operations provide visibility into flows that are not closed and are
tracked by a firewall's flow table. Unlike snapshots, captures are a
time-boxed view.

A flow is network traffic that is monitored by a firewall, either by
stateful or stateless rules. For traffic to be considered part of a
flow, it must share Destination, DestinationPort, Direction, Protocol,
Source, and SourcePort.

To avoid encountering operation limits, you should avoid starting
captures with broad filters, like wide IP ranges. Instead, we recommend
you define more specific criteria with C<FlowFilters>, like narrow IP
ranges, ports, or protocols.


=head2 StartFlowFlush

=over

=item FirewallArn => Str

=item FlowFilters => ArrayRef[L<Paws::NetworkFirewall::FlowFilter>]

=item [AvailabilityZone => Str]

=item [MinimumFlowAgeInSeconds => Int]


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::StartFlowFlush>

Returns: a L<Paws::NetworkFirewall::StartFlowFlushResponse> instance

Begins the flushing of traffic from the firewall, according to the
filters you define. When the operation starts, impacted flows are
temporarily marked as timed out before the Suricata engine prunes, or
flushes, the flows from the firewall table.

While the flush completes, impacted flows are processed as midstream
traffic. This may result in a temporary increase in midstream traffic
metrics. We recommend that you double check your stream exception
policy before you perform a flush operation.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::NetworkFirewall::Tag>]


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::TagResource>

Returns: a L<Paws::NetworkFirewall::TagResourceResponse> instance

Adds the specified tags to the specified resource. Tags are key:value
pairs that you can use to categorize and manage your resources, for
purposes like billing. For example, you might set the tag key to
"customer" and the value to the customer name or ID. You can specify
one or more tags to add to each Amazon Web Services resource, up to 50
tags for a resource.

You can tag the Amazon Web Services resources that you manage through
Network Firewall: firewalls, firewall policies, and rule groups.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::UntagResource>

Returns: a L<Paws::NetworkFirewall::UntagResourceResponse> instance

Removes the tags with the specified keys from the specified resource.
Tags are key:value pairs that you can use to categorize and manage your
resources, for purposes like billing. For example, you might set the
tag key to "customer" and the value to the customer name or ID. You can
specify one or more tags to add to each Amazon Web Services resource,
up to 50 tags for a resource.

You can manage tags for the Amazon Web Services resources that you
manage through Network Firewall: firewalls, firewall policies, and rule
groups.


=head2 UpdateFirewallAnalysisSettings

=over

=item [EnabledAnalysisTypes => ArrayRef[Str|Undef]]

=item [FirewallArn => Str]

=item [FirewallName => Str]

=item [UpdateToken => Str]


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::UpdateFirewallAnalysisSettings>

Returns: a L<Paws::NetworkFirewall::UpdateFirewallAnalysisSettingsResponse> instance

Enables specific types of firewall analysis on a specific firewall you
define.


=head2 UpdateFirewallDeleteProtection

=over

=item DeleteProtection => Bool

=item [FirewallArn => Str]

=item [FirewallName => Str]

=item [UpdateToken => Str]


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::UpdateFirewallDeleteProtection>

Returns: a L<Paws::NetworkFirewall::UpdateFirewallDeleteProtectionResponse> instance

Modifies the flag, C<DeleteProtection>, which indicates whether it is
possible to delete the firewall. If the flag is set to C<TRUE>, the
firewall is protected against deletion. This setting helps protect
against accidentally deleting a firewall that's in use.


=head2 UpdateFirewallDescription

=over

=item [Description => Str]

=item [FirewallArn => Str]

=item [FirewallName => Str]

=item [UpdateToken => Str]


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::UpdateFirewallDescription>

Returns: a L<Paws::NetworkFirewall::UpdateFirewallDescriptionResponse> instance

Modifies the description for the specified firewall. Use the
description to help you identify the firewall when you're working with
it.


=head2 UpdateFirewallEncryptionConfiguration

=over

=item [EncryptionConfiguration => L<Paws::NetworkFirewall::EncryptionConfiguration>]

=item [FirewallArn => Str]

=item [FirewallName => Str]

=item [UpdateToken => Str]


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::UpdateFirewallEncryptionConfiguration>

Returns: a L<Paws::NetworkFirewall::UpdateFirewallEncryptionConfigurationResponse> instance

A complex type that contains settings for encryption of your firewall
resources.


=head2 UpdateFirewallPolicy

=over

=item FirewallPolicy => L<Paws::NetworkFirewall::FirewallPolicy>

=item UpdateToken => Str

=item [Description => Str]

=item [DryRun => Bool]

=item [EncryptionConfiguration => L<Paws::NetworkFirewall::EncryptionConfiguration>]

=item [FirewallPolicyArn => Str]

=item [FirewallPolicyName => Str]


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::UpdateFirewallPolicy>

Returns: a L<Paws::NetworkFirewall::UpdateFirewallPolicyResponse> instance

Updates the properties of the specified firewall policy.


=head2 UpdateFirewallPolicyChangeProtection

=over

=item FirewallPolicyChangeProtection => Bool

=item [FirewallArn => Str]

=item [FirewallName => Str]

=item [UpdateToken => Str]


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::UpdateFirewallPolicyChangeProtection>

Returns: a L<Paws::NetworkFirewall::UpdateFirewallPolicyChangeProtectionResponse> instance

Modifies the flag, C<ChangeProtection>, which indicates whether it is
possible to change the firewall. If the flag is set to C<TRUE>, the
firewall is protected from changes. This setting helps protect against
accidentally changing a firewall that's in use.


=head2 UpdateLoggingConfiguration

=over

=item [FirewallArn => Str]

=item [FirewallName => Str]

=item [LoggingConfiguration => L<Paws::NetworkFirewall::LoggingConfiguration>]


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::UpdateLoggingConfiguration>

Returns: a L<Paws::NetworkFirewall::UpdateLoggingConfigurationResponse> instance

Sets the logging configuration for the specified firewall.

To change the logging configuration, retrieve the LoggingConfiguration
by calling DescribeLoggingConfiguration, then change it and provide the
modified object to this update call. You must change the logging
configuration one LogDestinationConfig at a time inside the retrieved
LoggingConfiguration object.

You can perform only one of the following actions in any call to
C<UpdateLoggingConfiguration>:

=over

=item *

Create a new log destination object by adding a single
C<LogDestinationConfig> array element to C<LogDestinationConfigs>.

=item *

Delete a log destination object by removing a single
C<LogDestinationConfig> array element from C<LogDestinationConfigs>.

=item *

Change the C<LogDestination> setting in a single
C<LogDestinationConfig> array element.

=back

You can't change the C<LogDestinationType> or C<LogType> in a
C<LogDestinationConfig>. To change these settings, delete the existing
C<LogDestinationConfig> object and create a new one, using two separate
calls to this update operation.


=head2 UpdateRuleGroup

=over

=item UpdateToken => Str

=item [AnalyzeRuleGroup => Bool]

=item [Description => Str]

=item [DryRun => Bool]

=item [EncryptionConfiguration => L<Paws::NetworkFirewall::EncryptionConfiguration>]

=item [RuleGroup => L<Paws::NetworkFirewall::RuleGroup>]

=item [RuleGroupArn => Str]

=item [RuleGroupName => Str]

=item [Rules => Str]

=item [SourceMetadata => L<Paws::NetworkFirewall::SourceMetadata>]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::UpdateRuleGroup>

Returns: a L<Paws::NetworkFirewall::UpdateRuleGroupResponse> instance

Updates the rule settings for the specified rule group. You use a rule
group by reference in one or more firewall policies. When you modify a
rule group, you modify all firewall policies that use the rule group.

To update a rule group, first call DescribeRuleGroup to retrieve the
current RuleGroup object, update the object as needed, and then provide
the updated object to this call.


=head2 UpdateSubnetChangeProtection

=over

=item SubnetChangeProtection => Bool

=item [FirewallArn => Str]

=item [FirewallName => Str]

=item [UpdateToken => Str]


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::UpdateSubnetChangeProtection>

Returns: a L<Paws::NetworkFirewall::UpdateSubnetChangeProtectionResponse> instance




=head2 UpdateTLSInspectionConfiguration

=over

=item TLSInspectionConfiguration => L<Paws::NetworkFirewall::TLSInspectionConfiguration>

=item UpdateToken => Str

=item [Description => Str]

=item [EncryptionConfiguration => L<Paws::NetworkFirewall::EncryptionConfiguration>]

=item [TLSInspectionConfigurationArn => Str]

=item [TLSInspectionConfigurationName => Str]


=back

Each argument is described in detail in: L<Paws::NetworkFirewall::UpdateTLSInspectionConfiguration>

Returns: a L<Paws::NetworkFirewall::UpdateTLSInspectionConfigurationResponse> instance

Updates the TLS inspection configuration settings for the specified TLS
inspection configuration. You use a TLS inspection configuration by
referencing it in one or more firewall policies. When you modify a TLS
inspection configuration, you modify all firewall policies that use the
TLS inspection configuration.

To update a TLS inspection configuration, first call
DescribeTLSInspectionConfiguration to retrieve the current
TLSInspectionConfiguration object, update the object as needed, and
then provide the updated object to this call.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllAnalysisReportResults(sub { },AnalysisReportId => Str, [FirewallArn => Str, FirewallName => Str, MaxResults => Int, NextToken => Str])

=head2 GetAllAnalysisReportResults(AnalysisReportId => Str, [FirewallArn => Str, FirewallName => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AnalysisReportResults, passing the object as the first parameter, and the string 'AnalysisReportResults' as the second parameter 

If not, it will return a a L<Paws::NetworkFirewall::GetAnalysisReportResultsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAnalysisReports(sub { },[FirewallArn => Str, FirewallName => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllAnalysisReports([FirewallArn => Str, FirewallName => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AnalysisReports, passing the object as the first parameter, and the string 'AnalysisReports' as the second parameter 

If not, it will return a a L<Paws::NetworkFirewall::ListAnalysisReportsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFirewallPolicies(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllFirewallPolicies([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FirewallPolicies, passing the object as the first parameter, and the string 'FirewallPolicies' as the second parameter 

If not, it will return a a L<Paws::NetworkFirewall::ListFirewallPoliciesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFirewalls(sub { },[MaxResults => Int, NextToken => Str, VpcIds => ArrayRef[Str|Undef]])

=head2 ListAllFirewalls([MaxResults => Int, NextToken => Str, VpcIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Firewalls, passing the object as the first parameter, and the string 'Firewalls' as the second parameter 

If not, it will return a a L<Paws::NetworkFirewall::ListFirewallsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFlowOperationResults(sub { },FirewallArn => Str, FlowOperationId => Str, [AvailabilityZone => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllFlowOperationResults(FirewallArn => Str, FlowOperationId => Str, [AvailabilityZone => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Flows, passing the object as the first parameter, and the string 'Flows' as the second parameter 

If not, it will return a a L<Paws::NetworkFirewall::ListFlowOperationResultsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFlowOperations(sub { },FirewallArn => Str, [AvailabilityZone => Str, FlowOperationType => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllFlowOperations(FirewallArn => Str, [AvailabilityZone => Str, FlowOperationType => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - FlowOperations, passing the object as the first parameter, and the string 'FlowOperations' as the second parameter 

If not, it will return a a L<Paws::NetworkFirewall::ListFlowOperationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRuleGroups(sub { },[ManagedType => Str, MaxResults => Int, NextToken => Str, Scope => Str, Type => Str])

=head2 ListAllRuleGroups([ManagedType => Str, MaxResults => Int, NextToken => Str, Scope => Str, Type => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RuleGroups, passing the object as the first parameter, and the string 'RuleGroups' as the second parameter 

If not, it will return a a L<Paws::NetworkFirewall::ListRuleGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTagsForResource(sub { },ResourceArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTagsForResource(ResourceArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Tags, passing the object as the first parameter, and the string 'Tags' as the second parameter 

If not, it will return a a L<Paws::NetworkFirewall::ListTagsForResourceResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTLSInspectionConfigurations(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllTLSInspectionConfigurations([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TLSInspectionConfigurations, passing the object as the first parameter, and the string 'TLSInspectionConfigurations' as the second parameter 

If not, it will return a a L<Paws::NetworkFirewall::ListTLSInspectionConfigurationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

