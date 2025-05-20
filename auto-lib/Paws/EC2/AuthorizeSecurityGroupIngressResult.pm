
package Paws::EC2::AuthorizeSecurityGroupIngressResult;
  use Moose;
  has Return => (is => 'ro', isa => 'Bool', request_name => 'return', traits => ['NameInRequest',]);
  has SecurityGroupRules => (is => 'ro', isa => 'ArrayRef[Paws::EC2::SecurityGroupRule]', request_name => 'securityGroupRuleSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AuthorizeSecurityGroupIngressResult

=head1 ATTRIBUTES


=head2 Return => Bool

Returns C<true> if the request succeeds; otherwise, returns an error.


=head2 SecurityGroupRules => ArrayRef[L<Paws::EC2::SecurityGroupRule>]

Information about the inbound (ingress) security group rules that were
added.


=head2 _request_id => Str


=cut

