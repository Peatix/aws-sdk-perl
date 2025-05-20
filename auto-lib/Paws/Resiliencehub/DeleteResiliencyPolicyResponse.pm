
package Paws::Resiliencehub::DeleteResiliencyPolicyResponse;
  use Moose;
  has PolicyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyArn', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::DeleteResiliencyPolicyResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> PolicyArn => Str

Amazon Resource Name (ARN) of the resiliency policy. The format for
this ARN is:
arn:C<partition>:resiliencehub:C<region>:C<account>:resiliency-policy/C<policy-id>.
For more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference> guide.


=head2 _request_id => Str


=cut

