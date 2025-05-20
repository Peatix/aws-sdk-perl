
package Paws::MediaConvert::PutPolicyResponse;
  use Moose;
  has Policy => (is => 'ro', isa => 'Paws::MediaConvert::Policy', traits => ['NameInRequest'], request_name => 'policy');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::PutPolicyResponse

=head1 ATTRIBUTES


=head2 Policy => L<Paws::MediaConvert::Policy>

A policy configures behavior that you allow or disallow for your
account. For information about MediaConvert policies, see the user
guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html


=head2 _request_id => Str


=cut

