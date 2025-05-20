
package Paws::Tnb::CreateSolNetworkInstanceOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has NsdInfoId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nsdInfoId', required => 1);
  has NsInstanceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nsInstanceName', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Tnb::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Tnb::CreateSolNetworkInstanceOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

Network instance ARN.


=head2 B<REQUIRED> Id => Str

Network instance ID.


=head2 B<REQUIRED> NsdInfoId => Str

Network service descriptor ID.


=head2 B<REQUIRED> NsInstanceName => Str

Network instance name.


=head2 Tags => L<Paws::Tnb::TagMap>

A tag is a label that you assign to an Amazon Web Services resource.
Each tag consists of a key and an optional value. You can use tags to
search and filter your resources or track your Amazon Web Services
costs.


=head2 _request_id => Str


=cut

