
package Paws::Tnb::GetSolNetworkInstanceOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has LcmOpInfo => (is => 'ro', isa => 'Paws::Tnb::LcmOperationInfo', traits => ['NameInRequest'], request_name => 'lcmOpInfo');
  has Metadata => (is => 'ro', isa => 'Paws::Tnb::GetSolNetworkInstanceMetadata', traits => ['NameInRequest'], request_name => 'metadata', required => 1);
  has NsdId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nsdId', required => 1);
  has NsdInfoId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nsdInfoId', required => 1);
  has NsInstanceDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nsInstanceDescription', required => 1);
  has NsInstanceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nsInstanceName', required => 1);
  has NsState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nsState');
  has Tags => (is => 'ro', isa => 'Paws::Tnb::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Tnb::GetSolNetworkInstanceOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

Network instance ARN.


=head2 B<REQUIRED> Id => Str

Network instance ID.


=head2 LcmOpInfo => L<Paws::Tnb::LcmOperationInfo>




=head2 B<REQUIRED> Metadata => L<Paws::Tnb::GetSolNetworkInstanceMetadata>




=head2 B<REQUIRED> NsdId => Str

Network service descriptor ID.


=head2 B<REQUIRED> NsdInfoId => Str

Network service descriptor info ID.


=head2 B<REQUIRED> NsInstanceDescription => Str

Network instance description.


=head2 B<REQUIRED> NsInstanceName => Str

Network instance name.


=head2 NsState => Str

Network instance state.

Valid values are: C<"INSTANTIATED">, C<"NOT_INSTANTIATED">, C<"UPDATED">, C<"IMPAIRED">, C<"UPDATE_FAILED">, C<"STOPPED">, C<"DELETED">, C<"INSTANTIATE_IN_PROGRESS">, C<"INTENT_TO_UPDATE_IN_PROGRESS">, C<"UPDATE_IN_PROGRESS">, C<"TERMINATE_IN_PROGRESS">
=head2 Tags => L<Paws::Tnb::TagMap>

A tag is a label that you assign to an Amazon Web Services resource.
Each tag consists of a key and an optional value. You can use tags to
search and filter your resources or track your Amazon Web Services
costs.


=head2 _request_id => Str


=cut

